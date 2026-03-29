module decoder
(
	input wire clk,
	input wire [31:0] inst,
	output reg [4:0] rs1,
	output reg [4:0] rs2,
	output reg [4:0] rd,
	output wire [6:0] opcode,
	output reg [2:0] func3,
	output reg [6:0] func7,
	output reg [31:0] imm
);
	// Define instruction types
	enum bit[2:0] {R, I, S, B, U, J, E} 	INST_TYPE;
	
	assign opcode = inst[6:0];
	
	// Resolve instruction type
	reg [2:0] inst_type;
	always @(*) begin
		case (opcode)
			7'b0000011: inst_type = R;	// LOAD
			7'b0110011: inst_type = I;	// OP
			7'b1010011: inst_type = I;	// OP-IMM
			7'b0100011: inst_type = S;	// STORE
			7'b1100011: inst_type = B;	// BRANCH
			7'b1101111: inst_type = J;	// JAL
			7'b0110111: inst_type = U;	// LUI
			7'b0010111: inst_type = U;	// AUIPC
			default:		inst_type = E; // ERROR
		endcase
	end
	
	// Assign outputs
	
	// RS1 & Func3
	always @(*) begin
		case (inst_type)
			R, I, S, B: begin 
				rs1 = inst[19:15];
				func3 = inst[14:12];
			end
			default: begin
				func3 = func3;
				rs1 = rs1;
			end
		endcase
	end
	
	// RS2
	always @(*) begin
		case (inst_type)
			R, S, B: begin 
				rs2 = inst[24:20];
			end
			default: begin
				rs2 = rs2;
			end
		endcase
	end
	
	// RD
	always @(*) begin
		case (inst_type)
			R, I, U, J: begin 
				rd = inst[11:7];
			end
			default: begin
				rd = rd;
			end
		endcase
	end
	
	// Func7
	always @(*) begin
		case (inst_type)
			R: begin 
				func7 = inst[31:25];
			end
			default: begin
				func7 = func7;
			end
		endcase
	end
	
	// Imm
	always @(*) begin
		case (inst_type)
			I: begin 
				imm[11:0] = inst[31:20];
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
			default: begin
				imm = imm;
			end
		endcase
	end
	
endmodule