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
	
	output reg [NUM_STAGES-1:0] stage_enable,
	output reg [NUM_STAGES-1:0] stage_flush
);
	int i;
	always_comb begin
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
				end else if (pipeline[EXECUTION_STAGE].rs1 == pipeline[WRITEBACK_STAGE].rd) begin
					forward_A = 1'b1;
					forward_A_from = WRITEBACK_STAGE;
				end
			end
			
			if (pipeline[EXECUTION_STAGE].rs2 != 'b0) begin
				if (pipeline[EXECUTION_STAGE].rs2 == pipeline[MEMORY_STAGE].rd) begin
					forward_B = 1'b1;
					forward_B_from = MEMORY_STAGE;
				end else if (pipeline[EXECUTION_STAGE].rs2 == pipeline[WRITEBACK_STAGE].rd) begin
					forward_B = 1'b1;
					forward_B_from = WRITEBACK_STAGE;
				end
			end
		end
	end
	
	always_comb begin
		if (~n_rst) begin
			stage_enable = {NUM_STAGES{1'b0}};
			stage_flush = {NUM_STAGES{1'b1}};
		end
		else begin
			stage_enable = {NUM_STAGES{1'b1}};
			stage_flush = {NUM_STAGES{1'b0}};
			if (pipeline[MEMORY_STAGE].inst_read_mem && !mem_ready) begin
				stage_enable[FETCH_STAGE] = 1'b0;
			end
			else if (pipeline[DECODE_STAGE].inst_change_pc_request) begin
				stage_flush[FETCH_STAGE] = 1'b1;
			end
			else if (pipeline[REGISTER_STAGE].inst_change_pc_request)
				stage_enable[FETCH_STAGE] = 1'b0;
		end
	end

endmodule