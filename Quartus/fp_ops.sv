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
		
		typedef logic [4:0] FP_LAT;
		
		parameter FP_LAT FP_ADD_LAT  		= 5'd5;
		parameter FP_LAT FP_MUL_LAT  		= 5'd3;
		parameter FP_LAT FP_DIV_LAT  		= 5'd9;
		parameter FP_LAT FP_SQRT_LAT 		= 5'd6;
		parameter FP_LAT FP_MAX_LAT  		= 5'd0;
		parameter FP_LAT FP_MIN_LAT  		= 5'd0;
		parameter FP_LAT FP_EQ_LAT   		= 5'd0;
		parameter FP_LAT FP_LT_LAT   		= 5'd1;
		parameter FP_LAT FP_LE_LAT   		= 5'd1;
		parameter FP_LAT FP_I2F_LAT      = 5'd4;
		parameter FP_LAT FP_F2I_LAT      = 5'd2;
		
		
		localparam FP_LAT FP_LATENCY [2 ** $bits(FP_OPS)] = '{
				 default : 5'd0,
				 FP_ADD  : FP_ADD_LAT,
				 FP_SUB  : FP_ADD_LAT,
				 FP_MUL  : FP_MUL_LAT,
				 FP_DIV  : FP_DIV_LAT,
				 FP_SQRT : FP_SQRT_LAT,
				 FP_MAX  : FP_MAX_LAT,
				 FP_MIN  : FP_MIN_LAT,
				 FP_EQ   : FP_EQ_LAT,
				 FP_LT   : FP_LT_LAT,
				 FP_LE   : FP_LE_LAT,
				 FP_I2F  : FP_I2F_LAT,
				 FP_UI2F : FP_I2F_LAT,
				 FP_F2I  : FP_F2I_LAT,
				 FP_F2UI : FP_F2I_LAT
		};
		
		typedef logic [4:0] FUNC5;
		localparam FUNC5 FUNC5_LUT [2 ** $bits(FP_OPS)] = '{
				 default : 5'd0,
				 FP_ADD  : 5'b00000,
				 FP_SUB  : 5'b00001,
				 FP_DIV	: 5'b00011,
				 FP_MUL  : 5'b00010,
				 FP_SQRT : 5'b01011
		};
		
endpackage