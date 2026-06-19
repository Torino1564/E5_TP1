`timescale 1ns/1ps
`define F(x) $shortrealtobits(x)

import fp_ops::*;

module fp_alu_tb;

    logic        clk;
    logic        start;
    logic [31:0] a;
    logic [31:0] b;
    FP_OPS  op;
    logic [31:0] result;

    fp_alu dut (
        .clk(clk),
        .start(start),
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );

    //---------------------------------------------------------
    // Clock
    //---------------------------------------------------------

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    //---------------------------------------------------------
    // Helper task
    //---------------------------------------------------------

    task execute(
        input logic [3:0] op_i,
        input logic [31:0] a_i,
        input logic [31:0] b_i
    );
    begin
        @(negedge clk);

        op    = op_i;
        a     = a_i;
        b     = b_i;
        start = 1'b1;

        // Adjust according to IP latency
        repeat (20) @(posedge clk);
		  start = 1'b0;
        $display(
				 "t=%0t op=%0d a=%f b=%f result=%f",
				 $time,
				 op_i,
				 $bitstoshortreal(a_i),
				 $bitstoshortreal(b_i),
				 $bitstoshortreal(result)
			);
    end
    endtask

    //---------------------------------------------------------
    // Tests
    //---------------------------------------------------------
	
    initial begin

         start = 0;
         op    = 0;
         a     = 0;
         b     = 0;

         repeat(5) @(posedge clk);

         execute(FP_ADD , `F(1.5),  `F(2.5));
			execute(FP_SUB , `F(2.5),  `F(1.5));
			execute(FP_MUL , `F(2.0),  `F(4.0));
			execute(FP_DIV , `F(8.0),  `F(2.0));
			execute(FP_SQRT, `F(16.0), 32'h0);
			execute(FP_MAX , `F(2.0),  `F(4.0));
			execute(FP_MIN , `F(2.0),  `F(4.0));
			execute(FP_EQ  , `F(2.0),  `F(2.0));
			execute(FP_LT  , `F(2.0),  `F(4.0));
			execute(FP_LE  , `F(4.0),  `F(4.0));
			execute(FP_LT  , `F(4.0),  `F(4.0));

         #200;
         $stop;

    end

endmodule