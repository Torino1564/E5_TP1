import fp_ops::*;

module fp_alu
(
    input  logic        					clk,
    input  logic        					start,

    input  logic [31:0] 					a,
    input  logic [31:0] 					b,

    input  logic [$bits(FP_OPS)-1:0] 	op,

    output logic [31:0] 					result
);

    //----------------------------------------------------------------------
    // Enables
    //----------------------------------------------------------------------

    logic add_ena;
    logic mul_ena;
    logic div_ena;
    logic sqrt_ena;
    logic max_ena;
    logic min_ena;
    logic eq_ena;
    logic lt_ena;
    logic le_ena;
	 logic i2f_ena;
	 logic f2i_ena;
	 
    always_comb begin

        add_ena  = 1'b0;
        mul_ena  = 1'b0;
        div_ena  = 1'b0;
        sqrt_ena = 1'b0;
        max_ena  = 1'b0;
        min_ena  = 1'b0;
        eq_ena   = 1'b0;
        lt_ena   = 1'b0;
        le_ena   = 1'b0;
		  i2f_ena  = 1'b0;
		  f2i_ena  = 1'b0;

        unique case(op)

            FP_ADD, FP_SUB  : add_ena  = start;
            FP_MUL  			 : mul_ena  = start;
            FP_DIV  			 : div_ena  = start;
            FP_SQRT 			 : sqrt_ena = start;
            FP_MAX  			 : max_ena  = start;
            FP_MIN  			 : min_ena  = start;
            FP_EQ   			 : eq_ena   = start;
            FP_LT   			 : lt_ena   = start;
            FP_LE   			 : le_ena   = start;
				FP_I2F, FP_UI2F : i2f_ena  = start;
				FP_F2I, FP_F2UI : f2i_ena  = start;

            default : ;

        endcase

    end

    //----------------------------------------------------------------------
    // Results
    //----------------------------------------------------------------------

    logic [31:0] add_result;
    logic [31:0] mul_result;
    logic [31:0] div_result;
    logic [31:0] sqrt_result;
    logic [31:0] max_result;
    logic [31:0] min_result;
    logic [31:0] i2f_result;
    logic [32:0] f2i_result;

    logic eq_result;
    logic lt_result;
    logic le_result;

    //----------------------------------------------------------------------
    // Arithmetic
    //----------------------------------------------------------------------

    fadd u_add (
        .clk(clk),
        .en(add_ena),
        .a(a),
        .b(b),
		  .opSel(op == FP_ADD),
        .q(add_result)
    );

    fmul u_mul (
        .clk(clk),
        .en(mul_ena),
        .a(a),
        .b(b),
        .q(mul_result)
    );

    fdiv u_div (
        .clk(clk),
        .en(div_ena),
        .a(a),
        .b(b),
        .q(div_result)
    );

    fsqrt u_sqrt (
        .clk(clk),
        .en(sqrt_ena),
        .a(a),
        .q(sqrt_result)
    );

    fmax u_max (
        .clk(clk),
        .en(max_ena),
        .a(a),
        .b(b),
        .q(max_result)
    );

    fmin u_min (
        .clk(clk),
        .en(min_ena),
        .a(a),
        .b(b),
        .q(min_result)
    );

    //----------------------------------------------------------------------
    // Comparisons
    //----------------------------------------------------------------------

    feq u_eq (
        .clk(clk),
        .en(eq_ena),
        .a(a),
        .b(b),
        .q(eq_result)
    );

    flt u_lt (
        .clk(clk),
        .en(lt_ena),
        .a(a),
        .b(b),
        .q(lt_result)
    );

    fle u_le (
        .clk(clk),
        .en(le_ena),
        .a(a),
        .b(b),
        .q(le_result)
    );
	 
	 //----------------------------------------------------------------------
    // Conversions
    //----------------------------------------------------------------------
	
	ff2i u_ff2i (
		  .clk(clk),
		  .en(f2i_ena),
		  .a(a),
		  .q(f2i_result)
	 );
	 
	 fi2f u_fi2f (
		  .clk(clk),
		  .en(i2f_ena),
		  .a(a),
		  .q(i2f_result)
	 );
	
	 //----------------------------------------------------------------------
    // Conversion Inputs
    //----------------------------------------------------------------------

	 
	 
	 logic [32:0] i2f_input;

	 always_comb begin
	 	 case (op)
	 		  FP_I2F    : i2f_input = {a[31], a};
	 		  FP_UI2F   : i2f_input = {1'b0,  a};
	 		  default   : i2f_input = '0;
	 	 endcase
	 end

    //----------------------------------------------------------------------
    // Output Mux
    //----------------------------------------------------------------------

    always_comb begin

        result = 32'b0;

        unique case(op)

            FP_ADD, FP_SUB  : result = add_result;
            FP_MUL  : result = mul_result;
            FP_DIV  : result = div_result;
            FP_SQRT : result = sqrt_result;
            FP_MAX  : result = max_result;
            FP_MIN  : result = min_result;

            FP_EQ   : result = {31'b0, eq_result};
            FP_LT   : result = {31'b0, lt_result};
            FP_LE   : result = {31'b0, le_result};

            default : result = 32'b0;

        endcase

    end

endmodule