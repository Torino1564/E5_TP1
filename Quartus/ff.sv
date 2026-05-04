module ff #(
	parameter type T = logic [31:0]
)(
	input 	logic clk,
	input 	logic ena,
	input 	logic n_rst,
	
	input 	T d,
	output 	T q
);

	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst)
			q <= '0;
		else if (ena) 
			q <= d;
	end

endmodule
