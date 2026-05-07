import opcodes::*;
import memory_sections::*;
import stage::*;

module cpu (
	input wire clk,
	input wire n_rst,
	
	output [31:0] outbusA
);
	localparam [31:0] NOP = 32'h0;
	
	// Instruction Decode
	wire  [31:0] next_pc;
	wire  [31:0] pc;
	wire [31:0] n_pc;
	wire [31:0] rom_q_a_sig;
	wire [31:0] inst;
	wire [6:0] opcode;
	reg [6:0] prev_opcode;
	reg  [6:0] op;
	wire [2:0] func3;
	wire [6:0] func7;
	wire [4:0] rs1, rs2, rd;

	// Registers
	wire [31:0] rs1data, rs2data;
	wire  [31:0] A;
	wire  [31:0] B;
	wire [31:0] reg_write_port;
	logic  [31:0] reg_read_port;
	wire [31:0] rddata;

	wire [31:0] imm;
	wire [11:0] instruction_address;
	logic [11:0] address_b_rom_sig;
	logic [11:0] address_a_ram_sig, address_b_ram_sig;
	wire [31:0] base_addr;

	// ALU
	wire [31:0] alu_result;

	// Control Signals
	wire inst_write_mem, inst_read_mem, inst_write_rd, inst_change_pc, inst_change_pc_request, inst_change_pc_ena, inst_write_pc_jal, branch_condition;
	reg prev_inst_change_pc;
	reg prev_inst_write_mem;
	logic forward_A, forward_B;
	logic [2:0] forward_B_from, forward_A_from;
	logic  mem_ready;

	// Jump instr
	wire [31:0] jal_return_address;

	// RAM Interface
	reg  aclr_a_sig, aclr_b_sig;
	reg  enable_a_sig, enable_b_sig;
	reg  [3:0] byteena_a_sig, byteena_b_sig;

	wire clock_a_sig, clock_b_sig;
	
	wire mem_write;

	reg  rden_a_sig, rden_b_sig;
	reg  wren_a_sig, wren_b_sig;

	wire  [31:0] data_a_sig, data_b_sig;

	wire [31:0] ram_q_a_sig, ram_q_b_sig;

	// Secondary Memory Interface
	reg  aclr_a, aclr_b;
	reg  clock_rom_en_sig;
	wire rom_clk;
	reg  rden_sig;

	wire inclock_sig, outclock_sig;
	wire [31:0] rom_q_b_sig;
	
	// Halt Control
	logic [NUM_STAGES-1:0] stage_enable;
	logic [NUM_STAGES-1:0] stage_flush;
	
	// Latches	
	stage_t pipeline[NUM_STAGES];
	stage_t fetch_ff_d, decode_ff_d, register_ff_d, execution_ff_d, memory_ff_d;
	////////////////////////////////////////////////////////////////////////////////////////////
	
	assign outbusA = rs1data;
	
	////////////////////////////////////////////////////////////////////////////////////////////
	
	// Halt Control
	
	halt_control halt_control_inst (
		.clk(clk),
		.n_rst(n_rst),
		.pipeline(pipeline),
		.forward_A(forward_A),
		.forward_A_from(forward_A_from),
		.forward_B_from(forward_B_from),
		.forward_B(forward_B),
		.mem_ready(mem_ready),
		.stage_enable(stage_enable),
		.decode_change_pc_request(inst_change_pc_request),
		.current_decode(decode_ff_d),
		.stage_flush(stage_flush)
	);
	
	assign inst_change_pc_ena = pipeline[EXECUTION_STAGE].opcode == BRANCH ? branch_condition : 1'b1;
	assign inst_change_pc = pipeline[EXECUTION_STAGE].inst_change_pc_request & inst_change_pc_ena;
	
	// Fetch module
	fetch fetch_inst (
		.clk(clk),
		.n_rst(n_rst),
		.instruction_address(instruction_address),
		.pc(pc),
		.rom_out_port(rom_q_a_sig),
		.alu_result(alu_result),
		.inst(inst),
		.inst_change_pc(inst_change_pc),
		.ena(stage_enable[FETCH_STAGE]),
		.flush(stage_flush[FETCH_STAGE])
	);
	
	always_comb begin
		fetch_ff_d = 'x;
		fetch_ff_d.inst = inst;
		fetch_ff_d.pc = pc;
	end
	
	ff #(.SIZE(STAGE_SIZE)) fetch_stage (
		.clk(clk),
		.ena(stage_enable[FETCH_STAGE]),
		.n_rst(n_rst),
		.d(fetch_ff_d),
		.q(pipeline[DECODE_STAGE])
	);
	
	
	// Decoder
	decoder decoder_inst (
		.inst(pipeline[DECODE_STAGE].inst),
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.opcode(opcode),
		.func3(func3),
		.func7(func7),
		.imm(imm),
		.inst_write_rd(inst_write_rd),
		.inst_write_pc_jal(inst_write_pc_jal),
		.inst_write_mem(inst_write_mem),
		.inst_change_pc(inst_change_pc_request),
		.inst_read_mem(inst_read_mem)
	);
	
	always_comb begin
		decode_ff_d = 'x;
		decode_ff_d.inst = pipeline[DECODE_STAGE].inst;
		decode_ff_d.pc = pipeline[DECODE_STAGE].pc;
		decode_ff_d.rs1 = rs1;
		decode_ff_d.rs2 = rs2;
		decode_ff_d.rd = rd;
		decode_ff_d.opcode = opcode;
		decode_ff_d.func3 = func3;
		decode_ff_d.func7 = func7;
		decode_ff_d.imm = imm;
		decode_ff_d.inst_write_rd = inst_write_rd;
		decode_ff_d.inst_write_pc_jal = inst_write_pc_jal;
		decode_ff_d.inst_write_mem = inst_write_mem;
		decode_ff_d.inst_change_pc_request = inst_change_pc_request;
		decode_ff_d.inst_read_mem = inst_read_mem;
	end
	
	ff #(.SIZE(STAGE_SIZE)) decode_stage (
		.clk(clk),
		.ena(stage_enable[DECODE_STAGE]),
		.n_rst(n_rst),
		.d(decode_ff_d),
		.q(pipeline[REGISTER_STAGE])
	);
	
	assign rddata = pipeline[EXECUTION_STAGE].inst_write_pc_jal ? jal_return_address : alu_result;
	
	register_bank register_bank
	(
		.clk(clk) ,	// input  clk
		.n_rst(n_rst) ,	// input  n_rst
		.ena(stage_enable[REGISTER_STAGE]),
		.rs1(pipeline[REGISTER_STAGE].rs1) ,	// input [(ADD_BUS_WIDTH-1):0] rs1
		.rs2(pipeline[REGISTER_STAGE].rs2) ,	// input [(ADD_BUS_WIDTH-1):0] rs2
		.rs1data(rs1data) ,	// output [(WSIZE-1):0] rs1data
		.rs2data(rs2data) ,	// output [(WSIZE-1):0] rs2data
		.rd(pipeline[WRITEBACK_STAGE].rd) ,	// input [(ADD_BUS_WIDTH-1):0] rd
		.rddata(pipeline[WRITEBACK_STAGE].rddata) ,	// input [(WSIZE-1):0] rddata
		.imm(pipeline[REGISTER_STAGE].imm) ,	// input [(WSIZE-1):0] imm
		.inst_write_rd(pipeline[WRITEBACK_STAGE].inst_write_rd) 	// input  inst_write_rd
	);
	
	always_comb begin
		register_ff_d = 'x;
		register_ff_d.rs1data = rs1data;
		register_ff_d.rs2data = rs2data;
		register_ff_d.inst = pipeline[REGISTER_STAGE].inst;
		register_ff_d.rs1 = pipeline[REGISTER_STAGE].rs1;
		register_ff_d.rs2 = pipeline[REGISTER_STAGE].rs2;
		register_ff_d.rd = pipeline[REGISTER_STAGE].rd;
		register_ff_d.func3 = pipeline[REGISTER_STAGE].func3;
		register_ff_d.func7 = pipeline[REGISTER_STAGE].func7;
		register_ff_d.imm = pipeline[REGISTER_STAGE].imm;
		register_ff_d.opcode = pipeline[REGISTER_STAGE].opcode;
		register_ff_d.pc = pipeline[REGISTER_STAGE].pc;
		register_ff_d.inst_write_rd = pipeline[REGISTER_STAGE].inst_write_rd;
		register_ff_d.inst_write_pc_jal = pipeline[REGISTER_STAGE].inst_write_pc_jal;
		register_ff_d.inst_write_mem = pipeline[REGISTER_STAGE].inst_write_mem;
		register_ff_d.inst_change_pc_request = pipeline[REGISTER_STAGE].inst_change_pc_request;
		register_ff_d.inst_read_mem = pipeline[REGISTER_STAGE].inst_read_mem;
	end
	
	ff #(.SIZE(STAGE_SIZE)) register_stage (
		.clk(clk),
		.ena(stage_enable[REGISTER_STAGE]),
		.n_rst(n_rst),
		.d(register_ff_d),
		.q(pipeline[EXECUTION_STAGE])
	);
	
	// Op builder
	operand_builder operand_builder_inst (
		.rs1data(execution_ff_d.rs1data),
		.rs2data(execution_ff_d.rs2data),
		.imm(pipeline[EXECUTION_STAGE].imm),
		.pc(pipeline[EXECUTION_STAGE].pc),
		.func3(pipeline[EXECUTION_STAGE].func3),
		.func7(pipeline[EXECUTION_STAGE].func7),
		.opcode(pipeline[EXECUTION_STAGE].opcode),
		.A(A),
		.B(B),
		.op(op),
		.jal_return_address(jal_return_address),
		.branch_condition(branch_condition)
	);
	
	// ALU
	ALU alu_inst (
		.op(op),
		.A(A),
		.B(B),
		.result(alu_result)
	);
	
	always_comb begin
		execution_ff_d = 'x;
		execution_ff_d.inst = pipeline[EXECUTION_STAGE].inst;
		execution_ff_d.rd = pipeline[EXECUTION_STAGE].rd;
		execution_ff_d.rs1 = pipeline[EXECUTION_STAGE].rs1;
		execution_ff_d.rs2 = pipeline[EXECUTION_STAGE].rs2;
		execution_ff_d.opcode = pipeline[EXECUTION_STAGE].opcode;
		execution_ff_d.rddata = rddata;
		execution_ff_d.imm = pipeline[EXECUTION_STAGE].imm;
		execution_ff_d.inst_write_rd = pipeline[EXECUTION_STAGE].inst_write_rd;
		execution_ff_d.inst_write_pc_jal = pipeline[EXECUTION_STAGE].inst_write_pc_jal;
		execution_ff_d.inst_write_mem = pipeline[EXECUTION_STAGE].inst_write_mem;
		execution_ff_d.inst_read_mem = pipeline[EXECUTION_STAGE].inst_read_mem;
		execution_ff_d.inst_change_pc_request = pipeline[EXECUTION_STAGE].inst_change_pc_request;
		execution_ff_d.rs1data = !forward_A ? pipeline[EXECUTION_STAGE].rs1data : pipeline[forward_A_from].rddata;
		execution_ff_d.rs2data = !forward_B ? pipeline[EXECUTION_STAGE].rs2data : pipeline[forward_B_from].rddata;
	end
	
	ff #(.SIZE(STAGE_SIZE)) execution_stage (
		.clk(clk),
		.ena(stage_enable[EXECUTION_STAGE]),
		.n_rst(n_rst),
		.d(execution_ff_d),
		.q(pipeline[MEMORY_STAGE])
	);
	//////////////////////////////////////////////////////////////////
	// Memory section
	
	reg [31:0] prev_address;
	assign mem_ready = base_addr == prev_address;
	
	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst)
			prev_address <= 'b0;
		else begin
			prev_address <= base_addr;
		end
	end
	
	// MMI
	assign base_addr = 	(pipeline[MEMORY_STAGE].inst_read_mem || pipeline[MEMORY_STAGE].inst_write_mem) ? 
								pipeline[MEMORY_STAGE].rddata  : prev_address;
	
	localparam NUM_DEVICES = 2;
	localparam BaseAddresses DEVICE_MAP [NUM_DEVICES] = '{RAM, ROM};
	localparam WORD_SIZE = 32;
	localparam DEVICE_ADDRESS_SIZE = 12;
	localparam DEVICE_SELECTOR_MASK_SIZE = $bits(BaseAddresses);
	
	wire [DEVICE_ADDRESS_SIZE-1:0] addresses [NUM_DEVICES];
	assign address_a_ram_sig = addresses[0];
	assign address_b_rom_sig = addresses[1];
	
	wire [WORD_SIZE-1:0] data_outs [NUM_DEVICES];
	assign data_a_sig = data_outs[0];
	
	wire [WORD_SIZE-1:0] data_ins [NUM_DEVICES] = '{ram_q_a_sig, rom_q_b_sig};
	wire mem_writes [NUM_DEVICES];
	assign wren_a_sig = mem_writes[0];
	
	wire mem_readys [NUM_DEVICES] = '{clock_a_sig, rom_clk};
	
	assign reg_write_port = pipeline[MEMORY_STAGE].rs2data;
	
	mmi #(
		 .WORD_SIZE(WORD_SIZE),
		 .DEVICE_ADDRESS_SIZE(DEVICE_ADDRESS_SIZE),
		 .NUM_DEVICES(NUM_DEVICES),
		 .BIT_SIZE(DEVICE_SELECTOR_MASK_SIZE),
		 .BASE_ADDR(DEVICE_MAP)
	) mmi_inst (
		 .address_connectors(addresses),
		 .data_out_connectors(data_outs),
		 .mem_write_connectors(mem_writes),
		 .data_in_connectors(data_ins),
		 .mem_ready_connectors(mem_readys),

		 .address(base_addr),
		 .data_out(reg_write_port),
		 .data_in(reg_read_port),
		 //.mem_ready(mem_ready),
		 .mem_write(pipeline[MEMORY_STAGE].inst_write_mem)
	);
	
	// RAM	
	assign clock_a_sig = clk;
	assign clock_b_sig = clk;
	
	assign rden_a_sig = 1'b1;
	assign rden_b_sig = 1'b1;
	assign enable_a_sig = 1'b1;
	assign enable_b_sig = 1'b1;
	assign byteena_a_sig = 4'b1111;
	assign byteena_b_sig = 4'b1111;
	assign aclr_a_sig = ~n_rst;
	assign aclr_b_sig = ~n_rst;
	
	ram	ram_inst (
		.aclr_a ( aclr_a_sig ),
		.aclr_b ( aclr_b_sig ),
		.address_a ( address_a_ram_sig ),
		.address_b ( address_b_ram_sig ),
		.byteena_a ( byteena_a_sig ),
		.byteena_b ( byteena_b_sig ),
		.clock_a ( clock_a_sig ),
		.clock_b ( clock_b_sig ),
		.data_a ( data_a_sig ),
		.data_b ( data_b_sig ),
		.enable_a ( enable_a_sig ),
		.enable_b ( enable_b_sig ),
		.rden_a ( rden_a_sig ),
		.rden_b ( rden_b_sig ),
		.wren_a ( wren_a_sig ),
		.wren_b ( wren_b_sig ),
		.q_a ( ram_q_a_sig ),
		.q_b ( ram_q_b_sig )
		);
	
	
	//  ROM
	assign clock_rom_en_sig = 1;
	assign rom_clk = clk;
	assign rden_sig = 1;
	assign aclr_a = 0;
	assign aclr_b = 0;
	
	rom rom_inst (
		.aclr_a(aclr_a),
		.aclr_b(aclr_b),
		.address_a(instruction_address),
		.address_b(address_b_rom_sig),
		.rden_a(rden_sig),
		.rden_b(rden_sig),
		.clock_a(clk),
		.clock_b(rom_clk),
		.enable_a(clock_rom_en_sig),
		.enable_b(clock_rom_en_sig),
		.q_a(rom_q_a_sig),
		.q_b(rom_q_b_sig)
	);
	
	always_comb begin
		memory_ff_d = 'x;
		memory_ff_d.inst = pipeline[MEMORY_STAGE].inst;
		memory_ff_d.rd = pipeline[MEMORY_STAGE].rd;
		memory_ff_d.reg_read_port = reg_read_port;
		memory_ff_d.rddata = (pipeline[MEMORY_STAGE].inst_read_mem) ? reg_read_port : pipeline[MEMORY_STAGE].rddata;
		memory_ff_d.inst_write_rd = pipeline[MEMORY_STAGE].inst_write_rd;
	end
	
	ff #(.SIZE(STAGE_SIZE)) memory_stage (
		.clk(clk),
		.ena(stage_enable[MEMORY_STAGE]),
		.n_rst(n_rst),
		.d(memory_ff_d),
		.q(pipeline[WRITEBACK_STAGE])
	);
	
endmodule