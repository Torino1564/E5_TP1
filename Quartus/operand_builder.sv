import operations::*;
import opcodes::*;

module operand_builder (
	input wire [31:0] rs1data,
	input wire [31:0] rs2data,
	input wire [31:0] imm,
	input wire [31:0] pc,
	
	input wire [2:0] func3,
	input wire [6:0] func7,
	
	input wire [6:0] opcode,
	
	output reg [31:0] A,
	output reg [31:0] B,
	
	output reg [6:0] op
);
	
	always_comb begin
		A = 'z;
		B = 'z;
		op = 'z;
		case (opcode)
			OP, OP_IMM: begin
				A = rs1data;
				if (opcode == OP)
					B = rs2data;
				else
					B = imm;
				case (func3)
					3'b000: begin
						if (func7[5] == 0)
							op = ADD;
						else
							op = SUB;
					end
					3'b001: begin
						
					end
					3'b100: begin
						op = XOR;
					end
					3'b110: begin
						op = OR;
					end
					3'b111: begin
						op = AND;
					end
					default: begin end
				endcase
			end
			default: begin
			end
		endcase
	end
	

endmodule