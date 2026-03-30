`timescale 1ns/1ps

module register_bank_tb;

	reg clk = 0;
	reg n_rst = 0;
	
	always begin
		#5 clk = ~clk;
	end
	
	// Regs
	reg [4:0] rs1, rs2, rd;
	wire [31:0] rs1data, rs2data;
	reg [31:0] mem_read_out, rddata, imm;
	
	reg inst_write_mem, inst_read_mem, inst_write_rd;
	reg mem_ready;
	
	wire [31:0] mem_data_port;
	reg [31:0] mem_data_drive;
	logic mem_data_drive_enable;
	wire [31:0] mem_data_recv;
	
	assign mem_data_port = mem_data_drive_enable ? mem_data_drive : 'z;
	assign mem_data_recv = mem_data_drive_enable ? 'z : mem_data_port;
	
	initial begin
		#10 n_rst = 1;
		rddata = 'd100;
		rd = 'd4;
		inst_write_rd = 1'b1;
		mem_data_drive_enable = 'b0;
		
		#10 rd = 'd1;
		rddata = 'd50;
		
		#10 rs1 = 'd4;
		rs2 = 'd1;
		
		#10 mem_data_drive_enable = 'b1;
		mem_data_drive = 'd777;
		inst_read_mem = 'b1;
		#2 mem_ready = 'b1;
		#4 mem_ready = 'b0;
		mem_data_drive_enable = 'b0;
		
		#20 rs2 = 'd4;
		inst_write_mem = 'b1;
		#10 inst_write_mem = 'b0;
	end
	
	register_bank register_bank
	(
		.clk(clk) ,	// input  clk
		.n_rst(n_rst) ,	// input  n_rst
		.rs1(rs1) ,	// input [(ADD_BUS_WIDTH-1):0] rs1
		.rs2(rs2) ,	// input [(ADD_BUS_WIDTH-1):0] rs2
		.rs1data(rs1data) ,	// output [(WSIZE-1):0] rs1data
		.rs2data(rs2data) ,	// output [(WSIZE-1):0] rs2data
		.rd(rd) ,	// input [(ADD_BUS_WIDTH-1):0] rd
		.rddata(rddata) ,	// input [(WSIZE-1):0] rddata
		.mem_data_port(mem_data_port) ,	// inout [(WSIZE-1):0] mem_data_port
		.mem_write(mem_write) ,	// output  mem_write
		.mem_ready(mem_ready) ,	// input  mem_ready
		.mem_read_out(mem_read_out) ,	// output [(WSIZE-1):0] mem_read_out
		.imm(imm) ,	// input [(WSIZE-1):0] imm
		.inst_write_mem(inst_write_mem) ,	// input  inst_write_mem
		.inst_read_mem(inst_read_mem) ,	// input  inst_read_mem
		.inst_write_rd(inst_write_rd) 	// input  inst_write_rd
	);

endmodule