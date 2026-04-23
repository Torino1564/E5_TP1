import opcodes::*;

module decoder
(
	input wire [31:0] inst,
	
	output reg [4:0] rs1,
	output reg [4:0] rs2,
	output reg [4:0] rd,
	output wire [6:0] opcode,
	output reg [2:0] func3,
	output reg [6:0] func7,
	output reg [31:0] imm,
	
	output reg inst_write_pc_jal,
	output reg inst_write_rd,
	output wire inst_write_mem,
	output reg inst_change_pc,
	output wire inst_read_mem
);
	// Define instruction types
	enum bit[2:0] {R, I, S, B, U, J, E} 	INST_TYPE;
	
	assign opcode = inst[6:0];
	
	// Resolve instruction type
	reg [2:0] inst_type;
	always_comb begin
		case (opcode)
			LOAD: 		inst_type = I;	// LOAD
			OP: 			inst_type = R;	// OP
			OP_IMM: 		inst_type = I;	// OP-IMM
			STORE: 		inst_type = S;	// STORE
			BRANCH: 		inst_type = B;	// BRANCH
			JAL: 			inst_type = J;	// JAL
			JALR:			inst_type = I;	// JALR
			LUI: 			inst_type = U;	// LUI
			AUIPC: 		inst_type = U;	// AUIPC
			default:		inst_type = E; // ERROR
		endcase
	end
	
	// Assign outputs
	
	// Inst Write PC Jal
	always_comb begin
		case (opcode)
			JAL, JALR:
				inst_write_pc_jal = 1'b1;
			default:
				inst_write_pc_jal = 1'b0;
		endcase
	end
	
	// Inst Write RD
	always_comb begin
		case (inst_type)
			R, I, J, U:
				inst_write_rd = 1'b1;
			default:
				inst_write_rd = 1'b0;
		endcase
	end
	
	// Inst Write Mem
	assign inst_write_mem = opcode == STORE ? 1'b1 : 1'b0;
	
	// Inst Read Mem
	assign inst_read_mem = opcode == LOAD ? 1'b1 : 1'b0;
	
	// Inst Change PC
	always_comb begin
		case (opcode)
			JAL, JALR, BRANCH:
				inst_change_pc = 1'b1;
			default:
				inst_change_pc = 1'b0;
		endcase
	end
	
	
	// RS1 & Func3
	always_comb begin
		case (inst_type)
			R, I, S, B: begin 
				rs1 = inst[19:15];
				func3 = inst[14:12];
			end
			default: begin
				func3 = '0;
				rs1 = '0;
			end
		endcase
	end
	
	// RS2
	always_comb begin
		case (inst_type)
			R, S, B: begin 
				rs2 = inst[24:20];
			end
			default: begin
				rs2 = '0;
			end
		endcase
	end
	
	// RD
	always_comb begin
		case (inst_type)
			R, I, U, J: begin 
				rd = inst[11:7];
			end
			default: begin
				rd = '0;
			end
		endcase
	end
	
	// Func7
	always_comb begin
		case (inst_type)
			R: begin 
				func7 = inst[31:25];
			end
			default: begin
				func7 = '0;
			end
		endcase
	end
	
	// Imm
	always_comb begin
		imm = '0;
		case (inst_type)
			I: begin 
				imm = {{20{inst[31]}}, inst[31:20]};
			end
			S: begin 
				imm[11:5] = inst[31:25];
				imm[4:0] = inst[11:7];
			end
			B: begin 
				imm[12] = inst[31];
				imm[10:5] = inst[30:25];
				imm[4:1] = inst[11:8];
				imm[11] = inst[7];
			end
			U: begin 
				imm[31:12] = inst[31:12];
			end
			J: begin 
				imm[20] = inst[31];
				imm[10:1] = inst[30:21];
				imm[11] = inst[20];
				imm[19:12] = inst[19:12];
			end
			default: 
				imm = '0;
		endcase
	end
	
endmodule