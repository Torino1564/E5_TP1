package fp_ops;

	typedef enum logic [3:0] {
			FP_ADD  		= 4'd0,
			FP_SUB  		= 4'd1,
			FP_MUL  		= 4'd2,
			FP_DIV  		= 4'd3,
			FP_SQRT 		= 4'd4,
			FP_MAX  		= 4'd5,
			FP_MIN  		= 4'd6,
			FP_EQ   		= 4'd7,
			FP_LT   		= 4'd8,
			FP_LE   		= 4'd9,
         FP_I2F      = 4'd10, 
         FP_UI2F     = 4'd11, 
         FP_F2I      = 4'd12, 
         FP_F2UI     = 4'd13  
		} FP_OPS;
		
endpackage