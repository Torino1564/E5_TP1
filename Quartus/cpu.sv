import opcodes::*;

module cpu (
	input wire clk,
	input wire n_rst,
	
	output [31:0] outbusA
);
	localparam [31:0] NOP = 32'h0;
	
	// =========================
	// Instruction Decode
	// =========================
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

	// =========================
	// Register File / Operands
	// =========================
	wire [31:0] rs1data, rs2data;
	wire  [31:0] A;
	wire  [31:0] B;
	wire [31:0] reg_write_port;
	reg  [31:0] reg_read_port;
	wire [31:0] rddata;

	// =========================
	// Immediate / Addressing
	// =========================
	wire [31:0] imm;
	wire [12:0] instruction_address;
	logic [12:0] address_b_rom_sig;
	logic [12:0] address_a_ram_sig, address_b_ram_sig;
	wire [31:0] base_addr;

	// =========================
	// ALU / Execution
	// =========================
	wire [31:0] alu_result;

	// =========================
	// Control Signals
	// =========================
	wire inst_write_mem, inst_read_mem, inst_write_rd, inst_change_pc, inst_change_pc_request, inst_change_pc_ena, inst_write_pc_jal, inst_branch_condition;
	reg prev_inst_change_pc;
	reg prev_inst_write_mem;
	reg  mem_ready;

	// =========================
	// Jump instr
	// =========================
	wire [31:0] pc_return_jal;

	// =========================
	// RAM Interface
	// =========================
	reg  aclr_a_sig, aclr_b_sig;
	reg  enable_a_sig, enable_b_sig;
	reg  [3:0] byteena_a_sig, byteena_b_sig;

	wire clock_a_sig, clock_b_sig;
	
	wire mem_write;

	reg  rden_a_sig, rden_b_sig;
	reg  wren_a_sig, wren_b_sig;

	wire  [31:0] data_a_sig, data_b_sig;

	wire [31:0] ram_q_a_sig, ram_q_b_sig;

	// =========================
	// Secondary Memory Interface
	// =========================
	reg  aclr_a, aclr_b;
	reg  clock_rom_en_sig;
	reg  rden_sig;

	wire inclock_sig, outclock_sig;
	wire [31:0] rom_q_b_sig;
	
	////////////////////////////////////////////////////////////////////////////////////////////
	
	assign outbusA = rs1data;
	
	////////////////////////////////////////////////////////////////////////////////////////////
	
	reg halt = 1'b0;
	
	// Main register updates
	
	always @(posedge clk) begin
		if (~n_rst) begin
			prev_inst_change_pc <= 'b0;
		end
		else if (~halt)
			prev_inst_change_pc <= inst_change_pc;
	end
	
	// Branch logic
	assign inst_change_pc_ena = opcode == BRANCH ? inst_branch_condition : 1'b1;
	assign inst_change_pc = inst_change_pc_request & inst_change_pc_ena;
	
	// Fetch module
	
	fetch fetch_inst (
		.clk(clk),
		.n_rst(n_rst),
		.halt(halt),
		.instruction_address(instruction_address),
		.pc(pc),
		.next_pc(next_pc),
		.rom_out_port(rom_q_a_sig),
		.alu_result(alu_result),
		.inst(inst),
		.inst_change_pc(inst_change_pc),
		.prev_inst_change_pc(prev_inst_change_pc)
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
	
	// RAM
	
	assign base_addr = rs1data[12:0] + imm[12:0];
	
	assign clock_a_sig = ~clk;
	assign clock_b_sig = ~clk;
	
	assign rden_a_sig = 1'b1;
	assign rden_b_sig = 1'b1;
	assign enable_a_sig = 1'b1;
	assign enable_b_sig = 1'b1;
	assign byteena_a_sig = 4'b1111;
	assign byteena_b_sig = 4'b1111;
	assign aclr_a_sig = ~n_rst;
	assign aclr_b_sig = ~n_rst;
	
	assign wren_a_sig = mem_write;
	
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
	
	// Register bank
	always_comb begin
		address_a_ram_sig = 'b0;
		address_b_rom_sig = 'b0;
		if (base_addr[31] == 0) begin
			address_a_ram_sig = base_addr[12:0];
			reg_read_port = ram_q_a_sig;
		end
		else begin
			address_b_rom_sig = base_addr[12:0];
			reg_read_port = rom_q_b_sig;
		end
	end

	assign rddata = inst_write_pc_jal ? pc_return_jal : alu_result;
	assign data_a_sig = reg_write_port;
	
	register_bank register_bank
	(
		.clk(clk) ,	// input  clk
		.n_rst(n_rst) ,	// input  n_rst
		.halt(halt),
		.rs1(rs1) ,	// input [(ADD_BUS_WIDTH-1):0] rs1
		.rs2(rs2) ,	// input [(ADD_BUS_WIDTH-1):0] rs2
		.rs1data(rs1data) ,	// output [(WSIZE-1):0] rs1data
		.rs2data(rs2data) ,	// output [(WSIZE-1):0] rs2data
		.rd(rd) ,	// input [(ADD_BUS_WIDTH-1):0] rd
		.rddata(rddata) ,	// input [(WSIZE-1):0] rddata
		.mem_read_port(reg_read_port),
		.mem_write_port(reg_write_port),
		.mem_write(mem_write) ,	// output  mem_write
		.mem_clk(clock_a_sig) ,	// input  mem_ready
		.imm(imm) ,	// input [(WSIZE-1):0] imm
		.inst_write_mem(inst_write_mem) ,	// input  inst_write_mem
		.inst_read_mem(inst_read_mem) ,	// input  inst_read_mem
		.inst_write_rd(inst_write_rd) 	// input  inst_write_rd
	);
	
	//  ROM
	assign clock_rom_en_sig = 1;
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
		.clock_b(clk),
		.enable_a(clock_rom_en_sig),
		.enable_b(clock_rom_en_sig),
		.q_a(rom_q_a_sig),
		.q_b(rom_q_b_sig)
	);
	
	// Decoder
	decoder decoder_inst (
		.inst(inst),
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
	
endmodule