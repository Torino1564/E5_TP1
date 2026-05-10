import stage::*;
import opcodes::*;

module halt_control(
	input wire clk,
	input wire n_rst,
	
	input stage_t pipeline[NUM_STAGES],
	input stage_t current_decode,
	input wire mem_ready,
	
	output logic forward_A,
	output logic [2:0] forward_A_from,
	output logic forward_B,
	output logic [2:0] forward_B_from,
	
	input logic decode_change_pc_request,
	
	output logic stall,
	
	output reg [NUM_STAGES-1:0] stage_enable,
	output reg [NUM_STAGES-1:0] stage_flush
);
	reg load_use_hazard;
	
	// Forward logic
	always_comb begin
	load_use_hazard = 1'b0;
		if (~n_rst) begin
			forward_A = 'b0;
			forward_B = 'b0;
			forward_A_from = 'b0;
			forward_B_from = 'b0;
		end
		else begin
			forward_A = 'b0;
			forward_B = 'b0;
			forward_A_from = 'b0;
			forward_B_from = 'b0;
			
			if (pipeline[EXECUTION_STAGE].rs1 != 'b0) begin
				if (pipeline[EXECUTION_STAGE].rs1 == pipeline[MEMORY_STAGE].rd) begin
					forward_A = 1'b1;
					forward_A_from = MEMORY_STAGE;
					if (pipeline[MEMORY_STAGE].inst_read_mem) begin
						forward_A_from = WRITEBACK_STAGE;
						if (!mem_ready)
							load_use_hazard = 1'b1;
					end
				end else if (pipeline[EXECUTION_STAGE].rs1 == pipeline[WRITEBACK_STAGE].rd) begin
					forward_A = 1'b1;
					forward_A_from = WRITEBACK_STAGE;
				end
			end
			
			if (pipeline[EXECUTION_STAGE].rs2 != 'b0) begin
				if (pipeline[EXECUTION_STAGE].rs2 == pipeline[MEMORY_STAGE].rd) begin
					forward_B = 1'b1;
					forward_B_from = MEMORY_STAGE;
					if (pipeline[MEMORY_STAGE].inst_read_mem) begin
						forward_B_from = WRITEBACK_STAGE;
						if (!mem_ready)
							load_use_hazard = 1'b1;
					end
				end else if (pipeline[EXECUTION_STAGE].rs2 == pipeline[WRITEBACK_STAGE].rd) begin
					forward_B = 1'b1;
					forward_B_from = WRITEBACK_STAGE;
				end
			end
		end
	end
	
	// Halt Logic
	always_comb begin
		if (~n_rst) begin
			stage_enable = {NUM_STAGES{1'b0}};
			stage_flush = {NUM_STAGES{1'b1}};
			stall = 1'b1;
		end
		else begin
			stage_enable = {NUM_STAGES{1'b1}};
			stage_flush = {NUM_STAGES{1'b0}};
			stall = 1'b0;
			if ((pipeline[MEMORY_STAGE].inst_read_mem && !mem_ready) || load_use_hazard) begin
				stage_enable[FETCH_STAGE] = 1'b0;
				stage_enable[DECODE_STAGE] = 1'b0;
				stage_enable[EXECUTION_STAGE] = 1'b0;
			end
			if (decode_change_pc_request || (pipeline[DECODE_STAGE].inst == STALL_INST))
				stall = 1'b1;
			if (pipeline[EXECUTION_STAGE].inst == STALL_INST)
				stall = 1'b0;
		end
	end

endmodule