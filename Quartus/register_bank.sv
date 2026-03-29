module register_bank
# (
	parameter NUM_REGISTERS = 32,
	parameter WSIZE = 32,
	parameter R0_ZERO = 1,
	parameter ADD_BUS_WIDTH = $clog2(NUM_REGISTERS)
)(
	// Clk
	input wire clk,
	
	input wire n_rst,
	
	// Read
	input wire [ADD_BUS_WIDTH-1:0] rs1,
	input wire [ADD_BUS_WIDTH-1:0] rs2,
	output reg [WSIZE-1:0] rs1data,
	output reg [WSIZE-1:0] rs2data,
	
	// Write
	input wire write_rd,
	input wire [ADD_BUS_WIDTH-1:0] rd,
	input wire [WSIZE-1:0] rddata,
	
	// Memory
	inout logic [WSIZE-1:0] mem_data,
	output wire [WSIZE-1:0] mem_add,
	input wire read_mem,
	input wire mem_ready,
	output reg mem_write,
	input wire [WSIZE-1:0] imm
);
	
	// register bank
	reg [WSIZE-1:0] registers [NUM_REGISTERS] = '{default: '0};
	
	// Update read
	always_comb begin
		rs1data = registers[rs1];
		rs2data = registers[rs2];
	end
	
	// Update write
	always @(posedge clk) begin
		if (~n_rst) begin
			registers <= '{default: '0};
		end
		if (write_rd && rd != 0)
			registers[rd] <= rddata;
	end
	
	assign mem_add = registers[rs1] + imm;
	assign mem_write = '0;
endmodule