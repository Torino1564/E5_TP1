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
	
	// Immediate
	input wire [WSIZE-1:0] imm,
	
	// Instruction flags
	input wire inst_write_rd
);
	// register bank
	reg [WSIZE-1:0] registers [NUM_REGISTERS] = '{default: '0};
	
	// Update read
	always_comb begin
		rs1data = registers[rs1];
		rs2data = registers[rs2];
	
		if (inst_write_rd && (rd != 0)) begin
			if (rs1 == rd)
				rs1data = rddata;

			if (rs2 == rd)
				rs2data = rddata;
		end
	end
	
	// Update write
	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst) begin
			registers <= '{default: '0};
		end
		else if (ena) begin
			if (inst_write_rd && rd != 0)
				registers[rd] <= rddata;
		end
	end
endmodule