package opcodes;

	typedef enum logic [6:0] {
			LOAD 		=  7'b0000011,
			OP			=  7'b0110011,
			OP_IMM	=  7'b0010011,
			STORE		=  7'b0100011,
			BRANCH	=  7'b1100011,
			JAL		=  7'b1101111,
			LUI		=  7'b0110111,
			AUIPC		=  7'b0010111
	} Opcodes;

endpackage