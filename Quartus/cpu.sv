module cpu (
	input wire clk,
	input wire n_rst
);
	reg [31:0] pc = 'b0;
	wire [31:0] n_pc;
	
	// =========================
	// Instruction Decode
	// =========================
	wire [31:0] q_sig;
	wire [31:0] inst;
	wire [6:0] opcode;
	reg  [6:0] op;
	wire [2:0] func3;
	wire [6:0] func7;
	wire [4:0] rs1, rs2, rd;

	// =========================
	// Register File / Operands
	// =========================
	wire [31:0] rs1data, rs2data;
	reg  [31:0] A;
	reg  [31:0] B;
	wire [31:0] reg_data_port;
	wire [31:0] rddata;

	// =========================
	// Immediate / Addressing
	// =========================
	wire [31:0] imm;
	wire [12:0] inst_address_sig;
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
	wire inst_write_mem, inst_read_mem, inst_write_rd, inst_change_pc, inst_write_pc_jal;
	reg  mem_ready;

	// =========================
	// Program Counter / Control Flow
	// =========================
	wire [31:0] pc_jal;

	// =========================
	// Memory Interface
	// =========================
	wire [31:0] mem_read_out;
	logic [31:0] memory_data_port;

	// =========================
	// Memory Data Driving
	// =========================
	reg  [31:0] mem_data_drive = 0;
	logic mem_data_drive_enable = 0;

	// =========================
	// RAM Interface
	// =========================
	reg  aclr_a_sig, aclr_b_sig;
	reg  enable_a_sig, enable_b_sig;
	reg  [3:0] byteena_a_sig, byteena_b_sig;

	wire clock_a_sig, clock_b_sig;

	reg  rden_a_sig, rden_b_sig;
	reg  wren_a_sig, wren_b_sig;

	reg  [31:0] data_a_sig, data_b_sig;

	wire [31:0] q_a_sig, q_b_sig;
	wire [31:0] data_a_port, data_b_port;

	// =========================
	// Secondary Memory Interface
	// =========================
	reg  inaclr_sig, outaclr_sig;
	reg  inclocken_sig, outclocken_sig;
	reg  rden_sig;

	wire inclock_sig, outclock_sig;
	wire [31:0] q_b;
	
	
	always @(posedge clk) begin
		if (~n_rst) begin
			pc <= 'h0;
		end
		else
			pc <= n_pc;
	end
	
	assign n_pc = ~inst_change_pc ? pc + 'd4 : alu_result;
	
	
	assign inst_address_sig = pc[14:2];
	
	assign inst = {q_sig[7:0], q_sig[15:8], q_sig[23:16], q_sig[31:24]};
	
	
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
		.pc_jal(pc_jal)
	);
	
	
	
	ALU alu_inst (
		.op(op),
		.A(A),
		.B(B),
		.result(alu_result)
	);
	
	// RAM
	
	
	assign data_a_port = rden_a_sig | wren_a_sig ? ( wren_a_sig ? data_a_sig : q_a_sig ) : 'z;
	assign data_b_port = rden_b_sig | wren_b_sig ? ( wren_b_sig ? data_b_sig : q_b_sig ) : 'z;
	
	
	assign base_addr = rs1data[12:0] + imm[12:0];
	
	assign clock_a_sig = clk;
	assign clock_b_sig = clk;
	
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
		.q_a ( q_a_sig ),
		.q_b ( q_b_sig )
		);
	
	// Register bank
	
	
	always_comb begin
		address_a_ram_sig = 'b0;
		address_b_rom_sig = 'b0;
		if (base_addr[31] == 0) begin
			address_a_ram_sig = base_addr[12:0];
			memory_data_port = data_a_port;
		end
		else begin
			address_b_rom_sig = base_addr[12:0];
			memory_data_port = q_b;
		end
	end
	
	assign reg_data_port = mem_data_drive_enable ? mem_data_drive : 'z;
	
	
	assign rddata = inst_write_pc_jal ? pc_jal : alu_result;
	
	register_bank register_bank
	(
		.clk(clk) ,	// input  clk
		.n_rst(n_rst) ,	// input  n_rst
		.rs1(rs1) ,	// input [(ADD_BUS_WIDTH-1):0] rs1
		.rs2(rs2) ,	// input [(ADD_BUS_WIDTH-1):0] rs2
		.rs1data(rs1data) ,	// output [(WSIZE-1):0] rs1data
		.rs2data(rs2data) ,	// output [(WSIZE-1):0] rs2data
		.rd(rd) ,	// input [(ADD_BUS_WIDTH-1):0] rd
		.rddata(alu_result) ,	// input [(WSIZE-1):0] rddata
		.mem_data_port(reg_data_port) ,	// inout [(WSIZE-1):0] mem_data_port
		.mem_write(mem_write) ,	// output  mem_write
		.mem_ready(mem_ready) ,	// input  mem_ready
		.mem_read_out(mem_read_out) ,	// output [(WSIZE-1):0] mem_read_out
		.imm(imm) ,	// input [(WSIZE-1):0] imm
		.inst_write_mem(inst_write_mem) ,	// input  inst_write_mem
		.inst_read_mem(inst_read_mem) ,	// input  inst_read_mem
		.inst_write_rd(inst_write_rd) 	// input  inst_write_rd
	);
	
	//  ROM
	
	
	assign inaclr_sig = 0;
	assign outaclr_sig = 0;
	assign inclocken_sig = 1;
	assign outclocken_sig = 1;
	assign rden_sig = 1;
	
	assign inclock_sig = clk;
	assign outclock_sig = clk;
	
	rom rom_inst (
		.address_a(inst_address_sig),
		.address_b(address_b_rom_sig),
		.inclock ( inclock_sig ),
		.inclocken ( inclocken_sig ),
		.out_aclr ( outaclr_sig ),
		.outclock ( outclock_sig ),
		.outclocken ( outclocken_sig ),
		.rden_a(rden_sig),
		.rden_b(rden_sig),
		.q_a(q_sig),
		.q_b(q_b)
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
		.inst_change_pc(inst_change_pc)
	);
	
endmodule