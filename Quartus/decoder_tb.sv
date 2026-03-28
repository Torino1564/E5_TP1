`timescale 1ns/1ps

module decoder_tb;

	reg [31:0] inst = 32'b0;

	initial begin
		inst[6:0] = 7'b1101111; // opcode
		inst[19:15] = 5'b10101; // rs1
		inst[24:20] = 5'b11001; // rs2
		inst[11:7] = 5'b01110; // rd
		inst[14:12] = 3'b001; // func3
		inst[31:25] = 7'b1011011; // func7
	end
	
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [4:0] rd;
	wire [6:0] opcode;
	wire [2:0] func3;
	wire [6:0] func7;
	wire [31:0] imm;
	
	decoder dut (
		.clk(clk),
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