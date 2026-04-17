import operations::*;

module ALU(
	
	// INPUTS
	input wire [6:0] op,
	input wire signed [31:0] A,
	input wire signed [31:0] B,
	
	// OUTPUTS
	output reg [31:0] result
);

	wire [31:0] u_A, u_B;
	
	assign u_A = A;
	assign u_B = B;
	
	always_comb begin
		case (op)
			ADD: result = A + B;
			SUB: result = A - B;
			AND: result = A & B;
			OR: result = A | B;
			XOR: result = A ^ B;
			LESS: result = A < B;
			ULESS: result = u_A < u_B;
			LESSEQ: result = A <= B;
			EQ: result = A	== B;
			SLL: result = A << u_B;
			SRL: result = A >> u_B;
			SRA: result = A >>> u_B;
			OA: result = A;
			default: result = 'z;
		endcase
	end
	
endmodule