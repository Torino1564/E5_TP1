import stage::*;

module halt_control(
	input wire clk,
	input wire n_rst,
	
	input stage_t pipeline,
	
	input wire mem_ready,
	
	output reg [NUM_STAGES-1:0] stage_enable,
	output reg [NUM_STAGES-1:0] stage_flush
);
	reg [2:0] clocks_since_control_hazard = 'b0;
	always_ff @(posedge clk) begin
		if (~n_rst)
			clocks_since_control_hazard <= 'b0;
		else begin
			clocks_since_control_hazard <= clocks_since_control_hazard + 'b1;
		end
	end
	
	int i;
	
	
	// Fetch Stage
	always_comb begin
		if (~n_rst)
			stage_enable[FETCH_STAGE] = 1'b0;
		else begin
			stage_enable[FETCH_STAGE] = 1'b1;
			stage_flush[FETCH_STAGE] = 1'b0;
			if (pipeline[MEMORY_STAGE].inst_read_mem && !mem_ready) begin
				stage_enable[FETCH_STAGE] = 1'b0;
			end
			// TODO
//			else if (prev_instr_change_pc) begin
//				stage_flush[FETCH_STAGE] = 1'b1;
//			end
		end
	end

endmodule