`timescale 1ns/1ps

module program_memory_tb;

	reg inaclr_sig, outaclr_sig, inclocken_sig, outclocken_sig, rden_sig;
	reg clk;
	
	reg [12:0] address_sig;
	wire [31:0] q_sig;
	
	always begin
		#5 clk = ~clk;
	end
	
	wire inclock_sig, outclock_sig;
	assign inclock_sig = clk;
	assign outclock_sig = clk;
	
	integer i;
	initial begin
		clk = 0;
		#5
		rden_sig = 'b1;
		outaclr_sig = 'b0;
		inaclr_sig = 'b0;
		outclocken_sig = 'b1;
		inclocken_sig = 'b1;
		
		#20 address_sig = 'b0;
		
		
		for (i = 0; i < 8; i = i + 1) begin
			#20 address_sig = address_sig + 'h1;
		end	
	end

	program_memory	program_memory_inst (
		.address ( address_sig ),
		.inaclr ( inaclr_sig ),
		.inclock ( inclock_sig ),
		.inclocken ( inclocken_sig ),
		.outaclr ( outaclr_sig ),
		.outclock ( outclock_sig ),
		.outclocken ( outclocken_sig ),
		.rden ( rden_sig ),
		.q ( q_sig )
	);

endmodule