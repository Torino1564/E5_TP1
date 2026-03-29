module ALU_tb;

	reg [6:0] op;
	reg [31:0] A;
	reg [31:0] B;
	
	typedef enum logic [6:0]
	{
		ADD 	= 3'd0,
		SUB 	= 3'd1,
		AND 	= 3'd2,
		OR 	= 3'd3,
		XOR 	= 3'd4
	} OperationType;
	
	wire [31:0] result;
	
	initial begin
		A = -32'd_1;
		B = 32'd_1;
		op = ADD;
	
		#10
		
		A = 32'b10101;
		B = 32'b00100;
		op = AND;
		
		#10
		
		A = 32'd200;
		B = -32'd100;
		op = SUB;
		
		#10
		
		A = 32'b11000;
		B = 32'b01001;
		op = XOR;
		
	end
	
	ALU alu_inst (
		.op(op),
		.A(A),
		.B(B),
		.result(result)
	);

endmodule