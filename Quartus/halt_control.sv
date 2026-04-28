module halt_control
#(
	parameter NUM_STAGES = 1,
	parameter FETCH_STAGE = 0
)(
	input wire clk,
	input wire n_rst,
	
	input wire mem_ready,
	input wire mem_read_instr,
	input wire prev_instr_change_pc,
	
	output reg [NUM_STAGES-1:0] stage_enable,
	output reg [NUM_STAGES-1:0] stage_flush
);
	int i;
	// Fetch Stage
	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst)
			stage_enable[FETCH_STAGE] <= 1'b0;
		else begin
			stage_enable[FETCH_STAGE] <= 1'b1;
			stage_flush[FETCH_STAGE] <= 1'b0;
			if (mem_read_instr && !mem_ready) begin
				stage_enable[FETCH_STAGE] <= 1'b0;
			end
			else if (prev_instr_change_pc) begin
				stage_flush[FETCH_STAGE] <= 1'b1;
			end
		end
	end

endmodule