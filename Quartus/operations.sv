package operations;

	typedef enum logic [6:0]
	{
		ADD 		= 7'd0,
		SUB 		= 7'd1,
		AND 		= 7'd2,
		OR 		= 7'd3,
		XOR 		= 7'd4,
		ULESS		= 7'd5,
		LESS		= 7'd6,
		LESSEQ 	= 7'd7,
		EQ			= 7'd8
	} OperationType;

endpackage