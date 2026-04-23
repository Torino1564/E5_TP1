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
	
	output reg [6:0] op,
	
	output wire [31:0] pc_return_jal,
	output reg branch_condition
);
	
	wire is_jal;
	assign is_jal = opcode == JAL || opcode == JALR;
	assign pc_return_jal = is_jal ? pc + 32'd4 : 'x;
	
	always_comb begin
		A = 'x;
		B = 'x;
		op = 'x;
		branch_condition = 'b0;
		case (opcode)
			OP, OP_IMM: begin
				A = rs1data;
				B = opcode == OP ? rs2data : imm;
				case (func3)
					3'b000: op = opcode == OP ? ( func7 == 0 ? ADD : SUB ) : ADD;
					3'b001: op = SLL;
					3'b100: op = XOR;
					3'b110: op = OR;
					3'b111: op = AND;
					3'b101: op = func7 == 0 ? SRL : SRA;
					default: begin end
				endcase
			end
			JAL: begin
				A = pc;
				B = imm;
				op = ADD;
			end
			JALR: begin
				A = rs1data;
				B = imm;
				op = ADD;
			end
			BRANCH: begin
				A = pc;
				B = imm;
				op = ADD;
				case (func3)
					'h0: branch_condition = (rs1data == rs2data);							// beq
					'h1: branch_condition = (rs1data != rs2data);							// bne
					'h4: branch_condition = ($signed(rs1data) < $signed(rs2data));		// blt
					'h5: branch_condition = ($signed(rs1data) >= $signed(rs2data));	// bge
					'h6: branch_condition = (rs1data < rs2data);								// bltu
					'h7: branch_condition = (rs1data >= rs2data);							// bgeu
					default: branch_condition = 'b0;
				endcase
			end
			LUI: begin
				A = imm;
				B = 'x;
				op = OA;
			end
			AUIPC: begin
				A = pc;
				B = imm;
				op = ADD;
			end
			default: begin
			end
		endcase
	end
	

endmodule