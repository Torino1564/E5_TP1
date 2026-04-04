module cpu (
	input wire clk,
	input wire n_rst
);
	reg [31:0] pc = 'b0;
	
	wire [31:0] inst;
	wire [31:0] rs1data, rs2data, imm;
	
	always @(posedge clk) begin
		if (~n_rst) begin
			pc <= 'b0;
		end
		else
			pc <= pc + 'd4;
	end
	
	reg [12:0] address_sig;
	wire [31:0] q_sig;
	assign address_sig = pc[12:0];
	
	assign inst = q_sig;
	reg [6:0] op;
	reg [31:0] A;
	reg [31:0] B;
	
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
		.op(op)
	);
	
	wire [31:0] result;
	ALU alu_inst (
		.op(op),
		.A(A),
		.B(B),
		.result(result)
	);
	
	// RAM
	
	reg aclr_a_sig, aclr_b_sig, enable_a_sig, enable_b_sig;
	reg [3:0] byteena_a_sig, byteena_b_sig;
	wire clock_a_sig, clock_b_sig;
	reg rden_a_sig, rden_b_sig, wren_a_sig, wren_b_sig;
	
	wire [12:0] address_a_sig, address_b_sig;
	
	reg [31:0] data_a_sig, data_b_sig;
	wire [31:0] q_a_sig, q_b_sig;
	
	wire [31:0] data_a_port, data_b_port;
	assign data_a_port = rden_a_sig | wren_a_sig ? ( wren_a_sig ? data_a_sig : q_a_sig ) : 'z;
	assign data_b_port = rden_b_sig | wren_b_sig ? ( wren_b_sig ? data_b_sig : q_b_sig ) : 'z;
	
	assign address_a_sig = rs1data[12:0] + imm[12:0];
	
	assign clock_a_sig = clk;
	assign clock_b_sig = clk;
	
	ram	ram_inst (
		.aclr_a ( aclr_a_sig ),
		.aclr_b ( aclr_b_sig ),
		.address_a ( address_a_sig ),
		.address_b ( address_b_sig ),
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
	wire [4:0] rs1, rs2, rd;
	wire [31:0] mem_read_out;
	
	reg inst_write_mem, inst_read_mem, inst_write_rd;
	reg mem_ready;
	
	wire [31:0] mem_data_port;
	reg [31:0] mem_data_drive;
	logic mem_data_drive_enable;
	wire [31:0] mem_data_recv;
	
	assign mem_data_port = mem_data_drive_enable ? mem_data_drive : 'z;
	assign mem_data_recv = mem_data_drive_enable ? 'z : mem_data_port;
	
	assign data_a_port = mem_data_port;
	
	register_bank register_bank
	(
		.clk(clk) ,	// input  clk
		.n_rst(n_rst) ,	// input  n_rst
		.rs1(rs1) ,	// input [(ADD_BUS_WIDTH-1):0] rs1
		.rs2(rs2) ,	// input [(ADD_BUS_WIDTH-1):0] rs2
		.rs1data(rs1data) ,	// output [(WSIZE-1):0] rs1data
		.rs2data(rs2data) ,	// output [(WSIZE-1):0] rs2data
		.rd(rd) ,	// input [(ADD_BUS_WIDTH-1):0] rd
		.rddata(result) ,	// input [(WSIZE-1):0] rddata
		.mem_data_port(mem_data_port) ,	// inout [(WSIZE-1):0] mem_data_port
		.mem_write(mem_write) ,	// output  mem_write
		.mem_ready(mem_ready) ,	// input  mem_ready
		.mem_read_out(mem_read_out) ,	// output [(WSIZE-1):0] mem_read_out
		.imm(imm) ,	// input [(WSIZE-1):0] imm
		.inst_write_mem(inst_write_mem) ,	// input  inst_write_mem
		.inst_read_mem(inst_read_mem) ,	// input  inst_read_mem
		.inst_write_rd(inst_write_rd) 	// input  inst_write_rd
	);
	
	//  ROM
	
	reg inaclr_sig, outaclr_sig, inclocken_sig, outclocken_sig, rden_sig;
	wire inclock_sig, outclock_sig;
	
	assign inaclr_sig = 0;
	assign outaclr_sig = 0;
	assign inclocken_sig = 1;
	assign outclocken_sig = 1;
	assign rden_sig = 1;
	
	assign inclock_sig = clk;
	assign outclock_sig = clk;
	
	
	program_memory	program_memory_inst (
		.address ( address_sig ),
		.inaclr ( inaclr_sig ),
		.inclock ( inclock_sig ),
		.inclocken ( inclocken_sig ),
		.outaclr ( outaclr_sig ),
		.outclock ( outclock_sig ),
		.outclocken ( outclocken_sig ),
		.rden ( rden_sig ),
		.q ( q_sig )
	);
	
	// Decoder
	decoder dut (
		.inst(inst),
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.opcode(opcode),
		.func3(func3),
		.func7(func7),
		.imm(imm)
	);
	
endmodule