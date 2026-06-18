import fp_ops::*;

module fp_alu (
    input logic clk,
    input logic reset,
	 
    input FP_OPS op,

    input logic [31:0] a,
    input logic [31:0] b,
    output logic [31:0] result,

    input logic a_stb,
    input logic b_stb,
    output logic result_stb,

    output logic a_ack,
    output logic b_ack,
    input logic result_ack
);

    logic [31:0] add_result, add_a_stb, add_b_stb;
    logic [31:0] mul_result, mul_a_stb, mul_b_stb;
    logic [31:0] div_result, div_a_stb, div_b_stb;

    logic add_result_stb;
    logic mul_result_stb;
    logic div_result_stb;

    logic add_a_ack;
    logic add_b_ack;
    logic add_result_ack;

    logic mul_a_ack;
    logic mul_b_ack;
    logic mul_result_ack;

    logic div_a_ack;
    logic div_b_ack;
    logic div_result_ack;
	 
    adder adder_inst (
        .input_a(a),
        .input_b(op == FSUB ? b : -b),
        .input_a_stb(add_a_stb),
        .input_b_stb(add_b_stb),
        .output_z_ack(add_result_ack),
        .clk(clk),
        .rst(reset),
        .output_z(add_result),
        .output_z_stb(add_result_stb),
        .input_a_ack(add_a_ack),
        .input_b_ack(add_b_ack)
    );

    multiplier mult_inst (
        .input_a(a),
        .input_b(b),
        .input_a_stb(mul_a_stb),
        .input_b_stb(mul_b_stb),
        .output_z_ack(mul_result_ack),
        .clk(clk),
        .rst(reset),
        .output_z(mul_result),
        .output_z_stb(mul_result_stb),
        .input_a_ack(mul_a_ack),
        .input_b_ack(mul_b_ack)
    );

    divider div_inst (
        .input_a(a),
        .input_b(b),
        .input_a_stb(div_a_stb),
        .input_b_stb(div_b_stb),
        .output_z_ack(div_result_ack),
        .clk(clk),
        .rst(reset),
        .output_z(div_result),
        .output_z_stb(div_result_stb),
        .input_a_ack(div_a_ack),
        .input_b_ack(div_b_ack)
    );

    
	 always_comb begin
        result     = '0;
        result_stb = 1'b0;
        a_ack      = 1'b0;
        b_ack      = 1'b0;
		  add_a_stb = 'x;
		  add_b_stb = 'x;
		  add_result_ack = 'x;
		  mul_a_stb = 'x;
		  mul_b_stb = 'x;
		  mul_result_ack ='x;
		  div_a_stb = 'x;
		  div_b_stb = 'x;
		  div_result_ack = 'x;
		  
        case (op)
            FADD, FSUB: begin
					result     = add_result;
					result_stb = add_result_stb;
					a_ack      = add_a_ack;
					b_ack      = add_b_ack;
					add_result_ack = result_ack;
					add_a_stb  = a_stb;
					add_b_stb  = b_stb;
				end

            FMUL: begin
					result     = mul_result;
					result_stb = mul_result_stb;
					a_ack      = mul_a_ack;
					b_ack      = mul_b_ack;
					mul_result_ack = result_ack;
					mul_a_stb  = a_stb;
					mul_b_stb  = b_stb;
				end

            FDIV: begin
					result     = div_result;
					result_stb = div_result_stb;
					a_ack      = div_a_ack;
					b_ack      = div_b_ack;
					div_result_ack = result_ack;
					div_a_stb  = a_stb;
					div_b_stb  = b_stb;
				end
		endcase
    end

endmodule