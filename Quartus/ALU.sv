module ALU (
	
	// INPUTS
	input wire [6:0] op,
	input wire [31:0] A,
	input wire [31:0] B,
	
	// OUTPUTS
	output reg [31:0] result
);
	
	typedef enum logic [6:0]
	{
		ADD 	= 3'd0,
		SUB 	= 3'd1,
		AND 	= 3'd2,
		OR 	= 3'd3,
		XOR 	= 3'd4
	} OperationType;
	
	always @(*) begin
		case (op)
			ADD: result = A + B;
			SUB: result = A - B;
			AND: result = A & B;
			OR: result = A | B;
			XOR: result = A^B;
			default: result = result;
		endcase
	end
	
endmodule