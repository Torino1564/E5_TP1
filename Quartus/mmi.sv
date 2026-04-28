module mmi // Memory mux interface
#(
	parameter WORD_SIZE = 32,
	parameter DEVICE_ADDRESS_SIZE = 13,
	parameter NUM_DEVICES = 2,
	parameter BIT_SIZE = $clog2(NUM_DEVICES),
	parameter logic [BIT_SIZE-1:0] BASE_ADDR [NUM_DEVICES] = '{default:'h0}
	
)(
	// Device connections
	output wire [DEVICE_ADDRESS_SIZE-1:0] address_connectors [NUM_DEVICES],
	output wire [WORD_SIZE-1:0] data_out_connectors [NUM_DEVICES],
	output wire mem_write_connectors [NUM_DEVICES],
	input wire [WORD_SIZE-1:0] data_in_connectors [NUM_DEVICES],
	input wire mem_ready_connectors [NUM_DEVICES],
	
	// CPU interface
	input wire [WORD_SIZE-1:0] address,
	input wire [WORD_SIZE-1:0] data_out,
	output reg [WORD_SIZE-1:0] data_in,
	output reg mem_ready,
	input wire mem_write
);
	logic [NUM_DEVICES-1:0] selector;
	
	// Select Device
	genvar i;
	generate
		for (i = 0; i < NUM_DEVICES; i++) begin : SELECTOR
			assign selector[i] =  (address[WORD_SIZE-1 -: BIT_SIZE]) == BASE_ADDR[i];
		end
	endgenerate
	
	
	// Broadcast to device
	generate
		for (i = 0; i < NUM_DEVICES; i++) begin : BROADCASTER
			assign data_out_connectors[i] = selector[i] ? data_out : 'x;
			assign address_connectors[i] = selector[i] ? address[DEVICE_ADDRESS_SIZE-1:0] : 'x;
			assign mem_write_connectors[i] = selector[i] ? mem_write : 1'b0;
		end
	endgenerate
	
	// Receive from device
	always_comb begin
		data_in = 'b0;
		mem_ready = 'b0;
		for (int j = 0; j < NUM_DEVICES; j++) begin
			if (selector[j]) begin
				data_in = data_in_connectors[j];
				mem_ready = mem_ready_connectors[j];
			end
		end
	end

endmodule