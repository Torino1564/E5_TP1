module fetch (
	input wire clk,
	input wire n_rst,
	input wire halt,
	
	output wire [12:0] instruction_address,
	output reg [31:0] pc,
	output reg [31:0] next_pc,
	
	input wire [31:0] rom_out_port,
	input wire [31:0] alu_result,
	output wire [31:0] inst,
	
	input wire inst_change_pc, prev_inst_change_pc
);
	reg [31:0] prev_inst = 'b0;
	
	always_ff @(posedge clk) begin
		if (~n_rst) begin
			pc <= 'b0;
			next_pc <= 'b0;
			prev_inst <= 'b0;
		end
		else if (~halt) begin
			pc <= next_pc;
			next_pc <= next_next_pc;
			prev_inst <= inst;
		end
	end
	
	assign next_next_pc = ~inst_change_pc ? next_pc + 'd4 : alu_result;
	assign instruction_address = next_pc[14:2];
	assign inst = (prev_inst_change_pc) ? 'b0 : rom_out_port;

endmodule