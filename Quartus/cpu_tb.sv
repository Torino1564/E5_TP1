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
	
	cpu #(.SIMULATION(1)) cpu_inst (
		.clk_in(clk),
		.n_rst_in(n_rst)
	);

endmodule