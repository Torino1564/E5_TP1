module register_bank
#(
	parameter NUM_REGISTERS = 32,
	parameter WSIZE = 32,
	parameter ADD_BUS_WIDTH = $clog2(NUM_REGISTERS)
)(
	// Clk
	input wire clk,
	input wire n_rst,
	input wire ena,
	
	// Read
	input wire [ADD_BUS_WIDTH-1:0] rs1,
	input wire [ADD_BUS_WIDTH-1:0] rs2,
	output reg [WSIZE-1:0] rs1data,
	output reg [WSIZE-1:0] rs2data,
	
	// Write
	input wire [ADD_BUS_WIDTH-1:0] rd,
	input wire [WSIZE-1:0] rddata,
	
	// Memory
	input logic [WSIZE-1:0] mem_read_port,
	output logic [WSIZE-1:0] mem_write_port,
	output reg mem_write,
	input wire mem_clk,
	
	// Immediate
	input wire [WSIZE-1:0] imm,
	
	// Instruction flags
	input wire inst_write_mem,
	input wire inst_read_mem,
	input wire inst_write_rd
);
	reg mem_ready = 'b0;
	always_ff @(posedge mem_clk, negedge inst_read_mem) begin
		if (~inst_read_mem)
			mem_ready <= 1'b0;
		else
			mem_ready <= 1'b1;
	end
	
	// register bank
	reg [WSIZE-1:0] registers [NUM_REGISTERS] = '{default: '0};
	
	// Update read
	always_comb begin
		rs1data = registers[rs1];
		rs2data = registers[rs2];
	end
	
	// Update write
	always @(posedge clk, negedge n_rst) begin
		if (~n_rst) begin
			registers <= '{default: '0};
		end
		else if (ena) begin
			if (inst_write_rd && rd != 0 && ~inst_read_mem)
				registers[rd] <= rddata;
			else if (inst_read_mem && rd != 0) begin
				if (mem_ready)
					registers[rd] <= mem_read_port;
			end
		end
	end
	
	// Memory write
	assign mem_write = inst_write_mem;
	assign mem_write_port = mem_write ? registers[rs2] : 'x;
endmodule