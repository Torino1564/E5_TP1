`timescale 1ns/1ps

module mmi_tb;
	
	localparam WORD_SIZE = 32;
	localparam DEVICE_ADDRESS_SIZE = 13;
	localparam DEVICE_SELECTOR_MASK_SIZE = 3;
	localparam NUM_DEVICES = 4;
	
	wire [DEVICE_ADDRESS_SIZE-1:0] addresses [NUM_DEVICES];
	wire [WORD_SIZE-1:0] data_ins [NUM_DEVICES];
	reg [WORD_SIZE-1:0] data_outs [NUM_DEVICES];
	wire mem_writes [NUM_DEVICES];
	reg mem_ready [NUM_DEVICES];
	
	
	reg [WORD_SIZE-1:0] data_out;
	wire [WORD_SIZE-1:0] data_in;
	reg [WORD_SIZE-1:0] address;
	
	mmi #(
    .ADDRESS_SIZE(WORD_SIZE),
    .NUM_DEVICES(NUM_DEVICES),
    .BIT_SIZE(DEVICE_SELECTOR_MASK_SIZE),
    .BASE_ADDR('{3'b000, 3'b010, 3'b001, 3'b011})
	) mmi_inst (
		 .address_connectors(addresses),
		 .data_out_connectors(data_ins),
		 .mem_write_connectors(mem_writes),
		 .data_in_connectors(data_outs),
		 .mem_ready_connectors(mem_ready),

		 .address(address),
		 .data_out(data_out),
		 .data_in(data_in)
	);
	
	initial begin
        $display("Starting test...");

        data_out = 32'hDEADBEEF;
		  address = 'hFE;
        // Try different address MSBs
        for (int k = 0; k < NUM_DEVICES; k++) begin
            address[WORD_SIZE-1-:DEVICE_SELECTOR_MASK_SIZE] = k; // put selector in MSBs
            #10;

            $display("Address=0x%08h -> Data_in=0x%08h", address, data_in);

            // Debug: check which device was selected
            for (int j = 0; j < NUM_DEVICES; j++) begin
                if (mem_writes[j]) begin
                    $display("  -> Device %0d selected", j);
                end
            end
        end

        #20;
        $finish;
    end
	
endmodule