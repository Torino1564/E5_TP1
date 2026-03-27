`timescale 1ns/1ps

module decoder_tb;
	
	reg clk = 0;
	always #5 clk = ~clk;
	
	reg [31:0] inst = 32'b0;

	initial begin
		inst[6:0] = 7'b0000011;
	end
	
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [6:0] opcode;
	wire [2:0] func3;
	wire [6:0] func7;
	wire [31:0] imm;
	wire [2:0] inst_type;
	
	decoder dut (
		.clk(clk),
		.inst(inst),
		.rs1(rs1),
		.rs2(rs2),
		.opcode(opcode),
		.func3(func3),
		.func7(func7),
		.imm(imm),
		.inst_type(inst_type)
	);
	
endmodule