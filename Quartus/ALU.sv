import operations::*;

module ALU(
	
	// INPUTS
	input wire [6:0] op,
	input wire [31:0] A,
	input wire [31:0] B,
	
	// OUTPUTS
	output reg [31:0] result
);
	
	always_comb begin
		case (op)
			ADD: result = A + B;
			SUB: result = A - B;
			AND: result = A & B;
			OR: result = A | B;
			XOR: result = A ^ B;
			LESS: result = A < B;
			LESSEQ: result = A <= B;
			EQ: result = A	== B;
			default: result = 'z;
		endcase
	end
	
endmodule