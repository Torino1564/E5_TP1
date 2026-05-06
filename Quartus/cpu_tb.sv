`timescale 1ns/1ps

module cpu_tb;

	reg clk = 1;
	reg n_rst;
	
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		clk = 0;
		n_rst = 0;
		
		#20 n_rst = 1;
	end
	
	cpu cpu_inst (
		.clk(clk),
		.n_rst(n_rst)
	);

endmodule