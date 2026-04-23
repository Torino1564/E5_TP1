`timescale 1ns/1ps

module mmi_tb;
	
	localparam WORD_SIZE = 32;
	localparam DEVICE_SELECTOR_MASK_SIZE = 3;
	localparam NUM_DEVICES = 4;
	
	wire [WORD_SIZE-1:0] addresses [NUM_DEVICES];
	wire [WORD_SIZE-1:0] data_ins [NUM_DEVICES];
	reg [WORD_SIZE-1:0] data_outs [NUM_DEVICES];
	
	
	mmi mmi_inst #(
		.ADDRESS_SIZE(WORD_SIZE),
		.
	) ()
	
endmodule