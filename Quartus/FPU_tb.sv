`timescale 1ns/1ps

module FPU_tb;
	
	shortreal a, b, expected;
	
	reg clk;       // s1.clk
	reg clk_en;    //   .clk_en
	reg [31:0] dataa;     //   .dataa
	reg [31:0] datab;     //   .datab
	reg [2:0] n;         //   .n
	reg reset;     //   .reset
	reg reset_req; //   .reset_req
	reg start;     //   .start
	wire done;      //   .done
	wire [31:0] result;    //   .result
	
	always #5 clk = ~clk;
	
integer i;

initial begin
	 clk = 0;
    reset = 1;
    repeat(5) @(posedge clk);
    reset = 0;

    clk_en = 1;
    reset_req = 0;

    for(i = 0; i < 8; i++) begin

        @(posedge clk);

        dataa <= 32'h3FC00000; // 1.5
        datab <= 32'h40100000; // 2.25

        n <= i;

        start <= 1;

        @(posedge clk);

        start <= 0;

        wait(done);

        $display(
            "n=%0d result=%h float=%f",
            i,
            result,
            $bitstoshortreal(result)
        );

        repeat(3) @(posedge clk);
    end

    #40 $stop;
end

	FPU FPU_inst (
		.clk(clk),
		.clk_en(clk_en),
		.dataa(dataa),
		.datab(datab),
		.n(n),
		.reset(reset),
		.reset_req(reset_req),
		.start(start),
		.done(done),
		.result(result)
	);

endmodule