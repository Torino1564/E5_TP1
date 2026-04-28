module fifo
#(
	parameter NUM_STAGES,
	parameter WORD_SIZE = 32
)(
	input logic [WORD_SIZE-1:0] new_value,
	output logic [WORD_SIZE-1:0] values [NUM_STAGES],
	
	input wire clk,
	input wire ena,
	input wire n_rst
);
	int i;
	
	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst) begin
			for (i = 0; i < NUM_STAGES; i++)
				values[i] <= '0;
		end
		else if (ena) begin
			values[0] <= new_value;
			for (i = 1; i < NUM_STAGES; i++) begin
				values[i] <= values[i-1];
			end
		end
	end

endmodule