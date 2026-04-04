`timescale 1ns/1ps

import operations::*;
import opcodes::*;

module operand_builder_tb;

	reg [31:0] rs1data, rs2data, imm, pc;
	reg [2:0] func3;
	reg [6:0] func7, opcode;
	
	wire [31:0] A, B;
	wire [6:0] op;
	
	initial begin
		rs1data = 'd100;
		rs2data = 'd50;
		imm = 'd100;
		pc = 'd0;
		
		opcode = OP;
		func3 = 3'b000;
		func7 = 'b0;
		
		#20
		func7 = 7'b0100000;
		
		#20
		func7 = 'd0;
		
		#20
		opcode = OP_IMM;
		
		#20
		func3 = 3'b100;
		
	end

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

endmodule