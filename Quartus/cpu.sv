import opcodes::*;
import memory_sections::*;

module cpu (
	input wire clk,
	input wire n_rst,
	
	output [31:0] outbusA
);
	localparam [31:0] NOP = 32'h0;
	localparam NUM_STAGES = 6;

	typedef enum logic [2:0] {
		FETCH_STAGE,
		DECODE_STAGE,
		REGISTER_STAGE,
		EXECUTION_STAGE,
		MEMORY_READ_STAGE,
		WRITEBACK_STAGE
	} Stages;
	
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
	reg  [31:0] reg_read_port;
	wire [31:0] rddata;

	wire [31:0] imm;
	wire [12:0] instruction_address;
	logic [12:0] address_b_rom_sig;
	logic [12:0] address_a_ram_sig, address_b_ram_sig;
	wire [31:0] base_addr;

	// ALU
	wire [31:0] alu_result;

	// Control Signals
	wire inst_write_mem, inst_read_mem, inst_write_rd, inst_change_pc, inst_change_pc_request, inst_change_pc_ena, inst_write_pc_jal, inst_branch_condition;
	reg prev_inst_change_pc;
	reg prev_inst_write_mem;
	reg  mem_ready;

	// Jump instr
	wire [31:0] pc_return_jal;

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
	typedef struct packed {
		logic [31:0] pc;
		logic [31:0] inst;
		logic [31:0] rs1data;
		logic [31:0] rs2data;
		logic [31:0] imm;
		logic [4:0] rs1;
		logic [4:0] rs2;
		logic [4:0] rd;
		
		// flags
		logic inst_write_rd;
		logic inst_write_pc_jal;
		logic inst_write_mem;
		logic inst_read_mem;
		logic inst_change_pc_request;
		logic branch_condition;
	} stage_t;
	
	stage_t pipeline[NUM_STAGES];
	
	////////////////////////////////////////////////////////////////////////////////////////////
	
	assign outbusA = rs1data;
	
	////////////////////////////////////////////////////////////////////////////////////////////
	
	// Halt Control
	
	halt_control 
	#(
		.NUM_STAGES(NUM_STAGES),
		.T(stage_t),
		.FETCH_STAGE(0))
	halt_control_inst (
		.clk(clk),
		.n_rst(n_rst)
		.pipeline(pipeline),
		.inst_change_pc(inst_change_pc),
		.stage_enable(stage_enable),
		.stage_flush(stage_flush)
	);
	
	// Branch logic
	always @(posedge clk) begin
		if (~n_rst) begin
			prev_inst_change_pc <= 'b0;
		end
		else if (stage_enable[FETCH_STAGE])
			prev_inst_change_pc <= inst_change_pc;
	end
	
	assign inst_change_pc_ena = opcode == BRANCH ? inst_branch_condition : 1'b1;
	assign inst_change_pc = inst_change_pc_request & inst_change_pc_ena;
	
	// Fetch module
	fetch fetch_inst (
		.clk(clk),
		.n_rst(n_rst),
		.instruction_address(instruction_address),
		.pc(pc),
		.rom_out_port(rom_q_a_sig),
		.alu_result(alu_result),
		.inst(pipeline[FETCH_STAGE].inst),
		.inst_change_pc(inst_change_pc),
		.ena(stage_enable[FETCH_STAGE]),
		.flush(stage_flush[FETCH_STAGE])
	);
	
	stage_t out_fetch_stage;
	
	ff #(.T(stage_t)) fetch_stage (
		.d(pipeline[FETCH_STAGE]),
		.q(out_fetch_stage)
	);
	
	
	// Decoder
	decoder decoder_inst (
		.inst(out_fetch_stage.inst),
		.rs1(pipeline[DECODE_STAGE].rs1),
		.rs2(pipeline[DECODE_STAGE].rs2),
		.rd(pipeline[DECODE_STAGE].rd),
		.opcode(pipeline[DECODE_STAGE].opcode),
		.func3(pipeline[DECODE_STAGE].func3),
		.func7(pipeline[DECODE_STAGE].func7),
		.imm(pipeline[DECODE_STAGE].imm),
		.inst_write_rd(pipeline[DECODE_STAGE].inst_write_rd),
		.inst_write_pc_jal(pipeline[DECODE_STAGE].inst_write_pc_jal),
		.inst_write_mem(pipeline[DECODE_STAGE].inst_write_mem),
		.inst_change_pc(pipeline[DECODE_STAGE].inst_change_pc_request),
		.inst_read_mem(pipeline[DECODE_STAGE].inst_read_mem)
	);
	
	stage_t out_decode_stage;
	
	ff #(.T(stage_t)) fetch_stage (
		.d(pipeline[DECODE_STAGE]),
		.q(out_decode_stage)
	);
	
	// Register bank
	assign rddata = pipeline[EXECUTION_STAGE].inst_write_pc_jal ? pc_return_jal : alu_result;
	
	register_bank register_bank
	(
		.clk(clk) ,	// input  clk
		.n_rst(n_rst) ,	// input  n_rst
		.ena(1'b1),
		.rs1(out_decode_stage.rs1) ,	// input [(ADD_BUS_WIDTH-1):0] rs1
		.rs2(out_decode_stage.rs2) ,	// input [(ADD_BUS_WIDTH-1):0] rs2
		.rs1data(pipeline[REGISTER_STAGE].rs1data) ,	// output [(WSIZE-1):0] rs1data
		.rs2data(pipeline[REGISTER_STAGE].rs2data) ,	// output [(WSIZE-1):0] rs2data
		.rd(rd) ,	// input [(ADD_BUS_WIDTH-1):0] rd
		.rddata(rddata) ,	// input [(WSIZE-1):0] rddata
		.mem_read_port(reg_read_port),
		.mem_write_port(reg_write_port),
		.mem_write(mem_write) ,	// output  mem_write
		.mem_clk(mem_ready) ,	// input  mem_ready
		.imm(out_decode_stage.imm) ,	// input [(WSIZE-1):0] imm
		.inst_write_mem(out_decode_stage.inst_write_mem) ,	// input  inst_write_mem
		.inst_read_mem(pipeline[MEMORY_READ_STAGE].inst_read_mem) ,	// input  inst_read_mem
		.inst_write_rd(pipeline[WRITEBACK_STAGE].inst_write_rd) 	// input  inst_write_rd
	);
	
	// Op builder
	operand_builder operand_builder_inst (
		.rs1data(rs1data),
		.rs2data(rs2data),
		.imm(imm),
		.pc(pc),
		.func3(func3),
		.func7(func7),
		.opcode(opcode),
		.A(A),
		.B(B),
		.op(op),
		.pc_return_jal(pc_return_jal),
		.branch_condition(inst_branch_condition)
	);
	
	// ALU
	ALU alu_inst (
		.op(op),
		.A(A),
		.B(B),
		.result(alu_result)
	);
	
	//////////////////////////////////////////////////////////////////
	// Memory section
	
	// MMI
	assign base_addr = pipeline[REGISTER_STAGE].rs1data + pipeline[REGISTER_STAGE].imm;
	
	localparam NUM_DEVICES = 2;
	localparam BaseAddresses DEVICE_MAP [NUM_DEVICES] = '{RAM, ROM};
	localparam WORD_SIZE = 32;
	localparam DEVICE_ADDRESS_SIZE = 13;
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
		 .mem_ready(mem_ready),
		 .mem_write(mem_write)
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
	
endmodule