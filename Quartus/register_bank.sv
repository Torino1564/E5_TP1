module register_bank
#(
	parameter NUM_REGISTERS = 32,
	parameter WSIZE = 32,
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
	input wire [ADD_BUS_WIDTH-1:0] rd,
	input wire [WSIZE-1:0] rddata,
	
	// Memory
	inout logic [WSIZE-1:0] mem_data_port,
	output reg mem_write,
	input wire mem_ready,
	output reg [WSIZE-1:0] mem_read_out,
	
	// Immediate
	input wire [WSIZE-1:0] imm,
	
	// Instruction flags
	input wire inst_write_mem,
	input wire inst_read_mem,
	input wire inst_write_rd
);
	// Tristate logic
	logic [WSIZE-1:0] mem_data_out;
	logic mem_data_out_enable;
	logic [WSIZE-1:0] mem_data_in;
	
	assign mem_data_port = mem_data_out_enable ? mem_data_out : 'z;
	assign mem_data_in = mem_data_port;
	
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
		else begin
			if (inst_write_rd && rd != 0)
				registers[rd] <= rddata;
		end
	end
	
	always @(negedge clk) begin
		if (inst_write_mem)
			mem_write <= 1'b1;
	end
	
	// Memory write
	assign mem_data_out = registers[rs2];
	assign mem_data_out_enable = inst_write_mem;
	
	// Memory read
	always @(posedge mem_ready) begin
		if (inst_read_mem)
			mem_read_out <= mem_data_in;
	end
endmodule