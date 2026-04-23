module register_bank_memory_interface
#(
	parameter ADDRESS_SIZE = 32,
	parameter NUM_DEVICES = 2,
	parameter BIT_SIZE = $clog2(NUM_DEVICES),
	parameter logic [BIT_SIZE-1:0] BASE_ADDR [NUM_DEVICES] = '{default:'h0}
	
)(
	// Device connections
	output wire [ADDRESS_SIZE-1:0] address_connectors [NUM_DEVICES],
	output wire [ADDRESS_SIZE-1:0] data_out_connectors [NUM_DEVICES],
	output wire mem_write_connectors [NUM_DEVICES],
	input wire [ADDRESS_SIZE-1:0] data_in_connectors [NUM_DEVICES],
	input wire mem_ready_connectors [NUM_DEVICES],
	
	// CPU interface
	input wire [ADDRESS_SIZE-1:0] address,
	input wire [ADDRESS_SIZE-1:0] data_out,
	output wire [ADDRESS_SIZE-1:0] data_in
);
	
	logic selector [NUM_DEVICES];
	
	// Select Device
	genvar i;
	generate
		for (i = 0; i < NUM_DEVICES; i++) begin : SELECTOR
			assign selector[i] =  address & BASE_ADDR[i][ADDRESS_SIZE-1-:BIT_SIZE] ? 1'b1 : 1'b0;
		end
	endgenerate
	
	
	// Broadcast to device
	generate
		for (i = 0; i < NUM_DEVICES; i++) begin : BROADCASTER
			assign data_out_connectors[i] = selector[i] ? data_out : 'x;
			assign mem_write_connectors[i] = selector[i] ? 1'b1 : 1'b0;
		end
	endgenerate
	
	// Receive from device
	always_comb begin
		data_in = 'b0;
		
		for (int j = 0; j < NUM_DEVICES; j++) begin
			if (selector[j]) begin
				data_in = data_in_connectors[j];
			end
		end
	end

endmodule