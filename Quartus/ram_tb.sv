`timescale 1ns/1ps

module ram_tb;

	reg aclr_a_sig, aclr_b_sig, enable_a_sig, enable_b_sig;
	reg [3:0] byteena_a_sig, byteena_b_sig;
	reg clk;
	wire clock_a_sig, clock_b_sig;
	reg rden_a_sig, rden_b_sig, wren_a_sig, wren_b_sig;
	
	reg [31:0] data_a_sig, data_b_sig;
	wire [31:0] q_a_sig, q_b_sig;
	
	wire [31:0] data_a_port, data_b_port;
	// assign data_a_port = rden_a_sig ? ( wren_a_sig ?  ) : 'z;

	ram	ram_inst (
		.aclr_a ( aclr_a_sig ),
		.aclr_b ( aclr_b_sig ),
		.address_a ( address_a_sig ),
		.address_b ( address_b_sig ),
		.byteena_a ( byteena_a_sig ),
		.byteena_b ( byteena_b_sig ),
		.clock_a ( clock_a_sig ),
		.clock_b ( clock_b_sig ),
		.data_a ( data_a_sig ),
		.data_b ( data_b_sig ),
		.enable_a ( enable_a_sig ),
		.enable_b ( enable_b_sig ),
		.rden_a ( rden_a_sig ),
		.rden_b ( rden_b_sig ),
		.wren_a ( wren_a_sig ),
		.wren_b ( wren_b_sig ),
		.q_a ( q_a_sig ),
		.q_b ( q_b_sig )
		);


endmodule