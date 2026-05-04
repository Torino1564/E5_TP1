module fetch (
	input wire clk,
	input wire n_rst,
	input wire ena,
	input wire flush,
	
	output wire [12:0] instruction_address,
	output reg [31:0] pc,
	
	input wire [31:0] rom_out_port,
	input wire [31:0] alu_result,
	output wire [31:0] inst,
	
	input wire inst_change_pc
);
	wire [31:0] next_pc;
	
	always_ff @(posedge clk) begin
		if (~n_rst) begin
			pc <= 'b0;
		end
		else if (ena) begin
			pc <= next_pc;
		end
	end
	
	assign next_pc = ~inst_change_pc ? pc + 'd4 : alu_result;
	assign instruction_address = pc[14:2];
	assign inst = (~flush) ? rom_out_port : 'b0;

endmodule