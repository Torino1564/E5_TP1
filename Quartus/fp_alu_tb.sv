`timescale 1ns/1ps

import fp_ops::*;

module fp_alu_tb;

    logic [31:0] a, b, result;
    logic a_stb, b_stb;
    logic result_stb;
    logic a_ack, b_ack;
    logic result_ack;
    logic clk, reset;
	
	 FP_OPS op;
	
    fp_alu fp_alu_inst(
        .a(a),
        .b(b),
        .a_stb(a_stb),
        .b_stb(b_stb),
        .result_ack(result_ack),
        .clk(clk),
        .reset(reset),
		  .op(op),
        .result(result),
        .result_stb(result_stb),
        .a_ack(a_ack),
        .b_ack(b_ack)
    );

    always #5 clk = ~clk;

    initial begin
        clk        = 0;
        reset      = 1;

        a          = 0;
        b          = 0;
        a_stb      = 0;
        b_stb      = 0;
        result_ack = 0;
		  op = FDIV;
		  
        // Reset
        #20;
        reset = 0;

        @(posedge clk);

        // 1.0 + 2.0 = 3.0
        a = $shortrealtobits(672.4);
        b = $shortrealtobits(47.5);

        a_stb = 1;
        b_stb = 1;

        // Wait until the adder accepts both operands
        wait (a_ack && b_ack);

        @(posedge clk);
        a_stb = 0;
        b_stb = 0;

        // Wait for result
        wait (result_stb);

        result_ack = 1;
        @(posedge clk);
        result_ack = 0;

        #100;
        $finish;
    end

endmodule