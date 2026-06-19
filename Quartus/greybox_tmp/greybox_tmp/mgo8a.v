//ALTSQRT CBX_SINGLE_OUTPUT_FILE="ON" PIPELINE=18 Q_PORT_WIDTH=16 R_PORT_WIDTH=17 WIDTH=32 clk q radical remainder
//VERSION_BEGIN 25.1 cbx_mgl 2025:10:22:10:31:44:SC cbx_stratixii 2025:10:22:10:31:26:SC cbx_util_mgl 2025:10:22:10:31:27:SC  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2025  Altera Corporation. All rights reserved.
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, the Altera Quartus Prime License Agreement,
//  the Altera IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Altera and sold by Altera or its authorized distributors.  Please
//  refer to the Altera Software License Subscription Agreements 
//  on the Quartus Prime software download page.



//synthesis_resources = ALTSQRT 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgo8a
	( 
	clk,
	q,
	radical,
	remainder) /* synthesis synthesis_clearbox=1 */;
	input   clk;
	output   [15:0]  q;
	input   [31:0]  radical;
	output   [16:0]  remainder;

	wire  [15:0]   wire_mgl_prim1_q;
	wire  [16:0]   wire_mgl_prim1_remainder;

	ALTSQRT   mgl_prim1
	( 
	.clk(clk),
	.q(wire_mgl_prim1_q),
	.radical(radical),
	.remainder(wire_mgl_prim1_remainder));
	defparam
		mgl_prim1.pipeline = 18,
		mgl_prim1.q_port_width = 16,
		mgl_prim1.r_port_width = 17,
		mgl_prim1.width = 32;
	assign
		q = wire_mgl_prim1_q,
		remainder = wire_mgl_prim1_remainder;
endmodule //mgo8a
//VALID FILE
