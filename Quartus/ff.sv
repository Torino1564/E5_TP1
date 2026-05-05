module ff #(
	parameter SIZE = 31
)(
	input 	logic clk,
	input 	logic ena,
	input 	logic n_rst,
	
	input 	logic [SIZE-1:0] d,
	output 	logic [SIZE-1:0] q
);

	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst)
			q <= '0;
		else if (ena) 
			q <= d;
	end

endmodule
