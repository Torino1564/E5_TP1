import stage::*;
import opcodes::*;

module halt_control(
	input wire clk,
	input wire n_rst,
	
	input stage_t pipeline[NUM_STAGES],
	input stage_t current_decode,
	input wire mem_ready,
	
	output logic forward_A,
	output logic forward_B,
	output logic forward_SAW,
	
	output reg [NUM_STAGES-1:0] stage_enable,
	output reg [NUM_STAGES-1:0] stage_flush
);
	
	always_comb begin
		if (~n_rst) begin
			forward_A = 'b0;
			forward_B = 'b0;
		end
		else begin
			forward_A = 'b0;
			forward_B = 'b0;
			if (pipeline[MEMORY_STAGE].rd != 'b0) begin
				if (pipeline[EXECUTION_STAGE].rs1 == pipeline[MEMORY_STAGE].rd)
					forward_A = 1'b1;
				else if (pipeline[EXECUTION_STAGE].rs2 == pipeline[MEMORY_STAGE].rd)
					forward_B = 1'b1;
			end
			if (pipeline[MEMORY_STAGE].opcode == STORE && (pipeline[WRITEBACK_STAGE].rd == pipeline[MEMORY_STAGE].rs2))
				forward_SAW = 1'b1;
			else
				forward_SAW = 1'b0;
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