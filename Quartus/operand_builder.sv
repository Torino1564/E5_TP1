import operations::*;
import opcodes::*;
import fp_ops::*;

module operand_builder (
	input logic ena,

	input wire [31:0] rs1data,
	input wire [31:0] rs2data,
	input wire [31:0] fprs1data,
	input wire [31:0] fprs2data,
	input wire [31:0] imm,
	input wire [31:0] pc,
	
	input wire [2:0] func3,
	input wire [6:0] func7,
	
	input wire [6:0] opcode,
	
	output reg [31:0] A,
	output reg [31:0] B,
	
	output reg [6:0] op,
	output FP_OPS op_fp,
	
	output wire [31:0] jal_return_address,
	output reg branch_condition,
	
	output logic inst_write_fp_regs,
	output logic inst_result_fp_alu
);
	
	wire is_jal;
	assign is_jal = opcode == JAL || opcode == JALR;
	assign jal_return_address = is_jal ? pc + 32'd4 : 'x;
	
	always_comb begin
		A = 'x;
		B = 'x;
		op = 'x;
		op_fp = 'x;
		branch_condition = 'b0;
		inst_result_fp_alu = 'b0;
		inst_write_fp_regs = 'b0;
		if (ena) begin
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
				LOAD, STORE, LOAD_FP, STORE_FP: begin
					A = rs1data;
					B = imm;
					op = ADD;
				end
				OP_FP: begin
					inst_write_fp_regs = 1'b1;		
					inst_result_fp_alu = 1'b1;
					A = fprs1data;
					B = fprs2data;
					case (func7[6:2])
						5'b00000: op_fp = FP_ADD;
						5'b00001: op_fp = FP_SUB;
						5'b00010: op_fp = FP_MUL;
						5'b00011: op_fp = FP_DIV;
						5'b01011: op_fp = FP_SQRT;
						5'b00101: begin // Min Max
							if (func3 == 3'b000)
								op_fp = FP_MIN;
							else
								op_fp = FP_MAX;
						end
						5'b10100: begin // Comparissons
							inst_write_fp_regs = 1'b0;
							case (func3)
								3'b101: op_fp = FP_EQ;
								3'b001: op_fp = FP_LT;
								3'b000: op_fp = FP_LE;
								default: op_fp = 0;
							endcase
						end
						5'b11000: begin
							inst_write_fp_regs = 1'b0;
							op_fp = FP_F2I;
						end
						5'b11010: op_fp = FP_I2F;
						5'b11100: begin
							A = fprs1data;
							B = 32'b0;
							op = ADD;
							inst_write_fp_regs = 1'b0;
							inst_result_fp_alu = 1'b0;
						end
						5'b11110: begin
							A = rs1data;
							B = 32'b0;
							op = ADD;
							inst_result_fp_alu = 1'b0;
						end
					endcase
				end
				default: begin
				
				end
			endcase
		end
	end
	

endmodule