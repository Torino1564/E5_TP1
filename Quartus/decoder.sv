module decoder
(
	input wire clk,
	input wire [31:0] inst,
	output reg [4:0] rs1,
	output reg [4:0] rs2,
	output wire [6:0] opcode,
	output reg [2:0] func3,
	output reg [6:0] func7,
	output reg [31:0] imm,
	output reg [2:0] inst_type
);
	// Define instruction types
	enum bit[2:0] {R, I, S, B, U, J, E} 	INST_TYPE;
	
	assign opcode = inst[6:0];
	
	// Resolve instruction type
	
	always @(*) begin
		case (opcode)
			7'b0000011: inst_type = R;	// LOAD
			7'b0110011: inst_type = I;	// OP
			7'b1010011: inst_type = I;	// OP-IMM
			7'b0100011: inst_type = S;	// STORE
			7'b1100011: inst_type = B;	// BRANCH
			7'b1101111: inst_type = J;	// JAL
			7'b0100011: inst_type = U;	// LUI
			7'b0010111: inst_type = U;	// AUIPC
			default:		inst_type = E; // ERROR
		endcase
	end
	
endmodule