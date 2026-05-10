import opcodes::*;

module fetch (
	input wire clk,
	input wire n_rst,
	input wire ena,
	input wire flush,
	input wire stall,
	
	output wire [11:0] instruction_address,
	output wire [31:0] pc,
	
	input wire [31:0] rom_out_port,
	input wire [31:0] alu_result,
	output wire [31:0] inst,
	
	input wire inst_change_pc
);
	wire [31:0] next_pc;
	reg [31:0] prev_pc;
	reg [31:0] current_pc;
	always_ff @(posedge clk) begin
		if (~n_rst) begin
			current_pc <= 'b0;
			prev_pc <= 'b0;
		end
		else if (ena) begin
			if (!stall) begin
				current_pc <= next_pc;
				prev_pc <= current_pc;
			end else begin
				current_pc <= prev_pc;
			end
			if (inst_change_pc)
				current_pc <= alu_result + 'd4;
		end
	end
	
	assign next_pc = current_pc + 'd4;
	assign instruction_address = ~inst_change_pc ? current_pc[14:2] : alu_result[14:2];
	assign inst = (~flush) ? (stall ? STALL_INST : rom_out_port ): NOP;
	assign pc = prev_pc;

endmodule