// Copyright (C) 2025  Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Altera and sold by Altera or its authorized distributors.  Please
// refer to the Altera Software License Subscription Agreements 
// on the Quartus Prime software download page.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 25.1std.0 Build 1129 10/21/2025 Patches 0.01std SC Lite Edition"

// DATE "05/22/2026 14:04:25"

// 
// Device: Altera 5CSEBA6U23I7 Package UFBGA672
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module HPS (
	hps_0_f2h_sdram0_clock_clk,
	hps_0_f2h_sdram0_data_araddr,
	hps_0_f2h_sdram0_data_arlen,
	hps_0_f2h_sdram0_data_arid,
	hps_0_f2h_sdram0_data_arsize,
	hps_0_f2h_sdram0_data_arburst,
	hps_0_f2h_sdram0_data_arlock,
	hps_0_f2h_sdram0_data_arprot,
	hps_0_f2h_sdram0_data_arvalid,
	hps_0_f2h_sdram0_data_arcache,
	hps_0_f2h_sdram0_data_awaddr,
	hps_0_f2h_sdram0_data_awlen,
	hps_0_f2h_sdram0_data_awid,
	hps_0_f2h_sdram0_data_awsize,
	hps_0_f2h_sdram0_data_awburst,
	hps_0_f2h_sdram0_data_awlock,
	hps_0_f2h_sdram0_data_awprot,
	hps_0_f2h_sdram0_data_awvalid,
	hps_0_f2h_sdram0_data_awcache,
	hps_0_f2h_sdram0_data_bresp,
	hps_0_f2h_sdram0_data_bid,
	hps_0_f2h_sdram0_data_bvalid,
	hps_0_f2h_sdram0_data_bready,
	hps_0_f2h_sdram0_data_arready,
	hps_0_f2h_sdram0_data_awready,
	hps_0_f2h_sdram0_data_rready,
	hps_0_f2h_sdram0_data_rdata,
	hps_0_f2h_sdram0_data_rresp,
	hps_0_f2h_sdram0_data_rlast,
	hps_0_f2h_sdram0_data_rid,
	hps_0_f2h_sdram0_data_rvalid,
	hps_0_f2h_sdram0_data_wlast,
	hps_0_f2h_sdram0_data_wvalid,
	hps_0_f2h_sdram0_data_wdata,
	hps_0_f2h_sdram0_data_wstrb,
	hps_0_f2h_sdram0_data_wready,
	hps_0_f2h_sdram0_data_wid,
	hps_0_h2f_reset_reset_n,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin)/* synthesis synthesis_greybox=0 */;
input 	hps_0_f2h_sdram0_clock_clk;
input 	[31:0] hps_0_f2h_sdram0_data_araddr;
input 	[3:0] hps_0_f2h_sdram0_data_arlen;
input 	[7:0] hps_0_f2h_sdram0_data_arid;
input 	[2:0] hps_0_f2h_sdram0_data_arsize;
input 	[1:0] hps_0_f2h_sdram0_data_arburst;
input 	[1:0] hps_0_f2h_sdram0_data_arlock;
input 	[2:0] hps_0_f2h_sdram0_data_arprot;
input 	hps_0_f2h_sdram0_data_arvalid;
input 	[3:0] hps_0_f2h_sdram0_data_arcache;
input 	[31:0] hps_0_f2h_sdram0_data_awaddr;
input 	[3:0] hps_0_f2h_sdram0_data_awlen;
input 	[7:0] hps_0_f2h_sdram0_data_awid;
input 	[2:0] hps_0_f2h_sdram0_data_awsize;
input 	[1:0] hps_0_f2h_sdram0_data_awburst;
input 	[1:0] hps_0_f2h_sdram0_data_awlock;
input 	[2:0] hps_0_f2h_sdram0_data_awprot;
input 	hps_0_f2h_sdram0_data_awvalid;
input 	[3:0] hps_0_f2h_sdram0_data_awcache;
output 	[1:0] hps_0_f2h_sdram0_data_bresp;
output 	[7:0] hps_0_f2h_sdram0_data_bid;
output 	hps_0_f2h_sdram0_data_bvalid;
input 	hps_0_f2h_sdram0_data_bready;
output 	hps_0_f2h_sdram0_data_arready;
output 	hps_0_f2h_sdram0_data_awready;
input 	hps_0_f2h_sdram0_data_rready;
output 	[127:0] hps_0_f2h_sdram0_data_rdata;
output 	[1:0] hps_0_f2h_sdram0_data_rresp;
output 	hps_0_f2h_sdram0_data_rlast;
output 	[7:0] hps_0_f2h_sdram0_data_rid;
output 	hps_0_f2h_sdram0_data_rvalid;
input 	hps_0_f2h_sdram0_data_wlast;
input 	hps_0_f2h_sdram0_data_wvalid;
input 	[127:0] hps_0_f2h_sdram0_data_wdata;
input 	[15:0] hps_0_f2h_sdram0_data_wstrb;
output 	hps_0_f2h_sdram0_data_wready;
input 	[7:0] hps_0_f2h_sdram0_data_wid;
output 	hps_0_h2f_reset_reset_n;
output 	[12:0] memory_mem_a;
output 	[2:0] memory_mem_ba;
output 	memory_mem_ck;
output 	memory_mem_ck_n;
output 	memory_mem_cke;
output 	memory_mem_cs_n;
output 	memory_mem_ras_n;
output 	memory_mem_cas_n;
output 	memory_mem_we_n;
output 	memory_mem_reset_n;
inout 	[7:0] memory_mem_dq;
inout 	memory_mem_dqs;
inout 	memory_mem_dqs_n;
output 	memory_mem_odt;
output 	memory_mem_dm;
input 	memory_oct_rzqin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \hps_0|fpga_interfaces|h2f_rst_n[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_ARREADY[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_AWREADY[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RVALID[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_WREADY[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BVALID[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[1] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[2] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[3] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[4] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[5] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[6] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[7] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[8] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[9] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[10] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[11] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[12] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[13] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[14] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[15] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[16] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[17] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[18] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[19] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[20] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[21] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[22] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[23] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[24] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[25] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[26] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[27] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[28] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[29] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[30] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[31] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[32] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[33] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[34] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[35] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[36] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[37] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[38] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[39] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[40] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[41] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[42] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[43] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[44] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[45] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[46] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[47] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[48] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[49] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[50] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[51] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[52] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[53] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[54] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[55] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[56] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[57] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[58] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[59] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[60] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[61] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[62] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[63] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[64] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[65] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[66] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[67] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[68] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[69] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[70] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[71] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[72] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[73] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[74] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[75] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[76] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[77] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[78] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[79] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[80] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[81] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[82] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[83] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[84] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[85] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[86] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[87] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[88] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[89] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[90] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[91] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[92] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[93] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[94] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[95] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[96] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[97] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[98] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[99] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[100] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[101] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[102] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[103] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[104] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[105] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[106] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[107] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[108] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[109] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[110] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[111] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[112] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[113] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[114] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[115] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[116] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[117] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[118] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[119] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[120] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[121] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[122] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[123] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[124] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[125] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[126] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RDATA[127] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RRESP[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RRESP[1] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RLAST[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[1] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[2] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[3] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[4] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[5] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[6] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_RID[7] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BRESP[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BRESP[1] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[0] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[1] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[2] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[3] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[4] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[5] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[6] ;
wire \hps_0|fpga_interfaces|f2h_sdram0_BID[7] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ;
wire \hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|dqsin ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].raw_input ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[1] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[2] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[3] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[4] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[5] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[6] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[7] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[8] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[9] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[10] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[11] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[12] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[1] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[2] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[1] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[3] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[4] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[5] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ureset_n_pad|dataout[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[2] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_o[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_obar[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_oeout[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_oebout[0] ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].delayed_data_out ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].delayed_oe_1 ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|os ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|os_bar ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_oe ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_oe_bar ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_dtc ;
wire \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_dtc_bar ;
wire \hps_0_f2h_sdram0_data_arprot[2]~input_o ;
wire \hps_0_f2h_sdram0_data_arcache[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arcache[1]~input_o ;
wire \hps_0_f2h_sdram0_data_arcache[2]~input_o ;
wire \hps_0_f2h_sdram0_data_arcache[3]~input_o ;
wire \hps_0_f2h_sdram0_data_awprot[2]~input_o ;
wire \hps_0_f2h_sdram0_data_awcache[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awcache[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awcache[2]~input_o ;
wire \hps_0_f2h_sdram0_data_awcache[3]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[0]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[1]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[2]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[3]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[4]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[5]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[6]~input_o ;
wire \hps_0_f2h_sdram0_data_wid[7]~input_o ;
wire \memory_oct_rzqin~input_o ;
wire \hps_0_f2h_sdram0_clock_clk~input_o ;
wire \hps_0_f2h_sdram0_data_arvalid~input_o ;
wire \hps_0_f2h_sdram0_data_awvalid~input_o ;
wire \hps_0_f2h_sdram0_data_rready~input_o ;
wire \hps_0_f2h_sdram0_data_wvalid~input_o ;
wire \hps_0_f2h_sdram0_data_bready~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[0]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[1]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[2]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[3]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[4]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[5]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[6]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[7]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[8]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[9]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[10]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[11]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[12]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[13]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[14]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[15]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[16]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[17]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[18]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[19]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[20]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[21]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[22]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[23]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[24]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[25]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[26]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[27]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[28]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[29]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[30]~input_o ;
wire \hps_0_f2h_sdram0_data_araddr[31]~input_o ;
wire \hps_0_f2h_sdram0_data_arlen[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arlen[1]~input_o ;
wire \hps_0_f2h_sdram0_data_arlen[2]~input_o ;
wire \hps_0_f2h_sdram0_data_arlen[3]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[1]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[2]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[3]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[4]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[5]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[6]~input_o ;
wire \hps_0_f2h_sdram0_data_arid[7]~input_o ;
wire \hps_0_f2h_sdram0_data_arsize[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arsize[1]~input_o ;
wire \hps_0_f2h_sdram0_data_arsize[2]~input_o ;
wire \hps_0_f2h_sdram0_data_arburst[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arburst[1]~input_o ;
wire \hps_0_f2h_sdram0_data_arlock[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arlock[1]~input_o ;
wire \hps_0_f2h_sdram0_data_arprot[0]~input_o ;
wire \hps_0_f2h_sdram0_data_arprot[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[2]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[3]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[4]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[5]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[6]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[7]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[8]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[9]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[10]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[11]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[12]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[13]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[14]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[15]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[16]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[17]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[18]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[19]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[20]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[21]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[22]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[23]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[24]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[25]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[26]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[27]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[28]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[29]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[30]~input_o ;
wire \hps_0_f2h_sdram0_data_awaddr[31]~input_o ;
wire \hps_0_f2h_sdram0_data_awlen[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awlen[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awlen[2]~input_o ;
wire \hps_0_f2h_sdram0_data_awlen[3]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[2]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[3]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[4]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[5]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[6]~input_o ;
wire \hps_0_f2h_sdram0_data_awid[7]~input_o ;
wire \hps_0_f2h_sdram0_data_awsize[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awsize[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awsize[2]~input_o ;
wire \hps_0_f2h_sdram0_data_awburst[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awburst[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awlock[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awlock[1]~input_o ;
wire \hps_0_f2h_sdram0_data_awprot[0]~input_o ;
wire \hps_0_f2h_sdram0_data_awprot[1]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[0]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[1]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[2]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[3]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[4]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[5]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[6]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[7]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[8]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[9]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[10]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[11]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[12]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[13]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[14]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[15]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[16]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[17]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[18]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[19]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[20]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[21]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[22]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[23]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[24]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[25]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[26]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[27]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[28]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[29]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[30]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[31]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[32]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[33]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[34]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[35]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[36]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[37]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[38]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[39]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[40]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[41]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[42]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[43]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[44]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[45]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[46]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[47]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[48]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[49]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[50]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[51]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[52]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[53]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[54]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[55]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[56]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[57]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[58]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[59]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[60]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[61]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[62]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[63]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[0]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[1]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[2]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[3]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[4]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[5]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[6]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[7]~input_o ;
wire \hps_0_f2h_sdram0_data_wlast~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[64]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[65]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[66]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[67]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[68]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[69]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[70]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[71]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[72]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[73]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[74]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[75]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[76]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[77]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[78]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[79]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[80]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[81]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[82]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[83]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[84]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[85]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[86]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[87]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[88]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[89]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[90]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[91]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[92]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[93]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[94]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[95]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[96]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[97]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[98]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[99]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[100]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[101]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[102]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[103]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[104]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[105]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[106]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[107]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[108]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[109]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[110]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[111]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[112]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[113]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[114]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[115]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[116]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[117]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[118]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[119]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[120]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[121]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[122]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[123]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[124]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[125]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[126]~input_o ;
wire \hps_0_f2h_sdram0_data_wdata[127]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[8]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[9]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[10]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[11]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[12]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[13]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[14]~input_o ;
wire \hps_0_f2h_sdram0_data_wstrb[15]~input_o ;


HPS_HPS_hps_0 hps_0(
	.h2f_rst_n_0(\hps_0|fpga_interfaces|h2f_rst_n[0] ),
	.f2h_sdram0_ARREADY_0(\hps_0|fpga_interfaces|f2h_sdram0_ARREADY[0] ),
	.f2h_sdram0_AWREADY_0(\hps_0|fpga_interfaces|f2h_sdram0_AWREADY[0] ),
	.f2h_sdram0_RVALID_0(\hps_0|fpga_interfaces|f2h_sdram0_RVALID[0] ),
	.f2h_sdram0_WREADY_0(\hps_0|fpga_interfaces|f2h_sdram0_WREADY[0] ),
	.f2h_sdram0_BVALID_0(\hps_0|fpga_interfaces|f2h_sdram0_BVALID[0] ),
	.f2h_sdram0_RDATA_0(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[0] ),
	.f2h_sdram0_RDATA_1(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[1] ),
	.f2h_sdram0_RDATA_2(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[2] ),
	.f2h_sdram0_RDATA_3(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[3] ),
	.f2h_sdram0_RDATA_4(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[4] ),
	.f2h_sdram0_RDATA_5(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[5] ),
	.f2h_sdram0_RDATA_6(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[6] ),
	.f2h_sdram0_RDATA_7(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[7] ),
	.f2h_sdram0_RDATA_8(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[8] ),
	.f2h_sdram0_RDATA_9(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[9] ),
	.f2h_sdram0_RDATA_10(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[10] ),
	.f2h_sdram0_RDATA_11(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[11] ),
	.f2h_sdram0_RDATA_12(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[12] ),
	.f2h_sdram0_RDATA_13(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[13] ),
	.f2h_sdram0_RDATA_14(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[14] ),
	.f2h_sdram0_RDATA_15(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[15] ),
	.f2h_sdram0_RDATA_16(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[16] ),
	.f2h_sdram0_RDATA_17(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[17] ),
	.f2h_sdram0_RDATA_18(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[18] ),
	.f2h_sdram0_RDATA_19(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[19] ),
	.f2h_sdram0_RDATA_20(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[20] ),
	.f2h_sdram0_RDATA_21(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[21] ),
	.f2h_sdram0_RDATA_22(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[22] ),
	.f2h_sdram0_RDATA_23(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[23] ),
	.f2h_sdram0_RDATA_24(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[24] ),
	.f2h_sdram0_RDATA_25(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[25] ),
	.f2h_sdram0_RDATA_26(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[26] ),
	.f2h_sdram0_RDATA_27(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[27] ),
	.f2h_sdram0_RDATA_28(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[28] ),
	.f2h_sdram0_RDATA_29(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[29] ),
	.f2h_sdram0_RDATA_30(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[30] ),
	.f2h_sdram0_RDATA_31(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[31] ),
	.f2h_sdram0_RDATA_32(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[32] ),
	.f2h_sdram0_RDATA_33(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[33] ),
	.f2h_sdram0_RDATA_34(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[34] ),
	.f2h_sdram0_RDATA_35(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[35] ),
	.f2h_sdram0_RDATA_36(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[36] ),
	.f2h_sdram0_RDATA_37(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[37] ),
	.f2h_sdram0_RDATA_38(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[38] ),
	.f2h_sdram0_RDATA_39(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[39] ),
	.f2h_sdram0_RDATA_40(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[40] ),
	.f2h_sdram0_RDATA_41(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[41] ),
	.f2h_sdram0_RDATA_42(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[42] ),
	.f2h_sdram0_RDATA_43(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[43] ),
	.f2h_sdram0_RDATA_44(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[44] ),
	.f2h_sdram0_RDATA_45(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[45] ),
	.f2h_sdram0_RDATA_46(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[46] ),
	.f2h_sdram0_RDATA_47(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[47] ),
	.f2h_sdram0_RDATA_48(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[48] ),
	.f2h_sdram0_RDATA_49(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[49] ),
	.f2h_sdram0_RDATA_50(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[50] ),
	.f2h_sdram0_RDATA_51(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[51] ),
	.f2h_sdram0_RDATA_52(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[52] ),
	.f2h_sdram0_RDATA_53(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[53] ),
	.f2h_sdram0_RDATA_54(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[54] ),
	.f2h_sdram0_RDATA_55(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[55] ),
	.f2h_sdram0_RDATA_56(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[56] ),
	.f2h_sdram0_RDATA_57(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[57] ),
	.f2h_sdram0_RDATA_58(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[58] ),
	.f2h_sdram0_RDATA_59(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[59] ),
	.f2h_sdram0_RDATA_60(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[60] ),
	.f2h_sdram0_RDATA_61(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[61] ),
	.f2h_sdram0_RDATA_62(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[62] ),
	.f2h_sdram0_RDATA_63(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[63] ),
	.f2h_sdram0_RDATA_64(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[64] ),
	.f2h_sdram0_RDATA_65(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[65] ),
	.f2h_sdram0_RDATA_66(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[66] ),
	.f2h_sdram0_RDATA_67(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[67] ),
	.f2h_sdram0_RDATA_68(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[68] ),
	.f2h_sdram0_RDATA_69(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[69] ),
	.f2h_sdram0_RDATA_70(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[70] ),
	.f2h_sdram0_RDATA_71(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[71] ),
	.f2h_sdram0_RDATA_72(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[72] ),
	.f2h_sdram0_RDATA_73(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[73] ),
	.f2h_sdram0_RDATA_74(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[74] ),
	.f2h_sdram0_RDATA_75(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[75] ),
	.f2h_sdram0_RDATA_76(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[76] ),
	.f2h_sdram0_RDATA_77(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[77] ),
	.f2h_sdram0_RDATA_78(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[78] ),
	.f2h_sdram0_RDATA_79(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[79] ),
	.f2h_sdram0_RDATA_80(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[80] ),
	.f2h_sdram0_RDATA_81(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[81] ),
	.f2h_sdram0_RDATA_82(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[82] ),
	.f2h_sdram0_RDATA_83(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[83] ),
	.f2h_sdram0_RDATA_84(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[84] ),
	.f2h_sdram0_RDATA_85(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[85] ),
	.f2h_sdram0_RDATA_86(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[86] ),
	.f2h_sdram0_RDATA_87(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[87] ),
	.f2h_sdram0_RDATA_88(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[88] ),
	.f2h_sdram0_RDATA_89(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[89] ),
	.f2h_sdram0_RDATA_90(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[90] ),
	.f2h_sdram0_RDATA_91(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[91] ),
	.f2h_sdram0_RDATA_92(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[92] ),
	.f2h_sdram0_RDATA_93(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[93] ),
	.f2h_sdram0_RDATA_94(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[94] ),
	.f2h_sdram0_RDATA_95(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[95] ),
	.f2h_sdram0_RDATA_96(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[96] ),
	.f2h_sdram0_RDATA_97(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[97] ),
	.f2h_sdram0_RDATA_98(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[98] ),
	.f2h_sdram0_RDATA_99(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[99] ),
	.f2h_sdram0_RDATA_100(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[100] ),
	.f2h_sdram0_RDATA_101(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[101] ),
	.f2h_sdram0_RDATA_102(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[102] ),
	.f2h_sdram0_RDATA_103(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[103] ),
	.f2h_sdram0_RDATA_104(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[104] ),
	.f2h_sdram0_RDATA_105(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[105] ),
	.f2h_sdram0_RDATA_106(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[106] ),
	.f2h_sdram0_RDATA_107(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[107] ),
	.f2h_sdram0_RDATA_108(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[108] ),
	.f2h_sdram0_RDATA_109(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[109] ),
	.f2h_sdram0_RDATA_110(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[110] ),
	.f2h_sdram0_RDATA_111(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[111] ),
	.f2h_sdram0_RDATA_112(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[112] ),
	.f2h_sdram0_RDATA_113(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[113] ),
	.f2h_sdram0_RDATA_114(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[114] ),
	.f2h_sdram0_RDATA_115(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[115] ),
	.f2h_sdram0_RDATA_116(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[116] ),
	.f2h_sdram0_RDATA_117(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[117] ),
	.f2h_sdram0_RDATA_118(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[118] ),
	.f2h_sdram0_RDATA_119(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[119] ),
	.f2h_sdram0_RDATA_120(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[120] ),
	.f2h_sdram0_RDATA_121(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[121] ),
	.f2h_sdram0_RDATA_122(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[122] ),
	.f2h_sdram0_RDATA_123(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[123] ),
	.f2h_sdram0_RDATA_124(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[124] ),
	.f2h_sdram0_RDATA_125(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[125] ),
	.f2h_sdram0_RDATA_126(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[126] ),
	.f2h_sdram0_RDATA_127(\hps_0|fpga_interfaces|f2h_sdram0_RDATA[127] ),
	.f2h_sdram0_RRESP_0(\hps_0|fpga_interfaces|f2h_sdram0_RRESP[0] ),
	.f2h_sdram0_RRESP_1(\hps_0|fpga_interfaces|f2h_sdram0_RRESP[1] ),
	.f2h_sdram0_RLAST_0(\hps_0|fpga_interfaces|f2h_sdram0_RLAST[0] ),
	.f2h_sdram0_RID_0(\hps_0|fpga_interfaces|f2h_sdram0_RID[0] ),
	.f2h_sdram0_RID_1(\hps_0|fpga_interfaces|f2h_sdram0_RID[1] ),
	.f2h_sdram0_RID_2(\hps_0|fpga_interfaces|f2h_sdram0_RID[2] ),
	.f2h_sdram0_RID_3(\hps_0|fpga_interfaces|f2h_sdram0_RID[3] ),
	.f2h_sdram0_RID_4(\hps_0|fpga_interfaces|f2h_sdram0_RID[4] ),
	.f2h_sdram0_RID_5(\hps_0|fpga_interfaces|f2h_sdram0_RID[5] ),
	.f2h_sdram0_RID_6(\hps_0|fpga_interfaces|f2h_sdram0_RID[6] ),
	.f2h_sdram0_RID_7(\hps_0|fpga_interfaces|f2h_sdram0_RID[7] ),
	.f2h_sdram0_BRESP_0(\hps_0|fpga_interfaces|f2h_sdram0_BRESP[0] ),
	.f2h_sdram0_BRESP_1(\hps_0|fpga_interfaces|f2h_sdram0_BRESP[1] ),
	.f2h_sdram0_BID_0(\hps_0|fpga_interfaces|f2h_sdram0_BID[0] ),
	.f2h_sdram0_BID_1(\hps_0|fpga_interfaces|f2h_sdram0_BID[1] ),
	.f2h_sdram0_BID_2(\hps_0|fpga_interfaces|f2h_sdram0_BID[2] ),
	.f2h_sdram0_BID_3(\hps_0|fpga_interfaces|f2h_sdram0_BID[3] ),
	.f2h_sdram0_BID_4(\hps_0|fpga_interfaces|f2h_sdram0_BID[4] ),
	.f2h_sdram0_BID_5(\hps_0|fpga_interfaces|f2h_sdram0_BID[5] ),
	.f2h_sdram0_BID_6(\hps_0|fpga_interfaces|f2h_sdram0_BID[6] ),
	.f2h_sdram0_BID_7(\hps_0|fpga_interfaces|f2h_sdram0_BID[7] ),
	.parallelterminationcontrol_0(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] ),
	.parallelterminationcontrol_1(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ),
	.parallelterminationcontrol_2(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ),
	.parallelterminationcontrol_3(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ),
	.parallelterminationcontrol_4(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ),
	.parallelterminationcontrol_5(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ),
	.parallelterminationcontrol_6(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ),
	.parallelterminationcontrol_7(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ),
	.parallelterminationcontrol_8(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ),
	.parallelterminationcontrol_9(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ),
	.parallelterminationcontrol_10(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ),
	.parallelterminationcontrol_11(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ),
	.parallelterminationcontrol_12(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ),
	.parallelterminationcontrol_13(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ),
	.parallelterminationcontrol_14(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ),
	.parallelterminationcontrol_15(\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ),
	.seriesterminationcontrol_0(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] ),
	.seriesterminationcontrol_1(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ),
	.seriesterminationcontrol_2(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ),
	.seriesterminationcontrol_3(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ),
	.seriesterminationcontrol_4(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ),
	.seriesterminationcontrol_5(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ),
	.seriesterminationcontrol_6(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ),
	.seriesterminationcontrol_7(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ),
	.seriesterminationcontrol_8(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ),
	.seriesterminationcontrol_9(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ),
	.seriesterminationcontrol_10(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ),
	.seriesterminationcontrol_11(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ),
	.seriesterminationcontrol_12(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ),
	.seriesterminationcontrol_13(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ),
	.seriesterminationcontrol_14(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ),
	.seriesterminationcontrol_15(\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ),
	.dqsin(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|dqsin ),
	.pad_gen0raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].raw_input ),
	.pad_gen1raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].raw_input ),
	.pad_gen2raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].raw_input ),
	.pad_gen3raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].raw_input ),
	.pad_gen4raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].raw_input ),
	.pad_gen5raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].raw_input ),
	.pad_gen6raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].raw_input ),
	.pad_gen7raw_input(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].raw_input ),
	.dataout_0(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[0] ),
	.dataout_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[1] ),
	.dataout_2(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[2] ),
	.dataout_3(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[3] ),
	.dataout_4(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[4] ),
	.dataout_5(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[5] ),
	.dataout_6(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[6] ),
	.dataout_7(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[7] ),
	.dataout_8(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[8] ),
	.dataout_9(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[9] ),
	.dataout_10(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[10] ),
	.dataout_11(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[11] ),
	.dataout_12(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[12] ),
	.dataout_01(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[0] ),
	.dataout_13(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[1] ),
	.dataout_21(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[2] ),
	.dataout_14(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[1] ),
	.dataout_02(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[0] ),
	.dataout_31(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[3] ),
	.dataout_41(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[4] ),
	.dataout_51(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[5] ),
	.dataout_03(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ureset_n_pad|dataout[0] ),
	.dataout_22(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[2] ),
	.extra_output_pad_gen0delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].delayed_data_out ),
	.wire_pseudo_diffa_o_0(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_o[0] ),
	.wire_pseudo_diffa_obar_0(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_obar[0] ),
	.wire_pseudo_diffa_oeout_0(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_oeout[0] ),
	.wire_pseudo_diffa_oebout_0(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_oebout[0] ),
	.pad_gen0delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].delayed_data_out ),
	.pad_gen0delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].delayed_oe_1 ),
	.delayed_oct(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.pad_gen1delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].delayed_data_out ),
	.pad_gen1delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].delayed_oe_1 ),
	.pad_gen2delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].delayed_data_out ),
	.pad_gen2delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].delayed_oe_1 ),
	.pad_gen3delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].delayed_data_out ),
	.pad_gen3delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].delayed_oe_1 ),
	.pad_gen4delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].delayed_data_out ),
	.pad_gen4delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].delayed_oe_1 ),
	.pad_gen5delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].delayed_data_out ),
	.pad_gen5delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].delayed_oe_1 ),
	.pad_gen6delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].delayed_data_out ),
	.pad_gen6delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].delayed_oe_1 ),
	.pad_gen7delayed_data_out(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].delayed_data_out ),
	.pad_gen7delayed_oe_1(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].delayed_oe_1 ),
	.os(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|os ),
	.os_bar(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|os_bar ),
	.diff_oe(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_oe ),
	.diff_oe_bar(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_oe_bar ),
	.diff_dtc(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_dtc ),
	.diff_dtc_bar(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_dtc_bar ),
	.memory_oct_rzqin(\memory_oct_rzqin~input_o ),
	.hps_0_f2h_sdram0_clock_clk(\hps_0_f2h_sdram0_clock_clk~input_o ),
	.hps_0_f2h_sdram0_data_arvalid(\hps_0_f2h_sdram0_data_arvalid~input_o ),
	.hps_0_f2h_sdram0_data_awvalid(\hps_0_f2h_sdram0_data_awvalid~input_o ),
	.hps_0_f2h_sdram0_data_rready(\hps_0_f2h_sdram0_data_rready~input_o ),
	.hps_0_f2h_sdram0_data_wvalid(\hps_0_f2h_sdram0_data_wvalid~input_o ),
	.hps_0_f2h_sdram0_data_bready(\hps_0_f2h_sdram0_data_bready~input_o ),
	.hps_0_f2h_sdram0_data_araddr_0(\hps_0_f2h_sdram0_data_araddr[0]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_1(\hps_0_f2h_sdram0_data_araddr[1]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_2(\hps_0_f2h_sdram0_data_araddr[2]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_3(\hps_0_f2h_sdram0_data_araddr[3]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_4(\hps_0_f2h_sdram0_data_araddr[4]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_5(\hps_0_f2h_sdram0_data_araddr[5]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_6(\hps_0_f2h_sdram0_data_araddr[6]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_7(\hps_0_f2h_sdram0_data_araddr[7]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_8(\hps_0_f2h_sdram0_data_araddr[8]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_9(\hps_0_f2h_sdram0_data_araddr[9]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_10(\hps_0_f2h_sdram0_data_araddr[10]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_11(\hps_0_f2h_sdram0_data_araddr[11]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_12(\hps_0_f2h_sdram0_data_araddr[12]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_13(\hps_0_f2h_sdram0_data_araddr[13]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_14(\hps_0_f2h_sdram0_data_araddr[14]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_15(\hps_0_f2h_sdram0_data_araddr[15]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_16(\hps_0_f2h_sdram0_data_araddr[16]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_17(\hps_0_f2h_sdram0_data_araddr[17]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_18(\hps_0_f2h_sdram0_data_araddr[18]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_19(\hps_0_f2h_sdram0_data_araddr[19]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_20(\hps_0_f2h_sdram0_data_araddr[20]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_21(\hps_0_f2h_sdram0_data_araddr[21]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_22(\hps_0_f2h_sdram0_data_araddr[22]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_23(\hps_0_f2h_sdram0_data_araddr[23]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_24(\hps_0_f2h_sdram0_data_araddr[24]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_25(\hps_0_f2h_sdram0_data_araddr[25]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_26(\hps_0_f2h_sdram0_data_araddr[26]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_27(\hps_0_f2h_sdram0_data_araddr[27]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_28(\hps_0_f2h_sdram0_data_araddr[28]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_29(\hps_0_f2h_sdram0_data_araddr[29]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_30(\hps_0_f2h_sdram0_data_araddr[30]~input_o ),
	.hps_0_f2h_sdram0_data_araddr_31(\hps_0_f2h_sdram0_data_araddr[31]~input_o ),
	.hps_0_f2h_sdram0_data_arlen_0(\hps_0_f2h_sdram0_data_arlen[0]~input_o ),
	.hps_0_f2h_sdram0_data_arlen_1(\hps_0_f2h_sdram0_data_arlen[1]~input_o ),
	.hps_0_f2h_sdram0_data_arlen_2(\hps_0_f2h_sdram0_data_arlen[2]~input_o ),
	.hps_0_f2h_sdram0_data_arlen_3(\hps_0_f2h_sdram0_data_arlen[3]~input_o ),
	.hps_0_f2h_sdram0_data_arid_0(\hps_0_f2h_sdram0_data_arid[0]~input_o ),
	.hps_0_f2h_sdram0_data_arid_1(\hps_0_f2h_sdram0_data_arid[1]~input_o ),
	.hps_0_f2h_sdram0_data_arid_2(\hps_0_f2h_sdram0_data_arid[2]~input_o ),
	.hps_0_f2h_sdram0_data_arid_3(\hps_0_f2h_sdram0_data_arid[3]~input_o ),
	.hps_0_f2h_sdram0_data_arid_4(\hps_0_f2h_sdram0_data_arid[4]~input_o ),
	.hps_0_f2h_sdram0_data_arid_5(\hps_0_f2h_sdram0_data_arid[5]~input_o ),
	.hps_0_f2h_sdram0_data_arid_6(\hps_0_f2h_sdram0_data_arid[6]~input_o ),
	.hps_0_f2h_sdram0_data_arid_7(\hps_0_f2h_sdram0_data_arid[7]~input_o ),
	.hps_0_f2h_sdram0_data_arsize_0(\hps_0_f2h_sdram0_data_arsize[0]~input_o ),
	.hps_0_f2h_sdram0_data_arsize_1(\hps_0_f2h_sdram0_data_arsize[1]~input_o ),
	.hps_0_f2h_sdram0_data_arsize_2(\hps_0_f2h_sdram0_data_arsize[2]~input_o ),
	.hps_0_f2h_sdram0_data_arburst_0(\hps_0_f2h_sdram0_data_arburst[0]~input_o ),
	.hps_0_f2h_sdram0_data_arburst_1(\hps_0_f2h_sdram0_data_arburst[1]~input_o ),
	.hps_0_f2h_sdram0_data_arlock_0(\hps_0_f2h_sdram0_data_arlock[0]~input_o ),
	.hps_0_f2h_sdram0_data_arlock_1(\hps_0_f2h_sdram0_data_arlock[1]~input_o ),
	.hps_0_f2h_sdram0_data_arprot_0(\hps_0_f2h_sdram0_data_arprot[0]~input_o ),
	.hps_0_f2h_sdram0_data_arprot_1(\hps_0_f2h_sdram0_data_arprot[1]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_0(\hps_0_f2h_sdram0_data_awaddr[0]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_1(\hps_0_f2h_sdram0_data_awaddr[1]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_2(\hps_0_f2h_sdram0_data_awaddr[2]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_3(\hps_0_f2h_sdram0_data_awaddr[3]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_4(\hps_0_f2h_sdram0_data_awaddr[4]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_5(\hps_0_f2h_sdram0_data_awaddr[5]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_6(\hps_0_f2h_sdram0_data_awaddr[6]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_7(\hps_0_f2h_sdram0_data_awaddr[7]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_8(\hps_0_f2h_sdram0_data_awaddr[8]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_9(\hps_0_f2h_sdram0_data_awaddr[9]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_10(\hps_0_f2h_sdram0_data_awaddr[10]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_11(\hps_0_f2h_sdram0_data_awaddr[11]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_12(\hps_0_f2h_sdram0_data_awaddr[12]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_13(\hps_0_f2h_sdram0_data_awaddr[13]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_14(\hps_0_f2h_sdram0_data_awaddr[14]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_15(\hps_0_f2h_sdram0_data_awaddr[15]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_16(\hps_0_f2h_sdram0_data_awaddr[16]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_17(\hps_0_f2h_sdram0_data_awaddr[17]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_18(\hps_0_f2h_sdram0_data_awaddr[18]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_19(\hps_0_f2h_sdram0_data_awaddr[19]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_20(\hps_0_f2h_sdram0_data_awaddr[20]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_21(\hps_0_f2h_sdram0_data_awaddr[21]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_22(\hps_0_f2h_sdram0_data_awaddr[22]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_23(\hps_0_f2h_sdram0_data_awaddr[23]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_24(\hps_0_f2h_sdram0_data_awaddr[24]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_25(\hps_0_f2h_sdram0_data_awaddr[25]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_26(\hps_0_f2h_sdram0_data_awaddr[26]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_27(\hps_0_f2h_sdram0_data_awaddr[27]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_28(\hps_0_f2h_sdram0_data_awaddr[28]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_29(\hps_0_f2h_sdram0_data_awaddr[29]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_30(\hps_0_f2h_sdram0_data_awaddr[30]~input_o ),
	.hps_0_f2h_sdram0_data_awaddr_31(\hps_0_f2h_sdram0_data_awaddr[31]~input_o ),
	.hps_0_f2h_sdram0_data_awlen_0(\hps_0_f2h_sdram0_data_awlen[0]~input_o ),
	.hps_0_f2h_sdram0_data_awlen_1(\hps_0_f2h_sdram0_data_awlen[1]~input_o ),
	.hps_0_f2h_sdram0_data_awlen_2(\hps_0_f2h_sdram0_data_awlen[2]~input_o ),
	.hps_0_f2h_sdram0_data_awlen_3(\hps_0_f2h_sdram0_data_awlen[3]~input_o ),
	.hps_0_f2h_sdram0_data_awid_0(\hps_0_f2h_sdram0_data_awid[0]~input_o ),
	.hps_0_f2h_sdram0_data_awid_1(\hps_0_f2h_sdram0_data_awid[1]~input_o ),
	.hps_0_f2h_sdram0_data_awid_2(\hps_0_f2h_sdram0_data_awid[2]~input_o ),
	.hps_0_f2h_sdram0_data_awid_3(\hps_0_f2h_sdram0_data_awid[3]~input_o ),
	.hps_0_f2h_sdram0_data_awid_4(\hps_0_f2h_sdram0_data_awid[4]~input_o ),
	.hps_0_f2h_sdram0_data_awid_5(\hps_0_f2h_sdram0_data_awid[5]~input_o ),
	.hps_0_f2h_sdram0_data_awid_6(\hps_0_f2h_sdram0_data_awid[6]~input_o ),
	.hps_0_f2h_sdram0_data_awid_7(\hps_0_f2h_sdram0_data_awid[7]~input_o ),
	.hps_0_f2h_sdram0_data_awsize_0(\hps_0_f2h_sdram0_data_awsize[0]~input_o ),
	.hps_0_f2h_sdram0_data_awsize_1(\hps_0_f2h_sdram0_data_awsize[1]~input_o ),
	.hps_0_f2h_sdram0_data_awsize_2(\hps_0_f2h_sdram0_data_awsize[2]~input_o ),
	.hps_0_f2h_sdram0_data_awburst_0(\hps_0_f2h_sdram0_data_awburst[0]~input_o ),
	.hps_0_f2h_sdram0_data_awburst_1(\hps_0_f2h_sdram0_data_awburst[1]~input_o ),
	.hps_0_f2h_sdram0_data_awlock_0(\hps_0_f2h_sdram0_data_awlock[0]~input_o ),
	.hps_0_f2h_sdram0_data_awlock_1(\hps_0_f2h_sdram0_data_awlock[1]~input_o ),
	.hps_0_f2h_sdram0_data_awprot_0(\hps_0_f2h_sdram0_data_awprot[0]~input_o ),
	.hps_0_f2h_sdram0_data_awprot_1(\hps_0_f2h_sdram0_data_awprot[1]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_0(\hps_0_f2h_sdram0_data_wdata[0]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_1(\hps_0_f2h_sdram0_data_wdata[1]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_2(\hps_0_f2h_sdram0_data_wdata[2]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_3(\hps_0_f2h_sdram0_data_wdata[3]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_4(\hps_0_f2h_sdram0_data_wdata[4]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_5(\hps_0_f2h_sdram0_data_wdata[5]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_6(\hps_0_f2h_sdram0_data_wdata[6]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_7(\hps_0_f2h_sdram0_data_wdata[7]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_8(\hps_0_f2h_sdram0_data_wdata[8]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_9(\hps_0_f2h_sdram0_data_wdata[9]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_10(\hps_0_f2h_sdram0_data_wdata[10]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_11(\hps_0_f2h_sdram0_data_wdata[11]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_12(\hps_0_f2h_sdram0_data_wdata[12]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_13(\hps_0_f2h_sdram0_data_wdata[13]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_14(\hps_0_f2h_sdram0_data_wdata[14]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_15(\hps_0_f2h_sdram0_data_wdata[15]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_16(\hps_0_f2h_sdram0_data_wdata[16]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_17(\hps_0_f2h_sdram0_data_wdata[17]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_18(\hps_0_f2h_sdram0_data_wdata[18]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_19(\hps_0_f2h_sdram0_data_wdata[19]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_20(\hps_0_f2h_sdram0_data_wdata[20]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_21(\hps_0_f2h_sdram0_data_wdata[21]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_22(\hps_0_f2h_sdram0_data_wdata[22]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_23(\hps_0_f2h_sdram0_data_wdata[23]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_24(\hps_0_f2h_sdram0_data_wdata[24]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_25(\hps_0_f2h_sdram0_data_wdata[25]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_26(\hps_0_f2h_sdram0_data_wdata[26]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_27(\hps_0_f2h_sdram0_data_wdata[27]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_28(\hps_0_f2h_sdram0_data_wdata[28]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_29(\hps_0_f2h_sdram0_data_wdata[29]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_30(\hps_0_f2h_sdram0_data_wdata[30]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_31(\hps_0_f2h_sdram0_data_wdata[31]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_32(\hps_0_f2h_sdram0_data_wdata[32]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_33(\hps_0_f2h_sdram0_data_wdata[33]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_34(\hps_0_f2h_sdram0_data_wdata[34]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_35(\hps_0_f2h_sdram0_data_wdata[35]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_36(\hps_0_f2h_sdram0_data_wdata[36]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_37(\hps_0_f2h_sdram0_data_wdata[37]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_38(\hps_0_f2h_sdram0_data_wdata[38]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_39(\hps_0_f2h_sdram0_data_wdata[39]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_40(\hps_0_f2h_sdram0_data_wdata[40]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_41(\hps_0_f2h_sdram0_data_wdata[41]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_42(\hps_0_f2h_sdram0_data_wdata[42]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_43(\hps_0_f2h_sdram0_data_wdata[43]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_44(\hps_0_f2h_sdram0_data_wdata[44]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_45(\hps_0_f2h_sdram0_data_wdata[45]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_46(\hps_0_f2h_sdram0_data_wdata[46]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_47(\hps_0_f2h_sdram0_data_wdata[47]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_48(\hps_0_f2h_sdram0_data_wdata[48]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_49(\hps_0_f2h_sdram0_data_wdata[49]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_50(\hps_0_f2h_sdram0_data_wdata[50]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_51(\hps_0_f2h_sdram0_data_wdata[51]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_52(\hps_0_f2h_sdram0_data_wdata[52]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_53(\hps_0_f2h_sdram0_data_wdata[53]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_54(\hps_0_f2h_sdram0_data_wdata[54]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_55(\hps_0_f2h_sdram0_data_wdata[55]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_56(\hps_0_f2h_sdram0_data_wdata[56]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_57(\hps_0_f2h_sdram0_data_wdata[57]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_58(\hps_0_f2h_sdram0_data_wdata[58]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_59(\hps_0_f2h_sdram0_data_wdata[59]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_60(\hps_0_f2h_sdram0_data_wdata[60]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_61(\hps_0_f2h_sdram0_data_wdata[61]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_62(\hps_0_f2h_sdram0_data_wdata[62]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_63(\hps_0_f2h_sdram0_data_wdata[63]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_0(\hps_0_f2h_sdram0_data_wstrb[0]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_1(\hps_0_f2h_sdram0_data_wstrb[1]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_2(\hps_0_f2h_sdram0_data_wstrb[2]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_3(\hps_0_f2h_sdram0_data_wstrb[3]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_4(\hps_0_f2h_sdram0_data_wstrb[4]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_5(\hps_0_f2h_sdram0_data_wstrb[5]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_6(\hps_0_f2h_sdram0_data_wstrb[6]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_7(\hps_0_f2h_sdram0_data_wstrb[7]~input_o ),
	.hps_0_f2h_sdram0_data_wlast(\hps_0_f2h_sdram0_data_wlast~input_o ),
	.hps_0_f2h_sdram0_data_wdata_64(\hps_0_f2h_sdram0_data_wdata[64]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_65(\hps_0_f2h_sdram0_data_wdata[65]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_66(\hps_0_f2h_sdram0_data_wdata[66]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_67(\hps_0_f2h_sdram0_data_wdata[67]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_68(\hps_0_f2h_sdram0_data_wdata[68]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_69(\hps_0_f2h_sdram0_data_wdata[69]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_70(\hps_0_f2h_sdram0_data_wdata[70]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_71(\hps_0_f2h_sdram0_data_wdata[71]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_72(\hps_0_f2h_sdram0_data_wdata[72]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_73(\hps_0_f2h_sdram0_data_wdata[73]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_74(\hps_0_f2h_sdram0_data_wdata[74]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_75(\hps_0_f2h_sdram0_data_wdata[75]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_76(\hps_0_f2h_sdram0_data_wdata[76]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_77(\hps_0_f2h_sdram0_data_wdata[77]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_78(\hps_0_f2h_sdram0_data_wdata[78]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_79(\hps_0_f2h_sdram0_data_wdata[79]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_80(\hps_0_f2h_sdram0_data_wdata[80]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_81(\hps_0_f2h_sdram0_data_wdata[81]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_82(\hps_0_f2h_sdram0_data_wdata[82]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_83(\hps_0_f2h_sdram0_data_wdata[83]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_84(\hps_0_f2h_sdram0_data_wdata[84]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_85(\hps_0_f2h_sdram0_data_wdata[85]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_86(\hps_0_f2h_sdram0_data_wdata[86]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_87(\hps_0_f2h_sdram0_data_wdata[87]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_88(\hps_0_f2h_sdram0_data_wdata[88]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_89(\hps_0_f2h_sdram0_data_wdata[89]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_90(\hps_0_f2h_sdram0_data_wdata[90]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_91(\hps_0_f2h_sdram0_data_wdata[91]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_92(\hps_0_f2h_sdram0_data_wdata[92]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_93(\hps_0_f2h_sdram0_data_wdata[93]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_94(\hps_0_f2h_sdram0_data_wdata[94]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_95(\hps_0_f2h_sdram0_data_wdata[95]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_96(\hps_0_f2h_sdram0_data_wdata[96]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_97(\hps_0_f2h_sdram0_data_wdata[97]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_98(\hps_0_f2h_sdram0_data_wdata[98]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_99(\hps_0_f2h_sdram0_data_wdata[99]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_100(\hps_0_f2h_sdram0_data_wdata[100]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_101(\hps_0_f2h_sdram0_data_wdata[101]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_102(\hps_0_f2h_sdram0_data_wdata[102]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_103(\hps_0_f2h_sdram0_data_wdata[103]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_104(\hps_0_f2h_sdram0_data_wdata[104]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_105(\hps_0_f2h_sdram0_data_wdata[105]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_106(\hps_0_f2h_sdram0_data_wdata[106]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_107(\hps_0_f2h_sdram0_data_wdata[107]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_108(\hps_0_f2h_sdram0_data_wdata[108]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_109(\hps_0_f2h_sdram0_data_wdata[109]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_110(\hps_0_f2h_sdram0_data_wdata[110]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_111(\hps_0_f2h_sdram0_data_wdata[111]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_112(\hps_0_f2h_sdram0_data_wdata[112]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_113(\hps_0_f2h_sdram0_data_wdata[113]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_114(\hps_0_f2h_sdram0_data_wdata[114]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_115(\hps_0_f2h_sdram0_data_wdata[115]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_116(\hps_0_f2h_sdram0_data_wdata[116]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_117(\hps_0_f2h_sdram0_data_wdata[117]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_118(\hps_0_f2h_sdram0_data_wdata[118]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_119(\hps_0_f2h_sdram0_data_wdata[119]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_120(\hps_0_f2h_sdram0_data_wdata[120]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_121(\hps_0_f2h_sdram0_data_wdata[121]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_122(\hps_0_f2h_sdram0_data_wdata[122]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_123(\hps_0_f2h_sdram0_data_wdata[123]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_124(\hps_0_f2h_sdram0_data_wdata[124]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_125(\hps_0_f2h_sdram0_data_wdata[125]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_126(\hps_0_f2h_sdram0_data_wdata[126]~input_o ),
	.hps_0_f2h_sdram0_data_wdata_127(\hps_0_f2h_sdram0_data_wdata[127]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_8(\hps_0_f2h_sdram0_data_wstrb[8]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_9(\hps_0_f2h_sdram0_data_wstrb[9]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_10(\hps_0_f2h_sdram0_data_wstrb[10]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_11(\hps_0_f2h_sdram0_data_wstrb[11]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_12(\hps_0_f2h_sdram0_data_wstrb[12]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_13(\hps_0_f2h_sdram0_data_wstrb[13]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_14(\hps_0_f2h_sdram0_data_wstrb[14]~input_o ),
	.hps_0_f2h_sdram0_data_wstrb_15(\hps_0_f2h_sdram0_data_wstrb[15]~input_o ));

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|strobe_in (
	.i(memory_mem_dqs),
	.ibar(memory_mem_dqs_n),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|dqsin ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|strobe_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|strobe_in .differential_mode = "true";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|strobe_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_in (
	.i(memory_mem_dq[0]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_in (
	.i(memory_mem_dq[1]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_in (
	.i(memory_mem_dq[2]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_in (
	.i(memory_mem_dq[3]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_in (
	.i(memory_mem_dq[4]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_in (
	.i(memory_mem_dq[5]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_in (
	.i(memory_mem_dq[6]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_in .simulate_z_as = "z";

cyclonev_io_ibuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_in (
	.i(memory_mem_dq[7]),
	.ibar(gnd),
	.dynamicterminationcontrol(gnd),
	.o(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].raw_input ));
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_in .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_in .simulate_z_as = "z";

assign \memory_oct_rzqin~input_o  = memory_oct_rzqin;

assign \hps_0_f2h_sdram0_clock_clk~input_o  = hps_0_f2h_sdram0_clock_clk;

assign \hps_0_f2h_sdram0_data_arvalid~input_o  = hps_0_f2h_sdram0_data_arvalid;

assign \hps_0_f2h_sdram0_data_awvalid~input_o  = hps_0_f2h_sdram0_data_awvalid;

assign \hps_0_f2h_sdram0_data_rready~input_o  = hps_0_f2h_sdram0_data_rready;

assign \hps_0_f2h_sdram0_data_wvalid~input_o  = hps_0_f2h_sdram0_data_wvalid;

assign \hps_0_f2h_sdram0_data_bready~input_o  = hps_0_f2h_sdram0_data_bready;

assign \hps_0_f2h_sdram0_data_araddr[0]~input_o  = hps_0_f2h_sdram0_data_araddr[0];

assign \hps_0_f2h_sdram0_data_araddr[1]~input_o  = hps_0_f2h_sdram0_data_araddr[1];

assign \hps_0_f2h_sdram0_data_araddr[2]~input_o  = hps_0_f2h_sdram0_data_araddr[2];

assign \hps_0_f2h_sdram0_data_araddr[3]~input_o  = hps_0_f2h_sdram0_data_araddr[3];

assign \hps_0_f2h_sdram0_data_araddr[4]~input_o  = hps_0_f2h_sdram0_data_araddr[4];

assign \hps_0_f2h_sdram0_data_araddr[5]~input_o  = hps_0_f2h_sdram0_data_araddr[5];

assign \hps_0_f2h_sdram0_data_araddr[6]~input_o  = hps_0_f2h_sdram0_data_araddr[6];

assign \hps_0_f2h_sdram0_data_araddr[7]~input_o  = hps_0_f2h_sdram0_data_araddr[7];

assign \hps_0_f2h_sdram0_data_araddr[8]~input_o  = hps_0_f2h_sdram0_data_araddr[8];

assign \hps_0_f2h_sdram0_data_araddr[9]~input_o  = hps_0_f2h_sdram0_data_araddr[9];

assign \hps_0_f2h_sdram0_data_araddr[10]~input_o  = hps_0_f2h_sdram0_data_araddr[10];

assign \hps_0_f2h_sdram0_data_araddr[11]~input_o  = hps_0_f2h_sdram0_data_araddr[11];

assign \hps_0_f2h_sdram0_data_araddr[12]~input_o  = hps_0_f2h_sdram0_data_araddr[12];

assign \hps_0_f2h_sdram0_data_araddr[13]~input_o  = hps_0_f2h_sdram0_data_araddr[13];

assign \hps_0_f2h_sdram0_data_araddr[14]~input_o  = hps_0_f2h_sdram0_data_araddr[14];

assign \hps_0_f2h_sdram0_data_araddr[15]~input_o  = hps_0_f2h_sdram0_data_araddr[15];

assign \hps_0_f2h_sdram0_data_araddr[16]~input_o  = hps_0_f2h_sdram0_data_araddr[16];

assign \hps_0_f2h_sdram0_data_araddr[17]~input_o  = hps_0_f2h_sdram0_data_araddr[17];

assign \hps_0_f2h_sdram0_data_araddr[18]~input_o  = hps_0_f2h_sdram0_data_araddr[18];

assign \hps_0_f2h_sdram0_data_araddr[19]~input_o  = hps_0_f2h_sdram0_data_araddr[19];

assign \hps_0_f2h_sdram0_data_araddr[20]~input_o  = hps_0_f2h_sdram0_data_araddr[20];

assign \hps_0_f2h_sdram0_data_araddr[21]~input_o  = hps_0_f2h_sdram0_data_araddr[21];

assign \hps_0_f2h_sdram0_data_araddr[22]~input_o  = hps_0_f2h_sdram0_data_araddr[22];

assign \hps_0_f2h_sdram0_data_araddr[23]~input_o  = hps_0_f2h_sdram0_data_araddr[23];

assign \hps_0_f2h_sdram0_data_araddr[24]~input_o  = hps_0_f2h_sdram0_data_araddr[24];

assign \hps_0_f2h_sdram0_data_araddr[25]~input_o  = hps_0_f2h_sdram0_data_araddr[25];

assign \hps_0_f2h_sdram0_data_araddr[26]~input_o  = hps_0_f2h_sdram0_data_araddr[26];

assign \hps_0_f2h_sdram0_data_araddr[27]~input_o  = hps_0_f2h_sdram0_data_araddr[27];

assign \hps_0_f2h_sdram0_data_araddr[28]~input_o  = hps_0_f2h_sdram0_data_araddr[28];

assign \hps_0_f2h_sdram0_data_araddr[29]~input_o  = hps_0_f2h_sdram0_data_araddr[29];

assign \hps_0_f2h_sdram0_data_araddr[30]~input_o  = hps_0_f2h_sdram0_data_araddr[30];

assign \hps_0_f2h_sdram0_data_araddr[31]~input_o  = hps_0_f2h_sdram0_data_araddr[31];

assign \hps_0_f2h_sdram0_data_arlen[0]~input_o  = hps_0_f2h_sdram0_data_arlen[0];

assign \hps_0_f2h_sdram0_data_arlen[1]~input_o  = hps_0_f2h_sdram0_data_arlen[1];

assign \hps_0_f2h_sdram0_data_arlen[2]~input_o  = hps_0_f2h_sdram0_data_arlen[2];

assign \hps_0_f2h_sdram0_data_arlen[3]~input_o  = hps_0_f2h_sdram0_data_arlen[3];

assign \hps_0_f2h_sdram0_data_arid[0]~input_o  = hps_0_f2h_sdram0_data_arid[0];

assign \hps_0_f2h_sdram0_data_arid[1]~input_o  = hps_0_f2h_sdram0_data_arid[1];

assign \hps_0_f2h_sdram0_data_arid[2]~input_o  = hps_0_f2h_sdram0_data_arid[2];

assign \hps_0_f2h_sdram0_data_arid[3]~input_o  = hps_0_f2h_sdram0_data_arid[3];

assign \hps_0_f2h_sdram0_data_arid[4]~input_o  = hps_0_f2h_sdram0_data_arid[4];

assign \hps_0_f2h_sdram0_data_arid[5]~input_o  = hps_0_f2h_sdram0_data_arid[5];

assign \hps_0_f2h_sdram0_data_arid[6]~input_o  = hps_0_f2h_sdram0_data_arid[6];

assign \hps_0_f2h_sdram0_data_arid[7]~input_o  = hps_0_f2h_sdram0_data_arid[7];

assign \hps_0_f2h_sdram0_data_arsize[0]~input_o  = hps_0_f2h_sdram0_data_arsize[0];

assign \hps_0_f2h_sdram0_data_arsize[1]~input_o  = hps_0_f2h_sdram0_data_arsize[1];

assign \hps_0_f2h_sdram0_data_arsize[2]~input_o  = hps_0_f2h_sdram0_data_arsize[2];

assign \hps_0_f2h_sdram0_data_arburst[0]~input_o  = hps_0_f2h_sdram0_data_arburst[0];

assign \hps_0_f2h_sdram0_data_arburst[1]~input_o  = hps_0_f2h_sdram0_data_arburst[1];

assign \hps_0_f2h_sdram0_data_arlock[0]~input_o  = hps_0_f2h_sdram0_data_arlock[0];

assign \hps_0_f2h_sdram0_data_arlock[1]~input_o  = hps_0_f2h_sdram0_data_arlock[1];

assign \hps_0_f2h_sdram0_data_arprot[0]~input_o  = hps_0_f2h_sdram0_data_arprot[0];

assign \hps_0_f2h_sdram0_data_arprot[1]~input_o  = hps_0_f2h_sdram0_data_arprot[1];

assign \hps_0_f2h_sdram0_data_awaddr[0]~input_o  = hps_0_f2h_sdram0_data_awaddr[0];

assign \hps_0_f2h_sdram0_data_awaddr[1]~input_o  = hps_0_f2h_sdram0_data_awaddr[1];

assign \hps_0_f2h_sdram0_data_awaddr[2]~input_o  = hps_0_f2h_sdram0_data_awaddr[2];

assign \hps_0_f2h_sdram0_data_awaddr[3]~input_o  = hps_0_f2h_sdram0_data_awaddr[3];

assign \hps_0_f2h_sdram0_data_awaddr[4]~input_o  = hps_0_f2h_sdram0_data_awaddr[4];

assign \hps_0_f2h_sdram0_data_awaddr[5]~input_o  = hps_0_f2h_sdram0_data_awaddr[5];

assign \hps_0_f2h_sdram0_data_awaddr[6]~input_o  = hps_0_f2h_sdram0_data_awaddr[6];

assign \hps_0_f2h_sdram0_data_awaddr[7]~input_o  = hps_0_f2h_sdram0_data_awaddr[7];

assign \hps_0_f2h_sdram0_data_awaddr[8]~input_o  = hps_0_f2h_sdram0_data_awaddr[8];

assign \hps_0_f2h_sdram0_data_awaddr[9]~input_o  = hps_0_f2h_sdram0_data_awaddr[9];

assign \hps_0_f2h_sdram0_data_awaddr[10]~input_o  = hps_0_f2h_sdram0_data_awaddr[10];

assign \hps_0_f2h_sdram0_data_awaddr[11]~input_o  = hps_0_f2h_sdram0_data_awaddr[11];

assign \hps_0_f2h_sdram0_data_awaddr[12]~input_o  = hps_0_f2h_sdram0_data_awaddr[12];

assign \hps_0_f2h_sdram0_data_awaddr[13]~input_o  = hps_0_f2h_sdram0_data_awaddr[13];

assign \hps_0_f2h_sdram0_data_awaddr[14]~input_o  = hps_0_f2h_sdram0_data_awaddr[14];

assign \hps_0_f2h_sdram0_data_awaddr[15]~input_o  = hps_0_f2h_sdram0_data_awaddr[15];

assign \hps_0_f2h_sdram0_data_awaddr[16]~input_o  = hps_0_f2h_sdram0_data_awaddr[16];

assign \hps_0_f2h_sdram0_data_awaddr[17]~input_o  = hps_0_f2h_sdram0_data_awaddr[17];

assign \hps_0_f2h_sdram0_data_awaddr[18]~input_o  = hps_0_f2h_sdram0_data_awaddr[18];

assign \hps_0_f2h_sdram0_data_awaddr[19]~input_o  = hps_0_f2h_sdram0_data_awaddr[19];

assign \hps_0_f2h_sdram0_data_awaddr[20]~input_o  = hps_0_f2h_sdram0_data_awaddr[20];

assign \hps_0_f2h_sdram0_data_awaddr[21]~input_o  = hps_0_f2h_sdram0_data_awaddr[21];

assign \hps_0_f2h_sdram0_data_awaddr[22]~input_o  = hps_0_f2h_sdram0_data_awaddr[22];

assign \hps_0_f2h_sdram0_data_awaddr[23]~input_o  = hps_0_f2h_sdram0_data_awaddr[23];

assign \hps_0_f2h_sdram0_data_awaddr[24]~input_o  = hps_0_f2h_sdram0_data_awaddr[24];

assign \hps_0_f2h_sdram0_data_awaddr[25]~input_o  = hps_0_f2h_sdram0_data_awaddr[25];

assign \hps_0_f2h_sdram0_data_awaddr[26]~input_o  = hps_0_f2h_sdram0_data_awaddr[26];

assign \hps_0_f2h_sdram0_data_awaddr[27]~input_o  = hps_0_f2h_sdram0_data_awaddr[27];

assign \hps_0_f2h_sdram0_data_awaddr[28]~input_o  = hps_0_f2h_sdram0_data_awaddr[28];

assign \hps_0_f2h_sdram0_data_awaddr[29]~input_o  = hps_0_f2h_sdram0_data_awaddr[29];

assign \hps_0_f2h_sdram0_data_awaddr[30]~input_o  = hps_0_f2h_sdram0_data_awaddr[30];

assign \hps_0_f2h_sdram0_data_awaddr[31]~input_o  = hps_0_f2h_sdram0_data_awaddr[31];

assign \hps_0_f2h_sdram0_data_awlen[0]~input_o  = hps_0_f2h_sdram0_data_awlen[0];

assign \hps_0_f2h_sdram0_data_awlen[1]~input_o  = hps_0_f2h_sdram0_data_awlen[1];

assign \hps_0_f2h_sdram0_data_awlen[2]~input_o  = hps_0_f2h_sdram0_data_awlen[2];

assign \hps_0_f2h_sdram0_data_awlen[3]~input_o  = hps_0_f2h_sdram0_data_awlen[3];

assign \hps_0_f2h_sdram0_data_awid[0]~input_o  = hps_0_f2h_sdram0_data_awid[0];

assign \hps_0_f2h_sdram0_data_awid[1]~input_o  = hps_0_f2h_sdram0_data_awid[1];

assign \hps_0_f2h_sdram0_data_awid[2]~input_o  = hps_0_f2h_sdram0_data_awid[2];

assign \hps_0_f2h_sdram0_data_awid[3]~input_o  = hps_0_f2h_sdram0_data_awid[3];

assign \hps_0_f2h_sdram0_data_awid[4]~input_o  = hps_0_f2h_sdram0_data_awid[4];

assign \hps_0_f2h_sdram0_data_awid[5]~input_o  = hps_0_f2h_sdram0_data_awid[5];

assign \hps_0_f2h_sdram0_data_awid[6]~input_o  = hps_0_f2h_sdram0_data_awid[6];

assign \hps_0_f2h_sdram0_data_awid[7]~input_o  = hps_0_f2h_sdram0_data_awid[7];

assign \hps_0_f2h_sdram0_data_awsize[0]~input_o  = hps_0_f2h_sdram0_data_awsize[0];

assign \hps_0_f2h_sdram0_data_awsize[1]~input_o  = hps_0_f2h_sdram0_data_awsize[1];

assign \hps_0_f2h_sdram0_data_awsize[2]~input_o  = hps_0_f2h_sdram0_data_awsize[2];

assign \hps_0_f2h_sdram0_data_awburst[0]~input_o  = hps_0_f2h_sdram0_data_awburst[0];

assign \hps_0_f2h_sdram0_data_awburst[1]~input_o  = hps_0_f2h_sdram0_data_awburst[1];

assign \hps_0_f2h_sdram0_data_awlock[0]~input_o  = hps_0_f2h_sdram0_data_awlock[0];

assign \hps_0_f2h_sdram0_data_awlock[1]~input_o  = hps_0_f2h_sdram0_data_awlock[1];

assign \hps_0_f2h_sdram0_data_awprot[0]~input_o  = hps_0_f2h_sdram0_data_awprot[0];

assign \hps_0_f2h_sdram0_data_awprot[1]~input_o  = hps_0_f2h_sdram0_data_awprot[1];

assign \hps_0_f2h_sdram0_data_wdata[0]~input_o  = hps_0_f2h_sdram0_data_wdata[0];

assign \hps_0_f2h_sdram0_data_wdata[1]~input_o  = hps_0_f2h_sdram0_data_wdata[1];

assign \hps_0_f2h_sdram0_data_wdata[2]~input_o  = hps_0_f2h_sdram0_data_wdata[2];

assign \hps_0_f2h_sdram0_data_wdata[3]~input_o  = hps_0_f2h_sdram0_data_wdata[3];

assign \hps_0_f2h_sdram0_data_wdata[4]~input_o  = hps_0_f2h_sdram0_data_wdata[4];

assign \hps_0_f2h_sdram0_data_wdata[5]~input_o  = hps_0_f2h_sdram0_data_wdata[5];

assign \hps_0_f2h_sdram0_data_wdata[6]~input_o  = hps_0_f2h_sdram0_data_wdata[6];

assign \hps_0_f2h_sdram0_data_wdata[7]~input_o  = hps_0_f2h_sdram0_data_wdata[7];

assign \hps_0_f2h_sdram0_data_wdata[8]~input_o  = hps_0_f2h_sdram0_data_wdata[8];

assign \hps_0_f2h_sdram0_data_wdata[9]~input_o  = hps_0_f2h_sdram0_data_wdata[9];

assign \hps_0_f2h_sdram0_data_wdata[10]~input_o  = hps_0_f2h_sdram0_data_wdata[10];

assign \hps_0_f2h_sdram0_data_wdata[11]~input_o  = hps_0_f2h_sdram0_data_wdata[11];

assign \hps_0_f2h_sdram0_data_wdata[12]~input_o  = hps_0_f2h_sdram0_data_wdata[12];

assign \hps_0_f2h_sdram0_data_wdata[13]~input_o  = hps_0_f2h_sdram0_data_wdata[13];

assign \hps_0_f2h_sdram0_data_wdata[14]~input_o  = hps_0_f2h_sdram0_data_wdata[14];

assign \hps_0_f2h_sdram0_data_wdata[15]~input_o  = hps_0_f2h_sdram0_data_wdata[15];

assign \hps_0_f2h_sdram0_data_wdata[16]~input_o  = hps_0_f2h_sdram0_data_wdata[16];

assign \hps_0_f2h_sdram0_data_wdata[17]~input_o  = hps_0_f2h_sdram0_data_wdata[17];

assign \hps_0_f2h_sdram0_data_wdata[18]~input_o  = hps_0_f2h_sdram0_data_wdata[18];

assign \hps_0_f2h_sdram0_data_wdata[19]~input_o  = hps_0_f2h_sdram0_data_wdata[19];

assign \hps_0_f2h_sdram0_data_wdata[20]~input_o  = hps_0_f2h_sdram0_data_wdata[20];

assign \hps_0_f2h_sdram0_data_wdata[21]~input_o  = hps_0_f2h_sdram0_data_wdata[21];

assign \hps_0_f2h_sdram0_data_wdata[22]~input_o  = hps_0_f2h_sdram0_data_wdata[22];

assign \hps_0_f2h_sdram0_data_wdata[23]~input_o  = hps_0_f2h_sdram0_data_wdata[23];

assign \hps_0_f2h_sdram0_data_wdata[24]~input_o  = hps_0_f2h_sdram0_data_wdata[24];

assign \hps_0_f2h_sdram0_data_wdata[25]~input_o  = hps_0_f2h_sdram0_data_wdata[25];

assign \hps_0_f2h_sdram0_data_wdata[26]~input_o  = hps_0_f2h_sdram0_data_wdata[26];

assign \hps_0_f2h_sdram0_data_wdata[27]~input_o  = hps_0_f2h_sdram0_data_wdata[27];

assign \hps_0_f2h_sdram0_data_wdata[28]~input_o  = hps_0_f2h_sdram0_data_wdata[28];

assign \hps_0_f2h_sdram0_data_wdata[29]~input_o  = hps_0_f2h_sdram0_data_wdata[29];

assign \hps_0_f2h_sdram0_data_wdata[30]~input_o  = hps_0_f2h_sdram0_data_wdata[30];

assign \hps_0_f2h_sdram0_data_wdata[31]~input_o  = hps_0_f2h_sdram0_data_wdata[31];

assign \hps_0_f2h_sdram0_data_wdata[32]~input_o  = hps_0_f2h_sdram0_data_wdata[32];

assign \hps_0_f2h_sdram0_data_wdata[33]~input_o  = hps_0_f2h_sdram0_data_wdata[33];

assign \hps_0_f2h_sdram0_data_wdata[34]~input_o  = hps_0_f2h_sdram0_data_wdata[34];

assign \hps_0_f2h_sdram0_data_wdata[35]~input_o  = hps_0_f2h_sdram0_data_wdata[35];

assign \hps_0_f2h_sdram0_data_wdata[36]~input_o  = hps_0_f2h_sdram0_data_wdata[36];

assign \hps_0_f2h_sdram0_data_wdata[37]~input_o  = hps_0_f2h_sdram0_data_wdata[37];

assign \hps_0_f2h_sdram0_data_wdata[38]~input_o  = hps_0_f2h_sdram0_data_wdata[38];

assign \hps_0_f2h_sdram0_data_wdata[39]~input_o  = hps_0_f2h_sdram0_data_wdata[39];

assign \hps_0_f2h_sdram0_data_wdata[40]~input_o  = hps_0_f2h_sdram0_data_wdata[40];

assign \hps_0_f2h_sdram0_data_wdata[41]~input_o  = hps_0_f2h_sdram0_data_wdata[41];

assign \hps_0_f2h_sdram0_data_wdata[42]~input_o  = hps_0_f2h_sdram0_data_wdata[42];

assign \hps_0_f2h_sdram0_data_wdata[43]~input_o  = hps_0_f2h_sdram0_data_wdata[43];

assign \hps_0_f2h_sdram0_data_wdata[44]~input_o  = hps_0_f2h_sdram0_data_wdata[44];

assign \hps_0_f2h_sdram0_data_wdata[45]~input_o  = hps_0_f2h_sdram0_data_wdata[45];

assign \hps_0_f2h_sdram0_data_wdata[46]~input_o  = hps_0_f2h_sdram0_data_wdata[46];

assign \hps_0_f2h_sdram0_data_wdata[47]~input_o  = hps_0_f2h_sdram0_data_wdata[47];

assign \hps_0_f2h_sdram0_data_wdata[48]~input_o  = hps_0_f2h_sdram0_data_wdata[48];

assign \hps_0_f2h_sdram0_data_wdata[49]~input_o  = hps_0_f2h_sdram0_data_wdata[49];

assign \hps_0_f2h_sdram0_data_wdata[50]~input_o  = hps_0_f2h_sdram0_data_wdata[50];

assign \hps_0_f2h_sdram0_data_wdata[51]~input_o  = hps_0_f2h_sdram0_data_wdata[51];

assign \hps_0_f2h_sdram0_data_wdata[52]~input_o  = hps_0_f2h_sdram0_data_wdata[52];

assign \hps_0_f2h_sdram0_data_wdata[53]~input_o  = hps_0_f2h_sdram0_data_wdata[53];

assign \hps_0_f2h_sdram0_data_wdata[54]~input_o  = hps_0_f2h_sdram0_data_wdata[54];

assign \hps_0_f2h_sdram0_data_wdata[55]~input_o  = hps_0_f2h_sdram0_data_wdata[55];

assign \hps_0_f2h_sdram0_data_wdata[56]~input_o  = hps_0_f2h_sdram0_data_wdata[56];

assign \hps_0_f2h_sdram0_data_wdata[57]~input_o  = hps_0_f2h_sdram0_data_wdata[57];

assign \hps_0_f2h_sdram0_data_wdata[58]~input_o  = hps_0_f2h_sdram0_data_wdata[58];

assign \hps_0_f2h_sdram0_data_wdata[59]~input_o  = hps_0_f2h_sdram0_data_wdata[59];

assign \hps_0_f2h_sdram0_data_wdata[60]~input_o  = hps_0_f2h_sdram0_data_wdata[60];

assign \hps_0_f2h_sdram0_data_wdata[61]~input_o  = hps_0_f2h_sdram0_data_wdata[61];

assign \hps_0_f2h_sdram0_data_wdata[62]~input_o  = hps_0_f2h_sdram0_data_wdata[62];

assign \hps_0_f2h_sdram0_data_wdata[63]~input_o  = hps_0_f2h_sdram0_data_wdata[63];

assign \hps_0_f2h_sdram0_data_wstrb[0]~input_o  = hps_0_f2h_sdram0_data_wstrb[0];

assign \hps_0_f2h_sdram0_data_wstrb[1]~input_o  = hps_0_f2h_sdram0_data_wstrb[1];

assign \hps_0_f2h_sdram0_data_wstrb[2]~input_o  = hps_0_f2h_sdram0_data_wstrb[2];

assign \hps_0_f2h_sdram0_data_wstrb[3]~input_o  = hps_0_f2h_sdram0_data_wstrb[3];

assign \hps_0_f2h_sdram0_data_wstrb[4]~input_o  = hps_0_f2h_sdram0_data_wstrb[4];

assign \hps_0_f2h_sdram0_data_wstrb[5]~input_o  = hps_0_f2h_sdram0_data_wstrb[5];

assign \hps_0_f2h_sdram0_data_wstrb[6]~input_o  = hps_0_f2h_sdram0_data_wstrb[6];

assign \hps_0_f2h_sdram0_data_wstrb[7]~input_o  = hps_0_f2h_sdram0_data_wstrb[7];

assign \hps_0_f2h_sdram0_data_wlast~input_o  = hps_0_f2h_sdram0_data_wlast;

assign \hps_0_f2h_sdram0_data_wdata[64]~input_o  = hps_0_f2h_sdram0_data_wdata[64];

assign \hps_0_f2h_sdram0_data_wdata[65]~input_o  = hps_0_f2h_sdram0_data_wdata[65];

assign \hps_0_f2h_sdram0_data_wdata[66]~input_o  = hps_0_f2h_sdram0_data_wdata[66];

assign \hps_0_f2h_sdram0_data_wdata[67]~input_o  = hps_0_f2h_sdram0_data_wdata[67];

assign \hps_0_f2h_sdram0_data_wdata[68]~input_o  = hps_0_f2h_sdram0_data_wdata[68];

assign \hps_0_f2h_sdram0_data_wdata[69]~input_o  = hps_0_f2h_sdram0_data_wdata[69];

assign \hps_0_f2h_sdram0_data_wdata[70]~input_o  = hps_0_f2h_sdram0_data_wdata[70];

assign \hps_0_f2h_sdram0_data_wdata[71]~input_o  = hps_0_f2h_sdram0_data_wdata[71];

assign \hps_0_f2h_sdram0_data_wdata[72]~input_o  = hps_0_f2h_sdram0_data_wdata[72];

assign \hps_0_f2h_sdram0_data_wdata[73]~input_o  = hps_0_f2h_sdram0_data_wdata[73];

assign \hps_0_f2h_sdram0_data_wdata[74]~input_o  = hps_0_f2h_sdram0_data_wdata[74];

assign \hps_0_f2h_sdram0_data_wdata[75]~input_o  = hps_0_f2h_sdram0_data_wdata[75];

assign \hps_0_f2h_sdram0_data_wdata[76]~input_o  = hps_0_f2h_sdram0_data_wdata[76];

assign \hps_0_f2h_sdram0_data_wdata[77]~input_o  = hps_0_f2h_sdram0_data_wdata[77];

assign \hps_0_f2h_sdram0_data_wdata[78]~input_o  = hps_0_f2h_sdram0_data_wdata[78];

assign \hps_0_f2h_sdram0_data_wdata[79]~input_o  = hps_0_f2h_sdram0_data_wdata[79];

assign \hps_0_f2h_sdram0_data_wdata[80]~input_o  = hps_0_f2h_sdram0_data_wdata[80];

assign \hps_0_f2h_sdram0_data_wdata[81]~input_o  = hps_0_f2h_sdram0_data_wdata[81];

assign \hps_0_f2h_sdram0_data_wdata[82]~input_o  = hps_0_f2h_sdram0_data_wdata[82];

assign \hps_0_f2h_sdram0_data_wdata[83]~input_o  = hps_0_f2h_sdram0_data_wdata[83];

assign \hps_0_f2h_sdram0_data_wdata[84]~input_o  = hps_0_f2h_sdram0_data_wdata[84];

assign \hps_0_f2h_sdram0_data_wdata[85]~input_o  = hps_0_f2h_sdram0_data_wdata[85];

assign \hps_0_f2h_sdram0_data_wdata[86]~input_o  = hps_0_f2h_sdram0_data_wdata[86];

assign \hps_0_f2h_sdram0_data_wdata[87]~input_o  = hps_0_f2h_sdram0_data_wdata[87];

assign \hps_0_f2h_sdram0_data_wdata[88]~input_o  = hps_0_f2h_sdram0_data_wdata[88];

assign \hps_0_f2h_sdram0_data_wdata[89]~input_o  = hps_0_f2h_sdram0_data_wdata[89];

assign \hps_0_f2h_sdram0_data_wdata[90]~input_o  = hps_0_f2h_sdram0_data_wdata[90];

assign \hps_0_f2h_sdram0_data_wdata[91]~input_o  = hps_0_f2h_sdram0_data_wdata[91];

assign \hps_0_f2h_sdram0_data_wdata[92]~input_o  = hps_0_f2h_sdram0_data_wdata[92];

assign \hps_0_f2h_sdram0_data_wdata[93]~input_o  = hps_0_f2h_sdram0_data_wdata[93];

assign \hps_0_f2h_sdram0_data_wdata[94]~input_o  = hps_0_f2h_sdram0_data_wdata[94];

assign \hps_0_f2h_sdram0_data_wdata[95]~input_o  = hps_0_f2h_sdram0_data_wdata[95];

assign \hps_0_f2h_sdram0_data_wdata[96]~input_o  = hps_0_f2h_sdram0_data_wdata[96];

assign \hps_0_f2h_sdram0_data_wdata[97]~input_o  = hps_0_f2h_sdram0_data_wdata[97];

assign \hps_0_f2h_sdram0_data_wdata[98]~input_o  = hps_0_f2h_sdram0_data_wdata[98];

assign \hps_0_f2h_sdram0_data_wdata[99]~input_o  = hps_0_f2h_sdram0_data_wdata[99];

assign \hps_0_f2h_sdram0_data_wdata[100]~input_o  = hps_0_f2h_sdram0_data_wdata[100];

assign \hps_0_f2h_sdram0_data_wdata[101]~input_o  = hps_0_f2h_sdram0_data_wdata[101];

assign \hps_0_f2h_sdram0_data_wdata[102]~input_o  = hps_0_f2h_sdram0_data_wdata[102];

assign \hps_0_f2h_sdram0_data_wdata[103]~input_o  = hps_0_f2h_sdram0_data_wdata[103];

assign \hps_0_f2h_sdram0_data_wdata[104]~input_o  = hps_0_f2h_sdram0_data_wdata[104];

assign \hps_0_f2h_sdram0_data_wdata[105]~input_o  = hps_0_f2h_sdram0_data_wdata[105];

assign \hps_0_f2h_sdram0_data_wdata[106]~input_o  = hps_0_f2h_sdram0_data_wdata[106];

assign \hps_0_f2h_sdram0_data_wdata[107]~input_o  = hps_0_f2h_sdram0_data_wdata[107];

assign \hps_0_f2h_sdram0_data_wdata[108]~input_o  = hps_0_f2h_sdram0_data_wdata[108];

assign \hps_0_f2h_sdram0_data_wdata[109]~input_o  = hps_0_f2h_sdram0_data_wdata[109];

assign \hps_0_f2h_sdram0_data_wdata[110]~input_o  = hps_0_f2h_sdram0_data_wdata[110];

assign \hps_0_f2h_sdram0_data_wdata[111]~input_o  = hps_0_f2h_sdram0_data_wdata[111];

assign \hps_0_f2h_sdram0_data_wdata[112]~input_o  = hps_0_f2h_sdram0_data_wdata[112];

assign \hps_0_f2h_sdram0_data_wdata[113]~input_o  = hps_0_f2h_sdram0_data_wdata[113];

assign \hps_0_f2h_sdram0_data_wdata[114]~input_o  = hps_0_f2h_sdram0_data_wdata[114];

assign \hps_0_f2h_sdram0_data_wdata[115]~input_o  = hps_0_f2h_sdram0_data_wdata[115];

assign \hps_0_f2h_sdram0_data_wdata[116]~input_o  = hps_0_f2h_sdram0_data_wdata[116];

assign \hps_0_f2h_sdram0_data_wdata[117]~input_o  = hps_0_f2h_sdram0_data_wdata[117];

assign \hps_0_f2h_sdram0_data_wdata[118]~input_o  = hps_0_f2h_sdram0_data_wdata[118];

assign \hps_0_f2h_sdram0_data_wdata[119]~input_o  = hps_0_f2h_sdram0_data_wdata[119];

assign \hps_0_f2h_sdram0_data_wdata[120]~input_o  = hps_0_f2h_sdram0_data_wdata[120];

assign \hps_0_f2h_sdram0_data_wdata[121]~input_o  = hps_0_f2h_sdram0_data_wdata[121];

assign \hps_0_f2h_sdram0_data_wdata[122]~input_o  = hps_0_f2h_sdram0_data_wdata[122];

assign \hps_0_f2h_sdram0_data_wdata[123]~input_o  = hps_0_f2h_sdram0_data_wdata[123];

assign \hps_0_f2h_sdram0_data_wdata[124]~input_o  = hps_0_f2h_sdram0_data_wdata[124];

assign \hps_0_f2h_sdram0_data_wdata[125]~input_o  = hps_0_f2h_sdram0_data_wdata[125];

assign \hps_0_f2h_sdram0_data_wdata[126]~input_o  = hps_0_f2h_sdram0_data_wdata[126];

assign \hps_0_f2h_sdram0_data_wdata[127]~input_o  = hps_0_f2h_sdram0_data_wdata[127];

assign \hps_0_f2h_sdram0_data_wstrb[8]~input_o  = hps_0_f2h_sdram0_data_wstrb[8];

assign \hps_0_f2h_sdram0_data_wstrb[9]~input_o  = hps_0_f2h_sdram0_data_wstrb[9];

assign \hps_0_f2h_sdram0_data_wstrb[10]~input_o  = hps_0_f2h_sdram0_data_wstrb[10];

assign \hps_0_f2h_sdram0_data_wstrb[11]~input_o  = hps_0_f2h_sdram0_data_wstrb[11];

assign \hps_0_f2h_sdram0_data_wstrb[12]~input_o  = hps_0_f2h_sdram0_data_wstrb[12];

assign \hps_0_f2h_sdram0_data_wstrb[13]~input_o  = hps_0_f2h_sdram0_data_wstrb[13];

assign \hps_0_f2h_sdram0_data_wstrb[14]~input_o  = hps_0_f2h_sdram0_data_wstrb[14];

assign \hps_0_f2h_sdram0_data_wstrb[15]~input_o  = hps_0_f2h_sdram0_data_wstrb[15];

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].obuf_1 (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].delayed_data_out ),
	.oe(vcc),
	.dynamicterminationcontrol(gnd),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dm),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].obuf_1 .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].obuf_1 .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|extra_output_pad_gen[0].obuf_1 .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obuf_ba_0 (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_obar[0] ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_oebout[0] ),
	.dynamicterminationcontrol(gnd),
	.seriesterminationcontrol(16'b0000000000000000),
	.parallelterminationcontrol(16'b0000000000000000),
	.o(memory_mem_ck_n),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obuf_ba_0 .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obuf_ba_0 .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obuf_ba_0 .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obufa_0 (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_o[0] ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|wire_pseudo_diffa_oeout[0] ),
	.dynamicterminationcontrol(gnd),
	.seriesterminationcontrol(16'b0000000000000000),
	.parallelterminationcontrol(16'b0000000000000000),
	.o(memory_mem_ck),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obufa_0 .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obufa_0 .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|clock_gen[0].uclk_generator|obufa_0 .shift_series_termination_control = "false";

assign hps_0_f2h_sdram0_data_bresp[0] = \hps_0|fpga_interfaces|f2h_sdram0_BRESP[0] ;

assign hps_0_f2h_sdram0_data_bresp[1] = \hps_0|fpga_interfaces|f2h_sdram0_BRESP[1] ;

assign hps_0_f2h_sdram0_data_bid[0] = \hps_0|fpga_interfaces|f2h_sdram0_BID[0] ;

assign hps_0_f2h_sdram0_data_bid[1] = \hps_0|fpga_interfaces|f2h_sdram0_BID[1] ;

assign hps_0_f2h_sdram0_data_bid[2] = \hps_0|fpga_interfaces|f2h_sdram0_BID[2] ;

assign hps_0_f2h_sdram0_data_bid[3] = \hps_0|fpga_interfaces|f2h_sdram0_BID[3] ;

assign hps_0_f2h_sdram0_data_bid[4] = \hps_0|fpga_interfaces|f2h_sdram0_BID[4] ;

assign hps_0_f2h_sdram0_data_bid[5] = \hps_0|fpga_interfaces|f2h_sdram0_BID[5] ;

assign hps_0_f2h_sdram0_data_bid[6] = \hps_0|fpga_interfaces|f2h_sdram0_BID[6] ;

assign hps_0_f2h_sdram0_data_bid[7] = \hps_0|fpga_interfaces|f2h_sdram0_BID[7] ;

assign hps_0_f2h_sdram0_data_bvalid = \hps_0|fpga_interfaces|f2h_sdram0_BVALID[0] ;

assign hps_0_f2h_sdram0_data_arready = \hps_0|fpga_interfaces|f2h_sdram0_ARREADY[0] ;

assign hps_0_f2h_sdram0_data_awready = \hps_0|fpga_interfaces|f2h_sdram0_AWREADY[0] ;

assign hps_0_f2h_sdram0_data_rdata[0] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[0] ;

assign hps_0_f2h_sdram0_data_rdata[1] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[1] ;

assign hps_0_f2h_sdram0_data_rdata[2] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[2] ;

assign hps_0_f2h_sdram0_data_rdata[3] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[3] ;

assign hps_0_f2h_sdram0_data_rdata[4] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[4] ;

assign hps_0_f2h_sdram0_data_rdata[5] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[5] ;

assign hps_0_f2h_sdram0_data_rdata[6] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[6] ;

assign hps_0_f2h_sdram0_data_rdata[7] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[7] ;

assign hps_0_f2h_sdram0_data_rdata[8] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[8] ;

assign hps_0_f2h_sdram0_data_rdata[9] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[9] ;

assign hps_0_f2h_sdram0_data_rdata[10] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[10] ;

assign hps_0_f2h_sdram0_data_rdata[11] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[11] ;

assign hps_0_f2h_sdram0_data_rdata[12] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[12] ;

assign hps_0_f2h_sdram0_data_rdata[13] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[13] ;

assign hps_0_f2h_sdram0_data_rdata[14] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[14] ;

assign hps_0_f2h_sdram0_data_rdata[15] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[15] ;

assign hps_0_f2h_sdram0_data_rdata[16] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[16] ;

assign hps_0_f2h_sdram0_data_rdata[17] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[17] ;

assign hps_0_f2h_sdram0_data_rdata[18] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[18] ;

assign hps_0_f2h_sdram0_data_rdata[19] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[19] ;

assign hps_0_f2h_sdram0_data_rdata[20] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[20] ;

assign hps_0_f2h_sdram0_data_rdata[21] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[21] ;

assign hps_0_f2h_sdram0_data_rdata[22] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[22] ;

assign hps_0_f2h_sdram0_data_rdata[23] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[23] ;

assign hps_0_f2h_sdram0_data_rdata[24] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[24] ;

assign hps_0_f2h_sdram0_data_rdata[25] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[25] ;

assign hps_0_f2h_sdram0_data_rdata[26] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[26] ;

assign hps_0_f2h_sdram0_data_rdata[27] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[27] ;

assign hps_0_f2h_sdram0_data_rdata[28] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[28] ;

assign hps_0_f2h_sdram0_data_rdata[29] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[29] ;

assign hps_0_f2h_sdram0_data_rdata[30] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[30] ;

assign hps_0_f2h_sdram0_data_rdata[31] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[31] ;

assign hps_0_f2h_sdram0_data_rdata[32] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[32] ;

assign hps_0_f2h_sdram0_data_rdata[33] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[33] ;

assign hps_0_f2h_sdram0_data_rdata[34] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[34] ;

assign hps_0_f2h_sdram0_data_rdata[35] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[35] ;

assign hps_0_f2h_sdram0_data_rdata[36] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[36] ;

assign hps_0_f2h_sdram0_data_rdata[37] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[37] ;

assign hps_0_f2h_sdram0_data_rdata[38] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[38] ;

assign hps_0_f2h_sdram0_data_rdata[39] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[39] ;

assign hps_0_f2h_sdram0_data_rdata[40] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[40] ;

assign hps_0_f2h_sdram0_data_rdata[41] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[41] ;

assign hps_0_f2h_sdram0_data_rdata[42] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[42] ;

assign hps_0_f2h_sdram0_data_rdata[43] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[43] ;

assign hps_0_f2h_sdram0_data_rdata[44] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[44] ;

assign hps_0_f2h_sdram0_data_rdata[45] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[45] ;

assign hps_0_f2h_sdram0_data_rdata[46] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[46] ;

assign hps_0_f2h_sdram0_data_rdata[47] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[47] ;

assign hps_0_f2h_sdram0_data_rdata[48] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[48] ;

assign hps_0_f2h_sdram0_data_rdata[49] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[49] ;

assign hps_0_f2h_sdram0_data_rdata[50] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[50] ;

assign hps_0_f2h_sdram0_data_rdata[51] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[51] ;

assign hps_0_f2h_sdram0_data_rdata[52] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[52] ;

assign hps_0_f2h_sdram0_data_rdata[53] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[53] ;

assign hps_0_f2h_sdram0_data_rdata[54] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[54] ;

assign hps_0_f2h_sdram0_data_rdata[55] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[55] ;

assign hps_0_f2h_sdram0_data_rdata[56] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[56] ;

assign hps_0_f2h_sdram0_data_rdata[57] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[57] ;

assign hps_0_f2h_sdram0_data_rdata[58] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[58] ;

assign hps_0_f2h_sdram0_data_rdata[59] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[59] ;

assign hps_0_f2h_sdram0_data_rdata[60] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[60] ;

assign hps_0_f2h_sdram0_data_rdata[61] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[61] ;

assign hps_0_f2h_sdram0_data_rdata[62] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[62] ;

assign hps_0_f2h_sdram0_data_rdata[63] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[63] ;

assign hps_0_f2h_sdram0_data_rdata[64] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[64] ;

assign hps_0_f2h_sdram0_data_rdata[65] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[65] ;

assign hps_0_f2h_sdram0_data_rdata[66] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[66] ;

assign hps_0_f2h_sdram0_data_rdata[67] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[67] ;

assign hps_0_f2h_sdram0_data_rdata[68] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[68] ;

assign hps_0_f2h_sdram0_data_rdata[69] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[69] ;

assign hps_0_f2h_sdram0_data_rdata[70] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[70] ;

assign hps_0_f2h_sdram0_data_rdata[71] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[71] ;

assign hps_0_f2h_sdram0_data_rdata[72] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[72] ;

assign hps_0_f2h_sdram0_data_rdata[73] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[73] ;

assign hps_0_f2h_sdram0_data_rdata[74] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[74] ;

assign hps_0_f2h_sdram0_data_rdata[75] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[75] ;

assign hps_0_f2h_sdram0_data_rdata[76] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[76] ;

assign hps_0_f2h_sdram0_data_rdata[77] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[77] ;

assign hps_0_f2h_sdram0_data_rdata[78] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[78] ;

assign hps_0_f2h_sdram0_data_rdata[79] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[79] ;

assign hps_0_f2h_sdram0_data_rdata[80] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[80] ;

assign hps_0_f2h_sdram0_data_rdata[81] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[81] ;

assign hps_0_f2h_sdram0_data_rdata[82] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[82] ;

assign hps_0_f2h_sdram0_data_rdata[83] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[83] ;

assign hps_0_f2h_sdram0_data_rdata[84] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[84] ;

assign hps_0_f2h_sdram0_data_rdata[85] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[85] ;

assign hps_0_f2h_sdram0_data_rdata[86] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[86] ;

assign hps_0_f2h_sdram0_data_rdata[87] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[87] ;

assign hps_0_f2h_sdram0_data_rdata[88] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[88] ;

assign hps_0_f2h_sdram0_data_rdata[89] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[89] ;

assign hps_0_f2h_sdram0_data_rdata[90] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[90] ;

assign hps_0_f2h_sdram0_data_rdata[91] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[91] ;

assign hps_0_f2h_sdram0_data_rdata[92] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[92] ;

assign hps_0_f2h_sdram0_data_rdata[93] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[93] ;

assign hps_0_f2h_sdram0_data_rdata[94] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[94] ;

assign hps_0_f2h_sdram0_data_rdata[95] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[95] ;

assign hps_0_f2h_sdram0_data_rdata[96] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[96] ;

assign hps_0_f2h_sdram0_data_rdata[97] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[97] ;

assign hps_0_f2h_sdram0_data_rdata[98] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[98] ;

assign hps_0_f2h_sdram0_data_rdata[99] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[99] ;

assign hps_0_f2h_sdram0_data_rdata[100] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[100] ;

assign hps_0_f2h_sdram0_data_rdata[101] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[101] ;

assign hps_0_f2h_sdram0_data_rdata[102] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[102] ;

assign hps_0_f2h_sdram0_data_rdata[103] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[103] ;

assign hps_0_f2h_sdram0_data_rdata[104] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[104] ;

assign hps_0_f2h_sdram0_data_rdata[105] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[105] ;

assign hps_0_f2h_sdram0_data_rdata[106] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[106] ;

assign hps_0_f2h_sdram0_data_rdata[107] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[107] ;

assign hps_0_f2h_sdram0_data_rdata[108] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[108] ;

assign hps_0_f2h_sdram0_data_rdata[109] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[109] ;

assign hps_0_f2h_sdram0_data_rdata[110] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[110] ;

assign hps_0_f2h_sdram0_data_rdata[111] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[111] ;

assign hps_0_f2h_sdram0_data_rdata[112] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[112] ;

assign hps_0_f2h_sdram0_data_rdata[113] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[113] ;

assign hps_0_f2h_sdram0_data_rdata[114] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[114] ;

assign hps_0_f2h_sdram0_data_rdata[115] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[115] ;

assign hps_0_f2h_sdram0_data_rdata[116] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[116] ;

assign hps_0_f2h_sdram0_data_rdata[117] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[117] ;

assign hps_0_f2h_sdram0_data_rdata[118] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[118] ;

assign hps_0_f2h_sdram0_data_rdata[119] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[119] ;

assign hps_0_f2h_sdram0_data_rdata[120] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[120] ;

assign hps_0_f2h_sdram0_data_rdata[121] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[121] ;

assign hps_0_f2h_sdram0_data_rdata[122] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[122] ;

assign hps_0_f2h_sdram0_data_rdata[123] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[123] ;

assign hps_0_f2h_sdram0_data_rdata[124] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[124] ;

assign hps_0_f2h_sdram0_data_rdata[125] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[125] ;

assign hps_0_f2h_sdram0_data_rdata[126] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[126] ;

assign hps_0_f2h_sdram0_data_rdata[127] = \hps_0|fpga_interfaces|f2h_sdram0_RDATA[127] ;

assign hps_0_f2h_sdram0_data_rresp[0] = \hps_0|fpga_interfaces|f2h_sdram0_RRESP[0] ;

assign hps_0_f2h_sdram0_data_rresp[1] = \hps_0|fpga_interfaces|f2h_sdram0_RRESP[1] ;

assign hps_0_f2h_sdram0_data_rlast = \hps_0|fpga_interfaces|f2h_sdram0_RLAST[0] ;

assign hps_0_f2h_sdram0_data_rid[0] = \hps_0|fpga_interfaces|f2h_sdram0_RID[0] ;

assign hps_0_f2h_sdram0_data_rid[1] = \hps_0|fpga_interfaces|f2h_sdram0_RID[1] ;

assign hps_0_f2h_sdram0_data_rid[2] = \hps_0|fpga_interfaces|f2h_sdram0_RID[2] ;

assign hps_0_f2h_sdram0_data_rid[3] = \hps_0|fpga_interfaces|f2h_sdram0_RID[3] ;

assign hps_0_f2h_sdram0_data_rid[4] = \hps_0|fpga_interfaces|f2h_sdram0_RID[4] ;

assign hps_0_f2h_sdram0_data_rid[5] = \hps_0|fpga_interfaces|f2h_sdram0_RID[5] ;

assign hps_0_f2h_sdram0_data_rid[6] = \hps_0|fpga_interfaces|f2h_sdram0_RID[6] ;

assign hps_0_f2h_sdram0_data_rid[7] = \hps_0|fpga_interfaces|f2h_sdram0_RID[7] ;

assign hps_0_f2h_sdram0_data_rvalid = \hps_0|fpga_interfaces|f2h_sdram0_RVALID[0] ;

assign hps_0_f2h_sdram0_data_wready = \hps_0|fpga_interfaces|f2h_sdram0_WREADY[0] ;

assign hps_0_h2f_reset_reset_n = \hps_0|fpga_interfaces|h2f_rst_n[0] ;

assign memory_mem_a[0] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[0] ;

assign memory_mem_a[1] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[1] ;

assign memory_mem_a[2] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[2] ;

assign memory_mem_a[3] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[3] ;

assign memory_mem_a[4] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[4] ;

assign memory_mem_a[5] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[5] ;

assign memory_mem_a[6] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[6] ;

assign memory_mem_a[7] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[7] ;

assign memory_mem_a[8] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[8] ;

assign memory_mem_a[9] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[9] ;

assign memory_mem_a[10] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[10] ;

assign memory_mem_a[11] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[11] ;

assign memory_mem_a[12] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|uaddress_pad|dataout[12] ;

assign memory_mem_ba[0] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[0] ;

assign memory_mem_ba[1] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[1] ;

assign memory_mem_ba[2] = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ubank_pad|dataout[2] ;

assign memory_mem_cke = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[1] ;

assign memory_mem_cs_n = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[0] ;

assign memory_mem_ras_n = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[3] ;

assign memory_mem_cas_n = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[4] ;

assign memory_mem_we_n = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[5] ;

assign memory_mem_reset_n = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ureset_n_pad|dataout[0] ;

assign memory_mem_odt = \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|uaddr_cmd_pads|ucmd_pad|dataout[2] ;

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[0]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[0].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[1]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[1].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[2]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[2].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[3]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[3].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[4]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[4].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[5]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[5].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[6]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[6].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_out (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].delayed_data_out ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].delayed_oe_1 ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|delayed_oct ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dq[7]),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_out .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_out .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|pad_gen[7].data_out .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_0 (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|os ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_oe ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_dtc ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dqs),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_0 .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_0 .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_0 .shift_series_termination_control = "false";

cyclonev_io_obuf \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_bar_0 (
	.i(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|os_bar ),
	.oe(!\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_oe_bar ),
	.dynamicterminationcontrol(\hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|diff_dtc_bar ),
	.seriesterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|seriesterminationcontrol[0] }),
	.parallelterminationcontrol({\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[15] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[14] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[13] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[12] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[11] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[10] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[9] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[8] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[7] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[6] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[5] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[4] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[3] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[2] ,\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[1] ,
\hps_0|hps_io|border|hps_sdram_inst|oct|parallelterminationcontrol[0] }),
	.o(memory_mem_dqs_n),
	.obar());
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_bar_0 .bus_hold = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_bar_0 .open_drain_output = "false";
defparam \hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|obuf_os_bar_0 .shift_series_termination_control = "false";

assign \hps_0_f2h_sdram0_data_arprot[2]~input_o  = hps_0_f2h_sdram0_data_arprot[2];

assign \hps_0_f2h_sdram0_data_arcache[0]~input_o  = hps_0_f2h_sdram0_data_arcache[0];

assign \hps_0_f2h_sdram0_data_arcache[1]~input_o  = hps_0_f2h_sdram0_data_arcache[1];

assign \hps_0_f2h_sdram0_data_arcache[2]~input_o  = hps_0_f2h_sdram0_data_arcache[2];

assign \hps_0_f2h_sdram0_data_arcache[3]~input_o  = hps_0_f2h_sdram0_data_arcache[3];

assign \hps_0_f2h_sdram0_data_awprot[2]~input_o  = hps_0_f2h_sdram0_data_awprot[2];

assign \hps_0_f2h_sdram0_data_awcache[0]~input_o  = hps_0_f2h_sdram0_data_awcache[0];

assign \hps_0_f2h_sdram0_data_awcache[1]~input_o  = hps_0_f2h_sdram0_data_awcache[1];

assign \hps_0_f2h_sdram0_data_awcache[2]~input_o  = hps_0_f2h_sdram0_data_awcache[2];

assign \hps_0_f2h_sdram0_data_awcache[3]~input_o  = hps_0_f2h_sdram0_data_awcache[3];

assign \hps_0_f2h_sdram0_data_wid[0]~input_o  = hps_0_f2h_sdram0_data_wid[0];

assign \hps_0_f2h_sdram0_data_wid[1]~input_o  = hps_0_f2h_sdram0_data_wid[1];

assign \hps_0_f2h_sdram0_data_wid[2]~input_o  = hps_0_f2h_sdram0_data_wid[2];

assign \hps_0_f2h_sdram0_data_wid[3]~input_o  = hps_0_f2h_sdram0_data_wid[3];

assign \hps_0_f2h_sdram0_data_wid[4]~input_o  = hps_0_f2h_sdram0_data_wid[4];

assign \hps_0_f2h_sdram0_data_wid[5]~input_o  = hps_0_f2h_sdram0_data_wid[5];

assign \hps_0_f2h_sdram0_data_wid[6]~input_o  = hps_0_f2h_sdram0_data_wid[6];

assign \hps_0_f2h_sdram0_data_wid[7]~input_o  = hps_0_f2h_sdram0_data_wid[7];

endmodule

module HPS_HPS_hps_0 (
	h2f_rst_n_0,
	f2h_sdram0_ARREADY_0,
	f2h_sdram0_AWREADY_0,
	f2h_sdram0_RVALID_0,
	f2h_sdram0_WREADY_0,
	f2h_sdram0_BVALID_0,
	f2h_sdram0_RDATA_0,
	f2h_sdram0_RDATA_1,
	f2h_sdram0_RDATA_2,
	f2h_sdram0_RDATA_3,
	f2h_sdram0_RDATA_4,
	f2h_sdram0_RDATA_5,
	f2h_sdram0_RDATA_6,
	f2h_sdram0_RDATA_7,
	f2h_sdram0_RDATA_8,
	f2h_sdram0_RDATA_9,
	f2h_sdram0_RDATA_10,
	f2h_sdram0_RDATA_11,
	f2h_sdram0_RDATA_12,
	f2h_sdram0_RDATA_13,
	f2h_sdram0_RDATA_14,
	f2h_sdram0_RDATA_15,
	f2h_sdram0_RDATA_16,
	f2h_sdram0_RDATA_17,
	f2h_sdram0_RDATA_18,
	f2h_sdram0_RDATA_19,
	f2h_sdram0_RDATA_20,
	f2h_sdram0_RDATA_21,
	f2h_sdram0_RDATA_22,
	f2h_sdram0_RDATA_23,
	f2h_sdram0_RDATA_24,
	f2h_sdram0_RDATA_25,
	f2h_sdram0_RDATA_26,
	f2h_sdram0_RDATA_27,
	f2h_sdram0_RDATA_28,
	f2h_sdram0_RDATA_29,
	f2h_sdram0_RDATA_30,
	f2h_sdram0_RDATA_31,
	f2h_sdram0_RDATA_32,
	f2h_sdram0_RDATA_33,
	f2h_sdram0_RDATA_34,
	f2h_sdram0_RDATA_35,
	f2h_sdram0_RDATA_36,
	f2h_sdram0_RDATA_37,
	f2h_sdram0_RDATA_38,
	f2h_sdram0_RDATA_39,
	f2h_sdram0_RDATA_40,
	f2h_sdram0_RDATA_41,
	f2h_sdram0_RDATA_42,
	f2h_sdram0_RDATA_43,
	f2h_sdram0_RDATA_44,
	f2h_sdram0_RDATA_45,
	f2h_sdram0_RDATA_46,
	f2h_sdram0_RDATA_47,
	f2h_sdram0_RDATA_48,
	f2h_sdram0_RDATA_49,
	f2h_sdram0_RDATA_50,
	f2h_sdram0_RDATA_51,
	f2h_sdram0_RDATA_52,
	f2h_sdram0_RDATA_53,
	f2h_sdram0_RDATA_54,
	f2h_sdram0_RDATA_55,
	f2h_sdram0_RDATA_56,
	f2h_sdram0_RDATA_57,
	f2h_sdram0_RDATA_58,
	f2h_sdram0_RDATA_59,
	f2h_sdram0_RDATA_60,
	f2h_sdram0_RDATA_61,
	f2h_sdram0_RDATA_62,
	f2h_sdram0_RDATA_63,
	f2h_sdram0_RDATA_64,
	f2h_sdram0_RDATA_65,
	f2h_sdram0_RDATA_66,
	f2h_sdram0_RDATA_67,
	f2h_sdram0_RDATA_68,
	f2h_sdram0_RDATA_69,
	f2h_sdram0_RDATA_70,
	f2h_sdram0_RDATA_71,
	f2h_sdram0_RDATA_72,
	f2h_sdram0_RDATA_73,
	f2h_sdram0_RDATA_74,
	f2h_sdram0_RDATA_75,
	f2h_sdram0_RDATA_76,
	f2h_sdram0_RDATA_77,
	f2h_sdram0_RDATA_78,
	f2h_sdram0_RDATA_79,
	f2h_sdram0_RDATA_80,
	f2h_sdram0_RDATA_81,
	f2h_sdram0_RDATA_82,
	f2h_sdram0_RDATA_83,
	f2h_sdram0_RDATA_84,
	f2h_sdram0_RDATA_85,
	f2h_sdram0_RDATA_86,
	f2h_sdram0_RDATA_87,
	f2h_sdram0_RDATA_88,
	f2h_sdram0_RDATA_89,
	f2h_sdram0_RDATA_90,
	f2h_sdram0_RDATA_91,
	f2h_sdram0_RDATA_92,
	f2h_sdram0_RDATA_93,
	f2h_sdram0_RDATA_94,
	f2h_sdram0_RDATA_95,
	f2h_sdram0_RDATA_96,
	f2h_sdram0_RDATA_97,
	f2h_sdram0_RDATA_98,
	f2h_sdram0_RDATA_99,
	f2h_sdram0_RDATA_100,
	f2h_sdram0_RDATA_101,
	f2h_sdram0_RDATA_102,
	f2h_sdram0_RDATA_103,
	f2h_sdram0_RDATA_104,
	f2h_sdram0_RDATA_105,
	f2h_sdram0_RDATA_106,
	f2h_sdram0_RDATA_107,
	f2h_sdram0_RDATA_108,
	f2h_sdram0_RDATA_109,
	f2h_sdram0_RDATA_110,
	f2h_sdram0_RDATA_111,
	f2h_sdram0_RDATA_112,
	f2h_sdram0_RDATA_113,
	f2h_sdram0_RDATA_114,
	f2h_sdram0_RDATA_115,
	f2h_sdram0_RDATA_116,
	f2h_sdram0_RDATA_117,
	f2h_sdram0_RDATA_118,
	f2h_sdram0_RDATA_119,
	f2h_sdram0_RDATA_120,
	f2h_sdram0_RDATA_121,
	f2h_sdram0_RDATA_122,
	f2h_sdram0_RDATA_123,
	f2h_sdram0_RDATA_124,
	f2h_sdram0_RDATA_125,
	f2h_sdram0_RDATA_126,
	f2h_sdram0_RDATA_127,
	f2h_sdram0_RRESP_0,
	f2h_sdram0_RRESP_1,
	f2h_sdram0_RLAST_0,
	f2h_sdram0_RID_0,
	f2h_sdram0_RID_1,
	f2h_sdram0_RID_2,
	f2h_sdram0_RID_3,
	f2h_sdram0_RID_4,
	f2h_sdram0_RID_5,
	f2h_sdram0_RID_6,
	f2h_sdram0_RID_7,
	f2h_sdram0_BRESP_0,
	f2h_sdram0_BRESP_1,
	f2h_sdram0_BID_0,
	f2h_sdram0_BID_1,
	f2h_sdram0_BID_2,
	f2h_sdram0_BID_3,
	f2h_sdram0_BID_4,
	f2h_sdram0_BID_5,
	f2h_sdram0_BID_6,
	f2h_sdram0_BID_7,
	parallelterminationcontrol_0,
	parallelterminationcontrol_1,
	parallelterminationcontrol_2,
	parallelterminationcontrol_3,
	parallelterminationcontrol_4,
	parallelterminationcontrol_5,
	parallelterminationcontrol_6,
	parallelterminationcontrol_7,
	parallelterminationcontrol_8,
	parallelterminationcontrol_9,
	parallelterminationcontrol_10,
	parallelterminationcontrol_11,
	parallelterminationcontrol_12,
	parallelterminationcontrol_13,
	parallelterminationcontrol_14,
	parallelterminationcontrol_15,
	seriesterminationcontrol_0,
	seriesterminationcontrol_1,
	seriesterminationcontrol_2,
	seriesterminationcontrol_3,
	seriesterminationcontrol_4,
	seriesterminationcontrol_5,
	seriesterminationcontrol_6,
	seriesterminationcontrol_7,
	seriesterminationcontrol_8,
	seriesterminationcontrol_9,
	seriesterminationcontrol_10,
	seriesterminationcontrol_11,
	seriesterminationcontrol_12,
	seriesterminationcontrol_13,
	seriesterminationcontrol_14,
	seriesterminationcontrol_15,
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	memory_oct_rzqin,
	hps_0_f2h_sdram0_clock_clk,
	hps_0_f2h_sdram0_data_arvalid,
	hps_0_f2h_sdram0_data_awvalid,
	hps_0_f2h_sdram0_data_rready,
	hps_0_f2h_sdram0_data_wvalid,
	hps_0_f2h_sdram0_data_bready,
	hps_0_f2h_sdram0_data_araddr_0,
	hps_0_f2h_sdram0_data_araddr_1,
	hps_0_f2h_sdram0_data_araddr_2,
	hps_0_f2h_sdram0_data_araddr_3,
	hps_0_f2h_sdram0_data_araddr_4,
	hps_0_f2h_sdram0_data_araddr_5,
	hps_0_f2h_sdram0_data_araddr_6,
	hps_0_f2h_sdram0_data_araddr_7,
	hps_0_f2h_sdram0_data_araddr_8,
	hps_0_f2h_sdram0_data_araddr_9,
	hps_0_f2h_sdram0_data_araddr_10,
	hps_0_f2h_sdram0_data_araddr_11,
	hps_0_f2h_sdram0_data_araddr_12,
	hps_0_f2h_sdram0_data_araddr_13,
	hps_0_f2h_sdram0_data_araddr_14,
	hps_0_f2h_sdram0_data_araddr_15,
	hps_0_f2h_sdram0_data_araddr_16,
	hps_0_f2h_sdram0_data_araddr_17,
	hps_0_f2h_sdram0_data_araddr_18,
	hps_0_f2h_sdram0_data_araddr_19,
	hps_0_f2h_sdram0_data_araddr_20,
	hps_0_f2h_sdram0_data_araddr_21,
	hps_0_f2h_sdram0_data_araddr_22,
	hps_0_f2h_sdram0_data_araddr_23,
	hps_0_f2h_sdram0_data_araddr_24,
	hps_0_f2h_sdram0_data_araddr_25,
	hps_0_f2h_sdram0_data_araddr_26,
	hps_0_f2h_sdram0_data_araddr_27,
	hps_0_f2h_sdram0_data_araddr_28,
	hps_0_f2h_sdram0_data_araddr_29,
	hps_0_f2h_sdram0_data_araddr_30,
	hps_0_f2h_sdram0_data_araddr_31,
	hps_0_f2h_sdram0_data_arlen_0,
	hps_0_f2h_sdram0_data_arlen_1,
	hps_0_f2h_sdram0_data_arlen_2,
	hps_0_f2h_sdram0_data_arlen_3,
	hps_0_f2h_sdram0_data_arid_0,
	hps_0_f2h_sdram0_data_arid_1,
	hps_0_f2h_sdram0_data_arid_2,
	hps_0_f2h_sdram0_data_arid_3,
	hps_0_f2h_sdram0_data_arid_4,
	hps_0_f2h_sdram0_data_arid_5,
	hps_0_f2h_sdram0_data_arid_6,
	hps_0_f2h_sdram0_data_arid_7,
	hps_0_f2h_sdram0_data_arsize_0,
	hps_0_f2h_sdram0_data_arsize_1,
	hps_0_f2h_sdram0_data_arsize_2,
	hps_0_f2h_sdram0_data_arburst_0,
	hps_0_f2h_sdram0_data_arburst_1,
	hps_0_f2h_sdram0_data_arlock_0,
	hps_0_f2h_sdram0_data_arlock_1,
	hps_0_f2h_sdram0_data_arprot_0,
	hps_0_f2h_sdram0_data_arprot_1,
	hps_0_f2h_sdram0_data_awaddr_0,
	hps_0_f2h_sdram0_data_awaddr_1,
	hps_0_f2h_sdram0_data_awaddr_2,
	hps_0_f2h_sdram0_data_awaddr_3,
	hps_0_f2h_sdram0_data_awaddr_4,
	hps_0_f2h_sdram0_data_awaddr_5,
	hps_0_f2h_sdram0_data_awaddr_6,
	hps_0_f2h_sdram0_data_awaddr_7,
	hps_0_f2h_sdram0_data_awaddr_8,
	hps_0_f2h_sdram0_data_awaddr_9,
	hps_0_f2h_sdram0_data_awaddr_10,
	hps_0_f2h_sdram0_data_awaddr_11,
	hps_0_f2h_sdram0_data_awaddr_12,
	hps_0_f2h_sdram0_data_awaddr_13,
	hps_0_f2h_sdram0_data_awaddr_14,
	hps_0_f2h_sdram0_data_awaddr_15,
	hps_0_f2h_sdram0_data_awaddr_16,
	hps_0_f2h_sdram0_data_awaddr_17,
	hps_0_f2h_sdram0_data_awaddr_18,
	hps_0_f2h_sdram0_data_awaddr_19,
	hps_0_f2h_sdram0_data_awaddr_20,
	hps_0_f2h_sdram0_data_awaddr_21,
	hps_0_f2h_sdram0_data_awaddr_22,
	hps_0_f2h_sdram0_data_awaddr_23,
	hps_0_f2h_sdram0_data_awaddr_24,
	hps_0_f2h_sdram0_data_awaddr_25,
	hps_0_f2h_sdram0_data_awaddr_26,
	hps_0_f2h_sdram0_data_awaddr_27,
	hps_0_f2h_sdram0_data_awaddr_28,
	hps_0_f2h_sdram0_data_awaddr_29,
	hps_0_f2h_sdram0_data_awaddr_30,
	hps_0_f2h_sdram0_data_awaddr_31,
	hps_0_f2h_sdram0_data_awlen_0,
	hps_0_f2h_sdram0_data_awlen_1,
	hps_0_f2h_sdram0_data_awlen_2,
	hps_0_f2h_sdram0_data_awlen_3,
	hps_0_f2h_sdram0_data_awid_0,
	hps_0_f2h_sdram0_data_awid_1,
	hps_0_f2h_sdram0_data_awid_2,
	hps_0_f2h_sdram0_data_awid_3,
	hps_0_f2h_sdram0_data_awid_4,
	hps_0_f2h_sdram0_data_awid_5,
	hps_0_f2h_sdram0_data_awid_6,
	hps_0_f2h_sdram0_data_awid_7,
	hps_0_f2h_sdram0_data_awsize_0,
	hps_0_f2h_sdram0_data_awsize_1,
	hps_0_f2h_sdram0_data_awsize_2,
	hps_0_f2h_sdram0_data_awburst_0,
	hps_0_f2h_sdram0_data_awburst_1,
	hps_0_f2h_sdram0_data_awlock_0,
	hps_0_f2h_sdram0_data_awlock_1,
	hps_0_f2h_sdram0_data_awprot_0,
	hps_0_f2h_sdram0_data_awprot_1,
	hps_0_f2h_sdram0_data_wdata_0,
	hps_0_f2h_sdram0_data_wdata_1,
	hps_0_f2h_sdram0_data_wdata_2,
	hps_0_f2h_sdram0_data_wdata_3,
	hps_0_f2h_sdram0_data_wdata_4,
	hps_0_f2h_sdram0_data_wdata_5,
	hps_0_f2h_sdram0_data_wdata_6,
	hps_0_f2h_sdram0_data_wdata_7,
	hps_0_f2h_sdram0_data_wdata_8,
	hps_0_f2h_sdram0_data_wdata_9,
	hps_0_f2h_sdram0_data_wdata_10,
	hps_0_f2h_sdram0_data_wdata_11,
	hps_0_f2h_sdram0_data_wdata_12,
	hps_0_f2h_sdram0_data_wdata_13,
	hps_0_f2h_sdram0_data_wdata_14,
	hps_0_f2h_sdram0_data_wdata_15,
	hps_0_f2h_sdram0_data_wdata_16,
	hps_0_f2h_sdram0_data_wdata_17,
	hps_0_f2h_sdram0_data_wdata_18,
	hps_0_f2h_sdram0_data_wdata_19,
	hps_0_f2h_sdram0_data_wdata_20,
	hps_0_f2h_sdram0_data_wdata_21,
	hps_0_f2h_sdram0_data_wdata_22,
	hps_0_f2h_sdram0_data_wdata_23,
	hps_0_f2h_sdram0_data_wdata_24,
	hps_0_f2h_sdram0_data_wdata_25,
	hps_0_f2h_sdram0_data_wdata_26,
	hps_0_f2h_sdram0_data_wdata_27,
	hps_0_f2h_sdram0_data_wdata_28,
	hps_0_f2h_sdram0_data_wdata_29,
	hps_0_f2h_sdram0_data_wdata_30,
	hps_0_f2h_sdram0_data_wdata_31,
	hps_0_f2h_sdram0_data_wdata_32,
	hps_0_f2h_sdram0_data_wdata_33,
	hps_0_f2h_sdram0_data_wdata_34,
	hps_0_f2h_sdram0_data_wdata_35,
	hps_0_f2h_sdram0_data_wdata_36,
	hps_0_f2h_sdram0_data_wdata_37,
	hps_0_f2h_sdram0_data_wdata_38,
	hps_0_f2h_sdram0_data_wdata_39,
	hps_0_f2h_sdram0_data_wdata_40,
	hps_0_f2h_sdram0_data_wdata_41,
	hps_0_f2h_sdram0_data_wdata_42,
	hps_0_f2h_sdram0_data_wdata_43,
	hps_0_f2h_sdram0_data_wdata_44,
	hps_0_f2h_sdram0_data_wdata_45,
	hps_0_f2h_sdram0_data_wdata_46,
	hps_0_f2h_sdram0_data_wdata_47,
	hps_0_f2h_sdram0_data_wdata_48,
	hps_0_f2h_sdram0_data_wdata_49,
	hps_0_f2h_sdram0_data_wdata_50,
	hps_0_f2h_sdram0_data_wdata_51,
	hps_0_f2h_sdram0_data_wdata_52,
	hps_0_f2h_sdram0_data_wdata_53,
	hps_0_f2h_sdram0_data_wdata_54,
	hps_0_f2h_sdram0_data_wdata_55,
	hps_0_f2h_sdram0_data_wdata_56,
	hps_0_f2h_sdram0_data_wdata_57,
	hps_0_f2h_sdram0_data_wdata_58,
	hps_0_f2h_sdram0_data_wdata_59,
	hps_0_f2h_sdram0_data_wdata_60,
	hps_0_f2h_sdram0_data_wdata_61,
	hps_0_f2h_sdram0_data_wdata_62,
	hps_0_f2h_sdram0_data_wdata_63,
	hps_0_f2h_sdram0_data_wstrb_0,
	hps_0_f2h_sdram0_data_wstrb_1,
	hps_0_f2h_sdram0_data_wstrb_2,
	hps_0_f2h_sdram0_data_wstrb_3,
	hps_0_f2h_sdram0_data_wstrb_4,
	hps_0_f2h_sdram0_data_wstrb_5,
	hps_0_f2h_sdram0_data_wstrb_6,
	hps_0_f2h_sdram0_data_wstrb_7,
	hps_0_f2h_sdram0_data_wlast,
	hps_0_f2h_sdram0_data_wdata_64,
	hps_0_f2h_sdram0_data_wdata_65,
	hps_0_f2h_sdram0_data_wdata_66,
	hps_0_f2h_sdram0_data_wdata_67,
	hps_0_f2h_sdram0_data_wdata_68,
	hps_0_f2h_sdram0_data_wdata_69,
	hps_0_f2h_sdram0_data_wdata_70,
	hps_0_f2h_sdram0_data_wdata_71,
	hps_0_f2h_sdram0_data_wdata_72,
	hps_0_f2h_sdram0_data_wdata_73,
	hps_0_f2h_sdram0_data_wdata_74,
	hps_0_f2h_sdram0_data_wdata_75,
	hps_0_f2h_sdram0_data_wdata_76,
	hps_0_f2h_sdram0_data_wdata_77,
	hps_0_f2h_sdram0_data_wdata_78,
	hps_0_f2h_sdram0_data_wdata_79,
	hps_0_f2h_sdram0_data_wdata_80,
	hps_0_f2h_sdram0_data_wdata_81,
	hps_0_f2h_sdram0_data_wdata_82,
	hps_0_f2h_sdram0_data_wdata_83,
	hps_0_f2h_sdram0_data_wdata_84,
	hps_0_f2h_sdram0_data_wdata_85,
	hps_0_f2h_sdram0_data_wdata_86,
	hps_0_f2h_sdram0_data_wdata_87,
	hps_0_f2h_sdram0_data_wdata_88,
	hps_0_f2h_sdram0_data_wdata_89,
	hps_0_f2h_sdram0_data_wdata_90,
	hps_0_f2h_sdram0_data_wdata_91,
	hps_0_f2h_sdram0_data_wdata_92,
	hps_0_f2h_sdram0_data_wdata_93,
	hps_0_f2h_sdram0_data_wdata_94,
	hps_0_f2h_sdram0_data_wdata_95,
	hps_0_f2h_sdram0_data_wdata_96,
	hps_0_f2h_sdram0_data_wdata_97,
	hps_0_f2h_sdram0_data_wdata_98,
	hps_0_f2h_sdram0_data_wdata_99,
	hps_0_f2h_sdram0_data_wdata_100,
	hps_0_f2h_sdram0_data_wdata_101,
	hps_0_f2h_sdram0_data_wdata_102,
	hps_0_f2h_sdram0_data_wdata_103,
	hps_0_f2h_sdram0_data_wdata_104,
	hps_0_f2h_sdram0_data_wdata_105,
	hps_0_f2h_sdram0_data_wdata_106,
	hps_0_f2h_sdram0_data_wdata_107,
	hps_0_f2h_sdram0_data_wdata_108,
	hps_0_f2h_sdram0_data_wdata_109,
	hps_0_f2h_sdram0_data_wdata_110,
	hps_0_f2h_sdram0_data_wdata_111,
	hps_0_f2h_sdram0_data_wdata_112,
	hps_0_f2h_sdram0_data_wdata_113,
	hps_0_f2h_sdram0_data_wdata_114,
	hps_0_f2h_sdram0_data_wdata_115,
	hps_0_f2h_sdram0_data_wdata_116,
	hps_0_f2h_sdram0_data_wdata_117,
	hps_0_f2h_sdram0_data_wdata_118,
	hps_0_f2h_sdram0_data_wdata_119,
	hps_0_f2h_sdram0_data_wdata_120,
	hps_0_f2h_sdram0_data_wdata_121,
	hps_0_f2h_sdram0_data_wdata_122,
	hps_0_f2h_sdram0_data_wdata_123,
	hps_0_f2h_sdram0_data_wdata_124,
	hps_0_f2h_sdram0_data_wdata_125,
	hps_0_f2h_sdram0_data_wdata_126,
	hps_0_f2h_sdram0_data_wdata_127,
	hps_0_f2h_sdram0_data_wstrb_8,
	hps_0_f2h_sdram0_data_wstrb_9,
	hps_0_f2h_sdram0_data_wstrb_10,
	hps_0_f2h_sdram0_data_wstrb_11,
	hps_0_f2h_sdram0_data_wstrb_12,
	hps_0_f2h_sdram0_data_wstrb_13,
	hps_0_f2h_sdram0_data_wstrb_14,
	hps_0_f2h_sdram0_data_wstrb_15)/* synthesis synthesis_greybox=0 */;
output 	h2f_rst_n_0;
output 	f2h_sdram0_ARREADY_0;
output 	f2h_sdram0_AWREADY_0;
output 	f2h_sdram0_RVALID_0;
output 	f2h_sdram0_WREADY_0;
output 	f2h_sdram0_BVALID_0;
output 	f2h_sdram0_RDATA_0;
output 	f2h_sdram0_RDATA_1;
output 	f2h_sdram0_RDATA_2;
output 	f2h_sdram0_RDATA_3;
output 	f2h_sdram0_RDATA_4;
output 	f2h_sdram0_RDATA_5;
output 	f2h_sdram0_RDATA_6;
output 	f2h_sdram0_RDATA_7;
output 	f2h_sdram0_RDATA_8;
output 	f2h_sdram0_RDATA_9;
output 	f2h_sdram0_RDATA_10;
output 	f2h_sdram0_RDATA_11;
output 	f2h_sdram0_RDATA_12;
output 	f2h_sdram0_RDATA_13;
output 	f2h_sdram0_RDATA_14;
output 	f2h_sdram0_RDATA_15;
output 	f2h_sdram0_RDATA_16;
output 	f2h_sdram0_RDATA_17;
output 	f2h_sdram0_RDATA_18;
output 	f2h_sdram0_RDATA_19;
output 	f2h_sdram0_RDATA_20;
output 	f2h_sdram0_RDATA_21;
output 	f2h_sdram0_RDATA_22;
output 	f2h_sdram0_RDATA_23;
output 	f2h_sdram0_RDATA_24;
output 	f2h_sdram0_RDATA_25;
output 	f2h_sdram0_RDATA_26;
output 	f2h_sdram0_RDATA_27;
output 	f2h_sdram0_RDATA_28;
output 	f2h_sdram0_RDATA_29;
output 	f2h_sdram0_RDATA_30;
output 	f2h_sdram0_RDATA_31;
output 	f2h_sdram0_RDATA_32;
output 	f2h_sdram0_RDATA_33;
output 	f2h_sdram0_RDATA_34;
output 	f2h_sdram0_RDATA_35;
output 	f2h_sdram0_RDATA_36;
output 	f2h_sdram0_RDATA_37;
output 	f2h_sdram0_RDATA_38;
output 	f2h_sdram0_RDATA_39;
output 	f2h_sdram0_RDATA_40;
output 	f2h_sdram0_RDATA_41;
output 	f2h_sdram0_RDATA_42;
output 	f2h_sdram0_RDATA_43;
output 	f2h_sdram0_RDATA_44;
output 	f2h_sdram0_RDATA_45;
output 	f2h_sdram0_RDATA_46;
output 	f2h_sdram0_RDATA_47;
output 	f2h_sdram0_RDATA_48;
output 	f2h_sdram0_RDATA_49;
output 	f2h_sdram0_RDATA_50;
output 	f2h_sdram0_RDATA_51;
output 	f2h_sdram0_RDATA_52;
output 	f2h_sdram0_RDATA_53;
output 	f2h_sdram0_RDATA_54;
output 	f2h_sdram0_RDATA_55;
output 	f2h_sdram0_RDATA_56;
output 	f2h_sdram0_RDATA_57;
output 	f2h_sdram0_RDATA_58;
output 	f2h_sdram0_RDATA_59;
output 	f2h_sdram0_RDATA_60;
output 	f2h_sdram0_RDATA_61;
output 	f2h_sdram0_RDATA_62;
output 	f2h_sdram0_RDATA_63;
output 	f2h_sdram0_RDATA_64;
output 	f2h_sdram0_RDATA_65;
output 	f2h_sdram0_RDATA_66;
output 	f2h_sdram0_RDATA_67;
output 	f2h_sdram0_RDATA_68;
output 	f2h_sdram0_RDATA_69;
output 	f2h_sdram0_RDATA_70;
output 	f2h_sdram0_RDATA_71;
output 	f2h_sdram0_RDATA_72;
output 	f2h_sdram0_RDATA_73;
output 	f2h_sdram0_RDATA_74;
output 	f2h_sdram0_RDATA_75;
output 	f2h_sdram0_RDATA_76;
output 	f2h_sdram0_RDATA_77;
output 	f2h_sdram0_RDATA_78;
output 	f2h_sdram0_RDATA_79;
output 	f2h_sdram0_RDATA_80;
output 	f2h_sdram0_RDATA_81;
output 	f2h_sdram0_RDATA_82;
output 	f2h_sdram0_RDATA_83;
output 	f2h_sdram0_RDATA_84;
output 	f2h_sdram0_RDATA_85;
output 	f2h_sdram0_RDATA_86;
output 	f2h_sdram0_RDATA_87;
output 	f2h_sdram0_RDATA_88;
output 	f2h_sdram0_RDATA_89;
output 	f2h_sdram0_RDATA_90;
output 	f2h_sdram0_RDATA_91;
output 	f2h_sdram0_RDATA_92;
output 	f2h_sdram0_RDATA_93;
output 	f2h_sdram0_RDATA_94;
output 	f2h_sdram0_RDATA_95;
output 	f2h_sdram0_RDATA_96;
output 	f2h_sdram0_RDATA_97;
output 	f2h_sdram0_RDATA_98;
output 	f2h_sdram0_RDATA_99;
output 	f2h_sdram0_RDATA_100;
output 	f2h_sdram0_RDATA_101;
output 	f2h_sdram0_RDATA_102;
output 	f2h_sdram0_RDATA_103;
output 	f2h_sdram0_RDATA_104;
output 	f2h_sdram0_RDATA_105;
output 	f2h_sdram0_RDATA_106;
output 	f2h_sdram0_RDATA_107;
output 	f2h_sdram0_RDATA_108;
output 	f2h_sdram0_RDATA_109;
output 	f2h_sdram0_RDATA_110;
output 	f2h_sdram0_RDATA_111;
output 	f2h_sdram0_RDATA_112;
output 	f2h_sdram0_RDATA_113;
output 	f2h_sdram0_RDATA_114;
output 	f2h_sdram0_RDATA_115;
output 	f2h_sdram0_RDATA_116;
output 	f2h_sdram0_RDATA_117;
output 	f2h_sdram0_RDATA_118;
output 	f2h_sdram0_RDATA_119;
output 	f2h_sdram0_RDATA_120;
output 	f2h_sdram0_RDATA_121;
output 	f2h_sdram0_RDATA_122;
output 	f2h_sdram0_RDATA_123;
output 	f2h_sdram0_RDATA_124;
output 	f2h_sdram0_RDATA_125;
output 	f2h_sdram0_RDATA_126;
output 	f2h_sdram0_RDATA_127;
output 	f2h_sdram0_RRESP_0;
output 	f2h_sdram0_RRESP_1;
output 	f2h_sdram0_RLAST_0;
output 	f2h_sdram0_RID_0;
output 	f2h_sdram0_RID_1;
output 	f2h_sdram0_RID_2;
output 	f2h_sdram0_RID_3;
output 	f2h_sdram0_RID_4;
output 	f2h_sdram0_RID_5;
output 	f2h_sdram0_RID_6;
output 	f2h_sdram0_RID_7;
output 	f2h_sdram0_BRESP_0;
output 	f2h_sdram0_BRESP_1;
output 	f2h_sdram0_BID_0;
output 	f2h_sdram0_BID_1;
output 	f2h_sdram0_BID_2;
output 	f2h_sdram0_BID_3;
output 	f2h_sdram0_BID_4;
output 	f2h_sdram0_BID_5;
output 	f2h_sdram0_BID_6;
output 	f2h_sdram0_BID_7;
output 	parallelterminationcontrol_0;
output 	parallelterminationcontrol_1;
output 	parallelterminationcontrol_2;
output 	parallelterminationcontrol_3;
output 	parallelterminationcontrol_4;
output 	parallelterminationcontrol_5;
output 	parallelterminationcontrol_6;
output 	parallelterminationcontrol_7;
output 	parallelterminationcontrol_8;
output 	parallelterminationcontrol_9;
output 	parallelterminationcontrol_10;
output 	parallelterminationcontrol_11;
output 	parallelterminationcontrol_12;
output 	parallelterminationcontrol_13;
output 	parallelterminationcontrol_14;
output 	parallelterminationcontrol_15;
output 	seriesterminationcontrol_0;
output 	seriesterminationcontrol_1;
output 	seriesterminationcontrol_2;
output 	seriesterminationcontrol_3;
output 	seriesterminationcontrol_4;
output 	seriesterminationcontrol_5;
output 	seriesterminationcontrol_6;
output 	seriesterminationcontrol_7;
output 	seriesterminationcontrol_8;
output 	seriesterminationcontrol_9;
output 	seriesterminationcontrol_10;
output 	seriesterminationcontrol_11;
output 	seriesterminationcontrol_12;
output 	seriesterminationcontrol_13;
output 	seriesterminationcontrol_14;
output 	seriesterminationcontrol_15;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
input 	memory_oct_rzqin;
input 	hps_0_f2h_sdram0_clock_clk;
input 	hps_0_f2h_sdram0_data_arvalid;
input 	hps_0_f2h_sdram0_data_awvalid;
input 	hps_0_f2h_sdram0_data_rready;
input 	hps_0_f2h_sdram0_data_wvalid;
input 	hps_0_f2h_sdram0_data_bready;
input 	hps_0_f2h_sdram0_data_araddr_0;
input 	hps_0_f2h_sdram0_data_araddr_1;
input 	hps_0_f2h_sdram0_data_araddr_2;
input 	hps_0_f2h_sdram0_data_araddr_3;
input 	hps_0_f2h_sdram0_data_araddr_4;
input 	hps_0_f2h_sdram0_data_araddr_5;
input 	hps_0_f2h_sdram0_data_araddr_6;
input 	hps_0_f2h_sdram0_data_araddr_7;
input 	hps_0_f2h_sdram0_data_araddr_8;
input 	hps_0_f2h_sdram0_data_araddr_9;
input 	hps_0_f2h_sdram0_data_araddr_10;
input 	hps_0_f2h_sdram0_data_araddr_11;
input 	hps_0_f2h_sdram0_data_araddr_12;
input 	hps_0_f2h_sdram0_data_araddr_13;
input 	hps_0_f2h_sdram0_data_araddr_14;
input 	hps_0_f2h_sdram0_data_araddr_15;
input 	hps_0_f2h_sdram0_data_araddr_16;
input 	hps_0_f2h_sdram0_data_araddr_17;
input 	hps_0_f2h_sdram0_data_araddr_18;
input 	hps_0_f2h_sdram0_data_araddr_19;
input 	hps_0_f2h_sdram0_data_araddr_20;
input 	hps_0_f2h_sdram0_data_araddr_21;
input 	hps_0_f2h_sdram0_data_araddr_22;
input 	hps_0_f2h_sdram0_data_araddr_23;
input 	hps_0_f2h_sdram0_data_araddr_24;
input 	hps_0_f2h_sdram0_data_araddr_25;
input 	hps_0_f2h_sdram0_data_araddr_26;
input 	hps_0_f2h_sdram0_data_araddr_27;
input 	hps_0_f2h_sdram0_data_araddr_28;
input 	hps_0_f2h_sdram0_data_araddr_29;
input 	hps_0_f2h_sdram0_data_araddr_30;
input 	hps_0_f2h_sdram0_data_araddr_31;
input 	hps_0_f2h_sdram0_data_arlen_0;
input 	hps_0_f2h_sdram0_data_arlen_1;
input 	hps_0_f2h_sdram0_data_arlen_2;
input 	hps_0_f2h_sdram0_data_arlen_3;
input 	hps_0_f2h_sdram0_data_arid_0;
input 	hps_0_f2h_sdram0_data_arid_1;
input 	hps_0_f2h_sdram0_data_arid_2;
input 	hps_0_f2h_sdram0_data_arid_3;
input 	hps_0_f2h_sdram0_data_arid_4;
input 	hps_0_f2h_sdram0_data_arid_5;
input 	hps_0_f2h_sdram0_data_arid_6;
input 	hps_0_f2h_sdram0_data_arid_7;
input 	hps_0_f2h_sdram0_data_arsize_0;
input 	hps_0_f2h_sdram0_data_arsize_1;
input 	hps_0_f2h_sdram0_data_arsize_2;
input 	hps_0_f2h_sdram0_data_arburst_0;
input 	hps_0_f2h_sdram0_data_arburst_1;
input 	hps_0_f2h_sdram0_data_arlock_0;
input 	hps_0_f2h_sdram0_data_arlock_1;
input 	hps_0_f2h_sdram0_data_arprot_0;
input 	hps_0_f2h_sdram0_data_arprot_1;
input 	hps_0_f2h_sdram0_data_awaddr_0;
input 	hps_0_f2h_sdram0_data_awaddr_1;
input 	hps_0_f2h_sdram0_data_awaddr_2;
input 	hps_0_f2h_sdram0_data_awaddr_3;
input 	hps_0_f2h_sdram0_data_awaddr_4;
input 	hps_0_f2h_sdram0_data_awaddr_5;
input 	hps_0_f2h_sdram0_data_awaddr_6;
input 	hps_0_f2h_sdram0_data_awaddr_7;
input 	hps_0_f2h_sdram0_data_awaddr_8;
input 	hps_0_f2h_sdram0_data_awaddr_9;
input 	hps_0_f2h_sdram0_data_awaddr_10;
input 	hps_0_f2h_sdram0_data_awaddr_11;
input 	hps_0_f2h_sdram0_data_awaddr_12;
input 	hps_0_f2h_sdram0_data_awaddr_13;
input 	hps_0_f2h_sdram0_data_awaddr_14;
input 	hps_0_f2h_sdram0_data_awaddr_15;
input 	hps_0_f2h_sdram0_data_awaddr_16;
input 	hps_0_f2h_sdram0_data_awaddr_17;
input 	hps_0_f2h_sdram0_data_awaddr_18;
input 	hps_0_f2h_sdram0_data_awaddr_19;
input 	hps_0_f2h_sdram0_data_awaddr_20;
input 	hps_0_f2h_sdram0_data_awaddr_21;
input 	hps_0_f2h_sdram0_data_awaddr_22;
input 	hps_0_f2h_sdram0_data_awaddr_23;
input 	hps_0_f2h_sdram0_data_awaddr_24;
input 	hps_0_f2h_sdram0_data_awaddr_25;
input 	hps_0_f2h_sdram0_data_awaddr_26;
input 	hps_0_f2h_sdram0_data_awaddr_27;
input 	hps_0_f2h_sdram0_data_awaddr_28;
input 	hps_0_f2h_sdram0_data_awaddr_29;
input 	hps_0_f2h_sdram0_data_awaddr_30;
input 	hps_0_f2h_sdram0_data_awaddr_31;
input 	hps_0_f2h_sdram0_data_awlen_0;
input 	hps_0_f2h_sdram0_data_awlen_1;
input 	hps_0_f2h_sdram0_data_awlen_2;
input 	hps_0_f2h_sdram0_data_awlen_3;
input 	hps_0_f2h_sdram0_data_awid_0;
input 	hps_0_f2h_sdram0_data_awid_1;
input 	hps_0_f2h_sdram0_data_awid_2;
input 	hps_0_f2h_sdram0_data_awid_3;
input 	hps_0_f2h_sdram0_data_awid_4;
input 	hps_0_f2h_sdram0_data_awid_5;
input 	hps_0_f2h_sdram0_data_awid_6;
input 	hps_0_f2h_sdram0_data_awid_7;
input 	hps_0_f2h_sdram0_data_awsize_0;
input 	hps_0_f2h_sdram0_data_awsize_1;
input 	hps_0_f2h_sdram0_data_awsize_2;
input 	hps_0_f2h_sdram0_data_awburst_0;
input 	hps_0_f2h_sdram0_data_awburst_1;
input 	hps_0_f2h_sdram0_data_awlock_0;
input 	hps_0_f2h_sdram0_data_awlock_1;
input 	hps_0_f2h_sdram0_data_awprot_0;
input 	hps_0_f2h_sdram0_data_awprot_1;
input 	hps_0_f2h_sdram0_data_wdata_0;
input 	hps_0_f2h_sdram0_data_wdata_1;
input 	hps_0_f2h_sdram0_data_wdata_2;
input 	hps_0_f2h_sdram0_data_wdata_3;
input 	hps_0_f2h_sdram0_data_wdata_4;
input 	hps_0_f2h_sdram0_data_wdata_5;
input 	hps_0_f2h_sdram0_data_wdata_6;
input 	hps_0_f2h_sdram0_data_wdata_7;
input 	hps_0_f2h_sdram0_data_wdata_8;
input 	hps_0_f2h_sdram0_data_wdata_9;
input 	hps_0_f2h_sdram0_data_wdata_10;
input 	hps_0_f2h_sdram0_data_wdata_11;
input 	hps_0_f2h_sdram0_data_wdata_12;
input 	hps_0_f2h_sdram0_data_wdata_13;
input 	hps_0_f2h_sdram0_data_wdata_14;
input 	hps_0_f2h_sdram0_data_wdata_15;
input 	hps_0_f2h_sdram0_data_wdata_16;
input 	hps_0_f2h_sdram0_data_wdata_17;
input 	hps_0_f2h_sdram0_data_wdata_18;
input 	hps_0_f2h_sdram0_data_wdata_19;
input 	hps_0_f2h_sdram0_data_wdata_20;
input 	hps_0_f2h_sdram0_data_wdata_21;
input 	hps_0_f2h_sdram0_data_wdata_22;
input 	hps_0_f2h_sdram0_data_wdata_23;
input 	hps_0_f2h_sdram0_data_wdata_24;
input 	hps_0_f2h_sdram0_data_wdata_25;
input 	hps_0_f2h_sdram0_data_wdata_26;
input 	hps_0_f2h_sdram0_data_wdata_27;
input 	hps_0_f2h_sdram0_data_wdata_28;
input 	hps_0_f2h_sdram0_data_wdata_29;
input 	hps_0_f2h_sdram0_data_wdata_30;
input 	hps_0_f2h_sdram0_data_wdata_31;
input 	hps_0_f2h_sdram0_data_wdata_32;
input 	hps_0_f2h_sdram0_data_wdata_33;
input 	hps_0_f2h_sdram0_data_wdata_34;
input 	hps_0_f2h_sdram0_data_wdata_35;
input 	hps_0_f2h_sdram0_data_wdata_36;
input 	hps_0_f2h_sdram0_data_wdata_37;
input 	hps_0_f2h_sdram0_data_wdata_38;
input 	hps_0_f2h_sdram0_data_wdata_39;
input 	hps_0_f2h_sdram0_data_wdata_40;
input 	hps_0_f2h_sdram0_data_wdata_41;
input 	hps_0_f2h_sdram0_data_wdata_42;
input 	hps_0_f2h_sdram0_data_wdata_43;
input 	hps_0_f2h_sdram0_data_wdata_44;
input 	hps_0_f2h_sdram0_data_wdata_45;
input 	hps_0_f2h_sdram0_data_wdata_46;
input 	hps_0_f2h_sdram0_data_wdata_47;
input 	hps_0_f2h_sdram0_data_wdata_48;
input 	hps_0_f2h_sdram0_data_wdata_49;
input 	hps_0_f2h_sdram0_data_wdata_50;
input 	hps_0_f2h_sdram0_data_wdata_51;
input 	hps_0_f2h_sdram0_data_wdata_52;
input 	hps_0_f2h_sdram0_data_wdata_53;
input 	hps_0_f2h_sdram0_data_wdata_54;
input 	hps_0_f2h_sdram0_data_wdata_55;
input 	hps_0_f2h_sdram0_data_wdata_56;
input 	hps_0_f2h_sdram0_data_wdata_57;
input 	hps_0_f2h_sdram0_data_wdata_58;
input 	hps_0_f2h_sdram0_data_wdata_59;
input 	hps_0_f2h_sdram0_data_wdata_60;
input 	hps_0_f2h_sdram0_data_wdata_61;
input 	hps_0_f2h_sdram0_data_wdata_62;
input 	hps_0_f2h_sdram0_data_wdata_63;
input 	hps_0_f2h_sdram0_data_wstrb_0;
input 	hps_0_f2h_sdram0_data_wstrb_1;
input 	hps_0_f2h_sdram0_data_wstrb_2;
input 	hps_0_f2h_sdram0_data_wstrb_3;
input 	hps_0_f2h_sdram0_data_wstrb_4;
input 	hps_0_f2h_sdram0_data_wstrb_5;
input 	hps_0_f2h_sdram0_data_wstrb_6;
input 	hps_0_f2h_sdram0_data_wstrb_7;
input 	hps_0_f2h_sdram0_data_wlast;
input 	hps_0_f2h_sdram0_data_wdata_64;
input 	hps_0_f2h_sdram0_data_wdata_65;
input 	hps_0_f2h_sdram0_data_wdata_66;
input 	hps_0_f2h_sdram0_data_wdata_67;
input 	hps_0_f2h_sdram0_data_wdata_68;
input 	hps_0_f2h_sdram0_data_wdata_69;
input 	hps_0_f2h_sdram0_data_wdata_70;
input 	hps_0_f2h_sdram0_data_wdata_71;
input 	hps_0_f2h_sdram0_data_wdata_72;
input 	hps_0_f2h_sdram0_data_wdata_73;
input 	hps_0_f2h_sdram0_data_wdata_74;
input 	hps_0_f2h_sdram0_data_wdata_75;
input 	hps_0_f2h_sdram0_data_wdata_76;
input 	hps_0_f2h_sdram0_data_wdata_77;
input 	hps_0_f2h_sdram0_data_wdata_78;
input 	hps_0_f2h_sdram0_data_wdata_79;
input 	hps_0_f2h_sdram0_data_wdata_80;
input 	hps_0_f2h_sdram0_data_wdata_81;
input 	hps_0_f2h_sdram0_data_wdata_82;
input 	hps_0_f2h_sdram0_data_wdata_83;
input 	hps_0_f2h_sdram0_data_wdata_84;
input 	hps_0_f2h_sdram0_data_wdata_85;
input 	hps_0_f2h_sdram0_data_wdata_86;
input 	hps_0_f2h_sdram0_data_wdata_87;
input 	hps_0_f2h_sdram0_data_wdata_88;
input 	hps_0_f2h_sdram0_data_wdata_89;
input 	hps_0_f2h_sdram0_data_wdata_90;
input 	hps_0_f2h_sdram0_data_wdata_91;
input 	hps_0_f2h_sdram0_data_wdata_92;
input 	hps_0_f2h_sdram0_data_wdata_93;
input 	hps_0_f2h_sdram0_data_wdata_94;
input 	hps_0_f2h_sdram0_data_wdata_95;
input 	hps_0_f2h_sdram0_data_wdata_96;
input 	hps_0_f2h_sdram0_data_wdata_97;
input 	hps_0_f2h_sdram0_data_wdata_98;
input 	hps_0_f2h_sdram0_data_wdata_99;
input 	hps_0_f2h_sdram0_data_wdata_100;
input 	hps_0_f2h_sdram0_data_wdata_101;
input 	hps_0_f2h_sdram0_data_wdata_102;
input 	hps_0_f2h_sdram0_data_wdata_103;
input 	hps_0_f2h_sdram0_data_wdata_104;
input 	hps_0_f2h_sdram0_data_wdata_105;
input 	hps_0_f2h_sdram0_data_wdata_106;
input 	hps_0_f2h_sdram0_data_wdata_107;
input 	hps_0_f2h_sdram0_data_wdata_108;
input 	hps_0_f2h_sdram0_data_wdata_109;
input 	hps_0_f2h_sdram0_data_wdata_110;
input 	hps_0_f2h_sdram0_data_wdata_111;
input 	hps_0_f2h_sdram0_data_wdata_112;
input 	hps_0_f2h_sdram0_data_wdata_113;
input 	hps_0_f2h_sdram0_data_wdata_114;
input 	hps_0_f2h_sdram0_data_wdata_115;
input 	hps_0_f2h_sdram0_data_wdata_116;
input 	hps_0_f2h_sdram0_data_wdata_117;
input 	hps_0_f2h_sdram0_data_wdata_118;
input 	hps_0_f2h_sdram0_data_wdata_119;
input 	hps_0_f2h_sdram0_data_wdata_120;
input 	hps_0_f2h_sdram0_data_wdata_121;
input 	hps_0_f2h_sdram0_data_wdata_122;
input 	hps_0_f2h_sdram0_data_wdata_123;
input 	hps_0_f2h_sdram0_data_wdata_124;
input 	hps_0_f2h_sdram0_data_wdata_125;
input 	hps_0_f2h_sdram0_data_wdata_126;
input 	hps_0_f2h_sdram0_data_wdata_127;
input 	hps_0_f2h_sdram0_data_wstrb_8;
input 	hps_0_f2h_sdram0_data_wstrb_9;
input 	hps_0_f2h_sdram0_data_wstrb_10;
input 	hps_0_f2h_sdram0_data_wstrb_11;
input 	hps_0_f2h_sdram0_data_wstrb_12;
input 	hps_0_f2h_sdram0_data_wstrb_13;
input 	hps_0_f2h_sdram0_data_wstrb_14;
input 	hps_0_f2h_sdram0_data_wstrb_15;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



HPS_HPS_hps_0_fpga_interfaces fpga_interfaces(
	.h2f_rst_n({h2f_rst_n_0}),
	.f2h_sdram0_ARREADY({f2h_sdram0_ARREADY_0}),
	.f2h_sdram0_AWREADY({f2h_sdram0_AWREADY_0}),
	.f2h_sdram0_RVALID({f2h_sdram0_RVALID_0}),
	.f2h_sdram0_WREADY({f2h_sdram0_WREADY_0}),
	.f2h_sdram0_BVALID({f2h_sdram0_BVALID_0}),
	.f2h_sdram0_RDATA({f2h_sdram0_RDATA_127,f2h_sdram0_RDATA_126,f2h_sdram0_RDATA_125,f2h_sdram0_RDATA_124,f2h_sdram0_RDATA_123,f2h_sdram0_RDATA_122,f2h_sdram0_RDATA_121,f2h_sdram0_RDATA_120,f2h_sdram0_RDATA_119,f2h_sdram0_RDATA_118,f2h_sdram0_RDATA_117,f2h_sdram0_RDATA_116,
f2h_sdram0_RDATA_115,f2h_sdram0_RDATA_114,f2h_sdram0_RDATA_113,f2h_sdram0_RDATA_112,f2h_sdram0_RDATA_111,f2h_sdram0_RDATA_110,f2h_sdram0_RDATA_109,f2h_sdram0_RDATA_108,f2h_sdram0_RDATA_107,f2h_sdram0_RDATA_106,f2h_sdram0_RDATA_105,f2h_sdram0_RDATA_104,
f2h_sdram0_RDATA_103,f2h_sdram0_RDATA_102,f2h_sdram0_RDATA_101,f2h_sdram0_RDATA_100,f2h_sdram0_RDATA_99,f2h_sdram0_RDATA_98,f2h_sdram0_RDATA_97,f2h_sdram0_RDATA_96,f2h_sdram0_RDATA_95,f2h_sdram0_RDATA_94,f2h_sdram0_RDATA_93,f2h_sdram0_RDATA_92,f2h_sdram0_RDATA_91,
f2h_sdram0_RDATA_90,f2h_sdram0_RDATA_89,f2h_sdram0_RDATA_88,f2h_sdram0_RDATA_87,f2h_sdram0_RDATA_86,f2h_sdram0_RDATA_85,f2h_sdram0_RDATA_84,f2h_sdram0_RDATA_83,f2h_sdram0_RDATA_82,f2h_sdram0_RDATA_81,f2h_sdram0_RDATA_80,f2h_sdram0_RDATA_79,f2h_sdram0_RDATA_78,
f2h_sdram0_RDATA_77,f2h_sdram0_RDATA_76,f2h_sdram0_RDATA_75,f2h_sdram0_RDATA_74,f2h_sdram0_RDATA_73,f2h_sdram0_RDATA_72,f2h_sdram0_RDATA_71,f2h_sdram0_RDATA_70,f2h_sdram0_RDATA_69,f2h_sdram0_RDATA_68,f2h_sdram0_RDATA_67,f2h_sdram0_RDATA_66,f2h_sdram0_RDATA_65,
f2h_sdram0_RDATA_64,f2h_sdram0_RDATA_63,f2h_sdram0_RDATA_62,f2h_sdram0_RDATA_61,f2h_sdram0_RDATA_60,f2h_sdram0_RDATA_59,f2h_sdram0_RDATA_58,f2h_sdram0_RDATA_57,f2h_sdram0_RDATA_56,f2h_sdram0_RDATA_55,f2h_sdram0_RDATA_54,f2h_sdram0_RDATA_53,f2h_sdram0_RDATA_52,
f2h_sdram0_RDATA_51,f2h_sdram0_RDATA_50,f2h_sdram0_RDATA_49,f2h_sdram0_RDATA_48,f2h_sdram0_RDATA_47,f2h_sdram0_RDATA_46,f2h_sdram0_RDATA_45,f2h_sdram0_RDATA_44,f2h_sdram0_RDATA_43,f2h_sdram0_RDATA_42,f2h_sdram0_RDATA_41,f2h_sdram0_RDATA_40,f2h_sdram0_RDATA_39,
f2h_sdram0_RDATA_38,f2h_sdram0_RDATA_37,f2h_sdram0_RDATA_36,f2h_sdram0_RDATA_35,f2h_sdram0_RDATA_34,f2h_sdram0_RDATA_33,f2h_sdram0_RDATA_32,f2h_sdram0_RDATA_31,f2h_sdram0_RDATA_30,f2h_sdram0_RDATA_29,f2h_sdram0_RDATA_28,f2h_sdram0_RDATA_27,f2h_sdram0_RDATA_26,
f2h_sdram0_RDATA_25,f2h_sdram0_RDATA_24,f2h_sdram0_RDATA_23,f2h_sdram0_RDATA_22,f2h_sdram0_RDATA_21,f2h_sdram0_RDATA_20,f2h_sdram0_RDATA_19,f2h_sdram0_RDATA_18,f2h_sdram0_RDATA_17,f2h_sdram0_RDATA_16,f2h_sdram0_RDATA_15,f2h_sdram0_RDATA_14,f2h_sdram0_RDATA_13,
f2h_sdram0_RDATA_12,f2h_sdram0_RDATA_11,f2h_sdram0_RDATA_10,f2h_sdram0_RDATA_9,f2h_sdram0_RDATA_8,f2h_sdram0_RDATA_7,f2h_sdram0_RDATA_6,f2h_sdram0_RDATA_5,f2h_sdram0_RDATA_4,f2h_sdram0_RDATA_3,f2h_sdram0_RDATA_2,f2h_sdram0_RDATA_1,f2h_sdram0_RDATA_0}),
	.f2h_sdram0_RRESP({f2h_sdram0_RRESP_1,f2h_sdram0_RRESP_0}),
	.f2h_sdram0_RLAST({f2h_sdram0_RLAST_0}),
	.f2h_sdram0_RID({f2h_sdram0_RID_7,f2h_sdram0_RID_6,f2h_sdram0_RID_5,f2h_sdram0_RID_4,f2h_sdram0_RID_3,f2h_sdram0_RID_2,f2h_sdram0_RID_1,f2h_sdram0_RID_0}),
	.f2h_sdram0_BRESP({f2h_sdram0_BRESP_1,f2h_sdram0_BRESP_0}),
	.f2h_sdram0_BID({f2h_sdram0_BID_7,f2h_sdram0_BID_6,f2h_sdram0_BID_5,f2h_sdram0_BID_4,f2h_sdram0_BID_3,f2h_sdram0_BID_2,f2h_sdram0_BID_1,f2h_sdram0_BID_0}),
	.f2h_sdram0_clk({hps_0_f2h_sdram0_clock_clk}),
	.f2h_sdram0_ARVALID({hps_0_f2h_sdram0_data_arvalid}),
	.f2h_sdram0_AWVALID({hps_0_f2h_sdram0_data_awvalid}),
	.f2h_sdram0_RREADY({hps_0_f2h_sdram0_data_rready}),
	.f2h_sdram0_WVALID({hps_0_f2h_sdram0_data_wvalid}),
	.f2h_sdram0_BREADY({hps_0_f2h_sdram0_data_bready}),
	.f2h_sdram0_ARADDR({hps_0_f2h_sdram0_data_araddr_31,hps_0_f2h_sdram0_data_araddr_30,hps_0_f2h_sdram0_data_araddr_29,hps_0_f2h_sdram0_data_araddr_28,hps_0_f2h_sdram0_data_araddr_27,hps_0_f2h_sdram0_data_araddr_26,hps_0_f2h_sdram0_data_araddr_25,hps_0_f2h_sdram0_data_araddr_24,
hps_0_f2h_sdram0_data_araddr_23,hps_0_f2h_sdram0_data_araddr_22,hps_0_f2h_sdram0_data_araddr_21,hps_0_f2h_sdram0_data_araddr_20,hps_0_f2h_sdram0_data_araddr_19,hps_0_f2h_sdram0_data_araddr_18,hps_0_f2h_sdram0_data_araddr_17,hps_0_f2h_sdram0_data_araddr_16,
hps_0_f2h_sdram0_data_araddr_15,hps_0_f2h_sdram0_data_araddr_14,hps_0_f2h_sdram0_data_araddr_13,hps_0_f2h_sdram0_data_araddr_12,hps_0_f2h_sdram0_data_araddr_11,hps_0_f2h_sdram0_data_araddr_10,hps_0_f2h_sdram0_data_araddr_9,hps_0_f2h_sdram0_data_araddr_8,
hps_0_f2h_sdram0_data_araddr_7,hps_0_f2h_sdram0_data_araddr_6,hps_0_f2h_sdram0_data_araddr_5,hps_0_f2h_sdram0_data_araddr_4,hps_0_f2h_sdram0_data_araddr_3,hps_0_f2h_sdram0_data_araddr_2,hps_0_f2h_sdram0_data_araddr_1,hps_0_f2h_sdram0_data_araddr_0}),
	.f2h_sdram0_ARLEN({hps_0_f2h_sdram0_data_arlen_3,hps_0_f2h_sdram0_data_arlen_2,hps_0_f2h_sdram0_data_arlen_1,hps_0_f2h_sdram0_data_arlen_0}),
	.f2h_sdram0_ARID({hps_0_f2h_sdram0_data_arid_7,hps_0_f2h_sdram0_data_arid_6,hps_0_f2h_sdram0_data_arid_5,hps_0_f2h_sdram0_data_arid_4,hps_0_f2h_sdram0_data_arid_3,hps_0_f2h_sdram0_data_arid_2,hps_0_f2h_sdram0_data_arid_1,hps_0_f2h_sdram0_data_arid_0}),
	.f2h_sdram0_ARSIZE({hps_0_f2h_sdram0_data_arsize_2,hps_0_f2h_sdram0_data_arsize_1,hps_0_f2h_sdram0_data_arsize_0}),
	.f2h_sdram0_ARBURST({hps_0_f2h_sdram0_data_arburst_1,hps_0_f2h_sdram0_data_arburst_0}),
	.f2h_sdram0_ARLOCK({hps_0_f2h_sdram0_data_arlock_1,hps_0_f2h_sdram0_data_arlock_0}),
	.f2h_sdram0_ARPROT({gnd,hps_0_f2h_sdram0_data_arprot_1,hps_0_f2h_sdram0_data_arprot_0}),
	.f2h_sdram0_AWADDR({hps_0_f2h_sdram0_data_awaddr_31,hps_0_f2h_sdram0_data_awaddr_30,hps_0_f2h_sdram0_data_awaddr_29,hps_0_f2h_sdram0_data_awaddr_28,hps_0_f2h_sdram0_data_awaddr_27,hps_0_f2h_sdram0_data_awaddr_26,hps_0_f2h_sdram0_data_awaddr_25,hps_0_f2h_sdram0_data_awaddr_24,
hps_0_f2h_sdram0_data_awaddr_23,hps_0_f2h_sdram0_data_awaddr_22,hps_0_f2h_sdram0_data_awaddr_21,hps_0_f2h_sdram0_data_awaddr_20,hps_0_f2h_sdram0_data_awaddr_19,hps_0_f2h_sdram0_data_awaddr_18,hps_0_f2h_sdram0_data_awaddr_17,hps_0_f2h_sdram0_data_awaddr_16,
hps_0_f2h_sdram0_data_awaddr_15,hps_0_f2h_sdram0_data_awaddr_14,hps_0_f2h_sdram0_data_awaddr_13,hps_0_f2h_sdram0_data_awaddr_12,hps_0_f2h_sdram0_data_awaddr_11,hps_0_f2h_sdram0_data_awaddr_10,hps_0_f2h_sdram0_data_awaddr_9,hps_0_f2h_sdram0_data_awaddr_8,
hps_0_f2h_sdram0_data_awaddr_7,hps_0_f2h_sdram0_data_awaddr_6,hps_0_f2h_sdram0_data_awaddr_5,hps_0_f2h_sdram0_data_awaddr_4,hps_0_f2h_sdram0_data_awaddr_3,hps_0_f2h_sdram0_data_awaddr_2,hps_0_f2h_sdram0_data_awaddr_1,hps_0_f2h_sdram0_data_awaddr_0}),
	.f2h_sdram0_AWLEN({hps_0_f2h_sdram0_data_awlen_3,hps_0_f2h_sdram0_data_awlen_2,hps_0_f2h_sdram0_data_awlen_1,hps_0_f2h_sdram0_data_awlen_0}),
	.f2h_sdram0_AWID({hps_0_f2h_sdram0_data_awid_7,hps_0_f2h_sdram0_data_awid_6,hps_0_f2h_sdram0_data_awid_5,hps_0_f2h_sdram0_data_awid_4,hps_0_f2h_sdram0_data_awid_3,hps_0_f2h_sdram0_data_awid_2,hps_0_f2h_sdram0_data_awid_1,hps_0_f2h_sdram0_data_awid_0}),
	.f2h_sdram0_AWSIZE({hps_0_f2h_sdram0_data_awsize_2,hps_0_f2h_sdram0_data_awsize_1,hps_0_f2h_sdram0_data_awsize_0}),
	.f2h_sdram0_AWBURST({hps_0_f2h_sdram0_data_awburst_1,hps_0_f2h_sdram0_data_awburst_0}),
	.f2h_sdram0_AWLOCK({hps_0_f2h_sdram0_data_awlock_1,hps_0_f2h_sdram0_data_awlock_0}),
	.f2h_sdram0_AWPROT({gnd,hps_0_f2h_sdram0_data_awprot_1,hps_0_f2h_sdram0_data_awprot_0}),
	.f2h_sdram0_WDATA({hps_0_f2h_sdram0_data_wdata_127,hps_0_f2h_sdram0_data_wdata_126,hps_0_f2h_sdram0_data_wdata_125,hps_0_f2h_sdram0_data_wdata_124,hps_0_f2h_sdram0_data_wdata_123,hps_0_f2h_sdram0_data_wdata_122,hps_0_f2h_sdram0_data_wdata_121,hps_0_f2h_sdram0_data_wdata_120,
hps_0_f2h_sdram0_data_wdata_119,hps_0_f2h_sdram0_data_wdata_118,hps_0_f2h_sdram0_data_wdata_117,hps_0_f2h_sdram0_data_wdata_116,hps_0_f2h_sdram0_data_wdata_115,hps_0_f2h_sdram0_data_wdata_114,hps_0_f2h_sdram0_data_wdata_113,hps_0_f2h_sdram0_data_wdata_112,
hps_0_f2h_sdram0_data_wdata_111,hps_0_f2h_sdram0_data_wdata_110,hps_0_f2h_sdram0_data_wdata_109,hps_0_f2h_sdram0_data_wdata_108,hps_0_f2h_sdram0_data_wdata_107,hps_0_f2h_sdram0_data_wdata_106,hps_0_f2h_sdram0_data_wdata_105,hps_0_f2h_sdram0_data_wdata_104,
hps_0_f2h_sdram0_data_wdata_103,hps_0_f2h_sdram0_data_wdata_102,hps_0_f2h_sdram0_data_wdata_101,hps_0_f2h_sdram0_data_wdata_100,hps_0_f2h_sdram0_data_wdata_99,hps_0_f2h_sdram0_data_wdata_98,hps_0_f2h_sdram0_data_wdata_97,hps_0_f2h_sdram0_data_wdata_96,
hps_0_f2h_sdram0_data_wdata_95,hps_0_f2h_sdram0_data_wdata_94,hps_0_f2h_sdram0_data_wdata_93,hps_0_f2h_sdram0_data_wdata_92,hps_0_f2h_sdram0_data_wdata_91,hps_0_f2h_sdram0_data_wdata_90,hps_0_f2h_sdram0_data_wdata_89,hps_0_f2h_sdram0_data_wdata_88,
hps_0_f2h_sdram0_data_wdata_87,hps_0_f2h_sdram0_data_wdata_86,hps_0_f2h_sdram0_data_wdata_85,hps_0_f2h_sdram0_data_wdata_84,hps_0_f2h_sdram0_data_wdata_83,hps_0_f2h_sdram0_data_wdata_82,hps_0_f2h_sdram0_data_wdata_81,hps_0_f2h_sdram0_data_wdata_80,
hps_0_f2h_sdram0_data_wdata_79,hps_0_f2h_sdram0_data_wdata_78,hps_0_f2h_sdram0_data_wdata_77,hps_0_f2h_sdram0_data_wdata_76,hps_0_f2h_sdram0_data_wdata_75,hps_0_f2h_sdram0_data_wdata_74,hps_0_f2h_sdram0_data_wdata_73,hps_0_f2h_sdram0_data_wdata_72,
hps_0_f2h_sdram0_data_wdata_71,hps_0_f2h_sdram0_data_wdata_70,hps_0_f2h_sdram0_data_wdata_69,hps_0_f2h_sdram0_data_wdata_68,hps_0_f2h_sdram0_data_wdata_67,hps_0_f2h_sdram0_data_wdata_66,hps_0_f2h_sdram0_data_wdata_65,hps_0_f2h_sdram0_data_wdata_64,
hps_0_f2h_sdram0_data_wdata_63,hps_0_f2h_sdram0_data_wdata_62,hps_0_f2h_sdram0_data_wdata_61,hps_0_f2h_sdram0_data_wdata_60,hps_0_f2h_sdram0_data_wdata_59,hps_0_f2h_sdram0_data_wdata_58,hps_0_f2h_sdram0_data_wdata_57,hps_0_f2h_sdram0_data_wdata_56,
hps_0_f2h_sdram0_data_wdata_55,hps_0_f2h_sdram0_data_wdata_54,hps_0_f2h_sdram0_data_wdata_53,hps_0_f2h_sdram0_data_wdata_52,hps_0_f2h_sdram0_data_wdata_51,hps_0_f2h_sdram0_data_wdata_50,hps_0_f2h_sdram0_data_wdata_49,hps_0_f2h_sdram0_data_wdata_48,
hps_0_f2h_sdram0_data_wdata_47,hps_0_f2h_sdram0_data_wdata_46,hps_0_f2h_sdram0_data_wdata_45,hps_0_f2h_sdram0_data_wdata_44,hps_0_f2h_sdram0_data_wdata_43,hps_0_f2h_sdram0_data_wdata_42,hps_0_f2h_sdram0_data_wdata_41,hps_0_f2h_sdram0_data_wdata_40,
hps_0_f2h_sdram0_data_wdata_39,hps_0_f2h_sdram0_data_wdata_38,hps_0_f2h_sdram0_data_wdata_37,hps_0_f2h_sdram0_data_wdata_36,hps_0_f2h_sdram0_data_wdata_35,hps_0_f2h_sdram0_data_wdata_34,hps_0_f2h_sdram0_data_wdata_33,hps_0_f2h_sdram0_data_wdata_32,
hps_0_f2h_sdram0_data_wdata_31,hps_0_f2h_sdram0_data_wdata_30,hps_0_f2h_sdram0_data_wdata_29,hps_0_f2h_sdram0_data_wdata_28,hps_0_f2h_sdram0_data_wdata_27,hps_0_f2h_sdram0_data_wdata_26,hps_0_f2h_sdram0_data_wdata_25,hps_0_f2h_sdram0_data_wdata_24,
hps_0_f2h_sdram0_data_wdata_23,hps_0_f2h_sdram0_data_wdata_22,hps_0_f2h_sdram0_data_wdata_21,hps_0_f2h_sdram0_data_wdata_20,hps_0_f2h_sdram0_data_wdata_19,hps_0_f2h_sdram0_data_wdata_18,hps_0_f2h_sdram0_data_wdata_17,hps_0_f2h_sdram0_data_wdata_16,
hps_0_f2h_sdram0_data_wdata_15,hps_0_f2h_sdram0_data_wdata_14,hps_0_f2h_sdram0_data_wdata_13,hps_0_f2h_sdram0_data_wdata_12,hps_0_f2h_sdram0_data_wdata_11,hps_0_f2h_sdram0_data_wdata_10,hps_0_f2h_sdram0_data_wdata_9,hps_0_f2h_sdram0_data_wdata_8,
hps_0_f2h_sdram0_data_wdata_7,hps_0_f2h_sdram0_data_wdata_6,hps_0_f2h_sdram0_data_wdata_5,hps_0_f2h_sdram0_data_wdata_4,hps_0_f2h_sdram0_data_wdata_3,hps_0_f2h_sdram0_data_wdata_2,hps_0_f2h_sdram0_data_wdata_1,hps_0_f2h_sdram0_data_wdata_0}),
	.f2h_sdram0_WSTRB({hps_0_f2h_sdram0_data_wstrb_15,hps_0_f2h_sdram0_data_wstrb_14,hps_0_f2h_sdram0_data_wstrb_13,hps_0_f2h_sdram0_data_wstrb_12,hps_0_f2h_sdram0_data_wstrb_11,hps_0_f2h_sdram0_data_wstrb_10,hps_0_f2h_sdram0_data_wstrb_9,hps_0_f2h_sdram0_data_wstrb_8,
hps_0_f2h_sdram0_data_wstrb_7,hps_0_f2h_sdram0_data_wstrb_6,hps_0_f2h_sdram0_data_wstrb_5,hps_0_f2h_sdram0_data_wstrb_4,hps_0_f2h_sdram0_data_wstrb_3,hps_0_f2h_sdram0_data_wstrb_2,hps_0_f2h_sdram0_data_wstrb_1,hps_0_f2h_sdram0_data_wstrb_0}),
	.f2h_sdram0_WLAST({hps_0_f2h_sdram0_data_wlast}));

HPS_HPS_hps_0_hps_io hps_io(
	.parallelterminationcontrol_0(parallelterminationcontrol_0),
	.parallelterminationcontrol_1(parallelterminationcontrol_1),
	.parallelterminationcontrol_2(parallelterminationcontrol_2),
	.parallelterminationcontrol_3(parallelterminationcontrol_3),
	.parallelterminationcontrol_4(parallelterminationcontrol_4),
	.parallelterminationcontrol_5(parallelterminationcontrol_5),
	.parallelterminationcontrol_6(parallelterminationcontrol_6),
	.parallelterminationcontrol_7(parallelterminationcontrol_7),
	.parallelterminationcontrol_8(parallelterminationcontrol_8),
	.parallelterminationcontrol_9(parallelterminationcontrol_9),
	.parallelterminationcontrol_10(parallelterminationcontrol_10),
	.parallelterminationcontrol_11(parallelterminationcontrol_11),
	.parallelterminationcontrol_12(parallelterminationcontrol_12),
	.parallelterminationcontrol_13(parallelterminationcontrol_13),
	.parallelterminationcontrol_14(parallelterminationcontrol_14),
	.parallelterminationcontrol_15(parallelterminationcontrol_15),
	.seriesterminationcontrol_0(seriesterminationcontrol_0),
	.seriesterminationcontrol_1(seriesterminationcontrol_1),
	.seriesterminationcontrol_2(seriesterminationcontrol_2),
	.seriesterminationcontrol_3(seriesterminationcontrol_3),
	.seriesterminationcontrol_4(seriesterminationcontrol_4),
	.seriesterminationcontrol_5(seriesterminationcontrol_5),
	.seriesterminationcontrol_6(seriesterminationcontrol_6),
	.seriesterminationcontrol_7(seriesterminationcontrol_7),
	.seriesterminationcontrol_8(seriesterminationcontrol_8),
	.seriesterminationcontrol_9(seriesterminationcontrol_9),
	.seriesterminationcontrol_10(seriesterminationcontrol_10),
	.seriesterminationcontrol_11(seriesterminationcontrol_11),
	.seriesterminationcontrol_12(seriesterminationcontrol_12),
	.seriesterminationcontrol_13(seriesterminationcontrol_13),
	.seriesterminationcontrol_14(seriesterminationcontrol_14),
	.seriesterminationcontrol_15(seriesterminationcontrol_15),
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.memory_oct_rzqin(memory_oct_rzqin));

endmodule

module HPS_HPS_hps_0_fpga_interfaces (
	h2f_rst_n,
	f2h_sdram0_ARREADY,
	f2h_sdram0_AWREADY,
	f2h_sdram0_RVALID,
	f2h_sdram0_WREADY,
	f2h_sdram0_BVALID,
	f2h_sdram0_RDATA,
	f2h_sdram0_RRESP,
	f2h_sdram0_RLAST,
	f2h_sdram0_RID,
	f2h_sdram0_BRESP,
	f2h_sdram0_BID,
	f2h_sdram0_clk,
	f2h_sdram0_ARVALID,
	f2h_sdram0_AWVALID,
	f2h_sdram0_RREADY,
	f2h_sdram0_WVALID,
	f2h_sdram0_BREADY,
	f2h_sdram0_ARADDR,
	f2h_sdram0_ARLEN,
	f2h_sdram0_ARID,
	f2h_sdram0_ARSIZE,
	f2h_sdram0_ARBURST,
	f2h_sdram0_ARLOCK,
	f2h_sdram0_ARPROT,
	f2h_sdram0_AWADDR,
	f2h_sdram0_AWLEN,
	f2h_sdram0_AWID,
	f2h_sdram0_AWSIZE,
	f2h_sdram0_AWBURST,
	f2h_sdram0_AWLOCK,
	f2h_sdram0_AWPROT,
	f2h_sdram0_WDATA,
	f2h_sdram0_WSTRB,
	f2h_sdram0_WLAST)/* synthesis synthesis_greybox=0 */;
output 	[0:0] h2f_rst_n;
output 	[0:0] f2h_sdram0_ARREADY;
output 	[0:0] f2h_sdram0_AWREADY;
output 	[0:0] f2h_sdram0_RVALID;
output 	[0:0] f2h_sdram0_WREADY;
output 	[0:0] f2h_sdram0_BVALID;
output 	[127:0] f2h_sdram0_RDATA;
output 	[1:0] f2h_sdram0_RRESP;
output 	[0:0] f2h_sdram0_RLAST;
output 	[7:0] f2h_sdram0_RID;
output 	[1:0] f2h_sdram0_BRESP;
output 	[7:0] f2h_sdram0_BID;
input 	[0:0] f2h_sdram0_clk;
input 	[0:0] f2h_sdram0_ARVALID;
input 	[0:0] f2h_sdram0_AWVALID;
input 	[0:0] f2h_sdram0_RREADY;
input 	[0:0] f2h_sdram0_WVALID;
input 	[0:0] f2h_sdram0_BREADY;
input 	[31:0] f2h_sdram0_ARADDR;
input 	[3:0] f2h_sdram0_ARLEN;
input 	[7:0] f2h_sdram0_ARID;
input 	[2:0] f2h_sdram0_ARSIZE;
input 	[1:0] f2h_sdram0_ARBURST;
input 	[1:0] f2h_sdram0_ARLOCK;
input 	[2:0] f2h_sdram0_ARPROT;
input 	[31:0] f2h_sdram0_AWADDR;
input 	[3:0] f2h_sdram0_AWLEN;
input 	[7:0] f2h_sdram0_AWID;
input 	[2:0] f2h_sdram0_AWSIZE;
input 	[1:0] f2h_sdram0_AWBURST;
input 	[1:0] f2h_sdram0_AWLOCK;
input 	[2:0] f2h_sdram0_AWPROT;
input 	[127:0] f2h_sdram0_WDATA;
input 	[15:0] f2h_sdram0_WSTRB;
input 	[0:0] f2h_sdram0_WLAST;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \debug_apb~O_P_ADDR_31 ;
wire \tpiu~trace_data ;
wire \tpiu~O_TRACE_DATA1 ;
wire \tpiu~O_TRACE_DATA2 ;
wire \tpiu~O_TRACE_DATA3 ;
wire \tpiu~O_TRACE_DATA4 ;
wire \tpiu~O_TRACE_DATA5 ;
wire \tpiu~O_TRACE_DATA6 ;
wire \tpiu~O_TRACE_DATA7 ;
wire \tpiu~O_TRACE_DATA8 ;
wire \tpiu~O_TRACE_DATA9 ;
wire \tpiu~O_TRACE_DATA10 ;
wire \tpiu~O_TRACE_DATA11 ;
wire \tpiu~O_TRACE_DATA12 ;
wire \tpiu~O_TRACE_DATA13 ;
wire \tpiu~O_TRACE_DATA14 ;
wire \tpiu~O_TRACE_DATA15 ;
wire \tpiu~O_TRACE_DATA16 ;
wire \tpiu~O_TRACE_DATA17 ;
wire \tpiu~O_TRACE_DATA18 ;
wire \tpiu~O_TRACE_DATA19 ;
wire \tpiu~O_TRACE_DATA20 ;
wire \tpiu~O_TRACE_DATA21 ;
wire \tpiu~O_TRACE_DATA22 ;
wire \tpiu~O_TRACE_DATA23 ;
wire \tpiu~O_TRACE_DATA24 ;
wire \tpiu~O_TRACE_DATA25 ;
wire \tpiu~O_TRACE_DATA26 ;
wire \tpiu~O_TRACE_DATA27 ;
wire \tpiu~O_TRACE_DATA28 ;
wire \tpiu~O_TRACE_DATA29 ;
wire \tpiu~O_TRACE_DATA30 ;
wire \tpiu~O_TRACE_DATA31 ;
wire \boot_from_fpga~fake_dout ;
wire \fpga2hps~arready ;
wire \hps2fpga~araddr ;
wire \hps2fpga~O_ARADDR1 ;
wire \hps2fpga~O_ARADDR2 ;
wire \hps2fpga~O_ARADDR3 ;
wire \hps2fpga~O_ARADDR4 ;
wire \hps2fpga~O_ARADDR5 ;
wire \hps2fpga~O_ARADDR6 ;
wire \hps2fpga~O_ARADDR7 ;
wire \hps2fpga~O_ARADDR8 ;
wire \hps2fpga~O_ARADDR9 ;
wire \hps2fpga~O_ARADDR10 ;
wire \hps2fpga~O_ARADDR11 ;
wire \hps2fpga~O_ARADDR12 ;
wire \hps2fpga~O_ARADDR13 ;
wire \hps2fpga~O_ARADDR14 ;
wire \hps2fpga~O_ARADDR15 ;
wire \hps2fpga~O_ARADDR16 ;
wire \hps2fpga~O_ARADDR17 ;
wire \hps2fpga~O_ARADDR18 ;
wire \hps2fpga~O_ARADDR19 ;
wire \hps2fpga~O_ARADDR20 ;
wire \hps2fpga~O_ARADDR21 ;
wire \hps2fpga~O_ARADDR22 ;
wire \hps2fpga~O_ARADDR23 ;
wire \hps2fpga~O_ARADDR24 ;
wire \hps2fpga~O_ARADDR25 ;
wire \hps2fpga~O_ARADDR26 ;
wire \hps2fpga~O_ARADDR27 ;
wire \hps2fpga~O_ARADDR28 ;
wire \hps2fpga~O_ARADDR29 ;
wire \clocks_resets~h2f_cold_rst_n ;
wire \f2sdram~O_BONDING_OUT_10 ;
wire \f2sdram~O_BONDING_OUT_11 ;
wire \f2sdram~O_BONDING_OUT_12 ;
wire \f2sdram~O_BONDING_OUT_13 ;

wire [31:0] tpiu_TRACE_DATA_bus;
wire [29:0] hps2fpga_ARADDR_bus;
wire [3:0] f2sdram_BONDING_OUT_1_bus;
wire [79:0] f2sdram_RD_DATA_0_bus;
wire [79:0] f2sdram_RD_DATA_1_bus;
wire [9:0] f2sdram_WRACK_DATA_1_bus;

assign \tpiu~trace_data  = tpiu_TRACE_DATA_bus[0];
assign \tpiu~O_TRACE_DATA1  = tpiu_TRACE_DATA_bus[1];
assign \tpiu~O_TRACE_DATA2  = tpiu_TRACE_DATA_bus[2];
assign \tpiu~O_TRACE_DATA3  = tpiu_TRACE_DATA_bus[3];
assign \tpiu~O_TRACE_DATA4  = tpiu_TRACE_DATA_bus[4];
assign \tpiu~O_TRACE_DATA5  = tpiu_TRACE_DATA_bus[5];
assign \tpiu~O_TRACE_DATA6  = tpiu_TRACE_DATA_bus[6];
assign \tpiu~O_TRACE_DATA7  = tpiu_TRACE_DATA_bus[7];
assign \tpiu~O_TRACE_DATA8  = tpiu_TRACE_DATA_bus[8];
assign \tpiu~O_TRACE_DATA9  = tpiu_TRACE_DATA_bus[9];
assign \tpiu~O_TRACE_DATA10  = tpiu_TRACE_DATA_bus[10];
assign \tpiu~O_TRACE_DATA11  = tpiu_TRACE_DATA_bus[11];
assign \tpiu~O_TRACE_DATA12  = tpiu_TRACE_DATA_bus[12];
assign \tpiu~O_TRACE_DATA13  = tpiu_TRACE_DATA_bus[13];
assign \tpiu~O_TRACE_DATA14  = tpiu_TRACE_DATA_bus[14];
assign \tpiu~O_TRACE_DATA15  = tpiu_TRACE_DATA_bus[15];
assign \tpiu~O_TRACE_DATA16  = tpiu_TRACE_DATA_bus[16];
assign \tpiu~O_TRACE_DATA17  = tpiu_TRACE_DATA_bus[17];
assign \tpiu~O_TRACE_DATA18  = tpiu_TRACE_DATA_bus[18];
assign \tpiu~O_TRACE_DATA19  = tpiu_TRACE_DATA_bus[19];
assign \tpiu~O_TRACE_DATA20  = tpiu_TRACE_DATA_bus[20];
assign \tpiu~O_TRACE_DATA21  = tpiu_TRACE_DATA_bus[21];
assign \tpiu~O_TRACE_DATA22  = tpiu_TRACE_DATA_bus[22];
assign \tpiu~O_TRACE_DATA23  = tpiu_TRACE_DATA_bus[23];
assign \tpiu~O_TRACE_DATA24  = tpiu_TRACE_DATA_bus[24];
assign \tpiu~O_TRACE_DATA25  = tpiu_TRACE_DATA_bus[25];
assign \tpiu~O_TRACE_DATA26  = tpiu_TRACE_DATA_bus[26];
assign \tpiu~O_TRACE_DATA27  = tpiu_TRACE_DATA_bus[27];
assign \tpiu~O_TRACE_DATA28  = tpiu_TRACE_DATA_bus[28];
assign \tpiu~O_TRACE_DATA29  = tpiu_TRACE_DATA_bus[29];
assign \tpiu~O_TRACE_DATA30  = tpiu_TRACE_DATA_bus[30];
assign \tpiu~O_TRACE_DATA31  = tpiu_TRACE_DATA_bus[31];

assign \hps2fpga~araddr  = hps2fpga_ARADDR_bus[0];
assign \hps2fpga~O_ARADDR1  = hps2fpga_ARADDR_bus[1];
assign \hps2fpga~O_ARADDR2  = hps2fpga_ARADDR_bus[2];
assign \hps2fpga~O_ARADDR3  = hps2fpga_ARADDR_bus[3];
assign \hps2fpga~O_ARADDR4  = hps2fpga_ARADDR_bus[4];
assign \hps2fpga~O_ARADDR5  = hps2fpga_ARADDR_bus[5];
assign \hps2fpga~O_ARADDR6  = hps2fpga_ARADDR_bus[6];
assign \hps2fpga~O_ARADDR7  = hps2fpga_ARADDR_bus[7];
assign \hps2fpga~O_ARADDR8  = hps2fpga_ARADDR_bus[8];
assign \hps2fpga~O_ARADDR9  = hps2fpga_ARADDR_bus[9];
assign \hps2fpga~O_ARADDR10  = hps2fpga_ARADDR_bus[10];
assign \hps2fpga~O_ARADDR11  = hps2fpga_ARADDR_bus[11];
assign \hps2fpga~O_ARADDR12  = hps2fpga_ARADDR_bus[12];
assign \hps2fpga~O_ARADDR13  = hps2fpga_ARADDR_bus[13];
assign \hps2fpga~O_ARADDR14  = hps2fpga_ARADDR_bus[14];
assign \hps2fpga~O_ARADDR15  = hps2fpga_ARADDR_bus[15];
assign \hps2fpga~O_ARADDR16  = hps2fpga_ARADDR_bus[16];
assign \hps2fpga~O_ARADDR17  = hps2fpga_ARADDR_bus[17];
assign \hps2fpga~O_ARADDR18  = hps2fpga_ARADDR_bus[18];
assign \hps2fpga~O_ARADDR19  = hps2fpga_ARADDR_bus[19];
assign \hps2fpga~O_ARADDR20  = hps2fpga_ARADDR_bus[20];
assign \hps2fpga~O_ARADDR21  = hps2fpga_ARADDR_bus[21];
assign \hps2fpga~O_ARADDR22  = hps2fpga_ARADDR_bus[22];
assign \hps2fpga~O_ARADDR23  = hps2fpga_ARADDR_bus[23];
assign \hps2fpga~O_ARADDR24  = hps2fpga_ARADDR_bus[24];
assign \hps2fpga~O_ARADDR25  = hps2fpga_ARADDR_bus[25];
assign \hps2fpga~O_ARADDR26  = hps2fpga_ARADDR_bus[26];
assign \hps2fpga~O_ARADDR27  = hps2fpga_ARADDR_bus[27];
assign \hps2fpga~O_ARADDR28  = hps2fpga_ARADDR_bus[28];
assign \hps2fpga~O_ARADDR29  = hps2fpga_ARADDR_bus[29];

assign \f2sdram~O_BONDING_OUT_10  = f2sdram_BONDING_OUT_1_bus[0];
assign \f2sdram~O_BONDING_OUT_11  = f2sdram_BONDING_OUT_1_bus[1];
assign \f2sdram~O_BONDING_OUT_12  = f2sdram_BONDING_OUT_1_bus[2];
assign \f2sdram~O_BONDING_OUT_13  = f2sdram_BONDING_OUT_1_bus[3];

assign f2h_sdram0_RDATA[0] = f2sdram_RD_DATA_0_bus[0];
assign f2h_sdram0_RDATA[1] = f2sdram_RD_DATA_0_bus[1];
assign f2h_sdram0_RDATA[2] = f2sdram_RD_DATA_0_bus[2];
assign f2h_sdram0_RDATA[3] = f2sdram_RD_DATA_0_bus[3];
assign f2h_sdram0_RDATA[4] = f2sdram_RD_DATA_0_bus[4];
assign f2h_sdram0_RDATA[5] = f2sdram_RD_DATA_0_bus[5];
assign f2h_sdram0_RDATA[6] = f2sdram_RD_DATA_0_bus[6];
assign f2h_sdram0_RDATA[7] = f2sdram_RD_DATA_0_bus[7];
assign f2h_sdram0_RDATA[8] = f2sdram_RD_DATA_0_bus[8];
assign f2h_sdram0_RDATA[9] = f2sdram_RD_DATA_0_bus[9];
assign f2h_sdram0_RDATA[10] = f2sdram_RD_DATA_0_bus[10];
assign f2h_sdram0_RDATA[11] = f2sdram_RD_DATA_0_bus[11];
assign f2h_sdram0_RDATA[12] = f2sdram_RD_DATA_0_bus[12];
assign f2h_sdram0_RDATA[13] = f2sdram_RD_DATA_0_bus[13];
assign f2h_sdram0_RDATA[14] = f2sdram_RD_DATA_0_bus[14];
assign f2h_sdram0_RDATA[15] = f2sdram_RD_DATA_0_bus[15];
assign f2h_sdram0_RDATA[16] = f2sdram_RD_DATA_0_bus[16];
assign f2h_sdram0_RDATA[17] = f2sdram_RD_DATA_0_bus[17];
assign f2h_sdram0_RDATA[18] = f2sdram_RD_DATA_0_bus[18];
assign f2h_sdram0_RDATA[19] = f2sdram_RD_DATA_0_bus[19];
assign f2h_sdram0_RDATA[20] = f2sdram_RD_DATA_0_bus[20];
assign f2h_sdram0_RDATA[21] = f2sdram_RD_DATA_0_bus[21];
assign f2h_sdram0_RDATA[22] = f2sdram_RD_DATA_0_bus[22];
assign f2h_sdram0_RDATA[23] = f2sdram_RD_DATA_0_bus[23];
assign f2h_sdram0_RDATA[24] = f2sdram_RD_DATA_0_bus[24];
assign f2h_sdram0_RDATA[25] = f2sdram_RD_DATA_0_bus[25];
assign f2h_sdram0_RDATA[26] = f2sdram_RD_DATA_0_bus[26];
assign f2h_sdram0_RDATA[27] = f2sdram_RD_DATA_0_bus[27];
assign f2h_sdram0_RDATA[28] = f2sdram_RD_DATA_0_bus[28];
assign f2h_sdram0_RDATA[29] = f2sdram_RD_DATA_0_bus[29];
assign f2h_sdram0_RDATA[30] = f2sdram_RD_DATA_0_bus[30];
assign f2h_sdram0_RDATA[31] = f2sdram_RD_DATA_0_bus[31];
assign f2h_sdram0_RDATA[32] = f2sdram_RD_DATA_0_bus[32];
assign f2h_sdram0_RDATA[33] = f2sdram_RD_DATA_0_bus[33];
assign f2h_sdram0_RDATA[34] = f2sdram_RD_DATA_0_bus[34];
assign f2h_sdram0_RDATA[35] = f2sdram_RD_DATA_0_bus[35];
assign f2h_sdram0_RDATA[36] = f2sdram_RD_DATA_0_bus[36];
assign f2h_sdram0_RDATA[37] = f2sdram_RD_DATA_0_bus[37];
assign f2h_sdram0_RDATA[38] = f2sdram_RD_DATA_0_bus[38];
assign f2h_sdram0_RDATA[39] = f2sdram_RD_DATA_0_bus[39];
assign f2h_sdram0_RDATA[40] = f2sdram_RD_DATA_0_bus[40];
assign f2h_sdram0_RDATA[41] = f2sdram_RD_DATA_0_bus[41];
assign f2h_sdram0_RDATA[42] = f2sdram_RD_DATA_0_bus[42];
assign f2h_sdram0_RDATA[43] = f2sdram_RD_DATA_0_bus[43];
assign f2h_sdram0_RDATA[44] = f2sdram_RD_DATA_0_bus[44];
assign f2h_sdram0_RDATA[45] = f2sdram_RD_DATA_0_bus[45];
assign f2h_sdram0_RDATA[46] = f2sdram_RD_DATA_0_bus[46];
assign f2h_sdram0_RDATA[47] = f2sdram_RD_DATA_0_bus[47];
assign f2h_sdram0_RDATA[48] = f2sdram_RD_DATA_0_bus[48];
assign f2h_sdram0_RDATA[49] = f2sdram_RD_DATA_0_bus[49];
assign f2h_sdram0_RDATA[50] = f2sdram_RD_DATA_0_bus[50];
assign f2h_sdram0_RDATA[51] = f2sdram_RD_DATA_0_bus[51];
assign f2h_sdram0_RDATA[52] = f2sdram_RD_DATA_0_bus[52];
assign f2h_sdram0_RDATA[53] = f2sdram_RD_DATA_0_bus[53];
assign f2h_sdram0_RDATA[54] = f2sdram_RD_DATA_0_bus[54];
assign f2h_sdram0_RDATA[55] = f2sdram_RD_DATA_0_bus[55];
assign f2h_sdram0_RDATA[56] = f2sdram_RD_DATA_0_bus[56];
assign f2h_sdram0_RDATA[57] = f2sdram_RD_DATA_0_bus[57];
assign f2h_sdram0_RDATA[58] = f2sdram_RD_DATA_0_bus[58];
assign f2h_sdram0_RDATA[59] = f2sdram_RD_DATA_0_bus[59];
assign f2h_sdram0_RDATA[60] = f2sdram_RD_DATA_0_bus[60];
assign f2h_sdram0_RDATA[61] = f2sdram_RD_DATA_0_bus[61];
assign f2h_sdram0_RDATA[62] = f2sdram_RD_DATA_0_bus[62];
assign f2h_sdram0_RDATA[63] = f2sdram_RD_DATA_0_bus[63];

assign f2h_sdram0_RDATA[64] = f2sdram_RD_DATA_1_bus[0];
assign f2h_sdram0_RDATA[65] = f2sdram_RD_DATA_1_bus[1];
assign f2h_sdram0_RDATA[66] = f2sdram_RD_DATA_1_bus[2];
assign f2h_sdram0_RDATA[67] = f2sdram_RD_DATA_1_bus[3];
assign f2h_sdram0_RDATA[68] = f2sdram_RD_DATA_1_bus[4];
assign f2h_sdram0_RDATA[69] = f2sdram_RD_DATA_1_bus[5];
assign f2h_sdram0_RDATA[70] = f2sdram_RD_DATA_1_bus[6];
assign f2h_sdram0_RDATA[71] = f2sdram_RD_DATA_1_bus[7];
assign f2h_sdram0_RDATA[72] = f2sdram_RD_DATA_1_bus[8];
assign f2h_sdram0_RDATA[73] = f2sdram_RD_DATA_1_bus[9];
assign f2h_sdram0_RDATA[74] = f2sdram_RD_DATA_1_bus[10];
assign f2h_sdram0_RDATA[75] = f2sdram_RD_DATA_1_bus[11];
assign f2h_sdram0_RDATA[76] = f2sdram_RD_DATA_1_bus[12];
assign f2h_sdram0_RDATA[77] = f2sdram_RD_DATA_1_bus[13];
assign f2h_sdram0_RDATA[78] = f2sdram_RD_DATA_1_bus[14];
assign f2h_sdram0_RDATA[79] = f2sdram_RD_DATA_1_bus[15];
assign f2h_sdram0_RDATA[80] = f2sdram_RD_DATA_1_bus[16];
assign f2h_sdram0_RDATA[81] = f2sdram_RD_DATA_1_bus[17];
assign f2h_sdram0_RDATA[82] = f2sdram_RD_DATA_1_bus[18];
assign f2h_sdram0_RDATA[83] = f2sdram_RD_DATA_1_bus[19];
assign f2h_sdram0_RDATA[84] = f2sdram_RD_DATA_1_bus[20];
assign f2h_sdram0_RDATA[85] = f2sdram_RD_DATA_1_bus[21];
assign f2h_sdram0_RDATA[86] = f2sdram_RD_DATA_1_bus[22];
assign f2h_sdram0_RDATA[87] = f2sdram_RD_DATA_1_bus[23];
assign f2h_sdram0_RDATA[88] = f2sdram_RD_DATA_1_bus[24];
assign f2h_sdram0_RDATA[89] = f2sdram_RD_DATA_1_bus[25];
assign f2h_sdram0_RDATA[90] = f2sdram_RD_DATA_1_bus[26];
assign f2h_sdram0_RDATA[91] = f2sdram_RD_DATA_1_bus[27];
assign f2h_sdram0_RDATA[92] = f2sdram_RD_DATA_1_bus[28];
assign f2h_sdram0_RDATA[93] = f2sdram_RD_DATA_1_bus[29];
assign f2h_sdram0_RDATA[94] = f2sdram_RD_DATA_1_bus[30];
assign f2h_sdram0_RDATA[95] = f2sdram_RD_DATA_1_bus[31];
assign f2h_sdram0_RDATA[96] = f2sdram_RD_DATA_1_bus[32];
assign f2h_sdram0_RDATA[97] = f2sdram_RD_DATA_1_bus[33];
assign f2h_sdram0_RDATA[98] = f2sdram_RD_DATA_1_bus[34];
assign f2h_sdram0_RDATA[99] = f2sdram_RD_DATA_1_bus[35];
assign f2h_sdram0_RDATA[100] = f2sdram_RD_DATA_1_bus[36];
assign f2h_sdram0_RDATA[101] = f2sdram_RD_DATA_1_bus[37];
assign f2h_sdram0_RDATA[102] = f2sdram_RD_DATA_1_bus[38];
assign f2h_sdram0_RDATA[103] = f2sdram_RD_DATA_1_bus[39];
assign f2h_sdram0_RDATA[104] = f2sdram_RD_DATA_1_bus[40];
assign f2h_sdram0_RDATA[105] = f2sdram_RD_DATA_1_bus[41];
assign f2h_sdram0_RDATA[106] = f2sdram_RD_DATA_1_bus[42];
assign f2h_sdram0_RDATA[107] = f2sdram_RD_DATA_1_bus[43];
assign f2h_sdram0_RDATA[108] = f2sdram_RD_DATA_1_bus[44];
assign f2h_sdram0_RDATA[109] = f2sdram_RD_DATA_1_bus[45];
assign f2h_sdram0_RDATA[110] = f2sdram_RD_DATA_1_bus[46];
assign f2h_sdram0_RDATA[111] = f2sdram_RD_DATA_1_bus[47];
assign f2h_sdram0_RDATA[112] = f2sdram_RD_DATA_1_bus[48];
assign f2h_sdram0_RDATA[113] = f2sdram_RD_DATA_1_bus[49];
assign f2h_sdram0_RDATA[114] = f2sdram_RD_DATA_1_bus[50];
assign f2h_sdram0_RDATA[115] = f2sdram_RD_DATA_1_bus[51];
assign f2h_sdram0_RDATA[116] = f2sdram_RD_DATA_1_bus[52];
assign f2h_sdram0_RDATA[117] = f2sdram_RD_DATA_1_bus[53];
assign f2h_sdram0_RDATA[118] = f2sdram_RD_DATA_1_bus[54];
assign f2h_sdram0_RDATA[119] = f2sdram_RD_DATA_1_bus[55];
assign f2h_sdram0_RDATA[120] = f2sdram_RD_DATA_1_bus[56];
assign f2h_sdram0_RDATA[121] = f2sdram_RD_DATA_1_bus[57];
assign f2h_sdram0_RDATA[122] = f2sdram_RD_DATA_1_bus[58];
assign f2h_sdram0_RDATA[123] = f2sdram_RD_DATA_1_bus[59];
assign f2h_sdram0_RDATA[124] = f2sdram_RD_DATA_1_bus[60];
assign f2h_sdram0_RDATA[125] = f2sdram_RD_DATA_1_bus[61];
assign f2h_sdram0_RDATA[126] = f2sdram_RD_DATA_1_bus[62];
assign f2h_sdram0_RDATA[127] = f2sdram_RD_DATA_1_bus[63];
assign f2h_sdram0_RRESP[0] = f2sdram_RD_DATA_1_bus[64];
assign f2h_sdram0_RRESP[1] = f2sdram_RD_DATA_1_bus[65];
assign f2h_sdram0_RLAST[0] = f2sdram_RD_DATA_1_bus[66];
assign f2h_sdram0_RID[0] = f2sdram_RD_DATA_1_bus[67];
assign f2h_sdram0_RID[1] = f2sdram_RD_DATA_1_bus[68];
assign f2h_sdram0_RID[2] = f2sdram_RD_DATA_1_bus[69];
assign f2h_sdram0_RID[3] = f2sdram_RD_DATA_1_bus[70];
assign f2h_sdram0_RID[4] = f2sdram_RD_DATA_1_bus[71];
assign f2h_sdram0_RID[5] = f2sdram_RD_DATA_1_bus[72];
assign f2h_sdram0_RID[6] = f2sdram_RD_DATA_1_bus[73];
assign f2h_sdram0_RID[7] = f2sdram_RD_DATA_1_bus[74];

assign f2h_sdram0_BRESP[0] = f2sdram_WRACK_DATA_1_bus[0];
assign f2h_sdram0_BRESP[1] = f2sdram_WRACK_DATA_1_bus[1];
assign f2h_sdram0_BID[0] = f2sdram_WRACK_DATA_1_bus[2];
assign f2h_sdram0_BID[1] = f2sdram_WRACK_DATA_1_bus[3];
assign f2h_sdram0_BID[2] = f2sdram_WRACK_DATA_1_bus[4];
assign f2h_sdram0_BID[3] = f2sdram_WRACK_DATA_1_bus[5];
assign f2h_sdram0_BID[4] = f2sdram_WRACK_DATA_1_bus[6];
assign f2h_sdram0_BID[5] = f2sdram_WRACK_DATA_1_bus[7];
assign f2h_sdram0_BID[6] = f2sdram_WRACK_DATA_1_bus[8];
assign f2h_sdram0_BID[7] = f2sdram_WRACK_DATA_1_bus[9];

cyclonev_hps_interface_clocks_resets clocks_resets(
	.f2h_cold_rst_req_n(vcc),
	.f2h_dbg_rst_req_n(vcc),
	.f2h_pending_rst_ack(vcc),
	.f2h_periph_ref_clk(gnd),
	.f2h_sdram_ref_clk(gnd),
	.f2h_warm_rst_req_n(vcc),
	.ptp_ref_clk(gnd),
	.h2f_cold_rst_n(\clocks_resets~h2f_cold_rst_n ),
	.h2f_pending_rst_req_n(),
	.h2f_rst_n(h2f_rst_n[0]),
	.h2f_user0_clk(),
	.h2f_user1_clk(),
	.h2f_user2_clk());
defparam clocks_resets.h2f_user0_clk_freq = 100;
defparam clocks_resets.h2f_user1_clk_freq = 100;
defparam clocks_resets.h2f_user2_clk_freq = 100;

cyclonev_hps_interface_fpga2sdram f2sdram(
	.cmd_port_clk_0(f2h_sdram0_clk[0]),
	.cmd_port_clk_1(f2h_sdram0_clk[0]),
	.cmd_port_clk_2(gnd),
	.cmd_port_clk_3(gnd),
	.cmd_port_clk_4(gnd),
	.cmd_port_clk_5(gnd),
	.cmd_valid_0(f2h_sdram0_ARVALID[0]),
	.cmd_valid_1(f2h_sdram0_AWVALID[0]),
	.cmd_valid_2(gnd),
	.cmd_valid_3(gnd),
	.cmd_valid_4(gnd),
	.cmd_valid_5(gnd),
	.rd_clk_0(f2h_sdram0_clk[0]),
	.rd_clk_1(f2h_sdram0_clk[0]),
	.rd_clk_2(gnd),
	.rd_clk_3(gnd),
	.rd_ready_0(f2h_sdram0_RREADY[0]),
	.rd_ready_1(f2h_sdram0_RREADY[0]),
	.rd_ready_2(gnd),
	.rd_ready_3(gnd),
	.wr_clk_0(f2h_sdram0_clk[0]),
	.wr_clk_1(f2h_sdram0_clk[0]),
	.wr_clk_2(gnd),
	.wr_clk_3(gnd),
	.wr_valid_0(f2h_sdram0_WVALID[0]),
	.wr_valid_1(f2h_sdram0_WVALID[0]),
	.wr_valid_2(gnd),
	.wr_valid_3(gnd),
	.wrack_ready_0(gnd),
	.wrack_ready_1(f2h_sdram0_BREADY[0]),
	.wrack_ready_2(gnd),
	.wrack_ready_3(gnd),
	.wrack_ready_4(gnd),
	.wrack_ready_5(gnd),
	.cfg_axi_mm_select({gnd,gnd,gnd,gnd,vcc,vcc}),
	.cfg_cport_rfifo_map({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.cfg_cport_type({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,vcc,vcc,gnd}),
	.cfg_cport_wfifo_map({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.cfg_port_width({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,vcc,gnd,vcc,gnd}),
	.cfg_rfifo_cport_map({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.cfg_wfifo_cport_map({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,vcc,gnd,gnd,gnd,vcc}),
	.cmd_data_0({f2h_sdram0_ARPROT[1],f2h_sdram0_ARPROT[0],f2h_sdram0_ARLOCK[1],f2h_sdram0_ARLOCK[0],f2h_sdram0_ARBURST[1],f2h_sdram0_ARBURST[0],f2h_sdram0_ARSIZE[2],f2h_sdram0_ARSIZE[1],f2h_sdram0_ARSIZE[0],f2h_sdram0_ARID[7],f2h_sdram0_ARID[6],f2h_sdram0_ARID[5],f2h_sdram0_ARID[4],f2h_sdram0_ARID[3],f2h_sdram0_ARID[2],
f2h_sdram0_ARID[1],f2h_sdram0_ARID[0],gnd,gnd,gnd,gnd,f2h_sdram0_ARLEN[3],f2h_sdram0_ARLEN[2],f2h_sdram0_ARLEN[1],f2h_sdram0_ARLEN[0],f2h_sdram0_ARADDR[31],f2h_sdram0_ARADDR[30],f2h_sdram0_ARADDR[29],f2h_sdram0_ARADDR[28],f2h_sdram0_ARADDR[27],f2h_sdram0_ARADDR[26],f2h_sdram0_ARADDR[25],f2h_sdram0_ARADDR[24],
f2h_sdram0_ARADDR[23],f2h_sdram0_ARADDR[22],f2h_sdram0_ARADDR[21],f2h_sdram0_ARADDR[20],f2h_sdram0_ARADDR[19],f2h_sdram0_ARADDR[18],f2h_sdram0_ARADDR[17],f2h_sdram0_ARADDR[16],f2h_sdram0_ARADDR[15],f2h_sdram0_ARADDR[14],f2h_sdram0_ARADDR[13],f2h_sdram0_ARADDR[12],f2h_sdram0_ARADDR[11],f2h_sdram0_ARADDR[10],f2h_sdram0_ARADDR[9],
f2h_sdram0_ARADDR[8],f2h_sdram0_ARADDR[7],f2h_sdram0_ARADDR[6],f2h_sdram0_ARADDR[5],f2h_sdram0_ARADDR[4],f2h_sdram0_ARADDR[3],f2h_sdram0_ARADDR[2],f2h_sdram0_ARADDR[1],f2h_sdram0_ARADDR[0],gnd,gnd,vcc}),
	.cmd_data_1({f2h_sdram0_AWPROT[1],f2h_sdram0_AWPROT[0],f2h_sdram0_AWLOCK[1],f2h_sdram0_AWLOCK[0],f2h_sdram0_AWBURST[1],f2h_sdram0_AWBURST[0],f2h_sdram0_AWSIZE[2],f2h_sdram0_AWSIZE[1],f2h_sdram0_AWSIZE[0],f2h_sdram0_AWID[7],f2h_sdram0_AWID[6],f2h_sdram0_AWID[5],f2h_sdram0_AWID[4],f2h_sdram0_AWID[3],f2h_sdram0_AWID[2],
f2h_sdram0_AWID[1],f2h_sdram0_AWID[0],gnd,gnd,gnd,gnd,f2h_sdram0_AWLEN[3],f2h_sdram0_AWLEN[2],f2h_sdram0_AWLEN[1],f2h_sdram0_AWLEN[0],f2h_sdram0_AWADDR[31],f2h_sdram0_AWADDR[30],f2h_sdram0_AWADDR[29],f2h_sdram0_AWADDR[28],f2h_sdram0_AWADDR[27],f2h_sdram0_AWADDR[26],f2h_sdram0_AWADDR[25],f2h_sdram0_AWADDR[24],
f2h_sdram0_AWADDR[23],f2h_sdram0_AWADDR[22],f2h_sdram0_AWADDR[21],f2h_sdram0_AWADDR[20],f2h_sdram0_AWADDR[19],f2h_sdram0_AWADDR[18],f2h_sdram0_AWADDR[17],f2h_sdram0_AWADDR[16],f2h_sdram0_AWADDR[15],f2h_sdram0_AWADDR[14],f2h_sdram0_AWADDR[13],f2h_sdram0_AWADDR[12],f2h_sdram0_AWADDR[11],f2h_sdram0_AWADDR[10],f2h_sdram0_AWADDR[9],
f2h_sdram0_AWADDR[8],f2h_sdram0_AWADDR[7],f2h_sdram0_AWADDR[6],f2h_sdram0_AWADDR[5],f2h_sdram0_AWADDR[4],f2h_sdram0_AWADDR[3],f2h_sdram0_AWADDR[2],f2h_sdram0_AWADDR[1],f2h_sdram0_AWADDR[0],gnd,vcc,gnd}),
	.cmd_data_2(60'b000000000000000000000000000000000000000000000000000000000000),
	.cmd_data_3(60'b000000000000000000000000000000000000000000000000000000000000),
	.cmd_data_4(60'b000000000000000000000000000000000000000000000000000000000000),
	.cmd_data_5(60'b000000000000000000000000000000000000000000000000000000000000),
	.wr_data_0({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,f2h_sdram0_WLAST[0],f2h_sdram0_WSTRB[7],f2h_sdram0_WSTRB[6],f2h_sdram0_WSTRB[5],f2h_sdram0_WSTRB[4],f2h_sdram0_WSTRB[3],f2h_sdram0_WSTRB[2],f2h_sdram0_WSTRB[1],f2h_sdram0_WSTRB[0],f2h_sdram0_WDATA[63],f2h_sdram0_WDATA[62],f2h_sdram0_WDATA[61],
f2h_sdram0_WDATA[60],f2h_sdram0_WDATA[59],f2h_sdram0_WDATA[58],f2h_sdram0_WDATA[57],f2h_sdram0_WDATA[56],f2h_sdram0_WDATA[55],f2h_sdram0_WDATA[54],f2h_sdram0_WDATA[53],f2h_sdram0_WDATA[52],f2h_sdram0_WDATA[51],f2h_sdram0_WDATA[50],f2h_sdram0_WDATA[49],f2h_sdram0_WDATA[48],f2h_sdram0_WDATA[47],f2h_sdram0_WDATA[46],f2h_sdram0_WDATA[45],
f2h_sdram0_WDATA[44],f2h_sdram0_WDATA[43],f2h_sdram0_WDATA[42],f2h_sdram0_WDATA[41],f2h_sdram0_WDATA[40],f2h_sdram0_WDATA[39],f2h_sdram0_WDATA[38],f2h_sdram0_WDATA[37],f2h_sdram0_WDATA[36],f2h_sdram0_WDATA[35],f2h_sdram0_WDATA[34],f2h_sdram0_WDATA[33],f2h_sdram0_WDATA[32],f2h_sdram0_WDATA[31],f2h_sdram0_WDATA[30],f2h_sdram0_WDATA[29],
f2h_sdram0_WDATA[28],f2h_sdram0_WDATA[27],f2h_sdram0_WDATA[26],f2h_sdram0_WDATA[25],f2h_sdram0_WDATA[24],f2h_sdram0_WDATA[23],f2h_sdram0_WDATA[22],f2h_sdram0_WDATA[21],f2h_sdram0_WDATA[20],f2h_sdram0_WDATA[19],f2h_sdram0_WDATA[18],f2h_sdram0_WDATA[17],f2h_sdram0_WDATA[16],f2h_sdram0_WDATA[15],f2h_sdram0_WDATA[14],f2h_sdram0_WDATA[13],
f2h_sdram0_WDATA[12],f2h_sdram0_WDATA[11],f2h_sdram0_WDATA[10],f2h_sdram0_WDATA[9],f2h_sdram0_WDATA[8],f2h_sdram0_WDATA[7],f2h_sdram0_WDATA[6],f2h_sdram0_WDATA[5],f2h_sdram0_WDATA[4],f2h_sdram0_WDATA[3],f2h_sdram0_WDATA[2],f2h_sdram0_WDATA[1],f2h_sdram0_WDATA[0]}),
	.wr_data_1({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,f2h_sdram0_WLAST[0],f2h_sdram0_WSTRB[15],f2h_sdram0_WSTRB[14],f2h_sdram0_WSTRB[13],f2h_sdram0_WSTRB[12],f2h_sdram0_WSTRB[11],f2h_sdram0_WSTRB[10],f2h_sdram0_WSTRB[9],f2h_sdram0_WSTRB[8],f2h_sdram0_WDATA[127],f2h_sdram0_WDATA[126],f2h_sdram0_WDATA[125],
f2h_sdram0_WDATA[124],f2h_sdram0_WDATA[123],f2h_sdram0_WDATA[122],f2h_sdram0_WDATA[121],f2h_sdram0_WDATA[120],f2h_sdram0_WDATA[119],f2h_sdram0_WDATA[118],f2h_sdram0_WDATA[117],f2h_sdram0_WDATA[116],f2h_sdram0_WDATA[115],f2h_sdram0_WDATA[114],f2h_sdram0_WDATA[113],f2h_sdram0_WDATA[112],f2h_sdram0_WDATA[111],f2h_sdram0_WDATA[110],f2h_sdram0_WDATA[109],
f2h_sdram0_WDATA[108],f2h_sdram0_WDATA[107],f2h_sdram0_WDATA[106],f2h_sdram0_WDATA[105],f2h_sdram0_WDATA[104],f2h_sdram0_WDATA[103],f2h_sdram0_WDATA[102],f2h_sdram0_WDATA[101],f2h_sdram0_WDATA[100],f2h_sdram0_WDATA[99],f2h_sdram0_WDATA[98],f2h_sdram0_WDATA[97],f2h_sdram0_WDATA[96],f2h_sdram0_WDATA[95],f2h_sdram0_WDATA[94],f2h_sdram0_WDATA[93],
f2h_sdram0_WDATA[92],f2h_sdram0_WDATA[91],f2h_sdram0_WDATA[90],f2h_sdram0_WDATA[89],f2h_sdram0_WDATA[88],f2h_sdram0_WDATA[87],f2h_sdram0_WDATA[86],f2h_sdram0_WDATA[85],f2h_sdram0_WDATA[84],f2h_sdram0_WDATA[83],f2h_sdram0_WDATA[82],f2h_sdram0_WDATA[81],f2h_sdram0_WDATA[80],f2h_sdram0_WDATA[79],f2h_sdram0_WDATA[78],f2h_sdram0_WDATA[77],
f2h_sdram0_WDATA[76],f2h_sdram0_WDATA[75],f2h_sdram0_WDATA[74],f2h_sdram0_WDATA[73],f2h_sdram0_WDATA[72],f2h_sdram0_WDATA[71],f2h_sdram0_WDATA[70],f2h_sdram0_WDATA[69],f2h_sdram0_WDATA[68],f2h_sdram0_WDATA[67],f2h_sdram0_WDATA[66],f2h_sdram0_WDATA[65],f2h_sdram0_WDATA[64]}),
	.wr_data_2(90'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
	.wr_data_3(90'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
	.cmd_ready_0(f2h_sdram0_ARREADY[0]),
	.cmd_ready_1(f2h_sdram0_AWREADY[0]),
	.cmd_ready_2(),
	.cmd_ready_3(),
	.cmd_ready_4(),
	.cmd_ready_5(),
	.rd_valid_0(f2h_sdram0_RVALID[0]),
	.rd_valid_1(),
	.rd_valid_2(),
	.rd_valid_3(),
	.wr_ready_0(f2h_sdram0_WREADY[0]),
	.wr_ready_1(),
	.wr_ready_2(),
	.wr_ready_3(),
	.wrack_valid_0(),
	.wrack_valid_1(f2h_sdram0_BVALID[0]),
	.wrack_valid_2(),
	.wrack_valid_3(),
	.wrack_valid_4(),
	.wrack_valid_5(),
	.bonding_out_1(f2sdram_BONDING_OUT_1_bus),
	.bonding_out_2(),
	.rd_data_0(f2sdram_RD_DATA_0_bus),
	.rd_data_1(f2sdram_RD_DATA_1_bus),
	.rd_data_2(),
	.rd_data_3(),
	.wrack_data_0(),
	.wrack_data_1(f2sdram_WRACK_DATA_1_bus),
	.wrack_data_2(),
	.wrack_data_3(),
	.wrack_data_4(),
	.wrack_data_5());

cyclonev_hps_interface_dbg_apb debug_apb(
	.p_slv_err(gnd),
	.p_ready(gnd),
	.p_clk(gnd),
	.p_clk_en(gnd),
	.dbg_apb_disable(gnd),
	.p_rdata(32'b00000000000000000000000000000000),
	.p_addr_31(\debug_apb~O_P_ADDR_31 ),
	.p_write(),
	.p_sel(),
	.p_enable(),
	.p_reset_n(),
	.p_addr(),
	.p_wdata());
defparam debug_apb.dummy_param = 256;

cyclonev_hps_interface_tpiu_trace tpiu(
	.traceclk_ctl(vcc),
	.traceclkin(gnd),
	.traceclk(),
	.trace_data(tpiu_TRACE_DATA_bus));

cyclonev_hps_interface_boot_from_fpga boot_from_fpga(
	.boot_from_fpga_on_failure(gnd),
	.boot_from_fpga_ready(gnd),
	.bsel_en(gnd),
	.csel_en(gnd),
	.bsel({gnd,gnd,vcc}),
	.csel({gnd,vcc}),
	.fake_dout(\boot_from_fpga~fake_dout ));

cyclonev_hps_interface_fpga2hps fpga2hps(
	.arvalid(gnd),
	.awvalid(gnd),
	.bready(gnd),
	.clk(gnd),
	.rready(gnd),
	.wlast(gnd),
	.wvalid(gnd),
	.araddr(32'b00000000000000000000000000000000),
	.arburst(2'b00),
	.arcache(4'b0000),
	.arid(8'b00000000),
	.arlen(4'b0000),
	.arlock(2'b00),
	.arprot(3'b000),
	.arsize(3'b000),
	.aruser(5'b00000),
	.awaddr(32'b00000000000000000000000000000000),
	.awburst(2'b00),
	.awcache(4'b0000),
	.awid(8'b00000000),
	.awlen(4'b0000),
	.awlock(2'b00),
	.awprot(3'b000),
	.awsize(3'b000),
	.awuser(5'b00000),
	.port_size_config({vcc,vcc}),
	.wdata(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
	.wid(8'b00000000),
	.wstrb(16'b0000000000000000),
	.arready(\fpga2hps~arready ),
	.awready(),
	.bvalid(),
	.rlast(),
	.rvalid(),
	.wready(),
	.bid(),
	.bresp(),
	.rdata(),
	.rid(),
	.rresp());
defparam fpga2hps.data_width = 32;

cyclonev_hps_interface_hps2fpga hps2fpga(
	.arready(gnd),
	.awready(gnd),
	.bvalid(gnd),
	.clk(gnd),
	.rlast(gnd),
	.rvalid(gnd),
	.wready(gnd),
	.bid(12'b000000000000),
	.bresp(2'b00),
	.port_size_config({vcc,vcc}),
	.rdata(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
	.rid(12'b000000000000),
	.rresp(2'b00),
	.arvalid(),
	.awvalid(),
	.bready(),
	.rready(),
	.wlast(),
	.wvalid(),
	.araddr(hps2fpga_ARADDR_bus),
	.arburst(),
	.arcache(),
	.arid(),
	.arlen(),
	.arlock(),
	.arprot(),
	.arsize(),
	.awaddr(),
	.awburst(),
	.awcache(),
	.awid(),
	.awlen(),
	.awlock(),
	.awprot(),
	.awsize(),
	.wdata(),
	.wid(),
	.wstrb());
defparam hps2fpga.data_width = 32;

endmodule

module HPS_HPS_hps_0_hps_io (
	parallelterminationcontrol_0,
	parallelterminationcontrol_1,
	parallelterminationcontrol_2,
	parallelterminationcontrol_3,
	parallelterminationcontrol_4,
	parallelterminationcontrol_5,
	parallelterminationcontrol_6,
	parallelterminationcontrol_7,
	parallelterminationcontrol_8,
	parallelterminationcontrol_9,
	parallelterminationcontrol_10,
	parallelterminationcontrol_11,
	parallelterminationcontrol_12,
	parallelterminationcontrol_13,
	parallelterminationcontrol_14,
	parallelterminationcontrol_15,
	seriesterminationcontrol_0,
	seriesterminationcontrol_1,
	seriesterminationcontrol_2,
	seriesterminationcontrol_3,
	seriesterminationcontrol_4,
	seriesterminationcontrol_5,
	seriesterminationcontrol_6,
	seriesterminationcontrol_7,
	seriesterminationcontrol_8,
	seriesterminationcontrol_9,
	seriesterminationcontrol_10,
	seriesterminationcontrol_11,
	seriesterminationcontrol_12,
	seriesterminationcontrol_13,
	seriesterminationcontrol_14,
	seriesterminationcontrol_15,
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	memory_oct_rzqin)/* synthesis synthesis_greybox=0 */;
output 	parallelterminationcontrol_0;
output 	parallelterminationcontrol_1;
output 	parallelterminationcontrol_2;
output 	parallelterminationcontrol_3;
output 	parallelterminationcontrol_4;
output 	parallelterminationcontrol_5;
output 	parallelterminationcontrol_6;
output 	parallelterminationcontrol_7;
output 	parallelterminationcontrol_8;
output 	parallelterminationcontrol_9;
output 	parallelterminationcontrol_10;
output 	parallelterminationcontrol_11;
output 	parallelterminationcontrol_12;
output 	parallelterminationcontrol_13;
output 	parallelterminationcontrol_14;
output 	parallelterminationcontrol_15;
output 	seriesterminationcontrol_0;
output 	seriesterminationcontrol_1;
output 	seriesterminationcontrol_2;
output 	seriesterminationcontrol_3;
output 	seriesterminationcontrol_4;
output 	seriesterminationcontrol_5;
output 	seriesterminationcontrol_6;
output 	seriesterminationcontrol_7;
output 	seriesterminationcontrol_8;
output 	seriesterminationcontrol_9;
output 	seriesterminationcontrol_10;
output 	seriesterminationcontrol_11;
output 	seriesterminationcontrol_12;
output 	seriesterminationcontrol_13;
output 	seriesterminationcontrol_14;
output 	seriesterminationcontrol_15;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
input 	memory_oct_rzqin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



HPS_HPS_hps_0_hps_io_border border(
	.parallelterminationcontrol_0(parallelterminationcontrol_0),
	.parallelterminationcontrol_1(parallelterminationcontrol_1),
	.parallelterminationcontrol_2(parallelterminationcontrol_2),
	.parallelterminationcontrol_3(parallelterminationcontrol_3),
	.parallelterminationcontrol_4(parallelterminationcontrol_4),
	.parallelterminationcontrol_5(parallelterminationcontrol_5),
	.parallelterminationcontrol_6(parallelterminationcontrol_6),
	.parallelterminationcontrol_7(parallelterminationcontrol_7),
	.parallelterminationcontrol_8(parallelterminationcontrol_8),
	.parallelterminationcontrol_9(parallelterminationcontrol_9),
	.parallelterminationcontrol_10(parallelterminationcontrol_10),
	.parallelterminationcontrol_11(parallelterminationcontrol_11),
	.parallelterminationcontrol_12(parallelterminationcontrol_12),
	.parallelterminationcontrol_13(parallelterminationcontrol_13),
	.parallelterminationcontrol_14(parallelterminationcontrol_14),
	.parallelterminationcontrol_15(parallelterminationcontrol_15),
	.seriesterminationcontrol_0(seriesterminationcontrol_0),
	.seriesterminationcontrol_1(seriesterminationcontrol_1),
	.seriesterminationcontrol_2(seriesterminationcontrol_2),
	.seriesterminationcontrol_3(seriesterminationcontrol_3),
	.seriesterminationcontrol_4(seriesterminationcontrol_4),
	.seriesterminationcontrol_5(seriesterminationcontrol_5),
	.seriesterminationcontrol_6(seriesterminationcontrol_6),
	.seriesterminationcontrol_7(seriesterminationcontrol_7),
	.seriesterminationcontrol_8(seriesterminationcontrol_8),
	.seriesterminationcontrol_9(seriesterminationcontrol_9),
	.seriesterminationcontrol_10(seriesterminationcontrol_10),
	.seriesterminationcontrol_11(seriesterminationcontrol_11),
	.seriesterminationcontrol_12(seriesterminationcontrol_12),
	.seriesterminationcontrol_13(seriesterminationcontrol_13),
	.seriesterminationcontrol_14(seriesterminationcontrol_14),
	.seriesterminationcontrol_15(seriesterminationcontrol_15),
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.memory_oct_rzqin(memory_oct_rzqin));

endmodule

module HPS_HPS_hps_0_hps_io_border (
	parallelterminationcontrol_0,
	parallelterminationcontrol_1,
	parallelterminationcontrol_2,
	parallelterminationcontrol_3,
	parallelterminationcontrol_4,
	parallelterminationcontrol_5,
	parallelterminationcontrol_6,
	parallelterminationcontrol_7,
	parallelterminationcontrol_8,
	parallelterminationcontrol_9,
	parallelterminationcontrol_10,
	parallelterminationcontrol_11,
	parallelterminationcontrol_12,
	parallelterminationcontrol_13,
	parallelterminationcontrol_14,
	parallelterminationcontrol_15,
	seriesterminationcontrol_0,
	seriesterminationcontrol_1,
	seriesterminationcontrol_2,
	seriesterminationcontrol_3,
	seriesterminationcontrol_4,
	seriesterminationcontrol_5,
	seriesterminationcontrol_6,
	seriesterminationcontrol_7,
	seriesterminationcontrol_8,
	seriesterminationcontrol_9,
	seriesterminationcontrol_10,
	seriesterminationcontrol_11,
	seriesterminationcontrol_12,
	seriesterminationcontrol_13,
	seriesterminationcontrol_14,
	seriesterminationcontrol_15,
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	memory_oct_rzqin)/* synthesis synthesis_greybox=0 */;
output 	parallelterminationcontrol_0;
output 	parallelterminationcontrol_1;
output 	parallelterminationcontrol_2;
output 	parallelterminationcontrol_3;
output 	parallelterminationcontrol_4;
output 	parallelterminationcontrol_5;
output 	parallelterminationcontrol_6;
output 	parallelterminationcontrol_7;
output 	parallelterminationcontrol_8;
output 	parallelterminationcontrol_9;
output 	parallelterminationcontrol_10;
output 	parallelterminationcontrol_11;
output 	parallelterminationcontrol_12;
output 	parallelterminationcontrol_13;
output 	parallelterminationcontrol_14;
output 	parallelterminationcontrol_15;
output 	seriesterminationcontrol_0;
output 	seriesterminationcontrol_1;
output 	seriesterminationcontrol_2;
output 	seriesterminationcontrol_3;
output 	seriesterminationcontrol_4;
output 	seriesterminationcontrol_5;
output 	seriesterminationcontrol_6;
output 	seriesterminationcontrol_7;
output 	seriesterminationcontrol_8;
output 	seriesterminationcontrol_9;
output 	seriesterminationcontrol_10;
output 	seriesterminationcontrol_11;
output 	seriesterminationcontrol_12;
output 	seriesterminationcontrol_13;
output 	seriesterminationcontrol_14;
output 	seriesterminationcontrol_15;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
input 	memory_oct_rzqin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \~GND~combout ;


HPS_hps_sdram hps_sdram_inst(
	.parallelterminationcontrol_0(parallelterminationcontrol_0),
	.parallelterminationcontrol_1(parallelterminationcontrol_1),
	.parallelterminationcontrol_2(parallelterminationcontrol_2),
	.parallelterminationcontrol_3(parallelterminationcontrol_3),
	.parallelterminationcontrol_4(parallelterminationcontrol_4),
	.parallelterminationcontrol_5(parallelterminationcontrol_5),
	.parallelterminationcontrol_6(parallelterminationcontrol_6),
	.parallelterminationcontrol_7(parallelterminationcontrol_7),
	.parallelterminationcontrol_8(parallelterminationcontrol_8),
	.parallelterminationcontrol_9(parallelterminationcontrol_9),
	.parallelterminationcontrol_10(parallelterminationcontrol_10),
	.parallelterminationcontrol_11(parallelterminationcontrol_11),
	.parallelterminationcontrol_12(parallelterminationcontrol_12),
	.parallelterminationcontrol_13(parallelterminationcontrol_13),
	.parallelterminationcontrol_14(parallelterminationcontrol_14),
	.parallelterminationcontrol_15(parallelterminationcontrol_15),
	.seriesterminationcontrol_0(seriesterminationcontrol_0),
	.seriesterminationcontrol_1(seriesterminationcontrol_1),
	.seriesterminationcontrol_2(seriesterminationcontrol_2),
	.seriesterminationcontrol_3(seriesterminationcontrol_3),
	.seriesterminationcontrol_4(seriesterminationcontrol_4),
	.seriesterminationcontrol_5(seriesterminationcontrol_5),
	.seriesterminationcontrol_6(seriesterminationcontrol_6),
	.seriesterminationcontrol_7(seriesterminationcontrol_7),
	.seriesterminationcontrol_8(seriesterminationcontrol_8),
	.seriesterminationcontrol_9(seriesterminationcontrol_9),
	.seriesterminationcontrol_10(seriesterminationcontrol_10),
	.seriesterminationcontrol_11(seriesterminationcontrol_11),
	.seriesterminationcontrol_12(seriesterminationcontrol_12),
	.seriesterminationcontrol_13(seriesterminationcontrol_13),
	.seriesterminationcontrol_14(seriesterminationcontrol_14),
	.seriesterminationcontrol_15(seriesterminationcontrol_15),
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.GND_port(\~GND~combout ),
	.memory_oct_rzqin(memory_oct_rzqin));

cyclonev_lcell_comb \~GND (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\~GND~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \~GND .extended_lut = "off";
defparam \~GND .lut_mask = 64'h0000000000000000;
defparam \~GND .shared_arith = "off";

endmodule

module HPS_hps_sdram (
	parallelterminationcontrol_0,
	parallelterminationcontrol_1,
	parallelterminationcontrol_2,
	parallelterminationcontrol_3,
	parallelterminationcontrol_4,
	parallelterminationcontrol_5,
	parallelterminationcontrol_6,
	parallelterminationcontrol_7,
	parallelterminationcontrol_8,
	parallelterminationcontrol_9,
	parallelterminationcontrol_10,
	parallelterminationcontrol_11,
	parallelterminationcontrol_12,
	parallelterminationcontrol_13,
	parallelterminationcontrol_14,
	parallelterminationcontrol_15,
	seriesterminationcontrol_0,
	seriesterminationcontrol_1,
	seriesterminationcontrol_2,
	seriesterminationcontrol_3,
	seriesterminationcontrol_4,
	seriesterminationcontrol_5,
	seriesterminationcontrol_6,
	seriesterminationcontrol_7,
	seriesterminationcontrol_8,
	seriesterminationcontrol_9,
	seriesterminationcontrol_10,
	seriesterminationcontrol_11,
	seriesterminationcontrol_12,
	seriesterminationcontrol_13,
	seriesterminationcontrol_14,
	seriesterminationcontrol_15,
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	GND_port,
	memory_oct_rzqin)/* synthesis synthesis_greybox=0 */;
output 	parallelterminationcontrol_0;
output 	parallelterminationcontrol_1;
output 	parallelterminationcontrol_2;
output 	parallelterminationcontrol_3;
output 	parallelterminationcontrol_4;
output 	parallelterminationcontrol_5;
output 	parallelterminationcontrol_6;
output 	parallelterminationcontrol_7;
output 	parallelterminationcontrol_8;
output 	parallelterminationcontrol_9;
output 	parallelterminationcontrol_10;
output 	parallelterminationcontrol_11;
output 	parallelterminationcontrol_12;
output 	parallelterminationcontrol_13;
output 	parallelterminationcontrol_14;
output 	parallelterminationcontrol_15;
output 	seriesterminationcontrol_0;
output 	seriesterminationcontrol_1;
output 	seriesterminationcontrol_2;
output 	seriesterminationcontrol_3;
output 	seriesterminationcontrol_4;
output 	seriesterminationcontrol_5;
output 	seriesterminationcontrol_6;
output 	seriesterminationcontrol_7;
output 	seriesterminationcontrol_8;
output 	seriesterminationcontrol_9;
output 	seriesterminationcontrol_10;
output 	seriesterminationcontrol_11;
output 	seriesterminationcontrol_12;
output 	seriesterminationcontrol_13;
output 	seriesterminationcontrol_14;
output 	seriesterminationcontrol_15;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
input 	GND_port;
input 	memory_oct_rzqin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pll|afi_clk ;
wire \pll|pll_write_clk ;
wire \p0|umemphy|afi_cal_fail ;
wire \p0|umemphy|afi_cal_success ;
wire \p0|umemphy|afi_rdata_valid[0] ;
wire \p0|umemphy|ctl_reset_n ;
wire \p0|umemphy|afi_rdata[0] ;
wire \p0|umemphy|afi_rdata[1] ;
wire \p0|umemphy|afi_rdata[2] ;
wire \p0|umemphy|afi_rdata[3] ;
wire \p0|umemphy|afi_rdata[4] ;
wire \p0|umemphy|afi_rdata[5] ;
wire \p0|umemphy|afi_rdata[6] ;
wire \p0|umemphy|afi_rdata[7] ;
wire \p0|umemphy|afi_rdata[8] ;
wire \p0|umemphy|afi_rdata[9] ;
wire \p0|umemphy|afi_rdata[10] ;
wire \p0|umemphy|afi_rdata[11] ;
wire \p0|umemphy|afi_rdata[12] ;
wire \p0|umemphy|afi_rdata[13] ;
wire \p0|umemphy|afi_rdata[14] ;
wire \p0|umemphy|afi_rdata[15] ;
wire \p0|umemphy|afi_rdata[16] ;
wire \p0|umemphy|afi_rdata[17] ;
wire \p0|umemphy|afi_rdata[18] ;
wire \p0|umemphy|afi_rdata[19] ;
wire \p0|umemphy|afi_rdata[20] ;
wire \p0|umemphy|afi_rdata[21] ;
wire \p0|umemphy|afi_rdata[22] ;
wire \p0|umemphy|afi_rdata[23] ;
wire \p0|umemphy|afi_rdata[24] ;
wire \p0|umemphy|afi_rdata[25] ;
wire \p0|umemphy|afi_rdata[26] ;
wire \p0|umemphy|afi_rdata[27] ;
wire \p0|umemphy|afi_rdata[28] ;
wire \p0|umemphy|afi_rdata[29] ;
wire \p0|umemphy|afi_rdata[30] ;
wire \p0|umemphy|afi_rdata[31] ;
wire \p0|umemphy|afi_rdata[32] ;
wire \p0|umemphy|afi_rdata[33] ;
wire \p0|umemphy|afi_rdata[34] ;
wire \p0|umemphy|afi_rdata[35] ;
wire \p0|umemphy|afi_rdata[36] ;
wire \p0|umemphy|afi_rdata[37] ;
wire \p0|umemphy|afi_rdata[38] ;
wire \p0|umemphy|afi_rdata[39] ;
wire \p0|umemphy|afi_rdata[40] ;
wire \p0|umemphy|afi_rdata[41] ;
wire \p0|umemphy|afi_rdata[42] ;
wire \p0|umemphy|afi_rdata[43] ;
wire \p0|umemphy|afi_rdata[44] ;
wire \p0|umemphy|afi_rdata[45] ;
wire \p0|umemphy|afi_rdata[46] ;
wire \p0|umemphy|afi_rdata[47] ;
wire \p0|umemphy|afi_rdata[48] ;
wire \p0|umemphy|afi_rdata[49] ;
wire \p0|umemphy|afi_rdata[50] ;
wire \p0|umemphy|afi_rdata[51] ;
wire \p0|umemphy|afi_rdata[52] ;
wire \p0|umemphy|afi_rdata[53] ;
wire \p0|umemphy|afi_rdata[54] ;
wire \p0|umemphy|afi_rdata[55] ;
wire \p0|umemphy|afi_rdata[56] ;
wire \p0|umemphy|afi_rdata[57] ;
wire \p0|umemphy|afi_rdata[58] ;
wire \p0|umemphy|afi_rdata[59] ;
wire \p0|umemphy|afi_rdata[60] ;
wire \p0|umemphy|afi_rdata[61] ;
wire \p0|umemphy|afi_rdata[62] ;
wire \p0|umemphy|afi_rdata[63] ;
wire \p0|umemphy|afi_rdata[64] ;
wire \p0|umemphy|afi_rdata[65] ;
wire \p0|umemphy|afi_rdata[66] ;
wire \p0|umemphy|afi_rdata[67] ;
wire \p0|umemphy|afi_rdata[68] ;
wire \p0|umemphy|afi_rdata[69] ;
wire \p0|umemphy|afi_rdata[70] ;
wire \p0|umemphy|afi_rdata[71] ;
wire \p0|umemphy|afi_rdata[72] ;
wire \p0|umemphy|afi_rdata[73] ;
wire \p0|umemphy|afi_rdata[74] ;
wire \p0|umemphy|afi_rdata[75] ;
wire \p0|umemphy|afi_rdata[76] ;
wire \p0|umemphy|afi_rdata[77] ;
wire \p0|umemphy|afi_rdata[78] ;
wire \p0|umemphy|afi_rdata[79] ;
wire \p0|umemphy|afi_wlat[0] ;
wire \p0|umemphy|afi_wlat[1] ;
wire \p0|umemphy|afi_wlat[2] ;
wire \p0|umemphy|afi_wlat[3] ;
wire \c0|afi_cas_n[0] ;
wire \c0|afi_ras_n[0] ;
wire \c0|afi_rst_n[0] ;
wire \c0|afi_we_n[0] ;
wire \c0|afi_addr[0] ;
wire \c0|afi_addr[1] ;
wire \c0|afi_addr[2] ;
wire \c0|afi_addr[3] ;
wire \c0|afi_addr[4] ;
wire \c0|afi_addr[5] ;
wire \c0|afi_addr[6] ;
wire \c0|afi_addr[7] ;
wire \c0|afi_addr[8] ;
wire \c0|afi_addr[9] ;
wire \c0|afi_addr[10] ;
wire \c0|afi_addr[11] ;
wire \c0|afi_addr[12] ;
wire \c0|afi_addr[13] ;
wire \c0|afi_addr[14] ;
wire \c0|afi_addr[15] ;
wire \c0|afi_addr[16] ;
wire \c0|afi_addr[17] ;
wire \c0|afi_addr[18] ;
wire \c0|afi_addr[19] ;
wire \c0|afi_ba[0] ;
wire \c0|afi_ba[1] ;
wire \c0|afi_ba[2] ;
wire \c0|afi_cke[0] ;
wire \c0|afi_cke[1] ;
wire \c0|afi_cs_n[0] ;
wire \c0|afi_cs_n[1] ;
wire \c0|afi_dm_int[0] ;
wire \c0|afi_dm_int[1] ;
wire \c0|afi_dm_int[2] ;
wire \c0|afi_dm_int[3] ;
wire \c0|afi_dm_int[4] ;
wire \c0|afi_dm_int[5] ;
wire \c0|afi_dm_int[6] ;
wire \c0|afi_dm_int[7] ;
wire \c0|afi_dm_int[8] ;
wire \c0|afi_dm_int[9] ;
wire \c0|afi_dqs_burst[0] ;
wire \c0|afi_dqs_burst[1] ;
wire \c0|afi_dqs_burst[2] ;
wire \c0|afi_dqs_burst[3] ;
wire \c0|afi_dqs_burst[4] ;
wire \c0|afi_odt[0] ;
wire \c0|afi_odt[1] ;
wire \c0|afi_rdata_en[0] ;
wire \c0|afi_rdata_en[1] ;
wire \c0|afi_rdata_en[2] ;
wire \c0|afi_rdata_en[3] ;
wire \c0|afi_rdata_en[4] ;
wire \c0|afi_rdata_en_full[0] ;
wire \c0|afi_rdata_en_full[1] ;
wire \c0|afi_rdata_en_full[2] ;
wire \c0|afi_rdata_en_full[3] ;
wire \c0|afi_rdata_en_full[4] ;
wire \c0|afi_wdata_int[0] ;
wire \c0|afi_wdata_int[1] ;
wire \c0|afi_wdata_int[2] ;
wire \c0|afi_wdata_int[3] ;
wire \c0|afi_wdata_int[4] ;
wire \c0|afi_wdata_int[5] ;
wire \c0|afi_wdata_int[6] ;
wire \c0|afi_wdata_int[7] ;
wire \c0|afi_wdata_int[8] ;
wire \c0|afi_wdata_int[9] ;
wire \c0|afi_wdata_int[10] ;
wire \c0|afi_wdata_int[11] ;
wire \c0|afi_wdata_int[12] ;
wire \c0|afi_wdata_int[13] ;
wire \c0|afi_wdata_int[14] ;
wire \c0|afi_wdata_int[15] ;
wire \c0|afi_wdata_int[16] ;
wire \c0|afi_wdata_int[17] ;
wire \c0|afi_wdata_int[18] ;
wire \c0|afi_wdata_int[19] ;
wire \c0|afi_wdata_int[20] ;
wire \c0|afi_wdata_int[21] ;
wire \c0|afi_wdata_int[22] ;
wire \c0|afi_wdata_int[23] ;
wire \c0|afi_wdata_int[24] ;
wire \c0|afi_wdata_int[25] ;
wire \c0|afi_wdata_int[26] ;
wire \c0|afi_wdata_int[27] ;
wire \c0|afi_wdata_int[28] ;
wire \c0|afi_wdata_int[29] ;
wire \c0|afi_wdata_int[30] ;
wire \c0|afi_wdata_int[31] ;
wire \c0|afi_wdata_int[32] ;
wire \c0|afi_wdata_int[33] ;
wire \c0|afi_wdata_int[34] ;
wire \c0|afi_wdata_int[35] ;
wire \c0|afi_wdata_int[36] ;
wire \c0|afi_wdata_int[37] ;
wire \c0|afi_wdata_int[38] ;
wire \c0|afi_wdata_int[39] ;
wire \c0|afi_wdata_int[40] ;
wire \c0|afi_wdata_int[41] ;
wire \c0|afi_wdata_int[42] ;
wire \c0|afi_wdata_int[43] ;
wire \c0|afi_wdata_int[44] ;
wire \c0|afi_wdata_int[45] ;
wire \c0|afi_wdata_int[46] ;
wire \c0|afi_wdata_int[47] ;
wire \c0|afi_wdata_int[48] ;
wire \c0|afi_wdata_int[49] ;
wire \c0|afi_wdata_int[50] ;
wire \c0|afi_wdata_int[51] ;
wire \c0|afi_wdata_int[52] ;
wire \c0|afi_wdata_int[53] ;
wire \c0|afi_wdata_int[54] ;
wire \c0|afi_wdata_int[55] ;
wire \c0|afi_wdata_int[56] ;
wire \c0|afi_wdata_int[57] ;
wire \c0|afi_wdata_int[58] ;
wire \c0|afi_wdata_int[59] ;
wire \c0|afi_wdata_int[60] ;
wire \c0|afi_wdata_int[61] ;
wire \c0|afi_wdata_int[62] ;
wire \c0|afi_wdata_int[63] ;
wire \c0|afi_wdata_int[64] ;
wire \c0|afi_wdata_int[65] ;
wire \c0|afi_wdata_int[66] ;
wire \c0|afi_wdata_int[67] ;
wire \c0|afi_wdata_int[68] ;
wire \c0|afi_wdata_int[69] ;
wire \c0|afi_wdata_int[70] ;
wire \c0|afi_wdata_int[71] ;
wire \c0|afi_wdata_int[72] ;
wire \c0|afi_wdata_int[73] ;
wire \c0|afi_wdata_int[74] ;
wire \c0|afi_wdata_int[75] ;
wire \c0|afi_wdata_int[76] ;
wire \c0|afi_wdata_int[77] ;
wire \c0|afi_wdata_int[78] ;
wire \c0|afi_wdata_int[79] ;
wire \c0|afi_wdata_valid[0] ;
wire \c0|afi_wdata_valid[1] ;
wire \c0|afi_wdata_valid[2] ;
wire \c0|afi_wdata_valid[3] ;
wire \c0|afi_wdata_valid[4] ;
wire \c0|cfg_addlat_wire[0] ;
wire \c0|cfg_addlat_wire[1] ;
wire \c0|cfg_addlat_wire[2] ;
wire \c0|cfg_addlat_wire[3] ;
wire \c0|cfg_addlat_wire[4] ;
wire \c0|cfg_bankaddrwidth_wire[0] ;
wire \c0|cfg_bankaddrwidth_wire[1] ;
wire \c0|cfg_bankaddrwidth_wire[2] ;
wire \c0|cfg_caswrlat_wire[0] ;
wire \c0|cfg_caswrlat_wire[1] ;
wire \c0|cfg_caswrlat_wire[2] ;
wire \c0|cfg_caswrlat_wire[3] ;
wire \c0|cfg_coladdrwidth_wire[0] ;
wire \c0|cfg_coladdrwidth_wire[1] ;
wire \c0|cfg_coladdrwidth_wire[2] ;
wire \c0|cfg_coladdrwidth_wire[3] ;
wire \c0|cfg_coladdrwidth_wire[4] ;
wire \c0|cfg_csaddrwidth_wire[0] ;
wire \c0|cfg_csaddrwidth_wire[1] ;
wire \c0|cfg_csaddrwidth_wire[2] ;
wire \c0|cfg_devicewidth_wire[0] ;
wire \c0|cfg_devicewidth_wire[1] ;
wire \c0|cfg_devicewidth_wire[2] ;
wire \c0|cfg_devicewidth_wire[3] ;
wire \c0|cfg_interfacewidth_wire[0] ;
wire \c0|cfg_interfacewidth_wire[1] ;
wire \c0|cfg_interfacewidth_wire[2] ;
wire \c0|cfg_interfacewidth_wire[3] ;
wire \c0|cfg_interfacewidth_wire[4] ;
wire \c0|cfg_interfacewidth_wire[5] ;
wire \c0|cfg_interfacewidth_wire[6] ;
wire \c0|cfg_interfacewidth_wire[7] ;
wire \c0|cfg_rowaddrwidth_wire[0] ;
wire \c0|cfg_rowaddrwidth_wire[1] ;
wire \c0|cfg_rowaddrwidth_wire[2] ;
wire \c0|cfg_rowaddrwidth_wire[3] ;
wire \c0|cfg_rowaddrwidth_wire[4] ;
wire \c0|cfg_tcl_wire[0] ;
wire \c0|cfg_tcl_wire[1] ;
wire \c0|cfg_tcl_wire[2] ;
wire \c0|cfg_tcl_wire[3] ;
wire \c0|cfg_tcl_wire[4] ;
wire \c0|cfg_tmrd_wire[0] ;
wire \c0|cfg_tmrd_wire[1] ;
wire \c0|cfg_tmrd_wire[2] ;
wire \c0|cfg_tmrd_wire[3] ;
wire \c0|cfg_trefi_wire[0] ;
wire \c0|cfg_trefi_wire[1] ;
wire \c0|cfg_trefi_wire[2] ;
wire \c0|cfg_trefi_wire[3] ;
wire \c0|cfg_trefi_wire[4] ;
wire \c0|cfg_trefi_wire[5] ;
wire \c0|cfg_trefi_wire[6] ;
wire \c0|cfg_trefi_wire[7] ;
wire \c0|cfg_trefi_wire[8] ;
wire \c0|cfg_trefi_wire[9] ;
wire \c0|cfg_trefi_wire[10] ;
wire \c0|cfg_trefi_wire[11] ;
wire \c0|cfg_trefi_wire[12] ;
wire \c0|cfg_trfc_wire[0] ;
wire \c0|cfg_trfc_wire[1] ;
wire \c0|cfg_trfc_wire[2] ;
wire \c0|cfg_trfc_wire[3] ;
wire \c0|cfg_trfc_wire[4] ;
wire \c0|cfg_trfc_wire[5] ;
wire \c0|cfg_trfc_wire[6] ;
wire \c0|cfg_trfc_wire[7] ;
wire \c0|cfg_twr_wire[0] ;
wire \c0|cfg_twr_wire[1] ;
wire \c0|cfg_twr_wire[2] ;
wire \c0|cfg_twr_wire[3] ;
wire \c0|afi_mem_clk_disable[0] ;
wire \c0|cfg_dramconfig_wire[0] ;
wire \c0|cfg_dramconfig_wire[1] ;
wire \c0|cfg_dramconfig_wire[2] ;
wire \c0|cfg_dramconfig_wire[3] ;
wire \c0|cfg_dramconfig_wire[4] ;
wire \c0|cfg_dramconfig_wire[5] ;
wire \c0|cfg_dramconfig_wire[6] ;
wire \c0|cfg_dramconfig_wire[7] ;
wire \c0|cfg_dramconfig_wire[8] ;
wire \c0|cfg_dramconfig_wire[9] ;
wire \c0|cfg_dramconfig_wire[10] ;
wire \c0|cfg_dramconfig_wire[11] ;
wire \c0|cfg_dramconfig_wire[12] ;
wire \c0|cfg_dramconfig_wire[13] ;
wire \c0|cfg_dramconfig_wire[14] ;
wire \c0|cfg_dramconfig_wire[15] ;
wire \c0|cfg_dramconfig_wire[16] ;
wire \c0|cfg_dramconfig_wire[17] ;
wire \c0|cfg_dramconfig_wire[18] ;
wire \c0|cfg_dramconfig_wire[19] ;
wire \c0|cfg_dramconfig_wire[20] ;
wire \p0|umemphy|memphy_ldc|leveled_dqs_clocks[0] ;
wire \dll|dll_delayctrl[0] ;
wire \dll|dll_delayctrl[1] ;
wire \dll|dll_delayctrl[2] ;
wire \dll|dll_delayctrl[3] ;
wire \dll|dll_delayctrl[4] ;
wire \dll|dll_delayctrl[5] ;
wire \dll|dll_delayctrl[6] ;


HPS_hps_sdram_pll pll(
	.pll_mem_clk(\pll|afi_clk ),
	.pll_write_clk(\pll|pll_write_clk ));

HPS_hps_sdram_p0 p0(
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.afi_clk(\pll|afi_clk ),
	.pll_write_clk(\pll|pll_write_clk ),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.afi_cal_fail(\p0|umemphy|afi_cal_fail ),
	.afi_cal_success(\p0|umemphy|afi_cal_success ),
	.afi_rdata_valid_0(\p0|umemphy|afi_rdata_valid[0] ),
	.ctl_reset_n(\p0|umemphy|ctl_reset_n ),
	.afi_rdata_0(\p0|umemphy|afi_rdata[0] ),
	.afi_rdata_1(\p0|umemphy|afi_rdata[1] ),
	.afi_rdata_2(\p0|umemphy|afi_rdata[2] ),
	.afi_rdata_3(\p0|umemphy|afi_rdata[3] ),
	.afi_rdata_4(\p0|umemphy|afi_rdata[4] ),
	.afi_rdata_5(\p0|umemphy|afi_rdata[5] ),
	.afi_rdata_6(\p0|umemphy|afi_rdata[6] ),
	.afi_rdata_7(\p0|umemphy|afi_rdata[7] ),
	.afi_rdata_8(\p0|umemphy|afi_rdata[8] ),
	.afi_rdata_9(\p0|umemphy|afi_rdata[9] ),
	.afi_rdata_10(\p0|umemphy|afi_rdata[10] ),
	.afi_rdata_11(\p0|umemphy|afi_rdata[11] ),
	.afi_rdata_12(\p0|umemphy|afi_rdata[12] ),
	.afi_rdata_13(\p0|umemphy|afi_rdata[13] ),
	.afi_rdata_14(\p0|umemphy|afi_rdata[14] ),
	.afi_rdata_15(\p0|umemphy|afi_rdata[15] ),
	.afi_rdata_16(\p0|umemphy|afi_rdata[16] ),
	.afi_rdata_17(\p0|umemphy|afi_rdata[17] ),
	.afi_rdata_18(\p0|umemphy|afi_rdata[18] ),
	.afi_rdata_19(\p0|umemphy|afi_rdata[19] ),
	.afi_rdata_20(\p0|umemphy|afi_rdata[20] ),
	.afi_rdata_21(\p0|umemphy|afi_rdata[21] ),
	.afi_rdata_22(\p0|umemphy|afi_rdata[22] ),
	.afi_rdata_23(\p0|umemphy|afi_rdata[23] ),
	.afi_rdata_24(\p0|umemphy|afi_rdata[24] ),
	.afi_rdata_25(\p0|umemphy|afi_rdata[25] ),
	.afi_rdata_26(\p0|umemphy|afi_rdata[26] ),
	.afi_rdata_27(\p0|umemphy|afi_rdata[27] ),
	.afi_rdata_28(\p0|umemphy|afi_rdata[28] ),
	.afi_rdata_29(\p0|umemphy|afi_rdata[29] ),
	.afi_rdata_30(\p0|umemphy|afi_rdata[30] ),
	.afi_rdata_31(\p0|umemphy|afi_rdata[31] ),
	.afi_rdata_32(\p0|umemphy|afi_rdata[32] ),
	.afi_rdata_33(\p0|umemphy|afi_rdata[33] ),
	.afi_rdata_34(\p0|umemphy|afi_rdata[34] ),
	.afi_rdata_35(\p0|umemphy|afi_rdata[35] ),
	.afi_rdata_36(\p0|umemphy|afi_rdata[36] ),
	.afi_rdata_37(\p0|umemphy|afi_rdata[37] ),
	.afi_rdata_38(\p0|umemphy|afi_rdata[38] ),
	.afi_rdata_39(\p0|umemphy|afi_rdata[39] ),
	.afi_rdata_40(\p0|umemphy|afi_rdata[40] ),
	.afi_rdata_41(\p0|umemphy|afi_rdata[41] ),
	.afi_rdata_42(\p0|umemphy|afi_rdata[42] ),
	.afi_rdata_43(\p0|umemphy|afi_rdata[43] ),
	.afi_rdata_44(\p0|umemphy|afi_rdata[44] ),
	.afi_rdata_45(\p0|umemphy|afi_rdata[45] ),
	.afi_rdata_46(\p0|umemphy|afi_rdata[46] ),
	.afi_rdata_47(\p0|umemphy|afi_rdata[47] ),
	.afi_rdata_48(\p0|umemphy|afi_rdata[48] ),
	.afi_rdata_49(\p0|umemphy|afi_rdata[49] ),
	.afi_rdata_50(\p0|umemphy|afi_rdata[50] ),
	.afi_rdata_51(\p0|umemphy|afi_rdata[51] ),
	.afi_rdata_52(\p0|umemphy|afi_rdata[52] ),
	.afi_rdata_53(\p0|umemphy|afi_rdata[53] ),
	.afi_rdata_54(\p0|umemphy|afi_rdata[54] ),
	.afi_rdata_55(\p0|umemphy|afi_rdata[55] ),
	.afi_rdata_56(\p0|umemphy|afi_rdata[56] ),
	.afi_rdata_57(\p0|umemphy|afi_rdata[57] ),
	.afi_rdata_58(\p0|umemphy|afi_rdata[58] ),
	.afi_rdata_59(\p0|umemphy|afi_rdata[59] ),
	.afi_rdata_60(\p0|umemphy|afi_rdata[60] ),
	.afi_rdata_61(\p0|umemphy|afi_rdata[61] ),
	.afi_rdata_62(\p0|umemphy|afi_rdata[62] ),
	.afi_rdata_63(\p0|umemphy|afi_rdata[63] ),
	.afi_rdata_64(\p0|umemphy|afi_rdata[64] ),
	.afi_rdata_65(\p0|umemphy|afi_rdata[65] ),
	.afi_rdata_66(\p0|umemphy|afi_rdata[66] ),
	.afi_rdata_67(\p0|umemphy|afi_rdata[67] ),
	.afi_rdata_68(\p0|umemphy|afi_rdata[68] ),
	.afi_rdata_69(\p0|umemphy|afi_rdata[69] ),
	.afi_rdata_70(\p0|umemphy|afi_rdata[70] ),
	.afi_rdata_71(\p0|umemphy|afi_rdata[71] ),
	.afi_rdata_72(\p0|umemphy|afi_rdata[72] ),
	.afi_rdata_73(\p0|umemphy|afi_rdata[73] ),
	.afi_rdata_74(\p0|umemphy|afi_rdata[74] ),
	.afi_rdata_75(\p0|umemphy|afi_rdata[75] ),
	.afi_rdata_76(\p0|umemphy|afi_rdata[76] ),
	.afi_rdata_77(\p0|umemphy|afi_rdata[77] ),
	.afi_rdata_78(\p0|umemphy|afi_rdata[78] ),
	.afi_rdata_79(\p0|umemphy|afi_rdata[79] ),
	.afi_wlat_0(\p0|umemphy|afi_wlat[0] ),
	.afi_wlat_1(\p0|umemphy|afi_wlat[1] ),
	.afi_wlat_2(\p0|umemphy|afi_wlat[2] ),
	.afi_wlat_3(\p0|umemphy|afi_wlat[3] ),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.afi_cas_n_0(\c0|afi_cas_n[0] ),
	.afi_ras_n_0(\c0|afi_ras_n[0] ),
	.afi_rst_n_0(\c0|afi_rst_n[0] ),
	.afi_we_n_0(\c0|afi_we_n[0] ),
	.afi_addr_0(\c0|afi_addr[0] ),
	.afi_addr_1(\c0|afi_addr[1] ),
	.afi_addr_2(\c0|afi_addr[2] ),
	.afi_addr_3(\c0|afi_addr[3] ),
	.afi_addr_4(\c0|afi_addr[4] ),
	.afi_addr_5(\c0|afi_addr[5] ),
	.afi_addr_6(\c0|afi_addr[6] ),
	.afi_addr_7(\c0|afi_addr[7] ),
	.afi_addr_8(\c0|afi_addr[8] ),
	.afi_addr_9(\c0|afi_addr[9] ),
	.afi_addr_10(\c0|afi_addr[10] ),
	.afi_addr_11(\c0|afi_addr[11] ),
	.afi_addr_12(\c0|afi_addr[12] ),
	.afi_addr_13(\c0|afi_addr[13] ),
	.afi_addr_14(\c0|afi_addr[14] ),
	.afi_addr_15(\c0|afi_addr[15] ),
	.afi_addr_16(\c0|afi_addr[16] ),
	.afi_addr_17(\c0|afi_addr[17] ),
	.afi_addr_18(\c0|afi_addr[18] ),
	.afi_addr_19(\c0|afi_addr[19] ),
	.afi_ba_0(\c0|afi_ba[0] ),
	.afi_ba_1(\c0|afi_ba[1] ),
	.afi_ba_2(\c0|afi_ba[2] ),
	.afi_cke_0(\c0|afi_cke[0] ),
	.afi_cke_1(\c0|afi_cke[1] ),
	.afi_cs_n_0(\c0|afi_cs_n[0] ),
	.afi_cs_n_1(\c0|afi_cs_n[1] ),
	.afi_dm_int_0(\c0|afi_dm_int[0] ),
	.afi_dm_int_1(\c0|afi_dm_int[1] ),
	.afi_dm_int_2(\c0|afi_dm_int[2] ),
	.afi_dm_int_3(\c0|afi_dm_int[3] ),
	.afi_dm_int_4(\c0|afi_dm_int[4] ),
	.afi_dm_int_5(\c0|afi_dm_int[5] ),
	.afi_dm_int_6(\c0|afi_dm_int[6] ),
	.afi_dm_int_7(\c0|afi_dm_int[7] ),
	.afi_dm_int_8(\c0|afi_dm_int[8] ),
	.afi_dm_int_9(\c0|afi_dm_int[9] ),
	.afi_dqs_burst_0(\c0|afi_dqs_burst[0] ),
	.afi_dqs_burst_1(\c0|afi_dqs_burst[1] ),
	.afi_dqs_burst_2(\c0|afi_dqs_burst[2] ),
	.afi_dqs_burst_3(\c0|afi_dqs_burst[3] ),
	.afi_dqs_burst_4(\c0|afi_dqs_burst[4] ),
	.afi_odt_0(\c0|afi_odt[0] ),
	.afi_odt_1(\c0|afi_odt[1] ),
	.afi_rdata_en_0(\c0|afi_rdata_en[0] ),
	.afi_rdata_en_1(\c0|afi_rdata_en[1] ),
	.afi_rdata_en_2(\c0|afi_rdata_en[2] ),
	.afi_rdata_en_3(\c0|afi_rdata_en[3] ),
	.afi_rdata_en_4(\c0|afi_rdata_en[4] ),
	.afi_rdata_en_full_0(\c0|afi_rdata_en_full[0] ),
	.afi_rdata_en_full_1(\c0|afi_rdata_en_full[1] ),
	.afi_rdata_en_full_2(\c0|afi_rdata_en_full[2] ),
	.afi_rdata_en_full_3(\c0|afi_rdata_en_full[3] ),
	.afi_rdata_en_full_4(\c0|afi_rdata_en_full[4] ),
	.afi_wdata_int_0(\c0|afi_wdata_int[0] ),
	.afi_wdata_int_1(\c0|afi_wdata_int[1] ),
	.afi_wdata_int_2(\c0|afi_wdata_int[2] ),
	.afi_wdata_int_3(\c0|afi_wdata_int[3] ),
	.afi_wdata_int_4(\c0|afi_wdata_int[4] ),
	.afi_wdata_int_5(\c0|afi_wdata_int[5] ),
	.afi_wdata_int_6(\c0|afi_wdata_int[6] ),
	.afi_wdata_int_7(\c0|afi_wdata_int[7] ),
	.afi_wdata_int_8(\c0|afi_wdata_int[8] ),
	.afi_wdata_int_9(\c0|afi_wdata_int[9] ),
	.afi_wdata_int_10(\c0|afi_wdata_int[10] ),
	.afi_wdata_int_11(\c0|afi_wdata_int[11] ),
	.afi_wdata_int_12(\c0|afi_wdata_int[12] ),
	.afi_wdata_int_13(\c0|afi_wdata_int[13] ),
	.afi_wdata_int_14(\c0|afi_wdata_int[14] ),
	.afi_wdata_int_15(\c0|afi_wdata_int[15] ),
	.afi_wdata_int_16(\c0|afi_wdata_int[16] ),
	.afi_wdata_int_17(\c0|afi_wdata_int[17] ),
	.afi_wdata_int_18(\c0|afi_wdata_int[18] ),
	.afi_wdata_int_19(\c0|afi_wdata_int[19] ),
	.afi_wdata_int_20(\c0|afi_wdata_int[20] ),
	.afi_wdata_int_21(\c0|afi_wdata_int[21] ),
	.afi_wdata_int_22(\c0|afi_wdata_int[22] ),
	.afi_wdata_int_23(\c0|afi_wdata_int[23] ),
	.afi_wdata_int_24(\c0|afi_wdata_int[24] ),
	.afi_wdata_int_25(\c0|afi_wdata_int[25] ),
	.afi_wdata_int_26(\c0|afi_wdata_int[26] ),
	.afi_wdata_int_27(\c0|afi_wdata_int[27] ),
	.afi_wdata_int_28(\c0|afi_wdata_int[28] ),
	.afi_wdata_int_29(\c0|afi_wdata_int[29] ),
	.afi_wdata_int_30(\c0|afi_wdata_int[30] ),
	.afi_wdata_int_31(\c0|afi_wdata_int[31] ),
	.afi_wdata_int_32(\c0|afi_wdata_int[32] ),
	.afi_wdata_int_33(\c0|afi_wdata_int[33] ),
	.afi_wdata_int_34(\c0|afi_wdata_int[34] ),
	.afi_wdata_int_35(\c0|afi_wdata_int[35] ),
	.afi_wdata_int_36(\c0|afi_wdata_int[36] ),
	.afi_wdata_int_37(\c0|afi_wdata_int[37] ),
	.afi_wdata_int_38(\c0|afi_wdata_int[38] ),
	.afi_wdata_int_39(\c0|afi_wdata_int[39] ),
	.afi_wdata_int_40(\c0|afi_wdata_int[40] ),
	.afi_wdata_int_41(\c0|afi_wdata_int[41] ),
	.afi_wdata_int_42(\c0|afi_wdata_int[42] ),
	.afi_wdata_int_43(\c0|afi_wdata_int[43] ),
	.afi_wdata_int_44(\c0|afi_wdata_int[44] ),
	.afi_wdata_int_45(\c0|afi_wdata_int[45] ),
	.afi_wdata_int_46(\c0|afi_wdata_int[46] ),
	.afi_wdata_int_47(\c0|afi_wdata_int[47] ),
	.afi_wdata_int_48(\c0|afi_wdata_int[48] ),
	.afi_wdata_int_49(\c0|afi_wdata_int[49] ),
	.afi_wdata_int_50(\c0|afi_wdata_int[50] ),
	.afi_wdata_int_51(\c0|afi_wdata_int[51] ),
	.afi_wdata_int_52(\c0|afi_wdata_int[52] ),
	.afi_wdata_int_53(\c0|afi_wdata_int[53] ),
	.afi_wdata_int_54(\c0|afi_wdata_int[54] ),
	.afi_wdata_int_55(\c0|afi_wdata_int[55] ),
	.afi_wdata_int_56(\c0|afi_wdata_int[56] ),
	.afi_wdata_int_57(\c0|afi_wdata_int[57] ),
	.afi_wdata_int_58(\c0|afi_wdata_int[58] ),
	.afi_wdata_int_59(\c0|afi_wdata_int[59] ),
	.afi_wdata_int_60(\c0|afi_wdata_int[60] ),
	.afi_wdata_int_61(\c0|afi_wdata_int[61] ),
	.afi_wdata_int_62(\c0|afi_wdata_int[62] ),
	.afi_wdata_int_63(\c0|afi_wdata_int[63] ),
	.afi_wdata_int_64(\c0|afi_wdata_int[64] ),
	.afi_wdata_int_65(\c0|afi_wdata_int[65] ),
	.afi_wdata_int_66(\c0|afi_wdata_int[66] ),
	.afi_wdata_int_67(\c0|afi_wdata_int[67] ),
	.afi_wdata_int_68(\c0|afi_wdata_int[68] ),
	.afi_wdata_int_69(\c0|afi_wdata_int[69] ),
	.afi_wdata_int_70(\c0|afi_wdata_int[70] ),
	.afi_wdata_int_71(\c0|afi_wdata_int[71] ),
	.afi_wdata_int_72(\c0|afi_wdata_int[72] ),
	.afi_wdata_int_73(\c0|afi_wdata_int[73] ),
	.afi_wdata_int_74(\c0|afi_wdata_int[74] ),
	.afi_wdata_int_75(\c0|afi_wdata_int[75] ),
	.afi_wdata_int_76(\c0|afi_wdata_int[76] ),
	.afi_wdata_int_77(\c0|afi_wdata_int[77] ),
	.afi_wdata_int_78(\c0|afi_wdata_int[78] ),
	.afi_wdata_int_79(\c0|afi_wdata_int[79] ),
	.afi_wdata_valid_0(\c0|afi_wdata_valid[0] ),
	.afi_wdata_valid_1(\c0|afi_wdata_valid[1] ),
	.afi_wdata_valid_2(\c0|afi_wdata_valid[2] ),
	.afi_wdata_valid_3(\c0|afi_wdata_valid[3] ),
	.afi_wdata_valid_4(\c0|afi_wdata_valid[4] ),
	.cfg_addlat_wire_0(\c0|cfg_addlat_wire[0] ),
	.cfg_addlat_wire_1(\c0|cfg_addlat_wire[1] ),
	.cfg_addlat_wire_2(\c0|cfg_addlat_wire[2] ),
	.cfg_addlat_wire_3(\c0|cfg_addlat_wire[3] ),
	.cfg_addlat_wire_4(\c0|cfg_addlat_wire[4] ),
	.cfg_bankaddrwidth_wire_0(\c0|cfg_bankaddrwidth_wire[0] ),
	.cfg_bankaddrwidth_wire_1(\c0|cfg_bankaddrwidth_wire[1] ),
	.cfg_bankaddrwidth_wire_2(\c0|cfg_bankaddrwidth_wire[2] ),
	.cfg_caswrlat_wire_0(\c0|cfg_caswrlat_wire[0] ),
	.cfg_caswrlat_wire_1(\c0|cfg_caswrlat_wire[1] ),
	.cfg_caswrlat_wire_2(\c0|cfg_caswrlat_wire[2] ),
	.cfg_caswrlat_wire_3(\c0|cfg_caswrlat_wire[3] ),
	.cfg_coladdrwidth_wire_0(\c0|cfg_coladdrwidth_wire[0] ),
	.cfg_coladdrwidth_wire_1(\c0|cfg_coladdrwidth_wire[1] ),
	.cfg_coladdrwidth_wire_2(\c0|cfg_coladdrwidth_wire[2] ),
	.cfg_coladdrwidth_wire_3(\c0|cfg_coladdrwidth_wire[3] ),
	.cfg_coladdrwidth_wire_4(\c0|cfg_coladdrwidth_wire[4] ),
	.cfg_csaddrwidth_wire_0(\c0|cfg_csaddrwidth_wire[0] ),
	.cfg_csaddrwidth_wire_1(\c0|cfg_csaddrwidth_wire[1] ),
	.cfg_csaddrwidth_wire_2(\c0|cfg_csaddrwidth_wire[2] ),
	.cfg_devicewidth_wire_0(\c0|cfg_devicewidth_wire[0] ),
	.cfg_devicewidth_wire_1(\c0|cfg_devicewidth_wire[1] ),
	.cfg_devicewidth_wire_2(\c0|cfg_devicewidth_wire[2] ),
	.cfg_devicewidth_wire_3(\c0|cfg_devicewidth_wire[3] ),
	.cfg_interfacewidth_wire_0(\c0|cfg_interfacewidth_wire[0] ),
	.cfg_interfacewidth_wire_1(\c0|cfg_interfacewidth_wire[1] ),
	.cfg_interfacewidth_wire_2(\c0|cfg_interfacewidth_wire[2] ),
	.cfg_interfacewidth_wire_3(\c0|cfg_interfacewidth_wire[3] ),
	.cfg_interfacewidth_wire_4(\c0|cfg_interfacewidth_wire[4] ),
	.cfg_interfacewidth_wire_5(\c0|cfg_interfacewidth_wire[5] ),
	.cfg_interfacewidth_wire_6(\c0|cfg_interfacewidth_wire[6] ),
	.cfg_interfacewidth_wire_7(\c0|cfg_interfacewidth_wire[7] ),
	.cfg_rowaddrwidth_wire_0(\c0|cfg_rowaddrwidth_wire[0] ),
	.cfg_rowaddrwidth_wire_1(\c0|cfg_rowaddrwidth_wire[1] ),
	.cfg_rowaddrwidth_wire_2(\c0|cfg_rowaddrwidth_wire[2] ),
	.cfg_rowaddrwidth_wire_3(\c0|cfg_rowaddrwidth_wire[3] ),
	.cfg_rowaddrwidth_wire_4(\c0|cfg_rowaddrwidth_wire[4] ),
	.cfg_tcl_wire_0(\c0|cfg_tcl_wire[0] ),
	.cfg_tcl_wire_1(\c0|cfg_tcl_wire[1] ),
	.cfg_tcl_wire_2(\c0|cfg_tcl_wire[2] ),
	.cfg_tcl_wire_3(\c0|cfg_tcl_wire[3] ),
	.cfg_tcl_wire_4(\c0|cfg_tcl_wire[4] ),
	.cfg_tmrd_wire_0(\c0|cfg_tmrd_wire[0] ),
	.cfg_tmrd_wire_1(\c0|cfg_tmrd_wire[1] ),
	.cfg_tmrd_wire_2(\c0|cfg_tmrd_wire[2] ),
	.cfg_tmrd_wire_3(\c0|cfg_tmrd_wire[3] ),
	.cfg_trefi_wire_0(\c0|cfg_trefi_wire[0] ),
	.cfg_trefi_wire_1(\c0|cfg_trefi_wire[1] ),
	.cfg_trefi_wire_2(\c0|cfg_trefi_wire[2] ),
	.cfg_trefi_wire_3(\c0|cfg_trefi_wire[3] ),
	.cfg_trefi_wire_4(\c0|cfg_trefi_wire[4] ),
	.cfg_trefi_wire_5(\c0|cfg_trefi_wire[5] ),
	.cfg_trefi_wire_6(\c0|cfg_trefi_wire[6] ),
	.cfg_trefi_wire_7(\c0|cfg_trefi_wire[7] ),
	.cfg_trefi_wire_8(\c0|cfg_trefi_wire[8] ),
	.cfg_trefi_wire_9(\c0|cfg_trefi_wire[9] ),
	.cfg_trefi_wire_10(\c0|cfg_trefi_wire[10] ),
	.cfg_trefi_wire_11(\c0|cfg_trefi_wire[11] ),
	.cfg_trefi_wire_12(\c0|cfg_trefi_wire[12] ),
	.cfg_trfc_wire_0(\c0|cfg_trfc_wire[0] ),
	.cfg_trfc_wire_1(\c0|cfg_trfc_wire[1] ),
	.cfg_trfc_wire_2(\c0|cfg_trfc_wire[2] ),
	.cfg_trfc_wire_3(\c0|cfg_trfc_wire[3] ),
	.cfg_trfc_wire_4(\c0|cfg_trfc_wire[4] ),
	.cfg_trfc_wire_5(\c0|cfg_trfc_wire[5] ),
	.cfg_trfc_wire_6(\c0|cfg_trfc_wire[6] ),
	.cfg_trfc_wire_7(\c0|cfg_trfc_wire[7] ),
	.cfg_twr_wire_0(\c0|cfg_twr_wire[0] ),
	.cfg_twr_wire_1(\c0|cfg_twr_wire[1] ),
	.cfg_twr_wire_2(\c0|cfg_twr_wire[2] ),
	.cfg_twr_wire_3(\c0|cfg_twr_wire[3] ),
	.afi_mem_clk_disable_0(\c0|afi_mem_clk_disable[0] ),
	.cfg_dramconfig_wire_0(\c0|cfg_dramconfig_wire[0] ),
	.cfg_dramconfig_wire_1(\c0|cfg_dramconfig_wire[1] ),
	.cfg_dramconfig_wire_2(\c0|cfg_dramconfig_wire[2] ),
	.cfg_dramconfig_wire_3(\c0|cfg_dramconfig_wire[3] ),
	.cfg_dramconfig_wire_4(\c0|cfg_dramconfig_wire[4] ),
	.cfg_dramconfig_wire_5(\c0|cfg_dramconfig_wire[5] ),
	.cfg_dramconfig_wire_6(\c0|cfg_dramconfig_wire[6] ),
	.cfg_dramconfig_wire_7(\c0|cfg_dramconfig_wire[7] ),
	.cfg_dramconfig_wire_8(\c0|cfg_dramconfig_wire[8] ),
	.cfg_dramconfig_wire_9(\c0|cfg_dramconfig_wire[9] ),
	.cfg_dramconfig_wire_10(\c0|cfg_dramconfig_wire[10] ),
	.cfg_dramconfig_wire_11(\c0|cfg_dramconfig_wire[11] ),
	.cfg_dramconfig_wire_12(\c0|cfg_dramconfig_wire[12] ),
	.cfg_dramconfig_wire_13(\c0|cfg_dramconfig_wire[13] ),
	.cfg_dramconfig_wire_14(\c0|cfg_dramconfig_wire[14] ),
	.cfg_dramconfig_wire_15(\c0|cfg_dramconfig_wire[15] ),
	.cfg_dramconfig_wire_16(\c0|cfg_dramconfig_wire[16] ),
	.cfg_dramconfig_wire_17(\c0|cfg_dramconfig_wire[17] ),
	.cfg_dramconfig_wire_18(\c0|cfg_dramconfig_wire[18] ),
	.cfg_dramconfig_wire_19(\c0|cfg_dramconfig_wire[19] ),
	.cfg_dramconfig_wire_20(\c0|cfg_dramconfig_wire[20] ),
	.ctl_clk(\p0|umemphy|memphy_ldc|leveled_dqs_clocks[0] ),
	.dll_delayctrl_0(\dll|dll_delayctrl[0] ),
	.dll_delayctrl_1(\dll|dll_delayctrl[1] ),
	.dll_delayctrl_2(\dll|dll_delayctrl[2] ),
	.dll_delayctrl_3(\dll|dll_delayctrl[3] ),
	.dll_delayctrl_4(\dll|dll_delayctrl[4] ),
	.dll_delayctrl_5(\dll|dll_delayctrl[5] ),
	.dll_delayctrl_6(\dll|dll_delayctrl[6] ),
	.GND_port(GND_port));

HPS_altera_mem_if_dll_cyclonev dll(
	.clk(\pll|pll_write_clk ),
	.dll_delayctrl({\dll|dll_delayctrl[6] ,\dll|dll_delayctrl[5] ,\dll|dll_delayctrl[4] ,\dll|dll_delayctrl[3] ,\dll|dll_delayctrl[2] ,\dll|dll_delayctrl[1] ,\dll|dll_delayctrl[0] }));

HPS_altera_mem_if_hard_memory_controller_top_cyclonev c0(
	.afi_cal_fail(\p0|umemphy|afi_cal_fail ),
	.afi_cal_success(\p0|umemphy|afi_cal_success ),
	.afi_rdata_valid({\p0|umemphy|afi_rdata_valid[0] }),
	.ctl_reset_n(\p0|umemphy|ctl_reset_n ),
	.afi_rdata({\p0|umemphy|afi_rdata[79] ,\p0|umemphy|afi_rdata[78] ,\p0|umemphy|afi_rdata[77] ,\p0|umemphy|afi_rdata[76] ,\p0|umemphy|afi_rdata[75] ,\p0|umemphy|afi_rdata[74] ,\p0|umemphy|afi_rdata[73] ,\p0|umemphy|afi_rdata[72] ,\p0|umemphy|afi_rdata[71] ,
\p0|umemphy|afi_rdata[70] ,\p0|umemphy|afi_rdata[69] ,\p0|umemphy|afi_rdata[68] ,\p0|umemphy|afi_rdata[67] ,\p0|umemphy|afi_rdata[66] ,\p0|umemphy|afi_rdata[65] ,\p0|umemphy|afi_rdata[64] ,\p0|umemphy|afi_rdata[63] ,\p0|umemphy|afi_rdata[62] ,
\p0|umemphy|afi_rdata[61] ,\p0|umemphy|afi_rdata[60] ,\p0|umemphy|afi_rdata[59] ,\p0|umemphy|afi_rdata[58] ,\p0|umemphy|afi_rdata[57] ,\p0|umemphy|afi_rdata[56] ,\p0|umemphy|afi_rdata[55] ,\p0|umemphy|afi_rdata[54] ,\p0|umemphy|afi_rdata[53] ,
\p0|umemphy|afi_rdata[52] ,\p0|umemphy|afi_rdata[51] ,\p0|umemphy|afi_rdata[50] ,\p0|umemphy|afi_rdata[49] ,\p0|umemphy|afi_rdata[48] ,\p0|umemphy|afi_rdata[47] ,\p0|umemphy|afi_rdata[46] ,\p0|umemphy|afi_rdata[45] ,\p0|umemphy|afi_rdata[44] ,
\p0|umemphy|afi_rdata[43] ,\p0|umemphy|afi_rdata[42] ,\p0|umemphy|afi_rdata[41] ,\p0|umemphy|afi_rdata[40] ,\p0|umemphy|afi_rdata[39] ,\p0|umemphy|afi_rdata[38] ,\p0|umemphy|afi_rdata[37] ,\p0|umemphy|afi_rdata[36] ,\p0|umemphy|afi_rdata[35] ,
\p0|umemphy|afi_rdata[34] ,\p0|umemphy|afi_rdata[33] ,\p0|umemphy|afi_rdata[32] ,\p0|umemphy|afi_rdata[31] ,\p0|umemphy|afi_rdata[30] ,\p0|umemphy|afi_rdata[29] ,\p0|umemphy|afi_rdata[28] ,\p0|umemphy|afi_rdata[27] ,\p0|umemphy|afi_rdata[26] ,
\p0|umemphy|afi_rdata[25] ,\p0|umemphy|afi_rdata[24] ,\p0|umemphy|afi_rdata[23] ,\p0|umemphy|afi_rdata[22] ,\p0|umemphy|afi_rdata[21] ,\p0|umemphy|afi_rdata[20] ,\p0|umemphy|afi_rdata[19] ,\p0|umemphy|afi_rdata[18] ,\p0|umemphy|afi_rdata[17] ,
\p0|umemphy|afi_rdata[16] ,\p0|umemphy|afi_rdata[15] ,\p0|umemphy|afi_rdata[14] ,\p0|umemphy|afi_rdata[13] ,\p0|umemphy|afi_rdata[12] ,\p0|umemphy|afi_rdata[11] ,\p0|umemphy|afi_rdata[10] ,\p0|umemphy|afi_rdata[9] ,\p0|umemphy|afi_rdata[8] ,
\p0|umemphy|afi_rdata[7] ,\p0|umemphy|afi_rdata[6] ,\p0|umemphy|afi_rdata[5] ,\p0|umemphy|afi_rdata[4] ,\p0|umemphy|afi_rdata[3] ,\p0|umemphy|afi_rdata[2] ,\p0|umemphy|afi_rdata[1] ,\p0|umemphy|afi_rdata[0] }),
	.afi_wlat({\p0|umemphy|afi_wlat[3] ,\p0|umemphy|afi_wlat[2] ,\p0|umemphy|afi_wlat[1] ,\p0|umemphy|afi_wlat[0] }),
	.afi_cas_n({\c0|afi_cas_n[0] }),
	.afi_ras_n({\c0|afi_ras_n[0] }),
	.afi_rst_n({\c0|afi_rst_n[0] }),
	.afi_we_n({\c0|afi_we_n[0] }),
	.afi_addr({\c0|afi_addr[19] ,\c0|afi_addr[18] ,\c0|afi_addr[17] ,\c0|afi_addr[16] ,\c0|afi_addr[15] ,\c0|afi_addr[14] ,\c0|afi_addr[13] ,\c0|afi_addr[12] ,\c0|afi_addr[11] ,\c0|afi_addr[10] ,\c0|afi_addr[9] ,\c0|afi_addr[8] ,\c0|afi_addr[7] ,\c0|afi_addr[6] ,\c0|afi_addr[5] ,
\c0|afi_addr[4] ,\c0|afi_addr[3] ,\c0|afi_addr[2] ,\c0|afi_addr[1] ,\c0|afi_addr[0] }),
	.afi_ba({\c0|afi_ba[2] ,\c0|afi_ba[1] ,\c0|afi_ba[0] }),
	.afi_cke({\c0|afi_cke[1] ,\c0|afi_cke[0] }),
	.afi_cs_n({\c0|afi_cs_n[1] ,\c0|afi_cs_n[0] }),
	.afi_dm({\c0|afi_dm_int[9] ,\c0|afi_dm_int[8] ,\c0|afi_dm_int[7] ,\c0|afi_dm_int[6] ,\c0|afi_dm_int[5] ,\c0|afi_dm_int[4] ,\c0|afi_dm_int[3] ,\c0|afi_dm_int[2] ,\c0|afi_dm_int[1] ,\c0|afi_dm_int[0] }),
	.afi_dqs_burst({\c0|afi_dqs_burst[4] ,\c0|afi_dqs_burst[3] ,\c0|afi_dqs_burst[2] ,\c0|afi_dqs_burst[1] ,\c0|afi_dqs_burst[0] }),
	.afi_odt({\c0|afi_odt[1] ,\c0|afi_odt[0] }),
	.afi_rdata_en({\c0|afi_rdata_en[4] ,\c0|afi_rdata_en[3] ,\c0|afi_rdata_en[2] ,\c0|afi_rdata_en[1] ,\c0|afi_rdata_en[0] }),
	.afi_rdata_en_full({\c0|afi_rdata_en_full[4] ,\c0|afi_rdata_en_full[3] ,\c0|afi_rdata_en_full[2] ,\c0|afi_rdata_en_full[1] ,\c0|afi_rdata_en_full[0] }),
	.afi_wdata({\c0|afi_wdata_int[79] ,\c0|afi_wdata_int[78] ,\c0|afi_wdata_int[77] ,\c0|afi_wdata_int[76] ,\c0|afi_wdata_int[75] ,\c0|afi_wdata_int[74] ,\c0|afi_wdata_int[73] ,\c0|afi_wdata_int[72] ,\c0|afi_wdata_int[71] ,\c0|afi_wdata_int[70] ,\c0|afi_wdata_int[69] ,
\c0|afi_wdata_int[68] ,\c0|afi_wdata_int[67] ,\c0|afi_wdata_int[66] ,\c0|afi_wdata_int[65] ,\c0|afi_wdata_int[64] ,\c0|afi_wdata_int[63] ,\c0|afi_wdata_int[62] ,\c0|afi_wdata_int[61] ,\c0|afi_wdata_int[60] ,\c0|afi_wdata_int[59] ,\c0|afi_wdata_int[58] ,
\c0|afi_wdata_int[57] ,\c0|afi_wdata_int[56] ,\c0|afi_wdata_int[55] ,\c0|afi_wdata_int[54] ,\c0|afi_wdata_int[53] ,\c0|afi_wdata_int[52] ,\c0|afi_wdata_int[51] ,\c0|afi_wdata_int[50] ,\c0|afi_wdata_int[49] ,\c0|afi_wdata_int[48] ,\c0|afi_wdata_int[47] ,
\c0|afi_wdata_int[46] ,\c0|afi_wdata_int[45] ,\c0|afi_wdata_int[44] ,\c0|afi_wdata_int[43] ,\c0|afi_wdata_int[42] ,\c0|afi_wdata_int[41] ,\c0|afi_wdata_int[40] ,\c0|afi_wdata_int[39] ,\c0|afi_wdata_int[38] ,\c0|afi_wdata_int[37] ,\c0|afi_wdata_int[36] ,
\c0|afi_wdata_int[35] ,\c0|afi_wdata_int[34] ,\c0|afi_wdata_int[33] ,\c0|afi_wdata_int[32] ,\c0|afi_wdata_int[31] ,\c0|afi_wdata_int[30] ,\c0|afi_wdata_int[29] ,\c0|afi_wdata_int[28] ,\c0|afi_wdata_int[27] ,\c0|afi_wdata_int[26] ,\c0|afi_wdata_int[25] ,
\c0|afi_wdata_int[24] ,\c0|afi_wdata_int[23] ,\c0|afi_wdata_int[22] ,\c0|afi_wdata_int[21] ,\c0|afi_wdata_int[20] ,\c0|afi_wdata_int[19] ,\c0|afi_wdata_int[18] ,\c0|afi_wdata_int[17] ,\c0|afi_wdata_int[16] ,\c0|afi_wdata_int[15] ,\c0|afi_wdata_int[14] ,
\c0|afi_wdata_int[13] ,\c0|afi_wdata_int[12] ,\c0|afi_wdata_int[11] ,\c0|afi_wdata_int[10] ,\c0|afi_wdata_int[9] ,\c0|afi_wdata_int[8] ,\c0|afi_wdata_int[7] ,\c0|afi_wdata_int[6] ,\c0|afi_wdata_int[5] ,\c0|afi_wdata_int[4] ,\c0|afi_wdata_int[3] ,\c0|afi_wdata_int[2] ,
\c0|afi_wdata_int[1] ,\c0|afi_wdata_int[0] }),
	.afi_wdata_valid({\c0|afi_wdata_valid[4] ,\c0|afi_wdata_valid[3] ,\c0|afi_wdata_valid[2] ,\c0|afi_wdata_valid[1] ,\c0|afi_wdata_valid[0] }),
	.cfg_addlat({cfg_addlat_unconnected_wire_7,cfg_addlat_unconnected_wire_6,cfg_addlat_unconnected_wire_5,\c0|cfg_addlat_wire[4] ,\c0|cfg_addlat_wire[3] ,\c0|cfg_addlat_wire[2] ,\c0|cfg_addlat_wire[1] ,\c0|cfg_addlat_wire[0] }),
	.cfg_bankaddrwidth({cfg_bankaddrwidth_unconnected_wire_7,cfg_bankaddrwidth_unconnected_wire_6,cfg_bankaddrwidth_unconnected_wire_5,cfg_bankaddrwidth_unconnected_wire_4,cfg_bankaddrwidth_unconnected_wire_3,\c0|cfg_bankaddrwidth_wire[2] ,\c0|cfg_bankaddrwidth_wire[1] ,
\c0|cfg_bankaddrwidth_wire[0] }),
	.cfg_caswrlat({cfg_caswrlat_unconnected_wire_7,cfg_caswrlat_unconnected_wire_6,cfg_caswrlat_unconnected_wire_5,cfg_caswrlat_unconnected_wire_4,\c0|cfg_caswrlat_wire[3] ,\c0|cfg_caswrlat_wire[2] ,\c0|cfg_caswrlat_wire[1] ,\c0|cfg_caswrlat_wire[0] }),
	.cfg_coladdrwidth({cfg_coladdrwidth_unconnected_wire_7,cfg_coladdrwidth_unconnected_wire_6,cfg_coladdrwidth_unconnected_wire_5,\c0|cfg_coladdrwidth_wire[4] ,\c0|cfg_coladdrwidth_wire[3] ,\c0|cfg_coladdrwidth_wire[2] ,\c0|cfg_coladdrwidth_wire[1] ,\c0|cfg_coladdrwidth_wire[0] }),
	.cfg_csaddrwidth({cfg_csaddrwidth_unconnected_wire_7,cfg_csaddrwidth_unconnected_wire_6,cfg_csaddrwidth_unconnected_wire_5,cfg_csaddrwidth_unconnected_wire_4,cfg_csaddrwidth_unconnected_wire_3,\c0|cfg_csaddrwidth_wire[2] ,\c0|cfg_csaddrwidth_wire[1] ,\c0|cfg_csaddrwidth_wire[0] }),
	.cfg_devicewidth({cfg_devicewidth_unconnected_wire_7,cfg_devicewidth_unconnected_wire_6,cfg_devicewidth_unconnected_wire_5,cfg_devicewidth_unconnected_wire_4,\c0|cfg_devicewidth_wire[3] ,\c0|cfg_devicewidth_wire[2] ,\c0|cfg_devicewidth_wire[1] ,\c0|cfg_devicewidth_wire[0] }),
	.cfg_interfacewidth({\c0|cfg_interfacewidth_wire[7] ,\c0|cfg_interfacewidth_wire[6] ,\c0|cfg_interfacewidth_wire[5] ,\c0|cfg_interfacewidth_wire[4] ,\c0|cfg_interfacewidth_wire[3] ,\c0|cfg_interfacewidth_wire[2] ,\c0|cfg_interfacewidth_wire[1] ,\c0|cfg_interfacewidth_wire[0] }),
	.cfg_rowaddrwidth({cfg_rowaddrwidth_unconnected_wire_7,cfg_rowaddrwidth_unconnected_wire_6,cfg_rowaddrwidth_unconnected_wire_5,\c0|cfg_rowaddrwidth_wire[4] ,\c0|cfg_rowaddrwidth_wire[3] ,\c0|cfg_rowaddrwidth_wire[2] ,\c0|cfg_rowaddrwidth_wire[1] ,\c0|cfg_rowaddrwidth_wire[0] }),
	.cfg_tcl({cfg_tcl_unconnected_wire_7,cfg_tcl_unconnected_wire_6,cfg_tcl_unconnected_wire_5,\c0|cfg_tcl_wire[4] ,\c0|cfg_tcl_wire[3] ,\c0|cfg_tcl_wire[2] ,\c0|cfg_tcl_wire[1] ,\c0|cfg_tcl_wire[0] }),
	.cfg_tmrd({cfg_tmrd_unconnected_wire_7,cfg_tmrd_unconnected_wire_6,cfg_tmrd_unconnected_wire_5,cfg_tmrd_unconnected_wire_4,\c0|cfg_tmrd_wire[3] ,\c0|cfg_tmrd_wire[2] ,\c0|cfg_tmrd_wire[1] ,\c0|cfg_tmrd_wire[0] }),
	.cfg_trefi({cfg_trefi_unconnected_wire_15,cfg_trefi_unconnected_wire_14,cfg_trefi_unconnected_wire_13,\c0|cfg_trefi_wire[12] ,\c0|cfg_trefi_wire[11] ,\c0|cfg_trefi_wire[10] ,\c0|cfg_trefi_wire[9] ,\c0|cfg_trefi_wire[8] ,\c0|cfg_trefi_wire[7] ,\c0|cfg_trefi_wire[6] ,
\c0|cfg_trefi_wire[5] ,\c0|cfg_trefi_wire[4] ,\c0|cfg_trefi_wire[3] ,\c0|cfg_trefi_wire[2] ,\c0|cfg_trefi_wire[1] ,\c0|cfg_trefi_wire[0] }),
	.cfg_trfc({\c0|cfg_trfc_wire[7] ,\c0|cfg_trfc_wire[6] ,\c0|cfg_trfc_wire[5] ,\c0|cfg_trfc_wire[4] ,\c0|cfg_trfc_wire[3] ,\c0|cfg_trfc_wire[2] ,\c0|cfg_trfc_wire[1] ,\c0|cfg_trfc_wire[0] }),
	.cfg_twr({cfg_twr_unconnected_wire_7,cfg_twr_unconnected_wire_6,cfg_twr_unconnected_wire_5,cfg_twr_unconnected_wire_4,\c0|cfg_twr_wire[3] ,\c0|cfg_twr_wire[2] ,\c0|cfg_twr_wire[1] ,\c0|cfg_twr_wire[0] }),
	.afi_mem_clk_disable({\c0|afi_mem_clk_disable[0] }),
	.cfg_dramconfig({cfg_dramconfig_unconnected_wire_23,cfg_dramconfig_unconnected_wire_22,cfg_dramconfig_unconnected_wire_21,\c0|cfg_dramconfig_wire[20] ,\c0|cfg_dramconfig_wire[19] ,\c0|cfg_dramconfig_wire[18] ,\c0|cfg_dramconfig_wire[17] ,\c0|cfg_dramconfig_wire[16] ,
\c0|cfg_dramconfig_wire[15] ,\c0|cfg_dramconfig_wire[14] ,\c0|cfg_dramconfig_wire[13] ,\c0|cfg_dramconfig_wire[12] ,\c0|cfg_dramconfig_wire[11] ,\c0|cfg_dramconfig_wire[10] ,\c0|cfg_dramconfig_wire[9] ,\c0|cfg_dramconfig_wire[8] ,\c0|cfg_dramconfig_wire[7] ,
\c0|cfg_dramconfig_wire[6] ,\c0|cfg_dramconfig_wire[5] ,\c0|cfg_dramconfig_wire[4] ,\c0|cfg_dramconfig_wire[3] ,\c0|cfg_dramconfig_wire[2] ,\c0|cfg_dramconfig_wire[1] ,\c0|cfg_dramconfig_wire[0] }),
	.ctl_clk(\p0|umemphy|memphy_ldc|leveled_dqs_clocks[0] ));

HPS_altera_mem_if_oct_cyclonev oct(
	.parallelterminationcontrol({parallelterminationcontrol_15,parallelterminationcontrol_14,parallelterminationcontrol_13,parallelterminationcontrol_12,parallelterminationcontrol_11,parallelterminationcontrol_10,parallelterminationcontrol_9,parallelterminationcontrol_8,
parallelterminationcontrol_7,parallelterminationcontrol_6,parallelterminationcontrol_5,parallelterminationcontrol_4,parallelterminationcontrol_3,parallelterminationcontrol_2,parallelterminationcontrol_1,parallelterminationcontrol_0}),
	.seriesterminationcontrol({seriesterminationcontrol_15,seriesterminationcontrol_14,seriesterminationcontrol_13,seriesterminationcontrol_12,seriesterminationcontrol_11,seriesterminationcontrol_10,seriesterminationcontrol_9,seriesterminationcontrol_8,seriesterminationcontrol_7,
seriesterminationcontrol_6,seriesterminationcontrol_5,seriesterminationcontrol_4,seriesterminationcontrol_3,seriesterminationcontrol_2,seriesterminationcontrol_1,seriesterminationcontrol_0}),
	.oct_rzqin(memory_oct_rzqin));

endmodule

module HPS_altera_mem_if_dll_cyclonev (
	clk,
	dll_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	clk;
output 	[6:0] dll_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [6:0] dll_wys_m_DELAYCTRLOUT_bus;

assign dll_delayctrl[0] = dll_wys_m_DELAYCTRLOUT_bus[0];
assign dll_delayctrl[1] = dll_wys_m_DELAYCTRLOUT_bus[1];
assign dll_delayctrl[2] = dll_wys_m_DELAYCTRLOUT_bus[2];
assign dll_delayctrl[3] = dll_wys_m_DELAYCTRLOUT_bus[3];
assign dll_delayctrl[4] = dll_wys_m_DELAYCTRLOUT_bus[4];
assign dll_delayctrl[5] = dll_wys_m_DELAYCTRLOUT_bus[5];
assign dll_delayctrl[6] = dll_wys_m_DELAYCTRLOUT_bus[6];

cyclonev_dll dll_wys_m(
	.clk(clk),
	.aload(vcc),
	.upndnin(gnd),
	.upndninclkena(gnd),
	.dqsupdate(),
	.upndnout(),
	.delayctrlout(dll_wys_m_DELAYCTRLOUT_bus));
defparam dll_wys_m.delayctrlout_mode = "normal";
defparam dll_wys_m.input_frequency = "3333 ps";
defparam dll_wys_m.jitter_reduction = "true";
defparam dll_wys_m.sim_buffer_delay_increment = 10;
defparam dll_wys_m.sim_buffer_intrinsic_delay = 175;
defparam dll_wys_m.sim_valid_lock = 16;
defparam dll_wys_m.sim_valid_lockcount = 0;
defparam dll_wys_m.static_delay_ctrl = 8;
defparam dll_wys_m.upndnout_mode = "clock";
defparam dll_wys_m.use_upndnin = "false";
defparam dll_wys_m.use_upndninclkena = "false";

endmodule

module HPS_altera_mem_if_hard_memory_controller_top_cyclonev (
	afi_cal_fail,
	afi_cal_success,
	afi_rdata_valid,
	ctl_reset_n,
	afi_rdata,
	afi_wlat,
	afi_cas_n,
	afi_ras_n,
	afi_rst_n,
	afi_we_n,
	afi_addr,
	afi_ba,
	afi_cke,
	afi_cs_n,
	afi_dm,
	afi_dqs_burst,
	afi_odt,
	afi_rdata_en,
	afi_rdata_en_full,
	afi_wdata,
	afi_wdata_valid,
	cfg_addlat,
	cfg_bankaddrwidth,
	cfg_caswrlat,
	cfg_coladdrwidth,
	cfg_csaddrwidth,
	cfg_devicewidth,
	cfg_interfacewidth,
	cfg_rowaddrwidth,
	cfg_tcl,
	cfg_tmrd,
	cfg_trefi,
	cfg_trfc,
	cfg_twr,
	afi_mem_clk_disable,
	cfg_dramconfig,
	ctl_clk)/* synthesis synthesis_greybox=0 */;
input 	afi_cal_fail;
input 	afi_cal_success;
input 	[0:0] afi_rdata_valid;
input 	ctl_reset_n;
input 	[79:0] afi_rdata;
input 	[3:0] afi_wlat;
output 	[0:0] afi_cas_n;
output 	[0:0] afi_ras_n;
output 	[0:0] afi_rst_n;
output 	[0:0] afi_we_n;
output 	[19:0] afi_addr;
output 	[2:0] afi_ba;
output 	[1:0] afi_cke;
output 	[1:0] afi_cs_n;
output 	[9:0] afi_dm;
output 	[4:0] afi_dqs_burst;
output 	[1:0] afi_odt;
output 	[4:0] afi_rdata_en;
output 	[4:0] afi_rdata_en_full;
output 	[79:0] afi_wdata;
output 	[4:0] afi_wdata_valid;
output 	[7:0] cfg_addlat;
output 	[7:0] cfg_bankaddrwidth;
output 	[7:0] cfg_caswrlat;
output 	[7:0] cfg_coladdrwidth;
output 	[7:0] cfg_csaddrwidth;
output 	[7:0] cfg_devicewidth;
output 	[7:0] cfg_interfacewidth;
output 	[7:0] cfg_rowaddrwidth;
output 	[7:0] cfg_tcl;
output 	[7:0] cfg_tmrd;
output 	[15:0] cfg_trefi;
output 	[7:0] cfg_trfc;
output 	[7:0] cfg_twr;
output 	[0:0] afi_mem_clk_disable;
output 	[23:0] cfg_dramconfig;
input 	ctl_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [19:0] hmc_inst_AFIADDR_bus;
wire [2:0] hmc_inst_AFIBA_bus;
wire [1:0] hmc_inst_AFICKE_bus;
wire [1:0] hmc_inst_AFICSN_bus;
wire [9:0] hmc_inst_AFIDM_bus;
wire [4:0] hmc_inst_AFIDQSBURST_bus;
wire [1:0] hmc_inst_AFIODT_bus;
wire [4:0] hmc_inst_AFIRDATAEN_bus;
wire [4:0] hmc_inst_AFIRDATAENFULL_bus;
wire [79:0] hmc_inst_AFIWDATA_bus;
wire [4:0] hmc_inst_AFIWDATAVALID_bus;
wire [4:0] hmc_inst_CFGADDLAT_bus;
wire [2:0] hmc_inst_CFGBANKADDRWIDTH_bus;
wire [3:0] hmc_inst_CFGCASWRLAT_bus;
wire [4:0] hmc_inst_CFGCOLADDRWIDTH_bus;
wire [2:0] hmc_inst_CFGCSADDRWIDTH_bus;
wire [3:0] hmc_inst_CFGDEVICEWIDTH_bus;
wire [7:0] hmc_inst_CFGINTERFACEWIDTH_bus;
wire [4:0] hmc_inst_CFGROWADDRWIDTH_bus;
wire [4:0] hmc_inst_CFGTCL_bus;
wire [3:0] hmc_inst_CFGTMRD_bus;
wire [12:0] hmc_inst_CFGTREFI_bus;
wire [7:0] hmc_inst_CFGTRFC_bus;
wire [3:0] hmc_inst_CFGTWR_bus;
wire [1:0] hmc_inst_CTLMEMCLKDISABLE_bus;
wire [20:0] hmc_inst_DRAMCONFIG_bus;

assign afi_addr[0] = hmc_inst_AFIADDR_bus[0];
assign afi_addr[1] = hmc_inst_AFIADDR_bus[1];
assign afi_addr[2] = hmc_inst_AFIADDR_bus[2];
assign afi_addr[3] = hmc_inst_AFIADDR_bus[3];
assign afi_addr[4] = hmc_inst_AFIADDR_bus[4];
assign afi_addr[5] = hmc_inst_AFIADDR_bus[5];
assign afi_addr[6] = hmc_inst_AFIADDR_bus[6];
assign afi_addr[7] = hmc_inst_AFIADDR_bus[7];
assign afi_addr[8] = hmc_inst_AFIADDR_bus[8];
assign afi_addr[9] = hmc_inst_AFIADDR_bus[9];
assign afi_addr[10] = hmc_inst_AFIADDR_bus[10];
assign afi_addr[11] = hmc_inst_AFIADDR_bus[11];
assign afi_addr[12] = hmc_inst_AFIADDR_bus[12];
assign afi_addr[13] = hmc_inst_AFIADDR_bus[13];
assign afi_addr[14] = hmc_inst_AFIADDR_bus[14];
assign afi_addr[15] = hmc_inst_AFIADDR_bus[15];
assign afi_addr[16] = hmc_inst_AFIADDR_bus[16];
assign afi_addr[17] = hmc_inst_AFIADDR_bus[17];
assign afi_addr[18] = hmc_inst_AFIADDR_bus[18];
assign afi_addr[19] = hmc_inst_AFIADDR_bus[19];

assign afi_ba[0] = hmc_inst_AFIBA_bus[0];
assign afi_ba[1] = hmc_inst_AFIBA_bus[1];
assign afi_ba[2] = hmc_inst_AFIBA_bus[2];

assign afi_cke[0] = hmc_inst_AFICKE_bus[0];
assign afi_cke[1] = hmc_inst_AFICKE_bus[1];

assign afi_cs_n[0] = hmc_inst_AFICSN_bus[0];
assign afi_cs_n[1] = hmc_inst_AFICSN_bus[1];

assign afi_dm[0] = hmc_inst_AFIDM_bus[0];
assign afi_dm[1] = hmc_inst_AFIDM_bus[1];
assign afi_dm[2] = hmc_inst_AFIDM_bus[2];
assign afi_dm[3] = hmc_inst_AFIDM_bus[3];
assign afi_dm[4] = hmc_inst_AFIDM_bus[4];
assign afi_dm[5] = hmc_inst_AFIDM_bus[5];
assign afi_dm[6] = hmc_inst_AFIDM_bus[6];
assign afi_dm[7] = hmc_inst_AFIDM_bus[7];
assign afi_dm[8] = hmc_inst_AFIDM_bus[8];
assign afi_dm[9] = hmc_inst_AFIDM_bus[9];

assign afi_dqs_burst[0] = hmc_inst_AFIDQSBURST_bus[0];
assign afi_dqs_burst[1] = hmc_inst_AFIDQSBURST_bus[1];
assign afi_dqs_burst[2] = hmc_inst_AFIDQSBURST_bus[2];
assign afi_dqs_burst[3] = hmc_inst_AFIDQSBURST_bus[3];
assign afi_dqs_burst[4] = hmc_inst_AFIDQSBURST_bus[4];

assign afi_odt[0] = hmc_inst_AFIODT_bus[0];
assign afi_odt[1] = hmc_inst_AFIODT_bus[1];

assign afi_rdata_en[0] = hmc_inst_AFIRDATAEN_bus[0];
assign afi_rdata_en[1] = hmc_inst_AFIRDATAEN_bus[1];
assign afi_rdata_en[2] = hmc_inst_AFIRDATAEN_bus[2];
assign afi_rdata_en[3] = hmc_inst_AFIRDATAEN_bus[3];
assign afi_rdata_en[4] = hmc_inst_AFIRDATAEN_bus[4];

assign afi_rdata_en_full[0] = hmc_inst_AFIRDATAENFULL_bus[0];
assign afi_rdata_en_full[1] = hmc_inst_AFIRDATAENFULL_bus[1];
assign afi_rdata_en_full[2] = hmc_inst_AFIRDATAENFULL_bus[2];
assign afi_rdata_en_full[3] = hmc_inst_AFIRDATAENFULL_bus[3];
assign afi_rdata_en_full[4] = hmc_inst_AFIRDATAENFULL_bus[4];

assign afi_wdata[0] = hmc_inst_AFIWDATA_bus[0];
assign afi_wdata[1] = hmc_inst_AFIWDATA_bus[1];
assign afi_wdata[2] = hmc_inst_AFIWDATA_bus[2];
assign afi_wdata[3] = hmc_inst_AFIWDATA_bus[3];
assign afi_wdata[4] = hmc_inst_AFIWDATA_bus[4];
assign afi_wdata[5] = hmc_inst_AFIWDATA_bus[5];
assign afi_wdata[6] = hmc_inst_AFIWDATA_bus[6];
assign afi_wdata[7] = hmc_inst_AFIWDATA_bus[7];
assign afi_wdata[8] = hmc_inst_AFIWDATA_bus[8];
assign afi_wdata[9] = hmc_inst_AFIWDATA_bus[9];
assign afi_wdata[10] = hmc_inst_AFIWDATA_bus[10];
assign afi_wdata[11] = hmc_inst_AFIWDATA_bus[11];
assign afi_wdata[12] = hmc_inst_AFIWDATA_bus[12];
assign afi_wdata[13] = hmc_inst_AFIWDATA_bus[13];
assign afi_wdata[14] = hmc_inst_AFIWDATA_bus[14];
assign afi_wdata[15] = hmc_inst_AFIWDATA_bus[15];
assign afi_wdata[16] = hmc_inst_AFIWDATA_bus[16];
assign afi_wdata[17] = hmc_inst_AFIWDATA_bus[17];
assign afi_wdata[18] = hmc_inst_AFIWDATA_bus[18];
assign afi_wdata[19] = hmc_inst_AFIWDATA_bus[19];
assign afi_wdata[20] = hmc_inst_AFIWDATA_bus[20];
assign afi_wdata[21] = hmc_inst_AFIWDATA_bus[21];
assign afi_wdata[22] = hmc_inst_AFIWDATA_bus[22];
assign afi_wdata[23] = hmc_inst_AFIWDATA_bus[23];
assign afi_wdata[24] = hmc_inst_AFIWDATA_bus[24];
assign afi_wdata[25] = hmc_inst_AFIWDATA_bus[25];
assign afi_wdata[26] = hmc_inst_AFIWDATA_bus[26];
assign afi_wdata[27] = hmc_inst_AFIWDATA_bus[27];
assign afi_wdata[28] = hmc_inst_AFIWDATA_bus[28];
assign afi_wdata[29] = hmc_inst_AFIWDATA_bus[29];
assign afi_wdata[30] = hmc_inst_AFIWDATA_bus[30];
assign afi_wdata[31] = hmc_inst_AFIWDATA_bus[31];
assign afi_wdata[32] = hmc_inst_AFIWDATA_bus[32];
assign afi_wdata[33] = hmc_inst_AFIWDATA_bus[33];
assign afi_wdata[34] = hmc_inst_AFIWDATA_bus[34];
assign afi_wdata[35] = hmc_inst_AFIWDATA_bus[35];
assign afi_wdata[36] = hmc_inst_AFIWDATA_bus[36];
assign afi_wdata[37] = hmc_inst_AFIWDATA_bus[37];
assign afi_wdata[38] = hmc_inst_AFIWDATA_bus[38];
assign afi_wdata[39] = hmc_inst_AFIWDATA_bus[39];
assign afi_wdata[40] = hmc_inst_AFIWDATA_bus[40];
assign afi_wdata[41] = hmc_inst_AFIWDATA_bus[41];
assign afi_wdata[42] = hmc_inst_AFIWDATA_bus[42];
assign afi_wdata[43] = hmc_inst_AFIWDATA_bus[43];
assign afi_wdata[44] = hmc_inst_AFIWDATA_bus[44];
assign afi_wdata[45] = hmc_inst_AFIWDATA_bus[45];
assign afi_wdata[46] = hmc_inst_AFIWDATA_bus[46];
assign afi_wdata[47] = hmc_inst_AFIWDATA_bus[47];
assign afi_wdata[48] = hmc_inst_AFIWDATA_bus[48];
assign afi_wdata[49] = hmc_inst_AFIWDATA_bus[49];
assign afi_wdata[50] = hmc_inst_AFIWDATA_bus[50];
assign afi_wdata[51] = hmc_inst_AFIWDATA_bus[51];
assign afi_wdata[52] = hmc_inst_AFIWDATA_bus[52];
assign afi_wdata[53] = hmc_inst_AFIWDATA_bus[53];
assign afi_wdata[54] = hmc_inst_AFIWDATA_bus[54];
assign afi_wdata[55] = hmc_inst_AFIWDATA_bus[55];
assign afi_wdata[56] = hmc_inst_AFIWDATA_bus[56];
assign afi_wdata[57] = hmc_inst_AFIWDATA_bus[57];
assign afi_wdata[58] = hmc_inst_AFIWDATA_bus[58];
assign afi_wdata[59] = hmc_inst_AFIWDATA_bus[59];
assign afi_wdata[60] = hmc_inst_AFIWDATA_bus[60];
assign afi_wdata[61] = hmc_inst_AFIWDATA_bus[61];
assign afi_wdata[62] = hmc_inst_AFIWDATA_bus[62];
assign afi_wdata[63] = hmc_inst_AFIWDATA_bus[63];
assign afi_wdata[64] = hmc_inst_AFIWDATA_bus[64];
assign afi_wdata[65] = hmc_inst_AFIWDATA_bus[65];
assign afi_wdata[66] = hmc_inst_AFIWDATA_bus[66];
assign afi_wdata[67] = hmc_inst_AFIWDATA_bus[67];
assign afi_wdata[68] = hmc_inst_AFIWDATA_bus[68];
assign afi_wdata[69] = hmc_inst_AFIWDATA_bus[69];
assign afi_wdata[70] = hmc_inst_AFIWDATA_bus[70];
assign afi_wdata[71] = hmc_inst_AFIWDATA_bus[71];
assign afi_wdata[72] = hmc_inst_AFIWDATA_bus[72];
assign afi_wdata[73] = hmc_inst_AFIWDATA_bus[73];
assign afi_wdata[74] = hmc_inst_AFIWDATA_bus[74];
assign afi_wdata[75] = hmc_inst_AFIWDATA_bus[75];
assign afi_wdata[76] = hmc_inst_AFIWDATA_bus[76];
assign afi_wdata[77] = hmc_inst_AFIWDATA_bus[77];
assign afi_wdata[78] = hmc_inst_AFIWDATA_bus[78];
assign afi_wdata[79] = hmc_inst_AFIWDATA_bus[79];

assign afi_wdata_valid[0] = hmc_inst_AFIWDATAVALID_bus[0];
assign afi_wdata_valid[1] = hmc_inst_AFIWDATAVALID_bus[1];
assign afi_wdata_valid[2] = hmc_inst_AFIWDATAVALID_bus[2];
assign afi_wdata_valid[3] = hmc_inst_AFIWDATAVALID_bus[3];
assign afi_wdata_valid[4] = hmc_inst_AFIWDATAVALID_bus[4];

assign cfg_addlat[0] = hmc_inst_CFGADDLAT_bus[0];
assign cfg_addlat[1] = hmc_inst_CFGADDLAT_bus[1];
assign cfg_addlat[2] = hmc_inst_CFGADDLAT_bus[2];
assign cfg_addlat[3] = hmc_inst_CFGADDLAT_bus[3];
assign cfg_addlat[4] = hmc_inst_CFGADDLAT_bus[4];

assign cfg_bankaddrwidth[0] = hmc_inst_CFGBANKADDRWIDTH_bus[0];
assign cfg_bankaddrwidth[1] = hmc_inst_CFGBANKADDRWIDTH_bus[1];
assign cfg_bankaddrwidth[2] = hmc_inst_CFGBANKADDRWIDTH_bus[2];

assign cfg_caswrlat[0] = hmc_inst_CFGCASWRLAT_bus[0];
assign cfg_caswrlat[1] = hmc_inst_CFGCASWRLAT_bus[1];
assign cfg_caswrlat[2] = hmc_inst_CFGCASWRLAT_bus[2];
assign cfg_caswrlat[3] = hmc_inst_CFGCASWRLAT_bus[3];

assign cfg_coladdrwidth[0] = hmc_inst_CFGCOLADDRWIDTH_bus[0];
assign cfg_coladdrwidth[1] = hmc_inst_CFGCOLADDRWIDTH_bus[1];
assign cfg_coladdrwidth[2] = hmc_inst_CFGCOLADDRWIDTH_bus[2];
assign cfg_coladdrwidth[3] = hmc_inst_CFGCOLADDRWIDTH_bus[3];
assign cfg_coladdrwidth[4] = hmc_inst_CFGCOLADDRWIDTH_bus[4];

assign cfg_csaddrwidth[0] = hmc_inst_CFGCSADDRWIDTH_bus[0];
assign cfg_csaddrwidth[1] = hmc_inst_CFGCSADDRWIDTH_bus[1];
assign cfg_csaddrwidth[2] = hmc_inst_CFGCSADDRWIDTH_bus[2];

assign cfg_devicewidth[0] = hmc_inst_CFGDEVICEWIDTH_bus[0];
assign cfg_devicewidth[1] = hmc_inst_CFGDEVICEWIDTH_bus[1];
assign cfg_devicewidth[2] = hmc_inst_CFGDEVICEWIDTH_bus[2];
assign cfg_devicewidth[3] = hmc_inst_CFGDEVICEWIDTH_bus[3];

assign cfg_interfacewidth[0] = hmc_inst_CFGINTERFACEWIDTH_bus[0];
assign cfg_interfacewidth[1] = hmc_inst_CFGINTERFACEWIDTH_bus[1];
assign cfg_interfacewidth[2] = hmc_inst_CFGINTERFACEWIDTH_bus[2];
assign cfg_interfacewidth[3] = hmc_inst_CFGINTERFACEWIDTH_bus[3];
assign cfg_interfacewidth[4] = hmc_inst_CFGINTERFACEWIDTH_bus[4];
assign cfg_interfacewidth[5] = hmc_inst_CFGINTERFACEWIDTH_bus[5];
assign cfg_interfacewidth[6] = hmc_inst_CFGINTERFACEWIDTH_bus[6];
assign cfg_interfacewidth[7] = hmc_inst_CFGINTERFACEWIDTH_bus[7];

assign cfg_rowaddrwidth[0] = hmc_inst_CFGROWADDRWIDTH_bus[0];
assign cfg_rowaddrwidth[1] = hmc_inst_CFGROWADDRWIDTH_bus[1];
assign cfg_rowaddrwidth[2] = hmc_inst_CFGROWADDRWIDTH_bus[2];
assign cfg_rowaddrwidth[3] = hmc_inst_CFGROWADDRWIDTH_bus[3];
assign cfg_rowaddrwidth[4] = hmc_inst_CFGROWADDRWIDTH_bus[4];

assign cfg_tcl[0] = hmc_inst_CFGTCL_bus[0];
assign cfg_tcl[1] = hmc_inst_CFGTCL_bus[1];
assign cfg_tcl[2] = hmc_inst_CFGTCL_bus[2];
assign cfg_tcl[3] = hmc_inst_CFGTCL_bus[3];
assign cfg_tcl[4] = hmc_inst_CFGTCL_bus[4];

assign cfg_tmrd[0] = hmc_inst_CFGTMRD_bus[0];
assign cfg_tmrd[1] = hmc_inst_CFGTMRD_bus[1];
assign cfg_tmrd[2] = hmc_inst_CFGTMRD_bus[2];
assign cfg_tmrd[3] = hmc_inst_CFGTMRD_bus[3];

assign cfg_trefi[0] = hmc_inst_CFGTREFI_bus[0];
assign cfg_trefi[1] = hmc_inst_CFGTREFI_bus[1];
assign cfg_trefi[2] = hmc_inst_CFGTREFI_bus[2];
assign cfg_trefi[3] = hmc_inst_CFGTREFI_bus[3];
assign cfg_trefi[4] = hmc_inst_CFGTREFI_bus[4];
assign cfg_trefi[5] = hmc_inst_CFGTREFI_bus[5];
assign cfg_trefi[6] = hmc_inst_CFGTREFI_bus[6];
assign cfg_trefi[7] = hmc_inst_CFGTREFI_bus[7];
assign cfg_trefi[8] = hmc_inst_CFGTREFI_bus[8];
assign cfg_trefi[9] = hmc_inst_CFGTREFI_bus[9];
assign cfg_trefi[10] = hmc_inst_CFGTREFI_bus[10];
assign cfg_trefi[11] = hmc_inst_CFGTREFI_bus[11];
assign cfg_trefi[12] = hmc_inst_CFGTREFI_bus[12];

assign cfg_trfc[0] = hmc_inst_CFGTRFC_bus[0];
assign cfg_trfc[1] = hmc_inst_CFGTRFC_bus[1];
assign cfg_trfc[2] = hmc_inst_CFGTRFC_bus[2];
assign cfg_trfc[3] = hmc_inst_CFGTRFC_bus[3];
assign cfg_trfc[4] = hmc_inst_CFGTRFC_bus[4];
assign cfg_trfc[5] = hmc_inst_CFGTRFC_bus[5];
assign cfg_trfc[6] = hmc_inst_CFGTRFC_bus[6];
assign cfg_trfc[7] = hmc_inst_CFGTRFC_bus[7];

assign cfg_twr[0] = hmc_inst_CFGTWR_bus[0];
assign cfg_twr[1] = hmc_inst_CFGTWR_bus[1];
assign cfg_twr[2] = hmc_inst_CFGTWR_bus[2];
assign cfg_twr[3] = hmc_inst_CFGTWR_bus[3];

assign afi_mem_clk_disable[0] = hmc_inst_CTLMEMCLKDISABLE_bus[0];

assign cfg_dramconfig[0] = hmc_inst_DRAMCONFIG_bus[0];
assign cfg_dramconfig[1] = hmc_inst_DRAMCONFIG_bus[1];
assign cfg_dramconfig[2] = hmc_inst_DRAMCONFIG_bus[2];
assign cfg_dramconfig[3] = hmc_inst_DRAMCONFIG_bus[3];
assign cfg_dramconfig[4] = hmc_inst_DRAMCONFIG_bus[4];
assign cfg_dramconfig[5] = hmc_inst_DRAMCONFIG_bus[5];
assign cfg_dramconfig[6] = hmc_inst_DRAMCONFIG_bus[6];
assign cfg_dramconfig[7] = hmc_inst_DRAMCONFIG_bus[7];
assign cfg_dramconfig[8] = hmc_inst_DRAMCONFIG_bus[8];
assign cfg_dramconfig[9] = hmc_inst_DRAMCONFIG_bus[9];
assign cfg_dramconfig[10] = hmc_inst_DRAMCONFIG_bus[10];
assign cfg_dramconfig[11] = hmc_inst_DRAMCONFIG_bus[11];
assign cfg_dramconfig[12] = hmc_inst_DRAMCONFIG_bus[12];
assign cfg_dramconfig[13] = hmc_inst_DRAMCONFIG_bus[13];
assign cfg_dramconfig[14] = hmc_inst_DRAMCONFIG_bus[14];
assign cfg_dramconfig[15] = hmc_inst_DRAMCONFIG_bus[15];
assign cfg_dramconfig[16] = hmc_inst_DRAMCONFIG_bus[16];
assign cfg_dramconfig[17] = hmc_inst_DRAMCONFIG_bus[17];
assign cfg_dramconfig[18] = hmc_inst_DRAMCONFIG_bus[18];
assign cfg_dramconfig[19] = hmc_inst_DRAMCONFIG_bus[19];
assign cfg_dramconfig[20] = hmc_inst_DRAMCONFIG_bus[20];

cyclonev_hmc hmc_inst(
	.afirdatavalid(afi_rdata_valid[0]),
	.csrclk(gnd),
	.csrdin(gnd),
	.csren(gnd),
	.ctlcalfail(afi_cal_fail),
	.ctlcalsuccess(afi_cal_success),
	.ctlclk(ctl_clk),
	.ctlresetn(ctl_reset_n),
	.globalresetn(gnd),
	.iavstcmdresetn0(vcc),
	.iavstcmdresetn1(vcc),
	.iavstcmdresetn2(vcc),
	.iavstcmdresetn3(vcc),
	.iavstcmdresetn4(vcc),
	.iavstcmdresetn5(vcc),
	.iavstrdclk0(gnd),
	.iavstrdclk1(gnd),
	.iavstrdclk2(gnd),
	.iavstrdclk3(gnd),
	.iavstrdready0(vcc),
	.iavstrdready1(vcc),
	.iavstrdready2(vcc),
	.iavstrdready3(vcc),
	.iavstrdresetn0(vcc),
	.iavstrdresetn1(vcc),
	.iavstrdresetn2(vcc),
	.iavstrdresetn3(vcc),
	.iavstwrackready0(vcc),
	.iavstwrackready1(vcc),
	.iavstwrackready2(vcc),
	.iavstwrackready3(vcc),
	.iavstwrackready4(vcc),
	.iavstwrackready5(vcc),
	.iavstwrclk0(gnd),
	.iavstwrclk1(gnd),
	.iavstwrclk2(gnd),
	.iavstwrclk3(gnd),
	.iavstwrresetn0(vcc),
	.iavstwrresetn1(vcc),
	.iavstwrresetn2(vcc),
	.iavstwrresetn3(vcc),
	.localdeeppowerdnreq(gnd),
	.localrefreshreq(gnd),
	.localselfrfshreq(gnd),
	.mmrbe(gnd),
	.mmrburstbegin(vcc),
	.mmrclk(gnd),
	.mmrreadreq(gnd),
	.mmrresetn(vcc),
	.mmrwritereq(gnd),
	.portclk0(gnd),
	.portclk1(gnd),
	.portclk2(gnd),
	.portclk3(gnd),
	.portclk4(gnd),
	.portclk5(gnd),
	.scanenable(gnd),
	.scbe(gnd),
	.scburstbegin(gnd),
	.scclk(gnd),
	.screadreq(gnd),
	.scresetn(vcc),
	.scwritereq(gnd),
	.afirdata({afi_rdata[79],afi_rdata[78],afi_rdata[77],afi_rdata[76],afi_rdata[75],afi_rdata[74],afi_rdata[73],afi_rdata[72],afi_rdata[71],afi_rdata[70],afi_rdata[69],afi_rdata[68],afi_rdata[67],afi_rdata[66],afi_rdata[65],afi_rdata[64],afi_rdata[63],afi_rdata[62],afi_rdata[61],afi_rdata[60],afi_rdata[59],afi_rdata[58],afi_rdata[57],afi_rdata[56],afi_rdata[55],afi_rdata[54],afi_rdata[53],afi_rdata[52],
afi_rdata[51],afi_rdata[50],afi_rdata[49],afi_rdata[48],afi_rdata[47],afi_rdata[46],afi_rdata[45],afi_rdata[44],afi_rdata[43],afi_rdata[42],afi_rdata[41],afi_rdata[40],afi_rdata[39],afi_rdata[38],afi_rdata[37],afi_rdata[36],afi_rdata[35],afi_rdata[34],afi_rdata[33],afi_rdata[32],afi_rdata[31],afi_rdata[30],afi_rdata[29],afi_rdata[28],afi_rdata[27],afi_rdata[26],afi_rdata[25],afi_rdata[24],
afi_rdata[23],afi_rdata[22],afi_rdata[21],afi_rdata[20],afi_rdata[19],afi_rdata[18],afi_rdata[17],afi_rdata[16],afi_rdata[15],afi_rdata[14],afi_rdata[13],afi_rdata[12],afi_rdata[11],afi_rdata[10],afi_rdata[9],afi_rdata[8],afi_rdata[7],afi_rdata[6],afi_rdata[5],afi_rdata[4],afi_rdata[3],afi_rdata[2],afi_rdata[1],afi_rdata[0]}),
	.afiseqbusy({gnd,gnd}),
	.afiwlat({afi_wlat[3],afi_wlat[2],afi_wlat[1],afi_wlat[0]}),
	.bondingin1({gnd,gnd,gnd,gnd}),
	.bondingin2({gnd,gnd,gnd,gnd,gnd,gnd}),
	.bondingin3({gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstcmddata0({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstcmddata1({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstcmddata2({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstcmddata3({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstcmddata4({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstcmddata5({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iavstwrdata0({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd}),
	.iavstwrdata1({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd}),
	.iavstwrdata2({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd}),
	.iavstwrdata3({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd}),
	.localdeeppowerdnchip({gnd,gnd}),
	.localrefreshchip({gnd,gnd}),
	.localselfrfshchip({gnd,gnd}),
	.mmraddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.mmrburstcount({gnd,vcc}),
	.mmrwdata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.scaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.scburstcount({gnd,gnd}),
	.scwdata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.aficasn(afi_cas_n[0]),
	.afirasn(afi_ras_n[0]),
	.afirstn(afi_rst_n[0]),
	.afiwen(afi_we_n[0]),
	.csrdout(),
	.ctlcalreq(),
	.ctlinitreq(),
	.localdeeppowerdnack(),
	.localinitdone(),
	.localpowerdownack(),
	.localrefreshack(),
	.localselfrfshack(),
	.localstsctlempty(),
	.mmrrdatavalid(),
	.mmrwaitrequest(),
	.oammready0(),
	.oammready1(),
	.oammready2(),
	.oammready3(),
	.oammready4(),
	.oammready5(),
	.ordavstvalid0(),
	.ordavstvalid1(),
	.ordavstvalid2(),
	.ordavstvalid3(),
	.owrackavstdata0(),
	.owrackavstdata1(),
	.owrackavstdata2(),
	.owrackavstdata3(),
	.owrackavstdata4(),
	.owrackavstdata5(),
	.owrackavstvalid0(),
	.owrackavstvalid1(),
	.owrackavstvalid2(),
	.owrackavstvalid3(),
	.owrackavstvalid4(),
	.owrackavstvalid5(),
	.scrdatavalid(),
	.scwaitrequest(),
	.afiaddr(hmc_inst_AFIADDR_bus),
	.afiba(hmc_inst_AFIBA_bus),
	.aficke(hmc_inst_AFICKE_bus),
	.aficsn(hmc_inst_AFICSN_bus),
	.afictllongidle(),
	.afictlrefreshdone(),
	.afidm(hmc_inst_AFIDM_bus),
	.afidqsburst(hmc_inst_AFIDQSBURST_bus),
	.afiodt(hmc_inst_AFIODT_bus),
	.afirdataen(hmc_inst_AFIRDATAEN_bus),
	.afirdataenfull(hmc_inst_AFIRDATAENFULL_bus),
	.afiwdata(hmc_inst_AFIWDATA_bus),
	.afiwdatavalid(hmc_inst_AFIWDATAVALID_bus),
	.bondingout1(),
	.bondingout2(),
	.bondingout3(),
	.cfgaddlat(hmc_inst_CFGADDLAT_bus),
	.cfgbankaddrwidth(hmc_inst_CFGBANKADDRWIDTH_bus),
	.cfgcaswrlat(hmc_inst_CFGCASWRLAT_bus),
	.cfgcoladdrwidth(hmc_inst_CFGCOLADDRWIDTH_bus),
	.cfgcsaddrwidth(hmc_inst_CFGCSADDRWIDTH_bus),
	.cfgdevicewidth(hmc_inst_CFGDEVICEWIDTH_bus),
	.cfginterfacewidth(hmc_inst_CFGINTERFACEWIDTH_bus),
	.cfgrowaddrwidth(hmc_inst_CFGROWADDRWIDTH_bus),
	.cfgtcl(hmc_inst_CFGTCL_bus),
	.cfgtmrd(hmc_inst_CFGTMRD_bus),
	.cfgtrefi(hmc_inst_CFGTREFI_bus),
	.cfgtrfc(hmc_inst_CFGTRFC_bus),
	.cfgtwr(hmc_inst_CFGTWR_bus),
	.ctlcalbytelaneseln(),
	.ctlmemclkdisable(hmc_inst_CTLMEMCLKDISABLE_bus),
	.dramconfig(hmc_inst_DRAMCONFIG_bus),
	.mmrrdata(),
	.ordavstdata0(),
	.ordavstdata1(),
	.ordavstdata2(),
	.ordavstdata3(),
	.scrdata());
defparam hmc_inst.attr_counter_one_mask = 64'b0000000000000000000000000000000000000000000000000000000000000000;
defparam hmc_inst.attr_counter_one_match = 64'b0000000000000000000000000000000000000000000000000000000000000000;
defparam hmc_inst.attr_counter_one_reset = "disabled";
defparam hmc_inst.attr_counter_zero_mask = 64'b0000000000000000000000000000000000000000000000000000000000000000;
defparam hmc_inst.attr_counter_zero_match = 64'b0000000000000000000000000000000000000000000000000000000000000000;
defparam hmc_inst.attr_counter_zero_reset = "disabled";
defparam hmc_inst.attr_debug_select_byte = 32'b00000000000000000000000000000000;
defparam hmc_inst.attr_static_config_valid = "disabled";
defparam hmc_inst.auto_pch_enable_0 = "disabled";
defparam hmc_inst.auto_pch_enable_1 = "disabled";
defparam hmc_inst.auto_pch_enable_2 = "disabled";
defparam hmc_inst.auto_pch_enable_3 = "disabled";
defparam hmc_inst.auto_pch_enable_4 = "disabled";
defparam hmc_inst.auto_pch_enable_5 = "disabled";
defparam hmc_inst.cal_req = "disabled";
defparam hmc_inst.cfg_burst_length = "bl_8";
defparam hmc_inst.cfg_interface_width = "dwidth_8";
defparam hmc_inst.cfg_self_rfsh_exit_cycles = "self_rfsh_exit_cycles_512";
defparam hmc_inst.cfg_starve_limit = "starve_limit_10";
defparam hmc_inst.cfg_type = "ddr3";
defparam hmc_inst.clr_intr = "no_clr_intr";
defparam hmc_inst.cmd_port_in_use_0 = "false";
defparam hmc_inst.cmd_port_in_use_1 = "false";
defparam hmc_inst.cmd_port_in_use_2 = "false";
defparam hmc_inst.cmd_port_in_use_3 = "false";
defparam hmc_inst.cmd_port_in_use_4 = "false";
defparam hmc_inst.cmd_port_in_use_5 = "false";
defparam hmc_inst.cport0_rdy_almost_full = "not_full";
defparam hmc_inst.cport0_rfifo_map = "fifo_0";
defparam hmc_inst.cport0_type = "disable";
defparam hmc_inst.cport0_wfifo_map = "fifo_0";
defparam hmc_inst.cport1_rdy_almost_full = "not_full";
defparam hmc_inst.cport1_rfifo_map = "fifo_0";
defparam hmc_inst.cport1_type = "disable";
defparam hmc_inst.cport1_wfifo_map = "fifo_0";
defparam hmc_inst.cport2_rdy_almost_full = "not_full";
defparam hmc_inst.cport2_rfifo_map = "fifo_0";
defparam hmc_inst.cport2_type = "disable";
defparam hmc_inst.cport2_wfifo_map = "fifo_0";
defparam hmc_inst.cport3_rdy_almost_full = "not_full";
defparam hmc_inst.cport3_rfifo_map = "fifo_0";
defparam hmc_inst.cport3_type = "disable";
defparam hmc_inst.cport3_wfifo_map = "fifo_0";
defparam hmc_inst.cport4_rdy_almost_full = "not_full";
defparam hmc_inst.cport4_rfifo_map = "fifo_0";
defparam hmc_inst.cport4_type = "disable";
defparam hmc_inst.cport4_wfifo_map = "fifo_0";
defparam hmc_inst.cport5_rdy_almost_full = "not_full";
defparam hmc_inst.cport5_rfifo_map = "fifo_0";
defparam hmc_inst.cport5_type = "disable";
defparam hmc_inst.cport5_wfifo_map = "fifo_0";
defparam hmc_inst.ctl_addr_order = "chip_row_bank_col";
defparam hmc_inst.ctl_ecc_enabled = "ctl_ecc_disabled";
defparam hmc_inst.ctl_ecc_rmw_enabled = "ctl_ecc_rmw_disabled";
defparam hmc_inst.ctl_regdimm_enabled = "regdimm_disabled";
defparam hmc_inst.ctl_usr_refresh = "ctl_usr_refresh_disabled";
defparam hmc_inst.ctrl_width = "data_width_16_bit";
defparam hmc_inst.cyc_to_rld_jars_0 = 1;
defparam hmc_inst.cyc_to_rld_jars_1 = 1;
defparam hmc_inst.cyc_to_rld_jars_2 = 1;
defparam hmc_inst.cyc_to_rld_jars_3 = 1;
defparam hmc_inst.cyc_to_rld_jars_4 = 1;
defparam hmc_inst.cyc_to_rld_jars_5 = 1;
defparam hmc_inst.delay_bonding = "bonding_latency_0";
defparam hmc_inst.dfx_bypass_enable = "dfx_bypass_disabled";
defparam hmc_inst.disable_merging = "merging_enabled";
defparam hmc_inst.ecc_dq_width = "ecc_dq_width_0";
defparam hmc_inst.enable_atpg = "disabled";
defparam hmc_inst.enable_bonding_0 = "disabled";
defparam hmc_inst.enable_bonding_1 = "disabled";
defparam hmc_inst.enable_bonding_2 = "disabled";
defparam hmc_inst.enable_bonding_3 = "disabled";
defparam hmc_inst.enable_bonding_4 = "disabled";
defparam hmc_inst.enable_bonding_5 = "disabled";
defparam hmc_inst.enable_bonding_wrapback = "disabled";
defparam hmc_inst.enable_burst_interrupt = "disabled";
defparam hmc_inst.enable_burst_terminate = "disabled";
defparam hmc_inst.enable_dqs_tracking = "enabled";
defparam hmc_inst.enable_ecc_code_overwrites = "disabled";
defparam hmc_inst.enable_fast_exit_ppd = "disabled";
defparam hmc_inst.enable_intr = "disabled";
defparam hmc_inst.enable_no_dm = "disabled";
defparam hmc_inst.enable_pipelineglobal = "disabled";
defparam hmc_inst.extra_ctl_clk_act_to_act = 0;
defparam hmc_inst.extra_ctl_clk_act_to_act_diff_bank = 0;
defparam hmc_inst.extra_ctl_clk_act_to_pch = 0;
defparam hmc_inst.extra_ctl_clk_act_to_rdwr = 0;
defparam hmc_inst.extra_ctl_clk_arf_period = 0;
defparam hmc_inst.extra_ctl_clk_arf_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_four_act_to_act = 0;
defparam hmc_inst.extra_ctl_clk_pch_all_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_pch_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_pdn_period = 0;
defparam hmc_inst.extra_ctl_clk_pdn_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_rd_ap_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_rd_to_pch = 0;
defparam hmc_inst.extra_ctl_clk_rd_to_rd = 0;
defparam hmc_inst.extra_ctl_clk_rd_to_rd_diff_chip = 0;
defparam hmc_inst.extra_ctl_clk_rd_to_wr = 2;
defparam hmc_inst.extra_ctl_clk_rd_to_wr_bc = 2;
defparam hmc_inst.extra_ctl_clk_rd_to_wr_diff_chip = 2;
defparam hmc_inst.extra_ctl_clk_srf_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_srf_to_zq_cal = 0;
defparam hmc_inst.extra_ctl_clk_wr_ap_to_valid = 0;
defparam hmc_inst.extra_ctl_clk_wr_to_pch = 0;
defparam hmc_inst.extra_ctl_clk_wr_to_rd = 3;
defparam hmc_inst.extra_ctl_clk_wr_to_rd_bc = 3;
defparam hmc_inst.extra_ctl_clk_wr_to_rd_diff_chip = 3;
defparam hmc_inst.extra_ctl_clk_wr_to_wr = 0;
defparam hmc_inst.extra_ctl_clk_wr_to_wr_diff_chip = 0;
defparam hmc_inst.gen_dbe = "gen_dbe_disabled";
defparam hmc_inst.gen_sbe = "gen_sbe_disabled";
defparam hmc_inst.inc_sync = "fifo_set_2";
defparam hmc_inst.local_if_cs_width = "addr_width_0";
defparam hmc_inst.mask_corr_dropped_intr = "disabled";
defparam hmc_inst.mask_dbe_intr = "disabled";
defparam hmc_inst.mask_sbe_intr = "disabled";
defparam hmc_inst.mem_auto_pd_cycles = 0;
defparam hmc_inst.mem_clk_entry_cycles = 10;
defparam hmc_inst.mem_if_al = "al_0";
defparam hmc_inst.mem_if_bankaddr_width = "addr_width_3";
defparam hmc_inst.mem_if_burstlength = "mem_if_burstlength_8";
defparam hmc_inst.mem_if_coladdr_width = "addr_width_8";
defparam hmc_inst.mem_if_cs_per_rank = "mem_if_cs_per_rank_1";
defparam hmc_inst.mem_if_cs_width = "mem_if_cs_width_1";
defparam hmc_inst.mem_if_dq_per_chip = "mem_if_dq_per_chip_8";
defparam hmc_inst.mem_if_dqs_width = "dqs_width_1";
defparam hmc_inst.mem_if_dwidth = "mem_if_dwidth_8";
defparam hmc_inst.mem_if_memtype = "ddr3_sdram";
defparam hmc_inst.mem_if_rowaddr_width = "addr_width_12";
defparam hmc_inst.mem_if_speedbin = "ddr3_800_5_5_5";
defparam hmc_inst.mem_if_tccd = "tccd_4";
defparam hmc_inst.mem_if_tcl = "tcl_7";
defparam hmc_inst.mem_if_tcwl = "tcwl_6";
defparam hmc_inst.mem_if_tfaw = "tfaw_12";
defparam hmc_inst.mem_if_tmrd = "tmrd_4";
defparam hmc_inst.mem_if_tras = "tras_13";
defparam hmc_inst.mem_if_trc = "trc_17";
defparam hmc_inst.mem_if_trcd = "trcd_5";
defparam hmc_inst.mem_if_trefi = 2101;
defparam hmc_inst.mem_if_trfc = 23;
defparam hmc_inst.mem_if_trp = "trp_5";
defparam hmc_inst.mem_if_trrd = "trrd_3";
defparam hmc_inst.mem_if_trtp = "trtp_3";
defparam hmc_inst.mem_if_twr = "twr_5";
defparam hmc_inst.mem_if_twtr = "twtr_2";
defparam hmc_inst.mmr_cfg_mem_bl = "mp_bl_8";
defparam hmc_inst.output_regd = "disabled";
defparam hmc_inst.pdn_exit_cycles = "slow_exit";
defparam hmc_inst.port0_width = "port_32_bit";
defparam hmc_inst.port1_width = "port_32_bit";
defparam hmc_inst.port2_width = "port_32_bit";
defparam hmc_inst.port3_width = "port_32_bit";
defparam hmc_inst.port4_width = "port_32_bit";
defparam hmc_inst.port5_width = "port_32_bit";
defparam hmc_inst.power_saving_exit_cycles = 5;
defparam hmc_inst.priority_0_0 = "weight_0";
defparam hmc_inst.priority_0_1 = "weight_0";
defparam hmc_inst.priority_0_2 = "weight_0";
defparam hmc_inst.priority_0_3 = "weight_0";
defparam hmc_inst.priority_0_4 = "weight_0";
defparam hmc_inst.priority_0_5 = "weight_0";
defparam hmc_inst.priority_1_0 = "weight_0";
defparam hmc_inst.priority_1_1 = "weight_0";
defparam hmc_inst.priority_1_2 = "weight_0";
defparam hmc_inst.priority_1_3 = "weight_0";
defparam hmc_inst.priority_1_4 = "weight_0";
defparam hmc_inst.priority_1_5 = "weight_0";
defparam hmc_inst.priority_2_0 = "weight_0";
defparam hmc_inst.priority_2_1 = "weight_0";
defparam hmc_inst.priority_2_2 = "weight_0";
defparam hmc_inst.priority_2_3 = "weight_0";
defparam hmc_inst.priority_2_4 = "weight_0";
defparam hmc_inst.priority_2_5 = "weight_0";
defparam hmc_inst.priority_3_0 = "weight_0";
defparam hmc_inst.priority_3_1 = "weight_0";
defparam hmc_inst.priority_3_2 = "weight_0";
defparam hmc_inst.priority_3_3 = "weight_0";
defparam hmc_inst.priority_3_4 = "weight_0";
defparam hmc_inst.priority_3_5 = "weight_0";
defparam hmc_inst.priority_4_0 = "weight_0";
defparam hmc_inst.priority_4_1 = "weight_0";
defparam hmc_inst.priority_4_2 = "weight_0";
defparam hmc_inst.priority_4_3 = "weight_0";
defparam hmc_inst.priority_4_4 = "weight_0";
defparam hmc_inst.priority_4_5 = "weight_0";
defparam hmc_inst.priority_5_0 = "weight_0";
defparam hmc_inst.priority_5_1 = "weight_0";
defparam hmc_inst.priority_5_2 = "weight_0";
defparam hmc_inst.priority_5_3 = "weight_0";
defparam hmc_inst.priority_5_4 = "weight_0";
defparam hmc_inst.priority_5_5 = "weight_0";
defparam hmc_inst.priority_6_0 = "weight_0";
defparam hmc_inst.priority_6_1 = "weight_0";
defparam hmc_inst.priority_6_2 = "weight_0";
defparam hmc_inst.priority_6_3 = "weight_0";
defparam hmc_inst.priority_6_4 = "weight_0";
defparam hmc_inst.priority_6_5 = "weight_0";
defparam hmc_inst.priority_7_0 = "weight_0";
defparam hmc_inst.priority_7_1 = "weight_0";
defparam hmc_inst.priority_7_2 = "weight_0";
defparam hmc_inst.priority_7_3 = "weight_0";
defparam hmc_inst.priority_7_4 = "weight_0";
defparam hmc_inst.priority_7_5 = "weight_0";
defparam hmc_inst.priority_remap = 0;
defparam hmc_inst.rcfg_static_weight_0 = "weight_0";
defparam hmc_inst.rcfg_static_weight_1 = "weight_0";
defparam hmc_inst.rcfg_static_weight_2 = "weight_0";
defparam hmc_inst.rcfg_static_weight_3 = "weight_0";
defparam hmc_inst.rcfg_static_weight_4 = "weight_0";
defparam hmc_inst.rcfg_static_weight_5 = "weight_0";
defparam hmc_inst.rcfg_sum_wt_priority_0 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_1 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_2 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_3 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_4 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_5 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_6 = 0;
defparam hmc_inst.rcfg_sum_wt_priority_7 = 0;
defparam hmc_inst.rcfg_user_priority_0 = "priority_1";
defparam hmc_inst.rcfg_user_priority_1 = "priority_1";
defparam hmc_inst.rcfg_user_priority_2 = "priority_1";
defparam hmc_inst.rcfg_user_priority_3 = "priority_1";
defparam hmc_inst.rcfg_user_priority_4 = "priority_1";
defparam hmc_inst.rcfg_user_priority_5 = "priority_1";
defparam hmc_inst.rd_dwidth_0 = "dwidth_0";
defparam hmc_inst.rd_dwidth_1 = "dwidth_0";
defparam hmc_inst.rd_dwidth_2 = "dwidth_0";
defparam hmc_inst.rd_dwidth_3 = "dwidth_0";
defparam hmc_inst.rd_dwidth_4 = "dwidth_0";
defparam hmc_inst.rd_dwidth_5 = "dwidth_0";
defparam hmc_inst.rd_fifo_in_use_0 = "false";
defparam hmc_inst.rd_fifo_in_use_1 = "false";
defparam hmc_inst.rd_fifo_in_use_2 = "false";
defparam hmc_inst.rd_fifo_in_use_3 = "false";
defparam hmc_inst.rd_port_info_0 = "use_no";
defparam hmc_inst.rd_port_info_1 = "use_no";
defparam hmc_inst.rd_port_info_2 = "use_no";
defparam hmc_inst.rd_port_info_3 = "use_no";
defparam hmc_inst.rd_port_info_4 = "use_no";
defparam hmc_inst.rd_port_info_5 = "use_no";
defparam hmc_inst.read_odt_chip = "odt_disabled";
defparam hmc_inst.reorder_data = "data_reordering";
defparam hmc_inst.rfifo0_cport_map = "cmd_port_0";
defparam hmc_inst.rfifo1_cport_map = "cmd_port_0";
defparam hmc_inst.rfifo2_cport_map = "cmd_port_0";
defparam hmc_inst.rfifo3_cport_map = "cmd_port_0";
defparam hmc_inst.single_ready_0 = "concatenate_rdy";
defparam hmc_inst.single_ready_1 = "concatenate_rdy";
defparam hmc_inst.single_ready_2 = "concatenate_rdy";
defparam hmc_inst.single_ready_3 = "concatenate_rdy";
defparam hmc_inst.static_weight_0 = "weight_0";
defparam hmc_inst.static_weight_1 = "weight_0";
defparam hmc_inst.static_weight_2 = "weight_0";
defparam hmc_inst.static_weight_3 = "weight_0";
defparam hmc_inst.static_weight_4 = "weight_0";
defparam hmc_inst.static_weight_5 = "weight_0";
defparam hmc_inst.sum_wt_priority_0 = 0;
defparam hmc_inst.sum_wt_priority_1 = 0;
defparam hmc_inst.sum_wt_priority_2 = 0;
defparam hmc_inst.sum_wt_priority_3 = 0;
defparam hmc_inst.sum_wt_priority_4 = 0;
defparam hmc_inst.sum_wt_priority_5 = 0;
defparam hmc_inst.sum_wt_priority_6 = 0;
defparam hmc_inst.sum_wt_priority_7 = 0;
defparam hmc_inst.sync_mode_0 = "asynchronous";
defparam hmc_inst.sync_mode_1 = "asynchronous";
defparam hmc_inst.sync_mode_2 = "asynchronous";
defparam hmc_inst.sync_mode_3 = "asynchronous";
defparam hmc_inst.sync_mode_4 = "asynchronous";
defparam hmc_inst.sync_mode_5 = "asynchronous";
defparam hmc_inst.test_mode = "normal_mode";
defparam hmc_inst.thld_jar1_0 = "threshold_32";
defparam hmc_inst.thld_jar1_1 = "threshold_32";
defparam hmc_inst.thld_jar1_2 = "threshold_32";
defparam hmc_inst.thld_jar1_3 = "threshold_32";
defparam hmc_inst.thld_jar1_4 = "threshold_32";
defparam hmc_inst.thld_jar1_5 = "threshold_32";
defparam hmc_inst.thld_jar2_0 = "threshold_16";
defparam hmc_inst.thld_jar2_1 = "threshold_16";
defparam hmc_inst.thld_jar2_2 = "threshold_16";
defparam hmc_inst.thld_jar2_3 = "threshold_16";
defparam hmc_inst.thld_jar2_4 = "threshold_16";
defparam hmc_inst.thld_jar2_5 = "threshold_16";
defparam hmc_inst.use_almost_empty_0 = "empty";
defparam hmc_inst.use_almost_empty_1 = "empty";
defparam hmc_inst.use_almost_empty_2 = "empty";
defparam hmc_inst.use_almost_empty_3 = "empty";
defparam hmc_inst.user_ecc_en = "disable";
defparam hmc_inst.user_priority_0 = "priority_1";
defparam hmc_inst.user_priority_1 = "priority_1";
defparam hmc_inst.user_priority_2 = "priority_1";
defparam hmc_inst.user_priority_3 = "priority_1";
defparam hmc_inst.user_priority_4 = "priority_1";
defparam hmc_inst.user_priority_5 = "priority_1";
defparam hmc_inst.wfifo0_cport_map = "cmd_port_0";
defparam hmc_inst.wfifo0_rdy_almost_full = "not_full";
defparam hmc_inst.wfifo1_cport_map = "cmd_port_0";
defparam hmc_inst.wfifo1_rdy_almost_full = "not_full";
defparam hmc_inst.wfifo2_cport_map = "cmd_port_0";
defparam hmc_inst.wfifo2_rdy_almost_full = "not_full";
defparam hmc_inst.wfifo3_cport_map = "cmd_port_0";
defparam hmc_inst.wfifo3_rdy_almost_full = "not_full";
defparam hmc_inst.wr_dwidth_0 = "dwidth_0";
defparam hmc_inst.wr_dwidth_1 = "dwidth_0";
defparam hmc_inst.wr_dwidth_2 = "dwidth_0";
defparam hmc_inst.wr_dwidth_3 = "dwidth_0";
defparam hmc_inst.wr_dwidth_4 = "dwidth_0";
defparam hmc_inst.wr_dwidth_5 = "dwidth_0";
defparam hmc_inst.wr_fifo_in_use_0 = "false";
defparam hmc_inst.wr_fifo_in_use_1 = "false";
defparam hmc_inst.wr_fifo_in_use_2 = "false";
defparam hmc_inst.wr_fifo_in_use_3 = "false";
defparam hmc_inst.wr_port_info_0 = "use_no";
defparam hmc_inst.wr_port_info_1 = "use_no";
defparam hmc_inst.wr_port_info_2 = "use_no";
defparam hmc_inst.wr_port_info_3 = "use_no";
defparam hmc_inst.wr_port_info_4 = "use_no";
defparam hmc_inst.wr_port_info_5 = "use_no";
defparam hmc_inst.write_odt_chip = "odt_disabled";

endmodule

module HPS_altera_mem_if_oct_cyclonev (
	parallelterminationcontrol,
	seriesterminationcontrol,
	oct_rzqin)/* synthesis synthesis_greybox=0 */;
output 	[15:0] parallelterminationcontrol;
output 	[15:0] seriesterminationcontrol;
input 	oct_rzqin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sd1a_0~O_CLKUSRDFTOUT ;
wire \wire_sd1a_serdataout[0] ;

wire [15:0] sd2a_0_PARALLELTERMINATIONCONTROL_bus;
wire [15:0] sd2a_0_SERIESTERMINATIONCONTROL_bus;

assign parallelterminationcontrol[0] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[0];
assign parallelterminationcontrol[1] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[1];
assign parallelterminationcontrol[2] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[2];
assign parallelterminationcontrol[3] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[3];
assign parallelterminationcontrol[4] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[4];
assign parallelterminationcontrol[5] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[5];
assign parallelterminationcontrol[6] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[6];
assign parallelterminationcontrol[7] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[7];
assign parallelterminationcontrol[8] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[8];
assign parallelterminationcontrol[9] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[9];
assign parallelterminationcontrol[10] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[10];
assign parallelterminationcontrol[11] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[11];
assign parallelterminationcontrol[12] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[12];
assign parallelterminationcontrol[13] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[13];
assign parallelterminationcontrol[14] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[14];
assign parallelterminationcontrol[15] = sd2a_0_PARALLELTERMINATIONCONTROL_bus[15];

assign seriesterminationcontrol[0] = sd2a_0_SERIESTERMINATIONCONTROL_bus[0];
assign seriesterminationcontrol[1] = sd2a_0_SERIESTERMINATIONCONTROL_bus[1];
assign seriesterminationcontrol[2] = sd2a_0_SERIESTERMINATIONCONTROL_bus[2];
assign seriesterminationcontrol[3] = sd2a_0_SERIESTERMINATIONCONTROL_bus[3];
assign seriesterminationcontrol[4] = sd2a_0_SERIESTERMINATIONCONTROL_bus[4];
assign seriesterminationcontrol[5] = sd2a_0_SERIESTERMINATIONCONTROL_bus[5];
assign seriesterminationcontrol[6] = sd2a_0_SERIESTERMINATIONCONTROL_bus[6];
assign seriesterminationcontrol[7] = sd2a_0_SERIESTERMINATIONCONTROL_bus[7];
assign seriesterminationcontrol[8] = sd2a_0_SERIESTERMINATIONCONTROL_bus[8];
assign seriesterminationcontrol[9] = sd2a_0_SERIESTERMINATIONCONTROL_bus[9];
assign seriesterminationcontrol[10] = sd2a_0_SERIESTERMINATIONCONTROL_bus[10];
assign seriesterminationcontrol[11] = sd2a_0_SERIESTERMINATIONCONTROL_bus[11];
assign seriesterminationcontrol[12] = sd2a_0_SERIESTERMINATIONCONTROL_bus[12];
assign seriesterminationcontrol[13] = sd2a_0_SERIESTERMINATIONCONTROL_bus[13];
assign seriesterminationcontrol[14] = sd2a_0_SERIESTERMINATIONCONTROL_bus[14];
assign seriesterminationcontrol[15] = sd2a_0_SERIESTERMINATIONCONTROL_bus[15];

cyclonev_termination_logic sd2a_0(
	.s2pload(gnd),
	.scanclk(gnd),
	.scanenable(gnd),
	.serdata(\wire_sd1a_serdataout[0] ),
	.enser(4'b0000),
	.parallelterminationcontrol(sd2a_0_PARALLELTERMINATIONCONTROL_bus),
	.seriesterminationcontrol(sd2a_0_SERIESTERMINATIONCONTROL_bus));

cyclonev_termination sd1a_0(
	.clkenusr(gnd),
	.clkusr(gnd),
	.enserusr(gnd),
	.nclrusr(gnd),
	.rzqin(oct_rzqin),
	.scanclk(gnd),
	.scanen(gnd),
	.scanin(gnd),
	.serdatafromcore(gnd),
	.serdatain(gnd),
	.otherenser(10'b0000000000),
	.clkusrdftout(\sd1a_0~O_CLKUSRDFTOUT ),
	.compoutrdn(),
	.compoutrup(),
	.enserout(),
	.scanout(),
	.serdataout(\wire_sd1a_serdataout[0] ),
	.serdatatocore());

endmodule

module HPS_hps_sdram_p0 (
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	afi_clk,
	pll_write_clk,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	afi_cal_fail,
	afi_cal_success,
	afi_rdata_valid_0,
	ctl_reset_n,
	afi_rdata_0,
	afi_rdata_1,
	afi_rdata_2,
	afi_rdata_3,
	afi_rdata_4,
	afi_rdata_5,
	afi_rdata_6,
	afi_rdata_7,
	afi_rdata_8,
	afi_rdata_9,
	afi_rdata_10,
	afi_rdata_11,
	afi_rdata_12,
	afi_rdata_13,
	afi_rdata_14,
	afi_rdata_15,
	afi_rdata_16,
	afi_rdata_17,
	afi_rdata_18,
	afi_rdata_19,
	afi_rdata_20,
	afi_rdata_21,
	afi_rdata_22,
	afi_rdata_23,
	afi_rdata_24,
	afi_rdata_25,
	afi_rdata_26,
	afi_rdata_27,
	afi_rdata_28,
	afi_rdata_29,
	afi_rdata_30,
	afi_rdata_31,
	afi_rdata_32,
	afi_rdata_33,
	afi_rdata_34,
	afi_rdata_35,
	afi_rdata_36,
	afi_rdata_37,
	afi_rdata_38,
	afi_rdata_39,
	afi_rdata_40,
	afi_rdata_41,
	afi_rdata_42,
	afi_rdata_43,
	afi_rdata_44,
	afi_rdata_45,
	afi_rdata_46,
	afi_rdata_47,
	afi_rdata_48,
	afi_rdata_49,
	afi_rdata_50,
	afi_rdata_51,
	afi_rdata_52,
	afi_rdata_53,
	afi_rdata_54,
	afi_rdata_55,
	afi_rdata_56,
	afi_rdata_57,
	afi_rdata_58,
	afi_rdata_59,
	afi_rdata_60,
	afi_rdata_61,
	afi_rdata_62,
	afi_rdata_63,
	afi_rdata_64,
	afi_rdata_65,
	afi_rdata_66,
	afi_rdata_67,
	afi_rdata_68,
	afi_rdata_69,
	afi_rdata_70,
	afi_rdata_71,
	afi_rdata_72,
	afi_rdata_73,
	afi_rdata_74,
	afi_rdata_75,
	afi_rdata_76,
	afi_rdata_77,
	afi_rdata_78,
	afi_rdata_79,
	afi_wlat_0,
	afi_wlat_1,
	afi_wlat_2,
	afi_wlat_3,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	afi_cas_n_0,
	afi_ras_n_0,
	afi_rst_n_0,
	afi_we_n_0,
	afi_addr_0,
	afi_addr_1,
	afi_addr_2,
	afi_addr_3,
	afi_addr_4,
	afi_addr_5,
	afi_addr_6,
	afi_addr_7,
	afi_addr_8,
	afi_addr_9,
	afi_addr_10,
	afi_addr_11,
	afi_addr_12,
	afi_addr_13,
	afi_addr_14,
	afi_addr_15,
	afi_addr_16,
	afi_addr_17,
	afi_addr_18,
	afi_addr_19,
	afi_ba_0,
	afi_ba_1,
	afi_ba_2,
	afi_cke_0,
	afi_cke_1,
	afi_cs_n_0,
	afi_cs_n_1,
	afi_dm_int_0,
	afi_dm_int_1,
	afi_dm_int_2,
	afi_dm_int_3,
	afi_dm_int_4,
	afi_dm_int_5,
	afi_dm_int_6,
	afi_dm_int_7,
	afi_dm_int_8,
	afi_dm_int_9,
	afi_dqs_burst_0,
	afi_dqs_burst_1,
	afi_dqs_burst_2,
	afi_dqs_burst_3,
	afi_dqs_burst_4,
	afi_odt_0,
	afi_odt_1,
	afi_rdata_en_0,
	afi_rdata_en_1,
	afi_rdata_en_2,
	afi_rdata_en_3,
	afi_rdata_en_4,
	afi_rdata_en_full_0,
	afi_rdata_en_full_1,
	afi_rdata_en_full_2,
	afi_rdata_en_full_3,
	afi_rdata_en_full_4,
	afi_wdata_int_0,
	afi_wdata_int_1,
	afi_wdata_int_2,
	afi_wdata_int_3,
	afi_wdata_int_4,
	afi_wdata_int_5,
	afi_wdata_int_6,
	afi_wdata_int_7,
	afi_wdata_int_8,
	afi_wdata_int_9,
	afi_wdata_int_10,
	afi_wdata_int_11,
	afi_wdata_int_12,
	afi_wdata_int_13,
	afi_wdata_int_14,
	afi_wdata_int_15,
	afi_wdata_int_16,
	afi_wdata_int_17,
	afi_wdata_int_18,
	afi_wdata_int_19,
	afi_wdata_int_20,
	afi_wdata_int_21,
	afi_wdata_int_22,
	afi_wdata_int_23,
	afi_wdata_int_24,
	afi_wdata_int_25,
	afi_wdata_int_26,
	afi_wdata_int_27,
	afi_wdata_int_28,
	afi_wdata_int_29,
	afi_wdata_int_30,
	afi_wdata_int_31,
	afi_wdata_int_32,
	afi_wdata_int_33,
	afi_wdata_int_34,
	afi_wdata_int_35,
	afi_wdata_int_36,
	afi_wdata_int_37,
	afi_wdata_int_38,
	afi_wdata_int_39,
	afi_wdata_int_40,
	afi_wdata_int_41,
	afi_wdata_int_42,
	afi_wdata_int_43,
	afi_wdata_int_44,
	afi_wdata_int_45,
	afi_wdata_int_46,
	afi_wdata_int_47,
	afi_wdata_int_48,
	afi_wdata_int_49,
	afi_wdata_int_50,
	afi_wdata_int_51,
	afi_wdata_int_52,
	afi_wdata_int_53,
	afi_wdata_int_54,
	afi_wdata_int_55,
	afi_wdata_int_56,
	afi_wdata_int_57,
	afi_wdata_int_58,
	afi_wdata_int_59,
	afi_wdata_int_60,
	afi_wdata_int_61,
	afi_wdata_int_62,
	afi_wdata_int_63,
	afi_wdata_int_64,
	afi_wdata_int_65,
	afi_wdata_int_66,
	afi_wdata_int_67,
	afi_wdata_int_68,
	afi_wdata_int_69,
	afi_wdata_int_70,
	afi_wdata_int_71,
	afi_wdata_int_72,
	afi_wdata_int_73,
	afi_wdata_int_74,
	afi_wdata_int_75,
	afi_wdata_int_76,
	afi_wdata_int_77,
	afi_wdata_int_78,
	afi_wdata_int_79,
	afi_wdata_valid_0,
	afi_wdata_valid_1,
	afi_wdata_valid_2,
	afi_wdata_valid_3,
	afi_wdata_valid_4,
	cfg_addlat_wire_0,
	cfg_addlat_wire_1,
	cfg_addlat_wire_2,
	cfg_addlat_wire_3,
	cfg_addlat_wire_4,
	cfg_bankaddrwidth_wire_0,
	cfg_bankaddrwidth_wire_1,
	cfg_bankaddrwidth_wire_2,
	cfg_caswrlat_wire_0,
	cfg_caswrlat_wire_1,
	cfg_caswrlat_wire_2,
	cfg_caswrlat_wire_3,
	cfg_coladdrwidth_wire_0,
	cfg_coladdrwidth_wire_1,
	cfg_coladdrwidth_wire_2,
	cfg_coladdrwidth_wire_3,
	cfg_coladdrwidth_wire_4,
	cfg_csaddrwidth_wire_0,
	cfg_csaddrwidth_wire_1,
	cfg_csaddrwidth_wire_2,
	cfg_devicewidth_wire_0,
	cfg_devicewidth_wire_1,
	cfg_devicewidth_wire_2,
	cfg_devicewidth_wire_3,
	cfg_interfacewidth_wire_0,
	cfg_interfacewidth_wire_1,
	cfg_interfacewidth_wire_2,
	cfg_interfacewidth_wire_3,
	cfg_interfacewidth_wire_4,
	cfg_interfacewidth_wire_5,
	cfg_interfacewidth_wire_6,
	cfg_interfacewidth_wire_7,
	cfg_rowaddrwidth_wire_0,
	cfg_rowaddrwidth_wire_1,
	cfg_rowaddrwidth_wire_2,
	cfg_rowaddrwidth_wire_3,
	cfg_rowaddrwidth_wire_4,
	cfg_tcl_wire_0,
	cfg_tcl_wire_1,
	cfg_tcl_wire_2,
	cfg_tcl_wire_3,
	cfg_tcl_wire_4,
	cfg_tmrd_wire_0,
	cfg_tmrd_wire_1,
	cfg_tmrd_wire_2,
	cfg_tmrd_wire_3,
	cfg_trefi_wire_0,
	cfg_trefi_wire_1,
	cfg_trefi_wire_2,
	cfg_trefi_wire_3,
	cfg_trefi_wire_4,
	cfg_trefi_wire_5,
	cfg_trefi_wire_6,
	cfg_trefi_wire_7,
	cfg_trefi_wire_8,
	cfg_trefi_wire_9,
	cfg_trefi_wire_10,
	cfg_trefi_wire_11,
	cfg_trefi_wire_12,
	cfg_trfc_wire_0,
	cfg_trfc_wire_1,
	cfg_trfc_wire_2,
	cfg_trfc_wire_3,
	cfg_trfc_wire_4,
	cfg_trfc_wire_5,
	cfg_trfc_wire_6,
	cfg_trfc_wire_7,
	cfg_twr_wire_0,
	cfg_twr_wire_1,
	cfg_twr_wire_2,
	cfg_twr_wire_3,
	afi_mem_clk_disable_0,
	cfg_dramconfig_wire_0,
	cfg_dramconfig_wire_1,
	cfg_dramconfig_wire_2,
	cfg_dramconfig_wire_3,
	cfg_dramconfig_wire_4,
	cfg_dramconfig_wire_5,
	cfg_dramconfig_wire_6,
	cfg_dramconfig_wire_7,
	cfg_dramconfig_wire_8,
	cfg_dramconfig_wire_9,
	cfg_dramconfig_wire_10,
	cfg_dramconfig_wire_11,
	cfg_dramconfig_wire_12,
	cfg_dramconfig_wire_13,
	cfg_dramconfig_wire_14,
	cfg_dramconfig_wire_15,
	cfg_dramconfig_wire_16,
	cfg_dramconfig_wire_17,
	cfg_dramconfig_wire_18,
	cfg_dramconfig_wire_19,
	cfg_dramconfig_wire_20,
	ctl_clk,
	dll_delayctrl_0,
	dll_delayctrl_1,
	dll_delayctrl_2,
	dll_delayctrl_3,
	dll_delayctrl_4,
	dll_delayctrl_5,
	dll_delayctrl_6,
	GND_port)/* synthesis synthesis_greybox=0 */;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
input 	afi_clk;
input 	pll_write_clk;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
output 	afi_cal_fail;
output 	afi_cal_success;
output 	afi_rdata_valid_0;
output 	ctl_reset_n;
output 	afi_rdata_0;
output 	afi_rdata_1;
output 	afi_rdata_2;
output 	afi_rdata_3;
output 	afi_rdata_4;
output 	afi_rdata_5;
output 	afi_rdata_6;
output 	afi_rdata_7;
output 	afi_rdata_8;
output 	afi_rdata_9;
output 	afi_rdata_10;
output 	afi_rdata_11;
output 	afi_rdata_12;
output 	afi_rdata_13;
output 	afi_rdata_14;
output 	afi_rdata_15;
output 	afi_rdata_16;
output 	afi_rdata_17;
output 	afi_rdata_18;
output 	afi_rdata_19;
output 	afi_rdata_20;
output 	afi_rdata_21;
output 	afi_rdata_22;
output 	afi_rdata_23;
output 	afi_rdata_24;
output 	afi_rdata_25;
output 	afi_rdata_26;
output 	afi_rdata_27;
output 	afi_rdata_28;
output 	afi_rdata_29;
output 	afi_rdata_30;
output 	afi_rdata_31;
output 	afi_rdata_32;
output 	afi_rdata_33;
output 	afi_rdata_34;
output 	afi_rdata_35;
output 	afi_rdata_36;
output 	afi_rdata_37;
output 	afi_rdata_38;
output 	afi_rdata_39;
output 	afi_rdata_40;
output 	afi_rdata_41;
output 	afi_rdata_42;
output 	afi_rdata_43;
output 	afi_rdata_44;
output 	afi_rdata_45;
output 	afi_rdata_46;
output 	afi_rdata_47;
output 	afi_rdata_48;
output 	afi_rdata_49;
output 	afi_rdata_50;
output 	afi_rdata_51;
output 	afi_rdata_52;
output 	afi_rdata_53;
output 	afi_rdata_54;
output 	afi_rdata_55;
output 	afi_rdata_56;
output 	afi_rdata_57;
output 	afi_rdata_58;
output 	afi_rdata_59;
output 	afi_rdata_60;
output 	afi_rdata_61;
output 	afi_rdata_62;
output 	afi_rdata_63;
output 	afi_rdata_64;
output 	afi_rdata_65;
output 	afi_rdata_66;
output 	afi_rdata_67;
output 	afi_rdata_68;
output 	afi_rdata_69;
output 	afi_rdata_70;
output 	afi_rdata_71;
output 	afi_rdata_72;
output 	afi_rdata_73;
output 	afi_rdata_74;
output 	afi_rdata_75;
output 	afi_rdata_76;
output 	afi_rdata_77;
output 	afi_rdata_78;
output 	afi_rdata_79;
output 	afi_wlat_0;
output 	afi_wlat_1;
output 	afi_wlat_2;
output 	afi_wlat_3;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
input 	afi_cas_n_0;
input 	afi_ras_n_0;
input 	afi_rst_n_0;
input 	afi_we_n_0;
input 	afi_addr_0;
input 	afi_addr_1;
input 	afi_addr_2;
input 	afi_addr_3;
input 	afi_addr_4;
input 	afi_addr_5;
input 	afi_addr_6;
input 	afi_addr_7;
input 	afi_addr_8;
input 	afi_addr_9;
input 	afi_addr_10;
input 	afi_addr_11;
input 	afi_addr_12;
input 	afi_addr_13;
input 	afi_addr_14;
input 	afi_addr_15;
input 	afi_addr_16;
input 	afi_addr_17;
input 	afi_addr_18;
input 	afi_addr_19;
input 	afi_ba_0;
input 	afi_ba_1;
input 	afi_ba_2;
input 	afi_cke_0;
input 	afi_cke_1;
input 	afi_cs_n_0;
input 	afi_cs_n_1;
input 	afi_dm_int_0;
input 	afi_dm_int_1;
input 	afi_dm_int_2;
input 	afi_dm_int_3;
input 	afi_dm_int_4;
input 	afi_dm_int_5;
input 	afi_dm_int_6;
input 	afi_dm_int_7;
input 	afi_dm_int_8;
input 	afi_dm_int_9;
input 	afi_dqs_burst_0;
input 	afi_dqs_burst_1;
input 	afi_dqs_burst_2;
input 	afi_dqs_burst_3;
input 	afi_dqs_burst_4;
input 	afi_odt_0;
input 	afi_odt_1;
input 	afi_rdata_en_0;
input 	afi_rdata_en_1;
input 	afi_rdata_en_2;
input 	afi_rdata_en_3;
input 	afi_rdata_en_4;
input 	afi_rdata_en_full_0;
input 	afi_rdata_en_full_1;
input 	afi_rdata_en_full_2;
input 	afi_rdata_en_full_3;
input 	afi_rdata_en_full_4;
input 	afi_wdata_int_0;
input 	afi_wdata_int_1;
input 	afi_wdata_int_2;
input 	afi_wdata_int_3;
input 	afi_wdata_int_4;
input 	afi_wdata_int_5;
input 	afi_wdata_int_6;
input 	afi_wdata_int_7;
input 	afi_wdata_int_8;
input 	afi_wdata_int_9;
input 	afi_wdata_int_10;
input 	afi_wdata_int_11;
input 	afi_wdata_int_12;
input 	afi_wdata_int_13;
input 	afi_wdata_int_14;
input 	afi_wdata_int_15;
input 	afi_wdata_int_16;
input 	afi_wdata_int_17;
input 	afi_wdata_int_18;
input 	afi_wdata_int_19;
input 	afi_wdata_int_20;
input 	afi_wdata_int_21;
input 	afi_wdata_int_22;
input 	afi_wdata_int_23;
input 	afi_wdata_int_24;
input 	afi_wdata_int_25;
input 	afi_wdata_int_26;
input 	afi_wdata_int_27;
input 	afi_wdata_int_28;
input 	afi_wdata_int_29;
input 	afi_wdata_int_30;
input 	afi_wdata_int_31;
input 	afi_wdata_int_32;
input 	afi_wdata_int_33;
input 	afi_wdata_int_34;
input 	afi_wdata_int_35;
input 	afi_wdata_int_36;
input 	afi_wdata_int_37;
input 	afi_wdata_int_38;
input 	afi_wdata_int_39;
input 	afi_wdata_int_40;
input 	afi_wdata_int_41;
input 	afi_wdata_int_42;
input 	afi_wdata_int_43;
input 	afi_wdata_int_44;
input 	afi_wdata_int_45;
input 	afi_wdata_int_46;
input 	afi_wdata_int_47;
input 	afi_wdata_int_48;
input 	afi_wdata_int_49;
input 	afi_wdata_int_50;
input 	afi_wdata_int_51;
input 	afi_wdata_int_52;
input 	afi_wdata_int_53;
input 	afi_wdata_int_54;
input 	afi_wdata_int_55;
input 	afi_wdata_int_56;
input 	afi_wdata_int_57;
input 	afi_wdata_int_58;
input 	afi_wdata_int_59;
input 	afi_wdata_int_60;
input 	afi_wdata_int_61;
input 	afi_wdata_int_62;
input 	afi_wdata_int_63;
input 	afi_wdata_int_64;
input 	afi_wdata_int_65;
input 	afi_wdata_int_66;
input 	afi_wdata_int_67;
input 	afi_wdata_int_68;
input 	afi_wdata_int_69;
input 	afi_wdata_int_70;
input 	afi_wdata_int_71;
input 	afi_wdata_int_72;
input 	afi_wdata_int_73;
input 	afi_wdata_int_74;
input 	afi_wdata_int_75;
input 	afi_wdata_int_76;
input 	afi_wdata_int_77;
input 	afi_wdata_int_78;
input 	afi_wdata_int_79;
input 	afi_wdata_valid_0;
input 	afi_wdata_valid_1;
input 	afi_wdata_valid_2;
input 	afi_wdata_valid_3;
input 	afi_wdata_valid_4;
input 	cfg_addlat_wire_0;
input 	cfg_addlat_wire_1;
input 	cfg_addlat_wire_2;
input 	cfg_addlat_wire_3;
input 	cfg_addlat_wire_4;
input 	cfg_bankaddrwidth_wire_0;
input 	cfg_bankaddrwidth_wire_1;
input 	cfg_bankaddrwidth_wire_2;
input 	cfg_caswrlat_wire_0;
input 	cfg_caswrlat_wire_1;
input 	cfg_caswrlat_wire_2;
input 	cfg_caswrlat_wire_3;
input 	cfg_coladdrwidth_wire_0;
input 	cfg_coladdrwidth_wire_1;
input 	cfg_coladdrwidth_wire_2;
input 	cfg_coladdrwidth_wire_3;
input 	cfg_coladdrwidth_wire_4;
input 	cfg_csaddrwidth_wire_0;
input 	cfg_csaddrwidth_wire_1;
input 	cfg_csaddrwidth_wire_2;
input 	cfg_devicewidth_wire_0;
input 	cfg_devicewidth_wire_1;
input 	cfg_devicewidth_wire_2;
input 	cfg_devicewidth_wire_3;
input 	cfg_interfacewidth_wire_0;
input 	cfg_interfacewidth_wire_1;
input 	cfg_interfacewidth_wire_2;
input 	cfg_interfacewidth_wire_3;
input 	cfg_interfacewidth_wire_4;
input 	cfg_interfacewidth_wire_5;
input 	cfg_interfacewidth_wire_6;
input 	cfg_interfacewidth_wire_7;
input 	cfg_rowaddrwidth_wire_0;
input 	cfg_rowaddrwidth_wire_1;
input 	cfg_rowaddrwidth_wire_2;
input 	cfg_rowaddrwidth_wire_3;
input 	cfg_rowaddrwidth_wire_4;
input 	cfg_tcl_wire_0;
input 	cfg_tcl_wire_1;
input 	cfg_tcl_wire_2;
input 	cfg_tcl_wire_3;
input 	cfg_tcl_wire_4;
input 	cfg_tmrd_wire_0;
input 	cfg_tmrd_wire_1;
input 	cfg_tmrd_wire_2;
input 	cfg_tmrd_wire_3;
input 	cfg_trefi_wire_0;
input 	cfg_trefi_wire_1;
input 	cfg_trefi_wire_2;
input 	cfg_trefi_wire_3;
input 	cfg_trefi_wire_4;
input 	cfg_trefi_wire_5;
input 	cfg_trefi_wire_6;
input 	cfg_trefi_wire_7;
input 	cfg_trefi_wire_8;
input 	cfg_trefi_wire_9;
input 	cfg_trefi_wire_10;
input 	cfg_trefi_wire_11;
input 	cfg_trefi_wire_12;
input 	cfg_trfc_wire_0;
input 	cfg_trfc_wire_1;
input 	cfg_trfc_wire_2;
input 	cfg_trfc_wire_3;
input 	cfg_trfc_wire_4;
input 	cfg_trfc_wire_5;
input 	cfg_trfc_wire_6;
input 	cfg_trfc_wire_7;
input 	cfg_twr_wire_0;
input 	cfg_twr_wire_1;
input 	cfg_twr_wire_2;
input 	cfg_twr_wire_3;
input 	afi_mem_clk_disable_0;
input 	cfg_dramconfig_wire_0;
input 	cfg_dramconfig_wire_1;
input 	cfg_dramconfig_wire_2;
input 	cfg_dramconfig_wire_3;
input 	cfg_dramconfig_wire_4;
input 	cfg_dramconfig_wire_5;
input 	cfg_dramconfig_wire_6;
input 	cfg_dramconfig_wire_7;
input 	cfg_dramconfig_wire_8;
input 	cfg_dramconfig_wire_9;
input 	cfg_dramconfig_wire_10;
input 	cfg_dramconfig_wire_11;
input 	cfg_dramconfig_wire_12;
input 	cfg_dramconfig_wire_13;
input 	cfg_dramconfig_wire_14;
input 	cfg_dramconfig_wire_15;
input 	cfg_dramconfig_wire_16;
input 	cfg_dramconfig_wire_17;
input 	cfg_dramconfig_wire_18;
input 	cfg_dramconfig_wire_19;
input 	cfg_dramconfig_wire_20;
output 	ctl_clk;
input 	dll_delayctrl_0;
input 	dll_delayctrl_1;
input 	dll_delayctrl_2;
input 	dll_delayctrl_3;
input 	dll_delayctrl_4;
input 	dll_delayctrl_5;
input 	dll_delayctrl_6;
input 	GND_port;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



HPS_hps_sdram_p0_acv_hard_memphy umemphy(
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.afi_clk(afi_clk),
	.pll_write_clk(pll_write_clk),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.afi_cal_fail(afi_cal_fail),
	.afi_cal_success(afi_cal_success),
	.afi_rdata_valid({afi_rdata_valid_0}),
	.ctl_reset_n(ctl_reset_n),
	.afi_rdata({afi_rdata_79,afi_rdata_78,afi_rdata_77,afi_rdata_76,afi_rdata_75,afi_rdata_74,afi_rdata_73,afi_rdata_72,afi_rdata_71,afi_rdata_70,afi_rdata_69,afi_rdata_68,afi_rdata_67,afi_rdata_66,afi_rdata_65,afi_rdata_64,afi_rdata_63,afi_rdata_62,afi_rdata_61,afi_rdata_60,afi_rdata_59,
afi_rdata_58,afi_rdata_57,afi_rdata_56,afi_rdata_55,afi_rdata_54,afi_rdata_53,afi_rdata_52,afi_rdata_51,afi_rdata_50,afi_rdata_49,afi_rdata_48,afi_rdata_47,afi_rdata_46,afi_rdata_45,afi_rdata_44,afi_rdata_43,afi_rdata_42,afi_rdata_41,afi_rdata_40,afi_rdata_39,afi_rdata_38,
afi_rdata_37,afi_rdata_36,afi_rdata_35,afi_rdata_34,afi_rdata_33,afi_rdata_32,afi_rdata_31,afi_rdata_30,afi_rdata_29,afi_rdata_28,afi_rdata_27,afi_rdata_26,afi_rdata_25,afi_rdata_24,afi_rdata_23,afi_rdata_22,afi_rdata_21,afi_rdata_20,afi_rdata_19,afi_rdata_18,afi_rdata_17,
afi_rdata_16,afi_rdata_15,afi_rdata_14,afi_rdata_13,afi_rdata_12,afi_rdata_11,afi_rdata_10,afi_rdata_9,afi_rdata_8,afi_rdata_7,afi_rdata_6,afi_rdata_5,afi_rdata_4,afi_rdata_3,afi_rdata_2,afi_rdata_1,afi_rdata_0}),
	.afi_wlat({afi_wlat_3,afi_wlat_2,afi_wlat_1,afi_wlat_0}),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.afi_cas_n({afi_cas_n_0}),
	.afi_ras_n({afi_ras_n_0}),
	.afi_rst_n({afi_rst_n_0}),
	.afi_we_n({afi_we_n_0}),
	.afi_addr({afi_addr_19,afi_addr_18,afi_addr_17,afi_addr_16,afi_addr_15,afi_addr_14,afi_addr_13,afi_addr_12,afi_addr_11,afi_addr_10,afi_addr_9,afi_addr_8,afi_addr_7,afi_addr_6,afi_addr_5,afi_addr_4,afi_addr_3,afi_addr_2,afi_addr_1,afi_addr_0}),
	.afi_ba({afi_ba_2,afi_ba_1,afi_ba_0}),
	.afi_cke({afi_cke_1,afi_cke_0}),
	.afi_cs_n({afi_cs_n_1,afi_cs_n_0}),
	.afi_dm({afi_dm_int_9,afi_dm_int_8,afi_dm_int_7,afi_dm_int_6,afi_dm_int_5,afi_dm_int_4,afi_dm_int_3,afi_dm_int_2,afi_dm_int_1,afi_dm_int_0}),
	.afi_dqs_burst({afi_dqs_burst_4,afi_dqs_burst_3,afi_dqs_burst_2,afi_dqs_burst_1,afi_dqs_burst_0}),
	.afi_odt({afi_odt_1,afi_odt_0}),
	.afi_rdata_en({afi_rdata_en_4,afi_rdata_en_3,afi_rdata_en_2,afi_rdata_en_1,afi_rdata_en_0}),
	.afi_rdata_en_full({afi_rdata_en_full_4,afi_rdata_en_full_3,afi_rdata_en_full_2,afi_rdata_en_full_1,afi_rdata_en_full_0}),
	.afi_wdata({afi_wdata_int_79,afi_wdata_int_78,afi_wdata_int_77,afi_wdata_int_76,afi_wdata_int_75,afi_wdata_int_74,afi_wdata_int_73,afi_wdata_int_72,afi_wdata_int_71,afi_wdata_int_70,afi_wdata_int_69,afi_wdata_int_68,afi_wdata_int_67,afi_wdata_int_66,afi_wdata_int_65,afi_wdata_int_64,
afi_wdata_int_63,afi_wdata_int_62,afi_wdata_int_61,afi_wdata_int_60,afi_wdata_int_59,afi_wdata_int_58,afi_wdata_int_57,afi_wdata_int_56,afi_wdata_int_55,afi_wdata_int_54,afi_wdata_int_53,afi_wdata_int_52,afi_wdata_int_51,afi_wdata_int_50,afi_wdata_int_49,afi_wdata_int_48,
afi_wdata_int_47,afi_wdata_int_46,afi_wdata_int_45,afi_wdata_int_44,afi_wdata_int_43,afi_wdata_int_42,afi_wdata_int_41,afi_wdata_int_40,afi_wdata_int_39,afi_wdata_int_38,afi_wdata_int_37,afi_wdata_int_36,afi_wdata_int_35,afi_wdata_int_34,afi_wdata_int_33,afi_wdata_int_32,
afi_wdata_int_31,afi_wdata_int_30,afi_wdata_int_29,afi_wdata_int_28,afi_wdata_int_27,afi_wdata_int_26,afi_wdata_int_25,afi_wdata_int_24,afi_wdata_int_23,afi_wdata_int_22,afi_wdata_int_21,afi_wdata_int_20,afi_wdata_int_19,afi_wdata_int_18,afi_wdata_int_17,afi_wdata_int_16,
afi_wdata_int_15,afi_wdata_int_14,afi_wdata_int_13,afi_wdata_int_12,afi_wdata_int_11,afi_wdata_int_10,afi_wdata_int_9,afi_wdata_int_8,afi_wdata_int_7,afi_wdata_int_6,afi_wdata_int_5,afi_wdata_int_4,afi_wdata_int_3,afi_wdata_int_2,afi_wdata_int_1,afi_wdata_int_0}),
	.afi_wdata_valid({afi_wdata_valid_4,afi_wdata_valid_3,afi_wdata_valid_2,afi_wdata_valid_1,afi_wdata_valid_0}),
	.cfg_addlat({gnd,gnd,gnd,cfg_addlat_wire_4,cfg_addlat_wire_3,cfg_addlat_wire_2,cfg_addlat_wire_1,cfg_addlat_wire_0}),
	.cfg_bankaddrwidth({gnd,gnd,gnd,gnd,gnd,cfg_bankaddrwidth_wire_2,cfg_bankaddrwidth_wire_1,cfg_bankaddrwidth_wire_0}),
	.cfg_caswrlat({gnd,gnd,gnd,gnd,cfg_caswrlat_wire_3,cfg_caswrlat_wire_2,cfg_caswrlat_wire_1,cfg_caswrlat_wire_0}),
	.cfg_coladdrwidth({gnd,gnd,gnd,cfg_coladdrwidth_wire_4,cfg_coladdrwidth_wire_3,cfg_coladdrwidth_wire_2,cfg_coladdrwidth_wire_1,cfg_coladdrwidth_wire_0}),
	.cfg_csaddrwidth({gnd,gnd,gnd,gnd,gnd,cfg_csaddrwidth_wire_2,cfg_csaddrwidth_wire_1,cfg_csaddrwidth_wire_0}),
	.cfg_devicewidth({gnd,gnd,gnd,gnd,cfg_devicewidth_wire_3,cfg_devicewidth_wire_2,cfg_devicewidth_wire_1,cfg_devicewidth_wire_0}),
	.cfg_interfacewidth({cfg_interfacewidth_wire_7,cfg_interfacewidth_wire_6,cfg_interfacewidth_wire_5,cfg_interfacewidth_wire_4,cfg_interfacewidth_wire_3,cfg_interfacewidth_wire_2,cfg_interfacewidth_wire_1,cfg_interfacewidth_wire_0}),
	.cfg_rowaddrwidth({gnd,gnd,gnd,cfg_rowaddrwidth_wire_4,cfg_rowaddrwidth_wire_3,cfg_rowaddrwidth_wire_2,cfg_rowaddrwidth_wire_1,cfg_rowaddrwidth_wire_0}),
	.cfg_tcl({gnd,gnd,gnd,cfg_tcl_wire_4,cfg_tcl_wire_3,cfg_tcl_wire_2,cfg_tcl_wire_1,cfg_tcl_wire_0}),
	.cfg_tmrd({gnd,gnd,gnd,gnd,cfg_tmrd_wire_3,cfg_tmrd_wire_2,cfg_tmrd_wire_1,cfg_tmrd_wire_0}),
	.cfg_trefi({gnd,gnd,gnd,cfg_trefi_wire_12,cfg_trefi_wire_11,cfg_trefi_wire_10,cfg_trefi_wire_9,cfg_trefi_wire_8,cfg_trefi_wire_7,cfg_trefi_wire_6,cfg_trefi_wire_5,cfg_trefi_wire_4,cfg_trefi_wire_3,cfg_trefi_wire_2,cfg_trefi_wire_1,cfg_trefi_wire_0}),
	.cfg_trfc({cfg_trfc_wire_7,cfg_trfc_wire_6,cfg_trfc_wire_5,cfg_trfc_wire_4,cfg_trfc_wire_3,cfg_trfc_wire_2,cfg_trfc_wire_1,cfg_trfc_wire_0}),
	.cfg_twr({gnd,gnd,gnd,gnd,cfg_twr_wire_3,cfg_twr_wire_2,cfg_twr_wire_1,cfg_twr_wire_0}),
	.afi_mem_clk_disable({afi_mem_clk_disable_0}),
	.cfg_dramconfig({gnd,gnd,gnd,cfg_dramconfig_wire_20,cfg_dramconfig_wire_19,cfg_dramconfig_wire_18,cfg_dramconfig_wire_17,cfg_dramconfig_wire_16,cfg_dramconfig_wire_15,cfg_dramconfig_wire_14,cfg_dramconfig_wire_13,cfg_dramconfig_wire_12,cfg_dramconfig_wire_11,cfg_dramconfig_wire_10,
cfg_dramconfig_wire_9,cfg_dramconfig_wire_8,cfg_dramconfig_wire_7,cfg_dramconfig_wire_6,cfg_dramconfig_wire_5,cfg_dramconfig_wire_4,cfg_dramconfig_wire_3,cfg_dramconfig_wire_2,cfg_dramconfig_wire_1,cfg_dramconfig_wire_0}),
	.ctl_clk(ctl_clk),
	.dll_delayctrl_0(dll_delayctrl_0),
	.dll_delayctrl_1(dll_delayctrl_1),
	.dll_delayctrl_2(dll_delayctrl_2),
	.dll_delayctrl_3(dll_delayctrl_3),
	.dll_delayctrl_4(dll_delayctrl_4),
	.dll_delayctrl_5(dll_delayctrl_5),
	.dll_delayctrl_6(dll_delayctrl_6),
	.GND_port(GND_port));

endmodule

module HPS_hps_sdram_p0_acv_hard_memphy (
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	afi_clk,
	pll_write_clk,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	afi_cal_fail,
	afi_cal_success,
	afi_rdata_valid,
	ctl_reset_n,
	afi_rdata,
	afi_wlat,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	afi_cas_n,
	afi_ras_n,
	afi_rst_n,
	afi_we_n,
	afi_addr,
	afi_ba,
	afi_cke,
	afi_cs_n,
	afi_dm,
	afi_dqs_burst,
	afi_odt,
	afi_rdata_en,
	afi_rdata_en_full,
	afi_wdata,
	afi_wdata_valid,
	cfg_addlat,
	cfg_bankaddrwidth,
	cfg_caswrlat,
	cfg_coladdrwidth,
	cfg_csaddrwidth,
	cfg_devicewidth,
	cfg_interfacewidth,
	cfg_rowaddrwidth,
	cfg_tcl,
	cfg_tmrd,
	cfg_trefi,
	cfg_trfc,
	cfg_twr,
	afi_mem_clk_disable,
	cfg_dramconfig,
	ctl_clk,
	dll_delayctrl_0,
	dll_delayctrl_1,
	dll_delayctrl_2,
	dll_delayctrl_3,
	dll_delayctrl_4,
	dll_delayctrl_5,
	dll_delayctrl_6,
	GND_port)/* synthesis synthesis_greybox=0 */;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
input 	afi_clk;
input 	pll_write_clk;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
output 	afi_cal_fail;
output 	afi_cal_success;
output 	[0:0] afi_rdata_valid;
output 	ctl_reset_n;
output 	[79:0] afi_rdata;
output 	[3:0] afi_wlat;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
input 	[0:0] afi_cas_n;
input 	[0:0] afi_ras_n;
input 	[0:0] afi_rst_n;
input 	[0:0] afi_we_n;
input 	[19:0] afi_addr;
input 	[2:0] afi_ba;
input 	[1:0] afi_cke;
input 	[1:0] afi_cs_n;
input 	[9:0] afi_dm;
input 	[4:0] afi_dqs_burst;
input 	[1:0] afi_odt;
input 	[4:0] afi_rdata_en;
input 	[4:0] afi_rdata_en_full;
input 	[79:0] afi_wdata;
input 	[4:0] afi_wdata_valid;
input 	[7:0] cfg_addlat;
input 	[7:0] cfg_bankaddrwidth;
input 	[7:0] cfg_caswrlat;
input 	[7:0] cfg_coladdrwidth;
input 	[7:0] cfg_csaddrwidth;
input 	[7:0] cfg_devicewidth;
input 	[7:0] cfg_interfacewidth;
input 	[7:0] cfg_rowaddrwidth;
input 	[7:0] cfg_tcl;
input 	[7:0] cfg_tmrd;
input 	[15:0] cfg_trefi;
input 	[7:0] cfg_trfc;
input 	[7:0] cfg_twr;
input 	[0:0] afi_mem_clk_disable;
input 	[23:0] cfg_dramconfig;
output 	ctl_clk;
input 	dll_delayctrl_0;
input 	dll_delayctrl_1;
input 	dll_delayctrl_2;
input 	dll_delayctrl_3;
input 	dll_delayctrl_4;
input 	dll_delayctrl_5;
input 	dll_delayctrl_6;
input 	GND_port;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \memphy_ldc|leveled_hr_clocks[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[0] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[1] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[2] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[3] ;
wire \uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|lfifo_rdata_valid ;
wire \phy_ddio_address[0] ;
wire \phy_ddio_address[1] ;
wire \phy_ddio_address[2] ;
wire \phy_ddio_address[3] ;
wire \phy_ddio_address[4] ;
wire \phy_ddio_address[5] ;
wire \phy_ddio_address[6] ;
wire \phy_ddio_address[7] ;
wire \phy_ddio_address[8] ;
wire \phy_ddio_address[9] ;
wire \phy_ddio_address[10] ;
wire \phy_ddio_address[11] ;
wire \phy_ddio_address[12] ;
wire \phy_ddio_address[13] ;
wire \phy_ddio_address[14] ;
wire \phy_ddio_address[15] ;
wire \phy_ddio_address[16] ;
wire \phy_ddio_address[17] ;
wire \phy_ddio_address[18] ;
wire \phy_ddio_address[19] ;
wire \phy_ddio_address[20] ;
wire \phy_ddio_address[21] ;
wire \phy_ddio_address[22] ;
wire \phy_ddio_address[23] ;
wire \phy_ddio_address[24] ;
wire \phy_ddio_address[25] ;
wire \phy_ddio_address[26] ;
wire \phy_ddio_address[27] ;
wire \phy_ddio_address[28] ;
wire \phy_ddio_address[29] ;
wire \phy_ddio_address[30] ;
wire \phy_ddio_address[31] ;
wire \phy_ddio_address[32] ;
wire \phy_ddio_address[33] ;
wire \phy_ddio_address[34] ;
wire \phy_ddio_address[35] ;
wire \phy_ddio_address[36] ;
wire \phy_ddio_address[37] ;
wire \phy_ddio_address[38] ;
wire \phy_ddio_address[39] ;
wire \phy_ddio_address[40] ;
wire \phy_ddio_address[41] ;
wire \phy_ddio_address[42] ;
wire \phy_ddio_address[43] ;
wire \phy_ddio_address[44] ;
wire \phy_ddio_address[45] ;
wire \phy_ddio_address[46] ;
wire \phy_ddio_address[47] ;
wire \phy_ddio_address[48] ;
wire \phy_ddio_address[49] ;
wire \phy_ddio_address[50] ;
wire \phy_ddio_address[51] ;
wire \phy_ddio_bank[0] ;
wire \phy_ddio_bank[1] ;
wire \phy_ddio_bank[2] ;
wire \phy_ddio_bank[3] ;
wire \phy_ddio_bank[4] ;
wire \phy_ddio_bank[5] ;
wire \phy_ddio_bank[6] ;
wire \phy_ddio_bank[7] ;
wire \phy_ddio_bank[8] ;
wire \phy_ddio_bank[9] ;
wire \phy_ddio_bank[10] ;
wire \phy_ddio_bank[11] ;
wire \phy_ddio_cas_n[0] ;
wire \phy_ddio_cas_n[1] ;
wire \phy_ddio_cas_n[2] ;
wire \phy_ddio_cas_n[3] ;
wire \phy_ddio_ck[0] ;
wire \phy_ddio_ck[1] ;
wire \phy_ddio_cke[0] ;
wire \phy_ddio_cke[1] ;
wire \phy_ddio_cke[2] ;
wire \phy_ddio_cke[3] ;
wire \phy_ddio_cs_n[0] ;
wire \phy_ddio_cs_n[1] ;
wire \phy_ddio_cs_n[2] ;
wire \phy_ddio_cs_n[3] ;
wire \phy_ddio_dmdout[0] ;
wire \phy_ddio_dmdout[1] ;
wire \phy_ddio_dmdout[2] ;
wire \phy_ddio_dmdout[3] ;
wire \phy_ddio_dqdout[0] ;
wire \phy_ddio_dqdout[1] ;
wire \phy_ddio_dqdout[2] ;
wire \phy_ddio_dqdout[3] ;
wire \phy_ddio_dqdout[4] ;
wire \phy_ddio_dqdout[5] ;
wire \phy_ddio_dqdout[6] ;
wire \phy_ddio_dqdout[7] ;
wire \phy_ddio_dqdout[8] ;
wire \phy_ddio_dqdout[9] ;
wire \phy_ddio_dqdout[10] ;
wire \phy_ddio_dqdout[11] ;
wire \phy_ddio_dqdout[12] ;
wire \phy_ddio_dqdout[13] ;
wire \phy_ddio_dqdout[14] ;
wire \phy_ddio_dqdout[15] ;
wire \phy_ddio_dqdout[16] ;
wire \phy_ddio_dqdout[17] ;
wire \phy_ddio_dqdout[18] ;
wire \phy_ddio_dqdout[19] ;
wire \phy_ddio_dqdout[20] ;
wire \phy_ddio_dqdout[21] ;
wire \phy_ddio_dqdout[22] ;
wire \phy_ddio_dqdout[23] ;
wire \phy_ddio_dqdout[24] ;
wire \phy_ddio_dqdout[25] ;
wire \phy_ddio_dqdout[26] ;
wire \phy_ddio_dqdout[27] ;
wire \phy_ddio_dqdout[28] ;
wire \phy_ddio_dqdout[29] ;
wire \phy_ddio_dqdout[30] ;
wire \phy_ddio_dqdout[31] ;
wire \phy_ddio_dqoe[0] ;
wire \phy_ddio_dqoe[1] ;
wire \phy_ddio_dqoe[2] ;
wire \phy_ddio_dqoe[3] ;
wire \phy_ddio_dqoe[4] ;
wire \phy_ddio_dqoe[5] ;
wire \phy_ddio_dqoe[6] ;
wire \phy_ddio_dqoe[7] ;
wire \phy_ddio_dqoe[8] ;
wire \phy_ddio_dqoe[9] ;
wire \phy_ddio_dqoe[10] ;
wire \phy_ddio_dqoe[11] ;
wire \phy_ddio_dqoe[12] ;
wire \phy_ddio_dqoe[13] ;
wire \phy_ddio_dqoe[14] ;
wire \phy_ddio_dqoe[15] ;
wire \phy_ddio_dqs_dout[0] ;
wire \phy_ddio_dqs_dout[1] ;
wire \phy_ddio_dqs_dout[2] ;
wire \phy_ddio_dqs_dout[3] ;
wire \phy_ddio_dqslogic_aclr_fifoctrl[0] ;
wire \phy_ddio_dqslogic_aclr_pstamble[0] ;
wire \phy_ddio_dqslogic_dqsena[0] ;
wire \phy_ddio_dqslogic_dqsena[1] ;
wire \phy_ddio_dqslogic_fiforeset[0] ;
wire \phy_ddio_dqslogic_incrdataen[0] ;
wire \phy_ddio_dqslogic_incrdataen[1] ;
wire \phy_ddio_dqslogic_incwrptr[0] ;
wire \phy_ddio_dqslogic_incwrptr[1] ;
wire \phy_ddio_dqslogic_oct[0] ;
wire \phy_ddio_dqslogic_oct[1] ;
wire \phy_ddio_dqslogic_readlatency[0] ;
wire \phy_ddio_dqslogic_readlatency[1] ;
wire \phy_ddio_dqslogic_readlatency[2] ;
wire \phy_ddio_dqslogic_readlatency[3] ;
wire \phy_ddio_dqslogic_readlatency[4] ;
wire \phy_ddio_dqs_oe[0] ;
wire \phy_ddio_dqs_oe[1] ;
wire \phy_ddio_odt[0] ;
wire \phy_ddio_odt[1] ;
wire \phy_ddio_odt[2] ;
wire \phy_ddio_odt[3] ;
wire \phy_ddio_ras_n[0] ;
wire \phy_ddio_ras_n[1] ;
wire \phy_ddio_ras_n[2] ;
wire \phy_ddio_ras_n[3] ;
wire \phy_ddio_reset_n[0] ;
wire \phy_ddio_reset_n[1] ;
wire \phy_ddio_reset_n[2] ;
wire \phy_ddio_reset_n[3] ;
wire \phy_ddio_we_n[0] ;
wire \phy_ddio_we_n[1] ;
wire \phy_ddio_we_n[2] ;
wire \phy_ddio_we_n[3] ;

wire [79:0] hphy_inst_AFIRDATA_bus;
wire [3:0] hphy_inst_AFIWLAT_bus;
wire [63:0] hphy_inst_PHYDDIOADDRDOUT_bus;
wire [11:0] hphy_inst_PHYDDIOBADOUT_bus;
wire [3:0] hphy_inst_PHYDDIOCASNDOUT_bus;
wire [3:0] hphy_inst_PHYDDIOCKDOUT_bus;
wire [7:0] hphy_inst_PHYDDIOCKEDOUT_bus;
wire [7:0] hphy_inst_PHYDDIOCSNDOUT_bus;
wire [19:0] hphy_inst_PHYDDIODMDOUT_bus;
wire [179:0] hphy_inst_PHYDDIODQDOUT_bus;
wire [89:0] hphy_inst_PHYDDIODQOE_bus;
wire [19:0] hphy_inst_PHYDDIODQSDOUT_bus;
wire [4:0] hphy_inst_PHYDDIODQSLOGICACLRFIFOCTRL_bus;
wire [4:0] hphy_inst_PHYDDIODQSLOGICACLRPSTAMBLE_bus;
wire [9:0] hphy_inst_PHYDDIODQSLOGICDQSENA_bus;
wire [4:0] hphy_inst_PHYDDIODQSLOGICFIFORESET_bus;
wire [9:0] hphy_inst_PHYDDIODQSLOGICINCRDATAEN_bus;
wire [9:0] hphy_inst_PHYDDIODQSLOGICINCWRPTR_bus;
wire [9:0] hphy_inst_PHYDDIODQSLOGICOCT_bus;
wire [24:0] hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus;
wire [9:0] hphy_inst_PHYDDIODQSOE_bus;
wire [7:0] hphy_inst_PHYDDIOODTDOUT_bus;
wire [3:0] hphy_inst_PHYDDIORASNDOUT_bus;
wire [3:0] hphy_inst_PHYDDIORESETNDOUT_bus;
wire [3:0] hphy_inst_PHYDDIOWENDOUT_bus;

assign afi_rdata[0] = hphy_inst_AFIRDATA_bus[0];
assign afi_rdata[1] = hphy_inst_AFIRDATA_bus[1];
assign afi_rdata[2] = hphy_inst_AFIRDATA_bus[2];
assign afi_rdata[3] = hphy_inst_AFIRDATA_bus[3];
assign afi_rdata[4] = hphy_inst_AFIRDATA_bus[4];
assign afi_rdata[5] = hphy_inst_AFIRDATA_bus[5];
assign afi_rdata[6] = hphy_inst_AFIRDATA_bus[6];
assign afi_rdata[7] = hphy_inst_AFIRDATA_bus[7];
assign afi_rdata[8] = hphy_inst_AFIRDATA_bus[8];
assign afi_rdata[9] = hphy_inst_AFIRDATA_bus[9];
assign afi_rdata[10] = hphy_inst_AFIRDATA_bus[10];
assign afi_rdata[11] = hphy_inst_AFIRDATA_bus[11];
assign afi_rdata[12] = hphy_inst_AFIRDATA_bus[12];
assign afi_rdata[13] = hphy_inst_AFIRDATA_bus[13];
assign afi_rdata[14] = hphy_inst_AFIRDATA_bus[14];
assign afi_rdata[15] = hphy_inst_AFIRDATA_bus[15];
assign afi_rdata[16] = hphy_inst_AFIRDATA_bus[16];
assign afi_rdata[17] = hphy_inst_AFIRDATA_bus[17];
assign afi_rdata[18] = hphy_inst_AFIRDATA_bus[18];
assign afi_rdata[19] = hphy_inst_AFIRDATA_bus[19];
assign afi_rdata[20] = hphy_inst_AFIRDATA_bus[20];
assign afi_rdata[21] = hphy_inst_AFIRDATA_bus[21];
assign afi_rdata[22] = hphy_inst_AFIRDATA_bus[22];
assign afi_rdata[23] = hphy_inst_AFIRDATA_bus[23];
assign afi_rdata[24] = hphy_inst_AFIRDATA_bus[24];
assign afi_rdata[25] = hphy_inst_AFIRDATA_bus[25];
assign afi_rdata[26] = hphy_inst_AFIRDATA_bus[26];
assign afi_rdata[27] = hphy_inst_AFIRDATA_bus[27];
assign afi_rdata[28] = hphy_inst_AFIRDATA_bus[28];
assign afi_rdata[29] = hphy_inst_AFIRDATA_bus[29];
assign afi_rdata[30] = hphy_inst_AFIRDATA_bus[30];
assign afi_rdata[31] = hphy_inst_AFIRDATA_bus[31];
assign afi_rdata[32] = hphy_inst_AFIRDATA_bus[32];
assign afi_rdata[33] = hphy_inst_AFIRDATA_bus[33];
assign afi_rdata[34] = hphy_inst_AFIRDATA_bus[34];
assign afi_rdata[35] = hphy_inst_AFIRDATA_bus[35];
assign afi_rdata[36] = hphy_inst_AFIRDATA_bus[36];
assign afi_rdata[37] = hphy_inst_AFIRDATA_bus[37];
assign afi_rdata[38] = hphy_inst_AFIRDATA_bus[38];
assign afi_rdata[39] = hphy_inst_AFIRDATA_bus[39];
assign afi_rdata[40] = hphy_inst_AFIRDATA_bus[40];
assign afi_rdata[41] = hphy_inst_AFIRDATA_bus[41];
assign afi_rdata[42] = hphy_inst_AFIRDATA_bus[42];
assign afi_rdata[43] = hphy_inst_AFIRDATA_bus[43];
assign afi_rdata[44] = hphy_inst_AFIRDATA_bus[44];
assign afi_rdata[45] = hphy_inst_AFIRDATA_bus[45];
assign afi_rdata[46] = hphy_inst_AFIRDATA_bus[46];
assign afi_rdata[47] = hphy_inst_AFIRDATA_bus[47];
assign afi_rdata[48] = hphy_inst_AFIRDATA_bus[48];
assign afi_rdata[49] = hphy_inst_AFIRDATA_bus[49];
assign afi_rdata[50] = hphy_inst_AFIRDATA_bus[50];
assign afi_rdata[51] = hphy_inst_AFIRDATA_bus[51];
assign afi_rdata[52] = hphy_inst_AFIRDATA_bus[52];
assign afi_rdata[53] = hphy_inst_AFIRDATA_bus[53];
assign afi_rdata[54] = hphy_inst_AFIRDATA_bus[54];
assign afi_rdata[55] = hphy_inst_AFIRDATA_bus[55];
assign afi_rdata[56] = hphy_inst_AFIRDATA_bus[56];
assign afi_rdata[57] = hphy_inst_AFIRDATA_bus[57];
assign afi_rdata[58] = hphy_inst_AFIRDATA_bus[58];
assign afi_rdata[59] = hphy_inst_AFIRDATA_bus[59];
assign afi_rdata[60] = hphy_inst_AFIRDATA_bus[60];
assign afi_rdata[61] = hphy_inst_AFIRDATA_bus[61];
assign afi_rdata[62] = hphy_inst_AFIRDATA_bus[62];
assign afi_rdata[63] = hphy_inst_AFIRDATA_bus[63];
assign afi_rdata[64] = hphy_inst_AFIRDATA_bus[64];
assign afi_rdata[65] = hphy_inst_AFIRDATA_bus[65];
assign afi_rdata[66] = hphy_inst_AFIRDATA_bus[66];
assign afi_rdata[67] = hphy_inst_AFIRDATA_bus[67];
assign afi_rdata[68] = hphy_inst_AFIRDATA_bus[68];
assign afi_rdata[69] = hphy_inst_AFIRDATA_bus[69];
assign afi_rdata[70] = hphy_inst_AFIRDATA_bus[70];
assign afi_rdata[71] = hphy_inst_AFIRDATA_bus[71];
assign afi_rdata[72] = hphy_inst_AFIRDATA_bus[72];
assign afi_rdata[73] = hphy_inst_AFIRDATA_bus[73];
assign afi_rdata[74] = hphy_inst_AFIRDATA_bus[74];
assign afi_rdata[75] = hphy_inst_AFIRDATA_bus[75];
assign afi_rdata[76] = hphy_inst_AFIRDATA_bus[76];
assign afi_rdata[77] = hphy_inst_AFIRDATA_bus[77];
assign afi_rdata[78] = hphy_inst_AFIRDATA_bus[78];
assign afi_rdata[79] = hphy_inst_AFIRDATA_bus[79];

assign afi_wlat[0] = hphy_inst_AFIWLAT_bus[0];
assign afi_wlat[1] = hphy_inst_AFIWLAT_bus[1];
assign afi_wlat[2] = hphy_inst_AFIWLAT_bus[2];
assign afi_wlat[3] = hphy_inst_AFIWLAT_bus[3];

assign \phy_ddio_address[0]  = hphy_inst_PHYDDIOADDRDOUT_bus[0];
assign \phy_ddio_address[1]  = hphy_inst_PHYDDIOADDRDOUT_bus[1];
assign \phy_ddio_address[2]  = hphy_inst_PHYDDIOADDRDOUT_bus[2];
assign \phy_ddio_address[3]  = hphy_inst_PHYDDIOADDRDOUT_bus[3];
assign \phy_ddio_address[4]  = hphy_inst_PHYDDIOADDRDOUT_bus[4];
assign \phy_ddio_address[5]  = hphy_inst_PHYDDIOADDRDOUT_bus[5];
assign \phy_ddio_address[6]  = hphy_inst_PHYDDIOADDRDOUT_bus[6];
assign \phy_ddio_address[7]  = hphy_inst_PHYDDIOADDRDOUT_bus[7];
assign \phy_ddio_address[8]  = hphy_inst_PHYDDIOADDRDOUT_bus[8];
assign \phy_ddio_address[9]  = hphy_inst_PHYDDIOADDRDOUT_bus[9];
assign \phy_ddio_address[10]  = hphy_inst_PHYDDIOADDRDOUT_bus[10];
assign \phy_ddio_address[11]  = hphy_inst_PHYDDIOADDRDOUT_bus[11];
assign \phy_ddio_address[12]  = hphy_inst_PHYDDIOADDRDOUT_bus[12];
assign \phy_ddio_address[13]  = hphy_inst_PHYDDIOADDRDOUT_bus[13];
assign \phy_ddio_address[14]  = hphy_inst_PHYDDIOADDRDOUT_bus[14];
assign \phy_ddio_address[15]  = hphy_inst_PHYDDIOADDRDOUT_bus[15];
assign \phy_ddio_address[16]  = hphy_inst_PHYDDIOADDRDOUT_bus[16];
assign \phy_ddio_address[17]  = hphy_inst_PHYDDIOADDRDOUT_bus[17];
assign \phy_ddio_address[18]  = hphy_inst_PHYDDIOADDRDOUT_bus[18];
assign \phy_ddio_address[19]  = hphy_inst_PHYDDIOADDRDOUT_bus[19];
assign \phy_ddio_address[20]  = hphy_inst_PHYDDIOADDRDOUT_bus[20];
assign \phy_ddio_address[21]  = hphy_inst_PHYDDIOADDRDOUT_bus[21];
assign \phy_ddio_address[22]  = hphy_inst_PHYDDIOADDRDOUT_bus[22];
assign \phy_ddio_address[23]  = hphy_inst_PHYDDIOADDRDOUT_bus[23];
assign \phy_ddio_address[24]  = hphy_inst_PHYDDIOADDRDOUT_bus[24];
assign \phy_ddio_address[25]  = hphy_inst_PHYDDIOADDRDOUT_bus[25];
assign \phy_ddio_address[26]  = hphy_inst_PHYDDIOADDRDOUT_bus[26];
assign \phy_ddio_address[27]  = hphy_inst_PHYDDIOADDRDOUT_bus[27];
assign \phy_ddio_address[28]  = hphy_inst_PHYDDIOADDRDOUT_bus[28];
assign \phy_ddio_address[29]  = hphy_inst_PHYDDIOADDRDOUT_bus[29];
assign \phy_ddio_address[30]  = hphy_inst_PHYDDIOADDRDOUT_bus[30];
assign \phy_ddio_address[31]  = hphy_inst_PHYDDIOADDRDOUT_bus[31];
assign \phy_ddio_address[32]  = hphy_inst_PHYDDIOADDRDOUT_bus[32];
assign \phy_ddio_address[33]  = hphy_inst_PHYDDIOADDRDOUT_bus[33];
assign \phy_ddio_address[34]  = hphy_inst_PHYDDIOADDRDOUT_bus[34];
assign \phy_ddio_address[35]  = hphy_inst_PHYDDIOADDRDOUT_bus[35];
assign \phy_ddio_address[36]  = hphy_inst_PHYDDIOADDRDOUT_bus[36];
assign \phy_ddio_address[37]  = hphy_inst_PHYDDIOADDRDOUT_bus[37];
assign \phy_ddio_address[38]  = hphy_inst_PHYDDIOADDRDOUT_bus[38];
assign \phy_ddio_address[39]  = hphy_inst_PHYDDIOADDRDOUT_bus[39];
assign \phy_ddio_address[40]  = hphy_inst_PHYDDIOADDRDOUT_bus[40];
assign \phy_ddio_address[41]  = hphy_inst_PHYDDIOADDRDOUT_bus[41];
assign \phy_ddio_address[42]  = hphy_inst_PHYDDIOADDRDOUT_bus[42];
assign \phy_ddio_address[43]  = hphy_inst_PHYDDIOADDRDOUT_bus[43];
assign \phy_ddio_address[44]  = hphy_inst_PHYDDIOADDRDOUT_bus[44];
assign \phy_ddio_address[45]  = hphy_inst_PHYDDIOADDRDOUT_bus[45];
assign \phy_ddio_address[46]  = hphy_inst_PHYDDIOADDRDOUT_bus[46];
assign \phy_ddio_address[47]  = hphy_inst_PHYDDIOADDRDOUT_bus[47];
assign \phy_ddio_address[48]  = hphy_inst_PHYDDIOADDRDOUT_bus[48];
assign \phy_ddio_address[49]  = hphy_inst_PHYDDIOADDRDOUT_bus[49];
assign \phy_ddio_address[50]  = hphy_inst_PHYDDIOADDRDOUT_bus[50];
assign \phy_ddio_address[51]  = hphy_inst_PHYDDIOADDRDOUT_bus[51];

assign \phy_ddio_bank[0]  = hphy_inst_PHYDDIOBADOUT_bus[0];
assign \phy_ddio_bank[1]  = hphy_inst_PHYDDIOBADOUT_bus[1];
assign \phy_ddio_bank[2]  = hphy_inst_PHYDDIOBADOUT_bus[2];
assign \phy_ddio_bank[3]  = hphy_inst_PHYDDIOBADOUT_bus[3];
assign \phy_ddio_bank[4]  = hphy_inst_PHYDDIOBADOUT_bus[4];
assign \phy_ddio_bank[5]  = hphy_inst_PHYDDIOBADOUT_bus[5];
assign \phy_ddio_bank[6]  = hphy_inst_PHYDDIOBADOUT_bus[6];
assign \phy_ddio_bank[7]  = hphy_inst_PHYDDIOBADOUT_bus[7];
assign \phy_ddio_bank[8]  = hphy_inst_PHYDDIOBADOUT_bus[8];
assign \phy_ddio_bank[9]  = hphy_inst_PHYDDIOBADOUT_bus[9];
assign \phy_ddio_bank[10]  = hphy_inst_PHYDDIOBADOUT_bus[10];
assign \phy_ddio_bank[11]  = hphy_inst_PHYDDIOBADOUT_bus[11];

assign \phy_ddio_cas_n[0]  = hphy_inst_PHYDDIOCASNDOUT_bus[0];
assign \phy_ddio_cas_n[1]  = hphy_inst_PHYDDIOCASNDOUT_bus[1];
assign \phy_ddio_cas_n[2]  = hphy_inst_PHYDDIOCASNDOUT_bus[2];
assign \phy_ddio_cas_n[3]  = hphy_inst_PHYDDIOCASNDOUT_bus[3];

assign \phy_ddio_ck[0]  = hphy_inst_PHYDDIOCKDOUT_bus[0];
assign \phy_ddio_ck[1]  = hphy_inst_PHYDDIOCKDOUT_bus[1];

assign \phy_ddio_cke[0]  = hphy_inst_PHYDDIOCKEDOUT_bus[0];
assign \phy_ddio_cke[1]  = hphy_inst_PHYDDIOCKEDOUT_bus[1];
assign \phy_ddio_cke[2]  = hphy_inst_PHYDDIOCKEDOUT_bus[2];
assign \phy_ddio_cke[3]  = hphy_inst_PHYDDIOCKEDOUT_bus[3];

assign \phy_ddio_cs_n[0]  = hphy_inst_PHYDDIOCSNDOUT_bus[0];
assign \phy_ddio_cs_n[1]  = hphy_inst_PHYDDIOCSNDOUT_bus[1];
assign \phy_ddio_cs_n[2]  = hphy_inst_PHYDDIOCSNDOUT_bus[2];
assign \phy_ddio_cs_n[3]  = hphy_inst_PHYDDIOCSNDOUT_bus[3];

assign \phy_ddio_dmdout[0]  = hphy_inst_PHYDDIODMDOUT_bus[0];
assign \phy_ddio_dmdout[1]  = hphy_inst_PHYDDIODMDOUT_bus[1];
assign \phy_ddio_dmdout[2]  = hphy_inst_PHYDDIODMDOUT_bus[2];
assign \phy_ddio_dmdout[3]  = hphy_inst_PHYDDIODMDOUT_bus[3];

assign \phy_ddio_dqdout[0]  = hphy_inst_PHYDDIODQDOUT_bus[0];
assign \phy_ddio_dqdout[1]  = hphy_inst_PHYDDIODQDOUT_bus[1];
assign \phy_ddio_dqdout[2]  = hphy_inst_PHYDDIODQDOUT_bus[2];
assign \phy_ddio_dqdout[3]  = hphy_inst_PHYDDIODQDOUT_bus[3];
assign \phy_ddio_dqdout[4]  = hphy_inst_PHYDDIODQDOUT_bus[4];
assign \phy_ddio_dqdout[5]  = hphy_inst_PHYDDIODQDOUT_bus[5];
assign \phy_ddio_dqdout[6]  = hphy_inst_PHYDDIODQDOUT_bus[6];
assign \phy_ddio_dqdout[7]  = hphy_inst_PHYDDIODQDOUT_bus[7];
assign \phy_ddio_dqdout[8]  = hphy_inst_PHYDDIODQDOUT_bus[8];
assign \phy_ddio_dqdout[9]  = hphy_inst_PHYDDIODQDOUT_bus[9];
assign \phy_ddio_dqdout[10]  = hphy_inst_PHYDDIODQDOUT_bus[10];
assign \phy_ddio_dqdout[11]  = hphy_inst_PHYDDIODQDOUT_bus[11];
assign \phy_ddio_dqdout[12]  = hphy_inst_PHYDDIODQDOUT_bus[12];
assign \phy_ddio_dqdout[13]  = hphy_inst_PHYDDIODQDOUT_bus[13];
assign \phy_ddio_dqdout[14]  = hphy_inst_PHYDDIODQDOUT_bus[14];
assign \phy_ddio_dqdout[15]  = hphy_inst_PHYDDIODQDOUT_bus[15];
assign \phy_ddio_dqdout[16]  = hphy_inst_PHYDDIODQDOUT_bus[16];
assign \phy_ddio_dqdout[17]  = hphy_inst_PHYDDIODQDOUT_bus[17];
assign \phy_ddio_dqdout[18]  = hphy_inst_PHYDDIODQDOUT_bus[18];
assign \phy_ddio_dqdout[19]  = hphy_inst_PHYDDIODQDOUT_bus[19];
assign \phy_ddio_dqdout[20]  = hphy_inst_PHYDDIODQDOUT_bus[20];
assign \phy_ddio_dqdout[21]  = hphy_inst_PHYDDIODQDOUT_bus[21];
assign \phy_ddio_dqdout[22]  = hphy_inst_PHYDDIODQDOUT_bus[22];
assign \phy_ddio_dqdout[23]  = hphy_inst_PHYDDIODQDOUT_bus[23];
assign \phy_ddio_dqdout[24]  = hphy_inst_PHYDDIODQDOUT_bus[24];
assign \phy_ddio_dqdout[25]  = hphy_inst_PHYDDIODQDOUT_bus[25];
assign \phy_ddio_dqdout[26]  = hphy_inst_PHYDDIODQDOUT_bus[26];
assign \phy_ddio_dqdout[27]  = hphy_inst_PHYDDIODQDOUT_bus[27];
assign \phy_ddio_dqdout[28]  = hphy_inst_PHYDDIODQDOUT_bus[28];
assign \phy_ddio_dqdout[29]  = hphy_inst_PHYDDIODQDOUT_bus[29];
assign \phy_ddio_dqdout[30]  = hphy_inst_PHYDDIODQDOUT_bus[30];
assign \phy_ddio_dqdout[31]  = hphy_inst_PHYDDIODQDOUT_bus[31];

assign \phy_ddio_dqoe[0]  = hphy_inst_PHYDDIODQOE_bus[0];
assign \phy_ddio_dqoe[1]  = hphy_inst_PHYDDIODQOE_bus[1];
assign \phy_ddio_dqoe[2]  = hphy_inst_PHYDDIODQOE_bus[2];
assign \phy_ddio_dqoe[3]  = hphy_inst_PHYDDIODQOE_bus[3];
assign \phy_ddio_dqoe[4]  = hphy_inst_PHYDDIODQOE_bus[4];
assign \phy_ddio_dqoe[5]  = hphy_inst_PHYDDIODQOE_bus[5];
assign \phy_ddio_dqoe[6]  = hphy_inst_PHYDDIODQOE_bus[6];
assign \phy_ddio_dqoe[7]  = hphy_inst_PHYDDIODQOE_bus[7];
assign \phy_ddio_dqoe[8]  = hphy_inst_PHYDDIODQOE_bus[8];
assign \phy_ddio_dqoe[9]  = hphy_inst_PHYDDIODQOE_bus[9];
assign \phy_ddio_dqoe[10]  = hphy_inst_PHYDDIODQOE_bus[10];
assign \phy_ddio_dqoe[11]  = hphy_inst_PHYDDIODQOE_bus[11];
assign \phy_ddio_dqoe[12]  = hphy_inst_PHYDDIODQOE_bus[12];
assign \phy_ddio_dqoe[13]  = hphy_inst_PHYDDIODQOE_bus[13];
assign \phy_ddio_dqoe[14]  = hphy_inst_PHYDDIODQOE_bus[14];
assign \phy_ddio_dqoe[15]  = hphy_inst_PHYDDIODQOE_bus[15];

assign \phy_ddio_dqs_dout[0]  = hphy_inst_PHYDDIODQSDOUT_bus[0];
assign \phy_ddio_dqs_dout[1]  = hphy_inst_PHYDDIODQSDOUT_bus[1];
assign \phy_ddio_dqs_dout[2]  = hphy_inst_PHYDDIODQSDOUT_bus[2];
assign \phy_ddio_dqs_dout[3]  = hphy_inst_PHYDDIODQSDOUT_bus[3];

assign \phy_ddio_dqslogic_aclr_fifoctrl[0]  = hphy_inst_PHYDDIODQSLOGICACLRFIFOCTRL_bus[0];

assign \phy_ddio_dqslogic_aclr_pstamble[0]  = hphy_inst_PHYDDIODQSLOGICACLRPSTAMBLE_bus[0];

assign \phy_ddio_dqslogic_dqsena[0]  = hphy_inst_PHYDDIODQSLOGICDQSENA_bus[0];
assign \phy_ddio_dqslogic_dqsena[1]  = hphy_inst_PHYDDIODQSLOGICDQSENA_bus[1];

assign \phy_ddio_dqslogic_fiforeset[0]  = hphy_inst_PHYDDIODQSLOGICFIFORESET_bus[0];

assign \phy_ddio_dqslogic_incrdataen[0]  = hphy_inst_PHYDDIODQSLOGICINCRDATAEN_bus[0];
assign \phy_ddio_dqslogic_incrdataen[1]  = hphy_inst_PHYDDIODQSLOGICINCRDATAEN_bus[1];

assign \phy_ddio_dqslogic_incwrptr[0]  = hphy_inst_PHYDDIODQSLOGICINCWRPTR_bus[0];
assign \phy_ddio_dqslogic_incwrptr[1]  = hphy_inst_PHYDDIODQSLOGICINCWRPTR_bus[1];

assign \phy_ddio_dqslogic_oct[0]  = hphy_inst_PHYDDIODQSLOGICOCT_bus[0];
assign \phy_ddio_dqslogic_oct[1]  = hphy_inst_PHYDDIODQSLOGICOCT_bus[1];

assign \phy_ddio_dqslogic_readlatency[0]  = hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus[0];
assign \phy_ddio_dqslogic_readlatency[1]  = hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus[1];
assign \phy_ddio_dqslogic_readlatency[2]  = hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus[2];
assign \phy_ddio_dqslogic_readlatency[3]  = hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus[3];
assign \phy_ddio_dqslogic_readlatency[4]  = hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus[4];

assign \phy_ddio_dqs_oe[0]  = hphy_inst_PHYDDIODQSOE_bus[0];
assign \phy_ddio_dqs_oe[1]  = hphy_inst_PHYDDIODQSOE_bus[1];

assign \phy_ddio_odt[0]  = hphy_inst_PHYDDIOODTDOUT_bus[0];
assign \phy_ddio_odt[1]  = hphy_inst_PHYDDIOODTDOUT_bus[1];
assign \phy_ddio_odt[2]  = hphy_inst_PHYDDIOODTDOUT_bus[2];
assign \phy_ddio_odt[3]  = hphy_inst_PHYDDIOODTDOUT_bus[3];

assign \phy_ddio_ras_n[0]  = hphy_inst_PHYDDIORASNDOUT_bus[0];
assign \phy_ddio_ras_n[1]  = hphy_inst_PHYDDIORASNDOUT_bus[1];
assign \phy_ddio_ras_n[2]  = hphy_inst_PHYDDIORASNDOUT_bus[2];
assign \phy_ddio_ras_n[3]  = hphy_inst_PHYDDIORASNDOUT_bus[3];

assign \phy_ddio_reset_n[0]  = hphy_inst_PHYDDIORESETNDOUT_bus[0];
assign \phy_ddio_reset_n[1]  = hphy_inst_PHYDDIORESETNDOUT_bus[1];
assign \phy_ddio_reset_n[2]  = hphy_inst_PHYDDIORESETNDOUT_bus[2];
assign \phy_ddio_reset_n[3]  = hphy_inst_PHYDDIORESETNDOUT_bus[3];

assign \phy_ddio_we_n[0]  = hphy_inst_PHYDDIOWENDOUT_bus[0];
assign \phy_ddio_we_n[1]  = hphy_inst_PHYDDIOWENDOUT_bus[1];
assign \phy_ddio_we_n[2]  = hphy_inst_PHYDDIOWENDOUT_bus[2];
assign \phy_ddio_we_n[3]  = hphy_inst_PHYDDIOWENDOUT_bus[3];

HPS_hps_sdram_p0_acv_ldc_23 memphy_ldc(
	.pll_dqs_clk(afi_clk),
	.pll_hr_clk(afi_clk),
	.afi_clk(ctl_clk),
	.avl_clk(\memphy_ldc|leveled_hr_clocks[0] ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_hard_io_pads uio_pads(
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.afi_clk(afi_clk),
	.pll_write_clk(pll_write_clk),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.phy_ddio_address_0(\phy_ddio_address[0] ),
	.phy_ddio_address_1(\phy_ddio_address[1] ),
	.phy_ddio_address_2(\phy_ddio_address[2] ),
	.phy_ddio_address_3(\phy_ddio_address[3] ),
	.phy_ddio_address_4(\phy_ddio_address[4] ),
	.phy_ddio_address_5(\phy_ddio_address[5] ),
	.phy_ddio_address_6(\phy_ddio_address[6] ),
	.phy_ddio_address_7(\phy_ddio_address[7] ),
	.phy_ddio_address_8(\phy_ddio_address[8] ),
	.phy_ddio_address_9(\phy_ddio_address[9] ),
	.phy_ddio_address_10(\phy_ddio_address[10] ),
	.phy_ddio_address_11(\phy_ddio_address[11] ),
	.phy_ddio_address_12(\phy_ddio_address[12] ),
	.phy_ddio_address_13(\phy_ddio_address[13] ),
	.phy_ddio_address_14(\phy_ddio_address[14] ),
	.phy_ddio_address_15(\phy_ddio_address[15] ),
	.phy_ddio_address_16(\phy_ddio_address[16] ),
	.phy_ddio_address_17(\phy_ddio_address[17] ),
	.phy_ddio_address_18(\phy_ddio_address[18] ),
	.phy_ddio_address_19(\phy_ddio_address[19] ),
	.phy_ddio_address_20(\phy_ddio_address[20] ),
	.phy_ddio_address_21(\phy_ddio_address[21] ),
	.phy_ddio_address_22(\phy_ddio_address[22] ),
	.phy_ddio_address_23(\phy_ddio_address[23] ),
	.phy_ddio_address_24(\phy_ddio_address[24] ),
	.phy_ddio_address_25(\phy_ddio_address[25] ),
	.phy_ddio_address_26(\phy_ddio_address[26] ),
	.phy_ddio_address_27(\phy_ddio_address[27] ),
	.phy_ddio_address_28(\phy_ddio_address[28] ),
	.phy_ddio_address_29(\phy_ddio_address[29] ),
	.phy_ddio_address_30(\phy_ddio_address[30] ),
	.phy_ddio_address_31(\phy_ddio_address[31] ),
	.phy_ddio_address_32(\phy_ddio_address[32] ),
	.phy_ddio_address_33(\phy_ddio_address[33] ),
	.phy_ddio_address_34(\phy_ddio_address[34] ),
	.phy_ddio_address_35(\phy_ddio_address[35] ),
	.phy_ddio_address_36(\phy_ddio_address[36] ),
	.phy_ddio_address_37(\phy_ddio_address[37] ),
	.phy_ddio_address_38(\phy_ddio_address[38] ),
	.phy_ddio_address_39(\phy_ddio_address[39] ),
	.phy_ddio_address_40(\phy_ddio_address[40] ),
	.phy_ddio_address_41(\phy_ddio_address[41] ),
	.phy_ddio_address_42(\phy_ddio_address[42] ),
	.phy_ddio_address_43(\phy_ddio_address[43] ),
	.phy_ddio_address_44(\phy_ddio_address[44] ),
	.phy_ddio_address_45(\phy_ddio_address[45] ),
	.phy_ddio_address_46(\phy_ddio_address[46] ),
	.phy_ddio_address_47(\phy_ddio_address[47] ),
	.phy_ddio_address_48(\phy_ddio_address[48] ),
	.phy_ddio_address_49(\phy_ddio_address[49] ),
	.phy_ddio_address_50(\phy_ddio_address[50] ),
	.phy_ddio_address_51(\phy_ddio_address[51] ),
	.phy_ddio_bank_0(\phy_ddio_bank[0] ),
	.phy_ddio_bank_1(\phy_ddio_bank[1] ),
	.phy_ddio_bank_2(\phy_ddio_bank[2] ),
	.phy_ddio_bank_3(\phy_ddio_bank[3] ),
	.phy_ddio_bank_4(\phy_ddio_bank[4] ),
	.phy_ddio_bank_5(\phy_ddio_bank[5] ),
	.phy_ddio_bank_6(\phy_ddio_bank[6] ),
	.phy_ddio_bank_7(\phy_ddio_bank[7] ),
	.phy_ddio_bank_8(\phy_ddio_bank[8] ),
	.phy_ddio_bank_9(\phy_ddio_bank[9] ),
	.phy_ddio_bank_10(\phy_ddio_bank[10] ),
	.phy_ddio_bank_11(\phy_ddio_bank[11] ),
	.phy_ddio_cas_n_0(\phy_ddio_cas_n[0] ),
	.phy_ddio_cas_n_1(\phy_ddio_cas_n[1] ),
	.phy_ddio_cas_n_2(\phy_ddio_cas_n[2] ),
	.phy_ddio_cas_n_3(\phy_ddio_cas_n[3] ),
	.phy_ddio_ck_0(\phy_ddio_ck[0] ),
	.phy_ddio_ck_1(\phy_ddio_ck[1] ),
	.phy_ddio_cke_0(\phy_ddio_cke[0] ),
	.phy_ddio_cke_1(\phy_ddio_cke[1] ),
	.phy_ddio_cke_2(\phy_ddio_cke[2] ),
	.phy_ddio_cke_3(\phy_ddio_cke[3] ),
	.phy_ddio_cs_n_0(\phy_ddio_cs_n[0] ),
	.phy_ddio_cs_n_1(\phy_ddio_cs_n[1] ),
	.phy_ddio_cs_n_2(\phy_ddio_cs_n[2] ),
	.phy_ddio_cs_n_3(\phy_ddio_cs_n[3] ),
	.phy_ddio_dmdout_0(\phy_ddio_dmdout[0] ),
	.phy_ddio_dmdout_1(\phy_ddio_dmdout[1] ),
	.phy_ddio_dmdout_2(\phy_ddio_dmdout[2] ),
	.phy_ddio_dmdout_3(\phy_ddio_dmdout[3] ),
	.phy_ddio_dqdout_0(\phy_ddio_dqdout[0] ),
	.phy_ddio_dqdout_1(\phy_ddio_dqdout[1] ),
	.phy_ddio_dqdout_2(\phy_ddio_dqdout[2] ),
	.phy_ddio_dqdout_3(\phy_ddio_dqdout[3] ),
	.phy_ddio_dqdout_4(\phy_ddio_dqdout[4] ),
	.phy_ddio_dqdout_5(\phy_ddio_dqdout[5] ),
	.phy_ddio_dqdout_6(\phy_ddio_dqdout[6] ),
	.phy_ddio_dqdout_7(\phy_ddio_dqdout[7] ),
	.phy_ddio_dqdout_8(\phy_ddio_dqdout[8] ),
	.phy_ddio_dqdout_9(\phy_ddio_dqdout[9] ),
	.phy_ddio_dqdout_10(\phy_ddio_dqdout[10] ),
	.phy_ddio_dqdout_11(\phy_ddio_dqdout[11] ),
	.phy_ddio_dqdout_12(\phy_ddio_dqdout[12] ),
	.phy_ddio_dqdout_13(\phy_ddio_dqdout[13] ),
	.phy_ddio_dqdout_14(\phy_ddio_dqdout[14] ),
	.phy_ddio_dqdout_15(\phy_ddio_dqdout[15] ),
	.phy_ddio_dqdout_16(\phy_ddio_dqdout[16] ),
	.phy_ddio_dqdout_17(\phy_ddio_dqdout[17] ),
	.phy_ddio_dqdout_18(\phy_ddio_dqdout[18] ),
	.phy_ddio_dqdout_19(\phy_ddio_dqdout[19] ),
	.phy_ddio_dqdout_20(\phy_ddio_dqdout[20] ),
	.phy_ddio_dqdout_21(\phy_ddio_dqdout[21] ),
	.phy_ddio_dqdout_22(\phy_ddio_dqdout[22] ),
	.phy_ddio_dqdout_23(\phy_ddio_dqdout[23] ),
	.phy_ddio_dqdout_24(\phy_ddio_dqdout[24] ),
	.phy_ddio_dqdout_25(\phy_ddio_dqdout[25] ),
	.phy_ddio_dqdout_26(\phy_ddio_dqdout[26] ),
	.phy_ddio_dqdout_27(\phy_ddio_dqdout[27] ),
	.phy_ddio_dqdout_28(\phy_ddio_dqdout[28] ),
	.phy_ddio_dqdout_29(\phy_ddio_dqdout[29] ),
	.phy_ddio_dqdout_30(\phy_ddio_dqdout[30] ),
	.phy_ddio_dqdout_31(\phy_ddio_dqdout[31] ),
	.phy_ddio_dqoe_0(\phy_ddio_dqoe[0] ),
	.phy_ddio_dqoe_1(\phy_ddio_dqoe[1] ),
	.phy_ddio_dqoe_2(\phy_ddio_dqoe[2] ),
	.phy_ddio_dqoe_3(\phy_ddio_dqoe[3] ),
	.phy_ddio_dqoe_4(\phy_ddio_dqoe[4] ),
	.phy_ddio_dqoe_5(\phy_ddio_dqoe[5] ),
	.phy_ddio_dqoe_6(\phy_ddio_dqoe[6] ),
	.phy_ddio_dqoe_7(\phy_ddio_dqoe[7] ),
	.phy_ddio_dqoe_8(\phy_ddio_dqoe[8] ),
	.phy_ddio_dqoe_9(\phy_ddio_dqoe[9] ),
	.phy_ddio_dqoe_10(\phy_ddio_dqoe[10] ),
	.phy_ddio_dqoe_11(\phy_ddio_dqoe[11] ),
	.phy_ddio_dqoe_12(\phy_ddio_dqoe[12] ),
	.phy_ddio_dqoe_13(\phy_ddio_dqoe[13] ),
	.phy_ddio_dqoe_14(\phy_ddio_dqoe[14] ),
	.phy_ddio_dqoe_15(\phy_ddio_dqoe[15] ),
	.phy_ddio_dqs_dout_0(\phy_ddio_dqs_dout[0] ),
	.phy_ddio_dqs_dout_1(\phy_ddio_dqs_dout[1] ),
	.phy_ddio_dqs_dout_2(\phy_ddio_dqs_dout[2] ),
	.phy_ddio_dqs_dout_3(\phy_ddio_dqs_dout[3] ),
	.phy_ddio_dqslogic_aclr_fifoctrl_0(\phy_ddio_dqslogic_aclr_fifoctrl[0] ),
	.phy_ddio_dqslogic_aclr_pstamble_0(\phy_ddio_dqslogic_aclr_pstamble[0] ),
	.phy_ddio_dqslogic_dqsena_0(\phy_ddio_dqslogic_dqsena[0] ),
	.phy_ddio_dqslogic_dqsena_1(\phy_ddio_dqslogic_dqsena[1] ),
	.phy_ddio_dqslogic_fiforeset_0(\phy_ddio_dqslogic_fiforeset[0] ),
	.phy_ddio_dqslogic_incrdataen_0(\phy_ddio_dqslogic_incrdataen[0] ),
	.phy_ddio_dqslogic_incrdataen_1(\phy_ddio_dqslogic_incrdataen[1] ),
	.phy_ddio_dqslogic_incwrptr_0(\phy_ddio_dqslogic_incwrptr[0] ),
	.phy_ddio_dqslogic_incwrptr_1(\phy_ddio_dqslogic_incwrptr[1] ),
	.phy_ddio_dqslogic_oct_0(\phy_ddio_dqslogic_oct[0] ),
	.phy_ddio_dqslogic_oct_1(\phy_ddio_dqslogic_oct[1] ),
	.phy_ddio_dqslogic_readlatency_0(\phy_ddio_dqslogic_readlatency[0] ),
	.phy_ddio_dqslogic_readlatency_1(\phy_ddio_dqslogic_readlatency[1] ),
	.phy_ddio_dqslogic_readlatency_2(\phy_ddio_dqslogic_readlatency[2] ),
	.phy_ddio_dqslogic_readlatency_3(\phy_ddio_dqslogic_readlatency[3] ),
	.phy_ddio_dqslogic_readlatency_4(\phy_ddio_dqslogic_readlatency[4] ),
	.phy_ddio_dqs_oe_0(\phy_ddio_dqs_oe[0] ),
	.phy_ddio_dqs_oe_1(\phy_ddio_dqs_oe[1] ),
	.phy_ddio_odt_0(\phy_ddio_odt[0] ),
	.phy_ddio_odt_1(\phy_ddio_odt[1] ),
	.phy_ddio_odt_2(\phy_ddio_odt[2] ),
	.phy_ddio_odt_3(\phy_ddio_odt[3] ),
	.phy_ddio_ras_n_0(\phy_ddio_ras_n[0] ),
	.phy_ddio_ras_n_1(\phy_ddio_ras_n[1] ),
	.phy_ddio_ras_n_2(\phy_ddio_ras_n[2] ),
	.phy_ddio_ras_n_3(\phy_ddio_ras_n[3] ),
	.phy_ddio_reset_n_0(\phy_ddio_reset_n[0] ),
	.phy_ddio_reset_n_1(\phy_ddio_reset_n[1] ),
	.phy_ddio_reset_n_2(\phy_ddio_reset_n[2] ),
	.phy_ddio_reset_n_3(\phy_ddio_reset_n[3] ),
	.phy_ddio_we_n_0(\phy_ddio_we_n[0] ),
	.phy_ddio_we_n_1(\phy_ddio_we_n[1] ),
	.phy_ddio_we_n_2(\phy_ddio_we_n[2] ),
	.phy_ddio_we_n_3(\phy_ddio_we_n[3] ),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.input_path_gen0read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[0] ),
	.input_path_gen0read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[1] ),
	.input_path_gen0read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[2] ),
	.input_path_gen0read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[3] ),
	.input_path_gen1read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[0] ),
	.input_path_gen1read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[1] ),
	.input_path_gen1read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[2] ),
	.input_path_gen1read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[3] ),
	.input_path_gen2read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[0] ),
	.input_path_gen2read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[1] ),
	.input_path_gen2read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[2] ),
	.input_path_gen2read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[3] ),
	.input_path_gen3read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[0] ),
	.input_path_gen3read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[1] ),
	.input_path_gen3read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[2] ),
	.input_path_gen3read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[3] ),
	.input_path_gen4read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[0] ),
	.input_path_gen4read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[1] ),
	.input_path_gen4read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[2] ),
	.input_path_gen4read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[3] ),
	.input_path_gen5read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[0] ),
	.input_path_gen5read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[1] ),
	.input_path_gen5read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[2] ),
	.input_path_gen5read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[3] ),
	.input_path_gen6read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[0] ),
	.input_path_gen6read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[1] ),
	.input_path_gen6read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[2] ),
	.input_path_gen6read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[3] ),
	.input_path_gen7read_fifo_out_0(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[0] ),
	.input_path_gen7read_fifo_out_1(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[1] ),
	.input_path_gen7read_fifo_out_2(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[2] ),
	.input_path_gen7read_fifo_out_3(\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[3] ),
	.ddio_phy_dqslogic_rdatavalid({ddio_phy_dqslogic_rdatavalid_unconnected_wire_4,ddio_phy_dqslogic_rdatavalid_unconnected_wire_3,ddio_phy_dqslogic_rdatavalid_unconnected_wire_2,ddio_phy_dqslogic_rdatavalid_unconnected_wire_1,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|lfifo_rdata_valid }),
	.dll_delayctrl_0(dll_delayctrl_0),
	.dll_delayctrl_1(dll_delayctrl_1),
	.dll_delayctrl_2(dll_delayctrl_2),
	.dll_delayctrl_3(dll_delayctrl_3),
	.dll_delayctrl_4(dll_delayctrl_4),
	.dll_delayctrl_5(dll_delayctrl_5),
	.dll_delayctrl_6(dll_delayctrl_6),
	.GND_port(GND_port));

cyclonev_mem_phy hphy_inst(
	.aficasn(afi_cas_n[0]),
	.afimemclkdisable(afi_mem_clk_disable[0]),
	.afirasn(afi_ras_n[0]),
	.afirstn(afi_rst_n[0]),
	.afiwen(afi_we_n[0]),
	.avlread(gnd),
	.avlresetn(gnd),
	.avlwrite(gnd),
	.globalresetn(gnd),
	.iointcasnaclr(gnd),
	.iointrasnaclr(gnd),
	.iointresetnaclr(gnd),
	.iointwenaclr(gnd),
	.plladdrcmdclk(!ctl_clk),
	.pllaficlk(ctl_clk),
	.pllavlclk(\memphy_ldc|leveled_hr_clocks[0] ),
	.plllocked(gnd),
	.scanen(gnd),
	.softresetn(gnd),
	.afiaddr({afi_addr[19],afi_addr[18],afi_addr[17],afi_addr[16],afi_addr[15],afi_addr[14],afi_addr[13],afi_addr[12],afi_addr[11],afi_addr[10],afi_addr[9],afi_addr[8],afi_addr[7],afi_addr[6],afi_addr[5],afi_addr[4],afi_addr[3],afi_addr[2],afi_addr[1],afi_addr[0]}),
	.afiba({afi_ba[2],afi_ba[1],afi_ba[0]}),
	.aficke({afi_cke[1],afi_cke[0]}),
	.aficsn({afi_cs_n[1],afi_cs_n[0]}),
	.afidm({afi_dm[9],afi_dm[8],afi_dm[7],afi_dm[6],afi_dm[5],afi_dm[4],afi_dm[3],afi_dm[2],afi_dm[1],afi_dm[0]}),
	.afidqsburst({afi_dqs_burst[4],afi_dqs_burst[3],afi_dqs_burst[2],afi_dqs_burst[1],afi_dqs_burst[0]}),
	.afiodt({afi_odt[1],afi_odt[0]}),
	.afirdataen({afi_rdata_en[4],afi_rdata_en[3],afi_rdata_en[2],afi_rdata_en[1],afi_rdata_en[0]}),
	.afirdataenfull({afi_rdata_en_full[4],afi_rdata_en_full[3],afi_rdata_en_full[2],afi_rdata_en_full[1],afi_rdata_en_full[0]}),
	.afiwdata({afi_wdata[79],afi_wdata[78],afi_wdata[77],afi_wdata[76],afi_wdata[75],afi_wdata[74],afi_wdata[73],afi_wdata[72],afi_wdata[71],afi_wdata[70],afi_wdata[69],afi_wdata[68],afi_wdata[67],afi_wdata[66],afi_wdata[65],afi_wdata[64],afi_wdata[63],afi_wdata[62],afi_wdata[61],afi_wdata[60],afi_wdata[59],afi_wdata[58],afi_wdata[57],afi_wdata[56],afi_wdata[55],afi_wdata[54],afi_wdata[53],afi_wdata[52],
afi_wdata[51],afi_wdata[50],afi_wdata[49],afi_wdata[48],afi_wdata[47],afi_wdata[46],afi_wdata[45],afi_wdata[44],afi_wdata[43],afi_wdata[42],afi_wdata[41],afi_wdata[40],afi_wdata[39],afi_wdata[38],afi_wdata[37],afi_wdata[36],afi_wdata[35],afi_wdata[34],afi_wdata[33],afi_wdata[32],afi_wdata[31],afi_wdata[30],afi_wdata[29],afi_wdata[28],afi_wdata[27],afi_wdata[26],afi_wdata[25],afi_wdata[24],
afi_wdata[23],afi_wdata[22],afi_wdata[21],afi_wdata[20],afi_wdata[19],afi_wdata[18],afi_wdata[17],afi_wdata[16],afi_wdata[15],afi_wdata[14],afi_wdata[13],afi_wdata[12],afi_wdata[11],afi_wdata[10],afi_wdata[9],afi_wdata[8],afi_wdata[7],afi_wdata[6],afi_wdata[5],afi_wdata[4],afi_wdata[3],afi_wdata[2],afi_wdata[1],afi_wdata[0]}),
	.afiwdatavalid({afi_wdata_valid[4],afi_wdata_valid[3],afi_wdata_valid[2],afi_wdata_valid[1],afi_wdata_valid[0]}),
	.avladdress({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.avlwritedata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.cfgaddlat({gnd,gnd,gnd,cfg_addlat[4],cfg_addlat[3],cfg_addlat[2],cfg_addlat[1],cfg_addlat[0]}),
	.cfgbankaddrwidth({gnd,gnd,gnd,gnd,gnd,cfg_bankaddrwidth[2],cfg_bankaddrwidth[1],cfg_bankaddrwidth[0]}),
	.cfgcaswrlat({gnd,gnd,gnd,gnd,cfg_caswrlat[3],cfg_caswrlat[2],cfg_caswrlat[1],cfg_caswrlat[0]}),
	.cfgcoladdrwidth({gnd,gnd,gnd,cfg_coladdrwidth[4],cfg_coladdrwidth[3],cfg_coladdrwidth[2],cfg_coladdrwidth[1],cfg_coladdrwidth[0]}),
	.cfgcsaddrwidth({gnd,gnd,gnd,gnd,gnd,cfg_csaddrwidth[2],cfg_csaddrwidth[1],cfg_csaddrwidth[0]}),
	.cfgdevicewidth({gnd,gnd,gnd,gnd,cfg_devicewidth[3],cfg_devicewidth[2],cfg_devicewidth[1],cfg_devicewidth[0]}),
	.cfgdramconfig({gnd,gnd,gnd,cfg_dramconfig[20],cfg_dramconfig[19],cfg_dramconfig[18],cfg_dramconfig[17],cfg_dramconfig[16],cfg_dramconfig[15],cfg_dramconfig[14],cfg_dramconfig[13],cfg_dramconfig[12],cfg_dramconfig[11],cfg_dramconfig[10],cfg_dramconfig[9],cfg_dramconfig[8],cfg_dramconfig[7],cfg_dramconfig[6],cfg_dramconfig[5],cfg_dramconfig[4],
cfg_dramconfig[3],cfg_dramconfig[2],cfg_dramconfig[1],cfg_dramconfig[0]}),
	.cfginterfacewidth({cfg_interfacewidth[7],cfg_interfacewidth[6],cfg_interfacewidth[5],cfg_interfacewidth[4],cfg_interfacewidth[3],cfg_interfacewidth[2],cfg_interfacewidth[1],cfg_interfacewidth[0]}),
	.cfgrowaddrwidth({gnd,gnd,gnd,cfg_rowaddrwidth[4],cfg_rowaddrwidth[3],cfg_rowaddrwidth[2],cfg_rowaddrwidth[1],cfg_rowaddrwidth[0]}),
	.cfgtcl({gnd,gnd,gnd,cfg_tcl[4],cfg_tcl[3],cfg_tcl[2],cfg_tcl[1],cfg_tcl[0]}),
	.cfgtmrd({gnd,gnd,gnd,gnd,cfg_tmrd[3],cfg_tmrd[2],cfg_tmrd[1],cfg_tmrd[0]}),
	.cfgtrefi({gnd,gnd,gnd,cfg_trefi[12],cfg_trefi[11],cfg_trefi[10],cfg_trefi[9],cfg_trefi[8],cfg_trefi[7],cfg_trefi[6],cfg_trefi[5],cfg_trefi[4],cfg_trefi[3],cfg_trefi[2],cfg_trefi[1],cfg_trefi[0]}),
	.cfgtrfc({cfg_trfc[7],cfg_trfc[6],cfg_trfc[5],cfg_trfc[4],cfg_trfc[3],cfg_trfc[2],cfg_trfc[1],cfg_trfc[0]}),
	.cfgtwr({gnd,gnd,gnd,gnd,cfg_twr[3],cfg_twr[2],cfg_twr[1],cfg_twr[0]}),
	.ddiophydqdin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[7].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[6].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[5].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[4].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[3].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[2].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[1].read_fifo_out[0] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[3] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[2] ,
\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[1] ,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|input_path_gen[0].read_fifo_out[0] }),
	.ddiophydqslogicrdatavalid({vcc,vcc,vcc,vcc,\uio_pads|dq_ddio[0].ubidir_dq_dqs|altdq_dqs2_inst|lfifo_rdata_valid }),
	.iointaddraclr(16'b0000000000000000),
	.iointaddrdout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointbaaclr(3'b000),
	.iointbadout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointcasndout({gnd,gnd,gnd,gnd}),
	.iointckdout({gnd,gnd,gnd,gnd}),
	.iointckeaclr(2'b00),
	.iointckedout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointckndout({gnd,gnd,gnd,gnd}),
	.iointcsnaclr(2'b00),
	.iointcsndout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdmdout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqdout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqoe({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd}),
	.iointdqsbdout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqsboe({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqsdout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqslogicaclrfifoctrl(5'b00000),
	.iointdqslogicaclrpstamble(5'b00000),
	.iointdqslogicdqsena({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqslogicfiforeset({gnd,gnd,gnd,gnd,gnd}),
	.iointdqslogicincrdataen({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqslogicincwrptr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqslogicoct({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqslogicreadlatency({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointdqsoe({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointodtaclr(2'b00),
	.iointodtdout({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.iointrasndout({gnd,gnd,gnd,gnd}),
	.iointresetndout({gnd,gnd,gnd,gnd}),
	.iointwendout({gnd,gnd,gnd,gnd}),
	.aficalfail(afi_cal_fail),
	.aficalsuccess(afi_cal_success),
	.afirdatavalid(afi_rdata_valid[0]),
	.avlwaitrequest(),
	.ctlresetn(ctl_reset_n),
	.iointaficalfail(),
	.iointaficalsuccess(),
	.phyddiocasnaclr(),
	.phyddiorasnaclr(),
	.phyddioresetnaclr(),
	.phyddiowenaclr(),
	.phyresetn(),
	.afirdata(hphy_inst_AFIRDATA_bus),
	.afirlat(),
	.afiwlat(hphy_inst_AFIWLAT_bus),
	.avlreaddata(),
	.iointafirlat(),
	.iointafiwlat(),
	.iointdqdin(),
	.iointdqslogicrdatavalid(),
	.phyddioaddraclr(),
	.phyddioaddrdout(hphy_inst_PHYDDIOADDRDOUT_bus),
	.phyddiobaaclr(),
	.phyddiobadout(hphy_inst_PHYDDIOBADOUT_bus),
	.phyddiocasndout(hphy_inst_PHYDDIOCASNDOUT_bus),
	.phyddiockdout(hphy_inst_PHYDDIOCKDOUT_bus),
	.phyddiockeaclr(),
	.phyddiockedout(hphy_inst_PHYDDIOCKEDOUT_bus),
	.phyddiockndout(),
	.phyddiocsnaclr(),
	.phyddiocsndout(hphy_inst_PHYDDIOCSNDOUT_bus),
	.phyddiodmdout(hphy_inst_PHYDDIODMDOUT_bus),
	.phyddiodqdout(hphy_inst_PHYDDIODQDOUT_bus),
	.phyddiodqoe(hphy_inst_PHYDDIODQOE_bus),
	.phyddiodqsbdout(),
	.phyddiodqsboe(),
	.phyddiodqsdout(hphy_inst_PHYDDIODQSDOUT_bus),
	.phyddiodqslogicaclrfifoctrl(hphy_inst_PHYDDIODQSLOGICACLRFIFOCTRL_bus),
	.phyddiodqslogicaclrpstamble(hphy_inst_PHYDDIODQSLOGICACLRPSTAMBLE_bus),
	.phyddiodqslogicdqsena(hphy_inst_PHYDDIODQSLOGICDQSENA_bus),
	.phyddiodqslogicfiforeset(hphy_inst_PHYDDIODQSLOGICFIFORESET_bus),
	.phyddiodqslogicincrdataen(hphy_inst_PHYDDIODQSLOGICINCRDATAEN_bus),
	.phyddiodqslogicincwrptr(hphy_inst_PHYDDIODQSLOGICINCWRPTR_bus),
	.phyddiodqslogicoct(hphy_inst_PHYDDIODQSLOGICOCT_bus),
	.phyddiodqslogicreadlatency(hphy_inst_PHYDDIODQSLOGICREADLATENCY_bus),
	.phyddiodqsoe(hphy_inst_PHYDDIODQSOE_bus),
	.phyddioodtaclr(),
	.phyddioodtdout(hphy_inst_PHYDDIOODTDOUT_bus),
	.phyddiorasndout(hphy_inst_PHYDDIORASNDOUT_bus),
	.phyddioresetndout(hphy_inst_PHYDDIORESETNDOUT_bus),
	.phyddiowendout(hphy_inst_PHYDDIOWENDOUT_bus));
defparam hphy_inst.hphy_ac_ddr_disable = "true";
defparam hphy_inst.hphy_atpg_en = "false";
defparam hphy_inst.hphy_csr_pipelineglobalenable = "true";
defparam hphy_inst.hphy_datapath_ac_delay = "one_and_half_cycles";
defparam hphy_inst.hphy_datapath_delay = "one_cycle";
defparam hphy_inst.hphy_reset_delay_en = "false";
defparam hphy_inst.hphy_use_hphy = "true";
defparam hphy_inst.hphy_wrap_back_en = "false";
defparam hphy_inst.m_hphy_ac_rom_content = 1200'b100000011100000000000000000000100000011110000000000000000000010000000010000000001000110001010000000010000000001100110000010000000010010000000000000000010000000010100000000000001000010000000010110000000000000000010000001110000000010000000000010000000010000000001001001001010000000010000000001011001000010000000010100000000000000000010000000010010000000000010000010000000010110000000000000000110000011110000000000000000000111000011110000000000000000000110000011110000000000000000000010000011010000000000000000000010000011010110000000000000000010000001010000000010000000000010000010010000000000000000000011100100110000000000000000000011100100110110000000000000000011100100110000000000000001000011100100110110000000000001000111000111110000000000000000000111100111110000000000000000000111000011110000000000000000000011000000110000000000000000000011000100110000000000000000000010011010110000000000000000000010011010110110000000000000000010011010110000000000000001000010011010110110000000000001000110011011110000000000000000000010000010110000000000000001000010000011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam hphy_inst.m_hphy_ac_rom_init_file = "hps_ac_rom.hex";
defparam hphy_inst.m_hphy_inst_rom_content = 2560'b1000000000000000000010000000011010000000000010000001100000000000100000100000000000001000001010000000000010000011000000000000100000111000000000001000000100000000000010000100100000000000100001010000000000001000010110000000000010000110000000000000100001000000000000000000100000000000000010000110100000000000000010001000000000001010011010000000100000000110100000000000000010010000000010000000011010000000000000001001100000000000101001101000000000001000011010000000100000000110100000000000000010110110100000001100110011101000000000001010111010000000100011001110100000000000101110001000000011101100100010000000000010100000100000001010110010001000100000000110100000000000110011100000000000001100110110000000000011100111000000000000000011000000000000100000110011100000001000001100111000000010000011001110000000100000110011100000000000001101000000000000000001101000000000000000011010000000000000000110100000000000000001101000000001100000111010000000011000010000100000000110000100001000000001100001000010000000000010100110100000000000100001101000000010000000011010000000000011001110000000000000110011011000000000001110011100000000000000001100000000000011000011001110000000110000110011100000001100001100111000000011000011001110000000000000110100000000000000000110100000000000000001101000000000000000011010000000000000000110100000000111000011101000000001110001000010000000011100010000100000000111000100001000000000001010011010000000000010000110100000001000000001101000000000000001000101011000000000000110110110001000000001101000000000000001000101101000000000000111111010000000000001111110100000001000011111101000010000001111111010000100000100001110100001000001000011101000010000010000111010000000000100010110100000000000011111101000000000000111111010000000101001111110100010000000011010000000010000001110100010000100000100001000100001000001000010001000010000010000100010000100000011110110100001000001000011101000010000010000111010000100000100001110100000001010011010000000010000001111111010000100000100001110100001000001000011101000010000010000111010000100000100000000100001000001000010001000010000010000100010000100000100001000100000000001000100000000000011000110100000000000100001101000000000001110011010000000100000000110100000000000000000000000000000001000000000000000000010100000000000000000110000000000000010000000000000000000000000000000100000000000100000001000000000001010000010000000000011000000100000001000000000001000000000001001000110000000000010000110100000000000101001101000000010000000011010000000010000001111000010001000000001101000000000000000000000000000;
defparam hphy_inst.m_hphy_inst_rom_init_file = "hps_inst_rom.hex";

endmodule

module HPS_hps_sdram_p0_acv_hard_io_pads (
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	afi_clk,
	pll_write_clk,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	extra_output_pad_gen0delayed_data_out,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	phy_ddio_address_0,
	phy_ddio_address_1,
	phy_ddio_address_2,
	phy_ddio_address_3,
	phy_ddio_address_4,
	phy_ddio_address_5,
	phy_ddio_address_6,
	phy_ddio_address_7,
	phy_ddio_address_8,
	phy_ddio_address_9,
	phy_ddio_address_10,
	phy_ddio_address_11,
	phy_ddio_address_12,
	phy_ddio_address_13,
	phy_ddio_address_14,
	phy_ddio_address_15,
	phy_ddio_address_16,
	phy_ddio_address_17,
	phy_ddio_address_18,
	phy_ddio_address_19,
	phy_ddio_address_20,
	phy_ddio_address_21,
	phy_ddio_address_22,
	phy_ddio_address_23,
	phy_ddio_address_24,
	phy_ddio_address_25,
	phy_ddio_address_26,
	phy_ddio_address_27,
	phy_ddio_address_28,
	phy_ddio_address_29,
	phy_ddio_address_30,
	phy_ddio_address_31,
	phy_ddio_address_32,
	phy_ddio_address_33,
	phy_ddio_address_34,
	phy_ddio_address_35,
	phy_ddio_address_36,
	phy_ddio_address_37,
	phy_ddio_address_38,
	phy_ddio_address_39,
	phy_ddio_address_40,
	phy_ddio_address_41,
	phy_ddio_address_42,
	phy_ddio_address_43,
	phy_ddio_address_44,
	phy_ddio_address_45,
	phy_ddio_address_46,
	phy_ddio_address_47,
	phy_ddio_address_48,
	phy_ddio_address_49,
	phy_ddio_address_50,
	phy_ddio_address_51,
	phy_ddio_bank_0,
	phy_ddio_bank_1,
	phy_ddio_bank_2,
	phy_ddio_bank_3,
	phy_ddio_bank_4,
	phy_ddio_bank_5,
	phy_ddio_bank_6,
	phy_ddio_bank_7,
	phy_ddio_bank_8,
	phy_ddio_bank_9,
	phy_ddio_bank_10,
	phy_ddio_bank_11,
	phy_ddio_cas_n_0,
	phy_ddio_cas_n_1,
	phy_ddio_cas_n_2,
	phy_ddio_cas_n_3,
	phy_ddio_ck_0,
	phy_ddio_ck_1,
	phy_ddio_cke_0,
	phy_ddio_cke_1,
	phy_ddio_cke_2,
	phy_ddio_cke_3,
	phy_ddio_cs_n_0,
	phy_ddio_cs_n_1,
	phy_ddio_cs_n_2,
	phy_ddio_cs_n_3,
	phy_ddio_dmdout_0,
	phy_ddio_dmdout_1,
	phy_ddio_dmdout_2,
	phy_ddio_dmdout_3,
	phy_ddio_dqdout_0,
	phy_ddio_dqdout_1,
	phy_ddio_dqdout_2,
	phy_ddio_dqdout_3,
	phy_ddio_dqdout_4,
	phy_ddio_dqdout_5,
	phy_ddio_dqdout_6,
	phy_ddio_dqdout_7,
	phy_ddio_dqdout_8,
	phy_ddio_dqdout_9,
	phy_ddio_dqdout_10,
	phy_ddio_dqdout_11,
	phy_ddio_dqdout_12,
	phy_ddio_dqdout_13,
	phy_ddio_dqdout_14,
	phy_ddio_dqdout_15,
	phy_ddio_dqdout_16,
	phy_ddio_dqdout_17,
	phy_ddio_dqdout_18,
	phy_ddio_dqdout_19,
	phy_ddio_dqdout_20,
	phy_ddio_dqdout_21,
	phy_ddio_dqdout_22,
	phy_ddio_dqdout_23,
	phy_ddio_dqdout_24,
	phy_ddio_dqdout_25,
	phy_ddio_dqdout_26,
	phy_ddio_dqdout_27,
	phy_ddio_dqdout_28,
	phy_ddio_dqdout_29,
	phy_ddio_dqdout_30,
	phy_ddio_dqdout_31,
	phy_ddio_dqoe_0,
	phy_ddio_dqoe_1,
	phy_ddio_dqoe_2,
	phy_ddio_dqoe_3,
	phy_ddio_dqoe_4,
	phy_ddio_dqoe_5,
	phy_ddio_dqoe_6,
	phy_ddio_dqoe_7,
	phy_ddio_dqoe_8,
	phy_ddio_dqoe_9,
	phy_ddio_dqoe_10,
	phy_ddio_dqoe_11,
	phy_ddio_dqoe_12,
	phy_ddio_dqoe_13,
	phy_ddio_dqoe_14,
	phy_ddio_dqoe_15,
	phy_ddio_dqs_dout_0,
	phy_ddio_dqs_dout_1,
	phy_ddio_dqs_dout_2,
	phy_ddio_dqs_dout_3,
	phy_ddio_dqslogic_aclr_fifoctrl_0,
	phy_ddio_dqslogic_aclr_pstamble_0,
	phy_ddio_dqslogic_dqsena_0,
	phy_ddio_dqslogic_dqsena_1,
	phy_ddio_dqslogic_fiforeset_0,
	phy_ddio_dqslogic_incrdataen_0,
	phy_ddio_dqslogic_incrdataen_1,
	phy_ddio_dqslogic_incwrptr_0,
	phy_ddio_dqslogic_incwrptr_1,
	phy_ddio_dqslogic_oct_0,
	phy_ddio_dqslogic_oct_1,
	phy_ddio_dqslogic_readlatency_0,
	phy_ddio_dqslogic_readlatency_1,
	phy_ddio_dqslogic_readlatency_2,
	phy_ddio_dqslogic_readlatency_3,
	phy_ddio_dqslogic_readlatency_4,
	phy_ddio_dqs_oe_0,
	phy_ddio_dqs_oe_1,
	phy_ddio_odt_0,
	phy_ddio_odt_1,
	phy_ddio_odt_2,
	phy_ddio_odt_3,
	phy_ddio_ras_n_0,
	phy_ddio_ras_n_1,
	phy_ddio_ras_n_2,
	phy_ddio_ras_n_3,
	phy_ddio_reset_n_0,
	phy_ddio_reset_n_1,
	phy_ddio_reset_n_2,
	phy_ddio_reset_n_3,
	phy_ddio_we_n_0,
	phy_ddio_we_n_1,
	phy_ddio_we_n_2,
	phy_ddio_we_n_3,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	input_path_gen0read_fifo_out_0,
	input_path_gen0read_fifo_out_1,
	input_path_gen0read_fifo_out_2,
	input_path_gen0read_fifo_out_3,
	input_path_gen1read_fifo_out_0,
	input_path_gen1read_fifo_out_1,
	input_path_gen1read_fifo_out_2,
	input_path_gen1read_fifo_out_3,
	input_path_gen2read_fifo_out_0,
	input_path_gen2read_fifo_out_1,
	input_path_gen2read_fifo_out_2,
	input_path_gen2read_fifo_out_3,
	input_path_gen3read_fifo_out_0,
	input_path_gen3read_fifo_out_1,
	input_path_gen3read_fifo_out_2,
	input_path_gen3read_fifo_out_3,
	input_path_gen4read_fifo_out_0,
	input_path_gen4read_fifo_out_1,
	input_path_gen4read_fifo_out_2,
	input_path_gen4read_fifo_out_3,
	input_path_gen5read_fifo_out_0,
	input_path_gen5read_fifo_out_1,
	input_path_gen5read_fifo_out_2,
	input_path_gen5read_fifo_out_3,
	input_path_gen6read_fifo_out_0,
	input_path_gen6read_fifo_out_1,
	input_path_gen6read_fifo_out_2,
	input_path_gen6read_fifo_out_3,
	input_path_gen7read_fifo_out_0,
	input_path_gen7read_fifo_out_1,
	input_path_gen7read_fifo_out_2,
	input_path_gen7read_fifo_out_3,
	ddio_phy_dqslogic_rdatavalid,
	dll_delayctrl_0,
	dll_delayctrl_1,
	dll_delayctrl_2,
	dll_delayctrl_3,
	dll_delayctrl_4,
	dll_delayctrl_5,
	dll_delayctrl_6,
	GND_port)/* synthesis synthesis_greybox=0 */;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
input 	afi_clk;
input 	pll_write_clk;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	extra_output_pad_gen0delayed_data_out;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
input 	phy_ddio_address_0;
input 	phy_ddio_address_1;
input 	phy_ddio_address_2;
input 	phy_ddio_address_3;
input 	phy_ddio_address_4;
input 	phy_ddio_address_5;
input 	phy_ddio_address_6;
input 	phy_ddio_address_7;
input 	phy_ddio_address_8;
input 	phy_ddio_address_9;
input 	phy_ddio_address_10;
input 	phy_ddio_address_11;
input 	phy_ddio_address_12;
input 	phy_ddio_address_13;
input 	phy_ddio_address_14;
input 	phy_ddio_address_15;
input 	phy_ddio_address_16;
input 	phy_ddio_address_17;
input 	phy_ddio_address_18;
input 	phy_ddio_address_19;
input 	phy_ddio_address_20;
input 	phy_ddio_address_21;
input 	phy_ddio_address_22;
input 	phy_ddio_address_23;
input 	phy_ddio_address_24;
input 	phy_ddio_address_25;
input 	phy_ddio_address_26;
input 	phy_ddio_address_27;
input 	phy_ddio_address_28;
input 	phy_ddio_address_29;
input 	phy_ddio_address_30;
input 	phy_ddio_address_31;
input 	phy_ddio_address_32;
input 	phy_ddio_address_33;
input 	phy_ddio_address_34;
input 	phy_ddio_address_35;
input 	phy_ddio_address_36;
input 	phy_ddio_address_37;
input 	phy_ddio_address_38;
input 	phy_ddio_address_39;
input 	phy_ddio_address_40;
input 	phy_ddio_address_41;
input 	phy_ddio_address_42;
input 	phy_ddio_address_43;
input 	phy_ddio_address_44;
input 	phy_ddio_address_45;
input 	phy_ddio_address_46;
input 	phy_ddio_address_47;
input 	phy_ddio_address_48;
input 	phy_ddio_address_49;
input 	phy_ddio_address_50;
input 	phy_ddio_address_51;
input 	phy_ddio_bank_0;
input 	phy_ddio_bank_1;
input 	phy_ddio_bank_2;
input 	phy_ddio_bank_3;
input 	phy_ddio_bank_4;
input 	phy_ddio_bank_5;
input 	phy_ddio_bank_6;
input 	phy_ddio_bank_7;
input 	phy_ddio_bank_8;
input 	phy_ddio_bank_9;
input 	phy_ddio_bank_10;
input 	phy_ddio_bank_11;
input 	phy_ddio_cas_n_0;
input 	phy_ddio_cas_n_1;
input 	phy_ddio_cas_n_2;
input 	phy_ddio_cas_n_3;
input 	phy_ddio_ck_0;
input 	phy_ddio_ck_1;
input 	phy_ddio_cke_0;
input 	phy_ddio_cke_1;
input 	phy_ddio_cke_2;
input 	phy_ddio_cke_3;
input 	phy_ddio_cs_n_0;
input 	phy_ddio_cs_n_1;
input 	phy_ddio_cs_n_2;
input 	phy_ddio_cs_n_3;
input 	phy_ddio_dmdout_0;
input 	phy_ddio_dmdout_1;
input 	phy_ddio_dmdout_2;
input 	phy_ddio_dmdout_3;
input 	phy_ddio_dqdout_0;
input 	phy_ddio_dqdout_1;
input 	phy_ddio_dqdout_2;
input 	phy_ddio_dqdout_3;
input 	phy_ddio_dqdout_4;
input 	phy_ddio_dqdout_5;
input 	phy_ddio_dqdout_6;
input 	phy_ddio_dqdout_7;
input 	phy_ddio_dqdout_8;
input 	phy_ddio_dqdout_9;
input 	phy_ddio_dqdout_10;
input 	phy_ddio_dqdout_11;
input 	phy_ddio_dqdout_12;
input 	phy_ddio_dqdout_13;
input 	phy_ddio_dqdout_14;
input 	phy_ddio_dqdout_15;
input 	phy_ddio_dqdout_16;
input 	phy_ddio_dqdout_17;
input 	phy_ddio_dqdout_18;
input 	phy_ddio_dqdout_19;
input 	phy_ddio_dqdout_20;
input 	phy_ddio_dqdout_21;
input 	phy_ddio_dqdout_22;
input 	phy_ddio_dqdout_23;
input 	phy_ddio_dqdout_24;
input 	phy_ddio_dqdout_25;
input 	phy_ddio_dqdout_26;
input 	phy_ddio_dqdout_27;
input 	phy_ddio_dqdout_28;
input 	phy_ddio_dqdout_29;
input 	phy_ddio_dqdout_30;
input 	phy_ddio_dqdout_31;
input 	phy_ddio_dqoe_0;
input 	phy_ddio_dqoe_1;
input 	phy_ddio_dqoe_2;
input 	phy_ddio_dqoe_3;
input 	phy_ddio_dqoe_4;
input 	phy_ddio_dqoe_5;
input 	phy_ddio_dqoe_6;
input 	phy_ddio_dqoe_7;
input 	phy_ddio_dqoe_8;
input 	phy_ddio_dqoe_9;
input 	phy_ddio_dqoe_10;
input 	phy_ddio_dqoe_11;
input 	phy_ddio_dqoe_12;
input 	phy_ddio_dqoe_13;
input 	phy_ddio_dqoe_14;
input 	phy_ddio_dqoe_15;
input 	phy_ddio_dqs_dout_0;
input 	phy_ddio_dqs_dout_1;
input 	phy_ddio_dqs_dout_2;
input 	phy_ddio_dqs_dout_3;
input 	phy_ddio_dqslogic_aclr_fifoctrl_0;
input 	phy_ddio_dqslogic_aclr_pstamble_0;
input 	phy_ddio_dqslogic_dqsena_0;
input 	phy_ddio_dqslogic_dqsena_1;
input 	phy_ddio_dqslogic_fiforeset_0;
input 	phy_ddio_dqslogic_incrdataen_0;
input 	phy_ddio_dqslogic_incrdataen_1;
input 	phy_ddio_dqslogic_incwrptr_0;
input 	phy_ddio_dqslogic_incwrptr_1;
input 	phy_ddio_dqslogic_oct_0;
input 	phy_ddio_dqslogic_oct_1;
input 	phy_ddio_dqslogic_readlatency_0;
input 	phy_ddio_dqslogic_readlatency_1;
input 	phy_ddio_dqslogic_readlatency_2;
input 	phy_ddio_dqslogic_readlatency_3;
input 	phy_ddio_dqslogic_readlatency_4;
input 	phy_ddio_dqs_oe_0;
input 	phy_ddio_dqs_oe_1;
input 	phy_ddio_odt_0;
input 	phy_ddio_odt_1;
input 	phy_ddio_odt_2;
input 	phy_ddio_odt_3;
input 	phy_ddio_ras_n_0;
input 	phy_ddio_ras_n_1;
input 	phy_ddio_ras_n_2;
input 	phy_ddio_ras_n_3;
input 	phy_ddio_reset_n_0;
input 	phy_ddio_reset_n_1;
input 	phy_ddio_reset_n_2;
input 	phy_ddio_reset_n_3;
input 	phy_ddio_we_n_0;
input 	phy_ddio_we_n_1;
input 	phy_ddio_we_n_2;
input 	phy_ddio_we_n_3;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
output 	input_path_gen0read_fifo_out_0;
output 	input_path_gen0read_fifo_out_1;
output 	input_path_gen0read_fifo_out_2;
output 	input_path_gen0read_fifo_out_3;
output 	input_path_gen1read_fifo_out_0;
output 	input_path_gen1read_fifo_out_1;
output 	input_path_gen1read_fifo_out_2;
output 	input_path_gen1read_fifo_out_3;
output 	input_path_gen2read_fifo_out_0;
output 	input_path_gen2read_fifo_out_1;
output 	input_path_gen2read_fifo_out_2;
output 	input_path_gen2read_fifo_out_3;
output 	input_path_gen3read_fifo_out_0;
output 	input_path_gen3read_fifo_out_1;
output 	input_path_gen3read_fifo_out_2;
output 	input_path_gen3read_fifo_out_3;
output 	input_path_gen4read_fifo_out_0;
output 	input_path_gen4read_fifo_out_1;
output 	input_path_gen4read_fifo_out_2;
output 	input_path_gen4read_fifo_out_3;
output 	input_path_gen5read_fifo_out_0;
output 	input_path_gen5read_fifo_out_1;
output 	input_path_gen5read_fifo_out_2;
output 	input_path_gen5read_fifo_out_3;
output 	input_path_gen6read_fifo_out_0;
output 	input_path_gen6read_fifo_out_1;
output 	input_path_gen6read_fifo_out_2;
output 	input_path_gen6read_fifo_out_3;
output 	input_path_gen7read_fifo_out_0;
output 	input_path_gen7read_fifo_out_1;
output 	input_path_gen7read_fifo_out_2;
output 	input_path_gen7read_fifo_out_3;
output 	[4:0] ddio_phy_dqslogic_rdatavalid;
input 	dll_delayctrl_0;
input 	dll_delayctrl_1;
input 	dll_delayctrl_2;
input 	dll_delayctrl_3;
input 	dll_delayctrl_4;
input 	dll_delayctrl_5;
input 	dll_delayctrl_6;
input 	GND_port;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



HPS_hps_sdram_p0_acv_hard_addr_cmd_pads uaddr_cmd_pads(
	.afi_clk(afi_clk),
	.dataout_0(dataout_0),
	.dataout_1(dataout_1),
	.dataout_2(dataout_2),
	.dataout_3(dataout_3),
	.dataout_4(dataout_4),
	.dataout_5(dataout_5),
	.dataout_6(dataout_6),
	.dataout_7(dataout_7),
	.dataout_8(dataout_8),
	.dataout_9(dataout_9),
	.dataout_10(dataout_10),
	.dataout_11(dataout_11),
	.dataout_12(dataout_12),
	.dataout_01(dataout_01),
	.dataout_13(dataout_13),
	.dataout_21(dataout_21),
	.dataout_14(dataout_14),
	.dataout_02(dataout_02),
	.dataout_31(dataout_31),
	.dataout_41(dataout_41),
	.dataout_51(dataout_51),
	.dataout_03(dataout_03),
	.dataout_22(dataout_22),
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.phy_ddio_address_0(phy_ddio_address_0),
	.phy_ddio_address_1(phy_ddio_address_1),
	.phy_ddio_address_2(phy_ddio_address_2),
	.phy_ddio_address_3(phy_ddio_address_3),
	.phy_ddio_address_4(phy_ddio_address_4),
	.phy_ddio_address_5(phy_ddio_address_5),
	.phy_ddio_address_6(phy_ddio_address_6),
	.phy_ddio_address_7(phy_ddio_address_7),
	.phy_ddio_address_8(phy_ddio_address_8),
	.phy_ddio_address_9(phy_ddio_address_9),
	.phy_ddio_address_10(phy_ddio_address_10),
	.phy_ddio_address_11(phy_ddio_address_11),
	.phy_ddio_address_12(phy_ddio_address_12),
	.phy_ddio_address_13(phy_ddio_address_13),
	.phy_ddio_address_14(phy_ddio_address_14),
	.phy_ddio_address_15(phy_ddio_address_15),
	.phy_ddio_address_16(phy_ddio_address_16),
	.phy_ddio_address_17(phy_ddio_address_17),
	.phy_ddio_address_18(phy_ddio_address_18),
	.phy_ddio_address_19(phy_ddio_address_19),
	.phy_ddio_address_20(phy_ddio_address_20),
	.phy_ddio_address_21(phy_ddio_address_21),
	.phy_ddio_address_22(phy_ddio_address_22),
	.phy_ddio_address_23(phy_ddio_address_23),
	.phy_ddio_address_24(phy_ddio_address_24),
	.phy_ddio_address_25(phy_ddio_address_25),
	.phy_ddio_address_26(phy_ddio_address_26),
	.phy_ddio_address_27(phy_ddio_address_27),
	.phy_ddio_address_28(phy_ddio_address_28),
	.phy_ddio_address_29(phy_ddio_address_29),
	.phy_ddio_address_30(phy_ddio_address_30),
	.phy_ddio_address_31(phy_ddio_address_31),
	.phy_ddio_address_32(phy_ddio_address_32),
	.phy_ddio_address_33(phy_ddio_address_33),
	.phy_ddio_address_34(phy_ddio_address_34),
	.phy_ddio_address_35(phy_ddio_address_35),
	.phy_ddio_address_36(phy_ddio_address_36),
	.phy_ddio_address_37(phy_ddio_address_37),
	.phy_ddio_address_38(phy_ddio_address_38),
	.phy_ddio_address_39(phy_ddio_address_39),
	.phy_ddio_address_40(phy_ddio_address_40),
	.phy_ddio_address_41(phy_ddio_address_41),
	.phy_ddio_address_42(phy_ddio_address_42),
	.phy_ddio_address_43(phy_ddio_address_43),
	.phy_ddio_address_44(phy_ddio_address_44),
	.phy_ddio_address_45(phy_ddio_address_45),
	.phy_ddio_address_46(phy_ddio_address_46),
	.phy_ddio_address_47(phy_ddio_address_47),
	.phy_ddio_address_48(phy_ddio_address_48),
	.phy_ddio_address_49(phy_ddio_address_49),
	.phy_ddio_address_50(phy_ddio_address_50),
	.phy_ddio_address_51(phy_ddio_address_51),
	.phy_ddio_bank_0(phy_ddio_bank_0),
	.phy_ddio_bank_1(phy_ddio_bank_1),
	.phy_ddio_bank_2(phy_ddio_bank_2),
	.phy_ddio_bank_3(phy_ddio_bank_3),
	.phy_ddio_bank_4(phy_ddio_bank_4),
	.phy_ddio_bank_5(phy_ddio_bank_5),
	.phy_ddio_bank_6(phy_ddio_bank_6),
	.phy_ddio_bank_7(phy_ddio_bank_7),
	.phy_ddio_bank_8(phy_ddio_bank_8),
	.phy_ddio_bank_9(phy_ddio_bank_9),
	.phy_ddio_bank_10(phy_ddio_bank_10),
	.phy_ddio_bank_11(phy_ddio_bank_11),
	.phy_ddio_cas_n_0(phy_ddio_cas_n_0),
	.phy_ddio_cas_n_1(phy_ddio_cas_n_1),
	.phy_ddio_cas_n_2(phy_ddio_cas_n_2),
	.phy_ddio_cas_n_3(phy_ddio_cas_n_3),
	.phy_ddio_ck_0(phy_ddio_ck_0),
	.phy_ddio_ck_1(phy_ddio_ck_1),
	.phy_ddio_cke_0(phy_ddio_cke_0),
	.phy_ddio_cke_1(phy_ddio_cke_1),
	.phy_ddio_cke_2(phy_ddio_cke_2),
	.phy_ddio_cke_3(phy_ddio_cke_3),
	.phy_ddio_cs_n_0(phy_ddio_cs_n_0),
	.phy_ddio_cs_n_1(phy_ddio_cs_n_1),
	.phy_ddio_cs_n_2(phy_ddio_cs_n_2),
	.phy_ddio_cs_n_3(phy_ddio_cs_n_3),
	.phy_ddio_odt_0(phy_ddio_odt_0),
	.phy_ddio_odt_1(phy_ddio_odt_1),
	.phy_ddio_odt_2(phy_ddio_odt_2),
	.phy_ddio_odt_3(phy_ddio_odt_3),
	.phy_ddio_ras_n_0(phy_ddio_ras_n_0),
	.phy_ddio_ras_n_1(phy_ddio_ras_n_1),
	.phy_ddio_ras_n_2(phy_ddio_ras_n_2),
	.phy_ddio_ras_n_3(phy_ddio_ras_n_3),
	.phy_ddio_reset_n_0(phy_ddio_reset_n_0),
	.phy_ddio_reset_n_1(phy_ddio_reset_n_1),
	.phy_ddio_reset_n_2(phy_ddio_reset_n_2),
	.phy_ddio_reset_n_3(phy_ddio_reset_n_3),
	.phy_ddio_we_n_0(phy_ddio_we_n_0),
	.phy_ddio_we_n_1(phy_ddio_we_n_1),
	.phy_ddio_we_n_2(phy_ddio_we_n_2),
	.phy_ddio_we_n_3(phy_ddio_we_n_3),
	.dll_delayctrl_0(dll_delayctrl_0),
	.dll_delayctrl_1(dll_delayctrl_1),
	.dll_delayctrl_2(dll_delayctrl_2),
	.dll_delayctrl_3(dll_delayctrl_3),
	.dll_delayctrl_4(dll_delayctrl_4),
	.dll_delayctrl_5(dll_delayctrl_5),
	.dll_delayctrl_6(dll_delayctrl_6));

HPS_hps_sdram_p0_altdqdqs \dq_ddio[0].ubidir_dq_dqs (
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.afi_clk(afi_clk),
	.pll_write_clk(pll_write_clk),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.phy_ddio_dmdout_0(phy_ddio_dmdout_0),
	.phy_ddio_dmdout_1(phy_ddio_dmdout_1),
	.phy_ddio_dmdout_2(phy_ddio_dmdout_2),
	.phy_ddio_dmdout_3(phy_ddio_dmdout_3),
	.phy_ddio_dqdout_0(phy_ddio_dqdout_0),
	.phy_ddio_dqdout_1(phy_ddio_dqdout_1),
	.phy_ddio_dqdout_2(phy_ddio_dqdout_2),
	.phy_ddio_dqdout_3(phy_ddio_dqdout_3),
	.phy_ddio_dqdout_4(phy_ddio_dqdout_4),
	.phy_ddio_dqdout_5(phy_ddio_dqdout_5),
	.phy_ddio_dqdout_6(phy_ddio_dqdout_6),
	.phy_ddio_dqdout_7(phy_ddio_dqdout_7),
	.phy_ddio_dqdout_8(phy_ddio_dqdout_8),
	.phy_ddio_dqdout_9(phy_ddio_dqdout_9),
	.phy_ddio_dqdout_10(phy_ddio_dqdout_10),
	.phy_ddio_dqdout_11(phy_ddio_dqdout_11),
	.phy_ddio_dqdout_12(phy_ddio_dqdout_12),
	.phy_ddio_dqdout_13(phy_ddio_dqdout_13),
	.phy_ddio_dqdout_14(phy_ddio_dqdout_14),
	.phy_ddio_dqdout_15(phy_ddio_dqdout_15),
	.phy_ddio_dqdout_16(phy_ddio_dqdout_16),
	.phy_ddio_dqdout_17(phy_ddio_dqdout_17),
	.phy_ddio_dqdout_18(phy_ddio_dqdout_18),
	.phy_ddio_dqdout_19(phy_ddio_dqdout_19),
	.phy_ddio_dqdout_20(phy_ddio_dqdout_20),
	.phy_ddio_dqdout_21(phy_ddio_dqdout_21),
	.phy_ddio_dqdout_22(phy_ddio_dqdout_22),
	.phy_ddio_dqdout_23(phy_ddio_dqdout_23),
	.phy_ddio_dqdout_24(phy_ddio_dqdout_24),
	.phy_ddio_dqdout_25(phy_ddio_dqdout_25),
	.phy_ddio_dqdout_26(phy_ddio_dqdout_26),
	.phy_ddio_dqdout_27(phy_ddio_dqdout_27),
	.phy_ddio_dqdout_28(phy_ddio_dqdout_28),
	.phy_ddio_dqdout_29(phy_ddio_dqdout_29),
	.phy_ddio_dqdout_30(phy_ddio_dqdout_30),
	.phy_ddio_dqdout_31(phy_ddio_dqdout_31),
	.phy_ddio_dqoe_0(phy_ddio_dqoe_0),
	.phy_ddio_dqoe_1(phy_ddio_dqoe_1),
	.phy_ddio_dqoe_2(phy_ddio_dqoe_2),
	.phy_ddio_dqoe_3(phy_ddio_dqoe_3),
	.phy_ddio_dqoe_4(phy_ddio_dqoe_4),
	.phy_ddio_dqoe_5(phy_ddio_dqoe_5),
	.phy_ddio_dqoe_6(phy_ddio_dqoe_6),
	.phy_ddio_dqoe_7(phy_ddio_dqoe_7),
	.phy_ddio_dqoe_8(phy_ddio_dqoe_8),
	.phy_ddio_dqoe_9(phy_ddio_dqoe_9),
	.phy_ddio_dqoe_10(phy_ddio_dqoe_10),
	.phy_ddio_dqoe_11(phy_ddio_dqoe_11),
	.phy_ddio_dqoe_12(phy_ddio_dqoe_12),
	.phy_ddio_dqoe_13(phy_ddio_dqoe_13),
	.phy_ddio_dqoe_14(phy_ddio_dqoe_14),
	.phy_ddio_dqoe_15(phy_ddio_dqoe_15),
	.phy_ddio_dqs_dout_0(phy_ddio_dqs_dout_0),
	.phy_ddio_dqs_dout_1(phy_ddio_dqs_dout_1),
	.phy_ddio_dqs_dout_2(phy_ddio_dqs_dout_2),
	.phy_ddio_dqs_dout_3(phy_ddio_dqs_dout_3),
	.phy_ddio_dqslogic_aclr_fifoctrl_0(phy_ddio_dqslogic_aclr_fifoctrl_0),
	.phy_ddio_dqslogic_aclr_pstamble_0(phy_ddio_dqslogic_aclr_pstamble_0),
	.phy_ddio_dqslogic_dqsena_0(phy_ddio_dqslogic_dqsena_0),
	.phy_ddio_dqslogic_dqsena_1(phy_ddio_dqslogic_dqsena_1),
	.phy_ddio_dqslogic_fiforeset_0(phy_ddio_dqslogic_fiforeset_0),
	.phy_ddio_dqslogic_incrdataen_0(phy_ddio_dqslogic_incrdataen_0),
	.phy_ddio_dqslogic_incrdataen_1(phy_ddio_dqslogic_incrdataen_1),
	.phy_ddio_dqslogic_incwrptr_0(phy_ddio_dqslogic_incwrptr_0),
	.phy_ddio_dqslogic_incwrptr_1(phy_ddio_dqslogic_incwrptr_1),
	.phy_ddio_dqslogic_oct_0(phy_ddio_dqslogic_oct_0),
	.phy_ddio_dqslogic_oct_1(phy_ddio_dqslogic_oct_1),
	.phy_ddio_dqslogic_readlatency_0(phy_ddio_dqslogic_readlatency_0),
	.phy_ddio_dqslogic_readlatency_1(phy_ddio_dqslogic_readlatency_1),
	.phy_ddio_dqslogic_readlatency_2(phy_ddio_dqslogic_readlatency_2),
	.phy_ddio_dqslogic_readlatency_3(phy_ddio_dqslogic_readlatency_3),
	.phy_ddio_dqslogic_readlatency_4(phy_ddio_dqslogic_readlatency_4),
	.phy_ddio_dqs_oe_0(phy_ddio_dqs_oe_0),
	.phy_ddio_dqs_oe_1(phy_ddio_dqs_oe_1),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.input_path_gen0read_fifo_out_0(input_path_gen0read_fifo_out_0),
	.input_path_gen0read_fifo_out_1(input_path_gen0read_fifo_out_1),
	.input_path_gen0read_fifo_out_2(input_path_gen0read_fifo_out_2),
	.input_path_gen0read_fifo_out_3(input_path_gen0read_fifo_out_3),
	.input_path_gen1read_fifo_out_0(input_path_gen1read_fifo_out_0),
	.input_path_gen1read_fifo_out_1(input_path_gen1read_fifo_out_1),
	.input_path_gen1read_fifo_out_2(input_path_gen1read_fifo_out_2),
	.input_path_gen1read_fifo_out_3(input_path_gen1read_fifo_out_3),
	.input_path_gen2read_fifo_out_0(input_path_gen2read_fifo_out_0),
	.input_path_gen2read_fifo_out_1(input_path_gen2read_fifo_out_1),
	.input_path_gen2read_fifo_out_2(input_path_gen2read_fifo_out_2),
	.input_path_gen2read_fifo_out_3(input_path_gen2read_fifo_out_3),
	.input_path_gen3read_fifo_out_0(input_path_gen3read_fifo_out_0),
	.input_path_gen3read_fifo_out_1(input_path_gen3read_fifo_out_1),
	.input_path_gen3read_fifo_out_2(input_path_gen3read_fifo_out_2),
	.input_path_gen3read_fifo_out_3(input_path_gen3read_fifo_out_3),
	.input_path_gen4read_fifo_out_0(input_path_gen4read_fifo_out_0),
	.input_path_gen4read_fifo_out_1(input_path_gen4read_fifo_out_1),
	.input_path_gen4read_fifo_out_2(input_path_gen4read_fifo_out_2),
	.input_path_gen4read_fifo_out_3(input_path_gen4read_fifo_out_3),
	.input_path_gen5read_fifo_out_0(input_path_gen5read_fifo_out_0),
	.input_path_gen5read_fifo_out_1(input_path_gen5read_fifo_out_1),
	.input_path_gen5read_fifo_out_2(input_path_gen5read_fifo_out_2),
	.input_path_gen5read_fifo_out_3(input_path_gen5read_fifo_out_3),
	.input_path_gen6read_fifo_out_0(input_path_gen6read_fifo_out_0),
	.input_path_gen6read_fifo_out_1(input_path_gen6read_fifo_out_1),
	.input_path_gen6read_fifo_out_2(input_path_gen6read_fifo_out_2),
	.input_path_gen6read_fifo_out_3(input_path_gen6read_fifo_out_3),
	.input_path_gen7read_fifo_out_0(input_path_gen7read_fifo_out_0),
	.input_path_gen7read_fifo_out_1(input_path_gen7read_fifo_out_1),
	.input_path_gen7read_fifo_out_2(input_path_gen7read_fifo_out_2),
	.input_path_gen7read_fifo_out_3(input_path_gen7read_fifo_out_3),
	.lfifo_rdata_valid(ddio_phy_dqslogic_rdatavalid[0]),
	.dll_delayctrl_0(dll_delayctrl_0),
	.dll_delayctrl_1(dll_delayctrl_1),
	.dll_delayctrl_2(dll_delayctrl_2),
	.dll_delayctrl_3(dll_delayctrl_3),
	.dll_delayctrl_4(dll_delayctrl_4),
	.dll_delayctrl_5(dll_delayctrl_5),
	.dll_delayctrl_6(dll_delayctrl_6),
	.GND_port(GND_port));

endmodule

module HPS_hps_sdram_p0_acv_hard_addr_cmd_pads (
	afi_clk,
	dataout_0,
	dataout_1,
	dataout_2,
	dataout_3,
	dataout_4,
	dataout_5,
	dataout_6,
	dataout_7,
	dataout_8,
	dataout_9,
	dataout_10,
	dataout_11,
	dataout_12,
	dataout_01,
	dataout_13,
	dataout_21,
	dataout_14,
	dataout_02,
	dataout_31,
	dataout_41,
	dataout_51,
	dataout_03,
	dataout_22,
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	phy_ddio_address_0,
	phy_ddio_address_1,
	phy_ddio_address_2,
	phy_ddio_address_3,
	phy_ddio_address_4,
	phy_ddio_address_5,
	phy_ddio_address_6,
	phy_ddio_address_7,
	phy_ddio_address_8,
	phy_ddio_address_9,
	phy_ddio_address_10,
	phy_ddio_address_11,
	phy_ddio_address_12,
	phy_ddio_address_13,
	phy_ddio_address_14,
	phy_ddio_address_15,
	phy_ddio_address_16,
	phy_ddio_address_17,
	phy_ddio_address_18,
	phy_ddio_address_19,
	phy_ddio_address_20,
	phy_ddio_address_21,
	phy_ddio_address_22,
	phy_ddio_address_23,
	phy_ddio_address_24,
	phy_ddio_address_25,
	phy_ddio_address_26,
	phy_ddio_address_27,
	phy_ddio_address_28,
	phy_ddio_address_29,
	phy_ddio_address_30,
	phy_ddio_address_31,
	phy_ddio_address_32,
	phy_ddio_address_33,
	phy_ddio_address_34,
	phy_ddio_address_35,
	phy_ddio_address_36,
	phy_ddio_address_37,
	phy_ddio_address_38,
	phy_ddio_address_39,
	phy_ddio_address_40,
	phy_ddio_address_41,
	phy_ddio_address_42,
	phy_ddio_address_43,
	phy_ddio_address_44,
	phy_ddio_address_45,
	phy_ddio_address_46,
	phy_ddio_address_47,
	phy_ddio_address_48,
	phy_ddio_address_49,
	phy_ddio_address_50,
	phy_ddio_address_51,
	phy_ddio_bank_0,
	phy_ddio_bank_1,
	phy_ddio_bank_2,
	phy_ddio_bank_3,
	phy_ddio_bank_4,
	phy_ddio_bank_5,
	phy_ddio_bank_6,
	phy_ddio_bank_7,
	phy_ddio_bank_8,
	phy_ddio_bank_9,
	phy_ddio_bank_10,
	phy_ddio_bank_11,
	phy_ddio_cas_n_0,
	phy_ddio_cas_n_1,
	phy_ddio_cas_n_2,
	phy_ddio_cas_n_3,
	phy_ddio_ck_0,
	phy_ddio_ck_1,
	phy_ddio_cke_0,
	phy_ddio_cke_1,
	phy_ddio_cke_2,
	phy_ddio_cke_3,
	phy_ddio_cs_n_0,
	phy_ddio_cs_n_1,
	phy_ddio_cs_n_2,
	phy_ddio_cs_n_3,
	phy_ddio_odt_0,
	phy_ddio_odt_1,
	phy_ddio_odt_2,
	phy_ddio_odt_3,
	phy_ddio_ras_n_0,
	phy_ddio_ras_n_1,
	phy_ddio_ras_n_2,
	phy_ddio_ras_n_3,
	phy_ddio_reset_n_0,
	phy_ddio_reset_n_1,
	phy_ddio_reset_n_2,
	phy_ddio_reset_n_3,
	phy_ddio_we_n_0,
	phy_ddio_we_n_1,
	phy_ddio_we_n_2,
	phy_ddio_we_n_3,
	dll_delayctrl_0,
	dll_delayctrl_1,
	dll_delayctrl_2,
	dll_delayctrl_3,
	dll_delayctrl_4,
	dll_delayctrl_5,
	dll_delayctrl_6)/* synthesis synthesis_greybox=0 */;
input 	afi_clk;
output 	dataout_0;
output 	dataout_1;
output 	dataout_2;
output 	dataout_3;
output 	dataout_4;
output 	dataout_5;
output 	dataout_6;
output 	dataout_7;
output 	dataout_8;
output 	dataout_9;
output 	dataout_10;
output 	dataout_11;
output 	dataout_12;
output 	dataout_01;
output 	dataout_13;
output 	dataout_21;
output 	dataout_14;
output 	dataout_02;
output 	dataout_31;
output 	dataout_41;
output 	dataout_51;
output 	dataout_03;
output 	dataout_22;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
input 	phy_ddio_address_0;
input 	phy_ddio_address_1;
input 	phy_ddio_address_2;
input 	phy_ddio_address_3;
input 	phy_ddio_address_4;
input 	phy_ddio_address_5;
input 	phy_ddio_address_6;
input 	phy_ddio_address_7;
input 	phy_ddio_address_8;
input 	phy_ddio_address_9;
input 	phy_ddio_address_10;
input 	phy_ddio_address_11;
input 	phy_ddio_address_12;
input 	phy_ddio_address_13;
input 	phy_ddio_address_14;
input 	phy_ddio_address_15;
input 	phy_ddio_address_16;
input 	phy_ddio_address_17;
input 	phy_ddio_address_18;
input 	phy_ddio_address_19;
input 	phy_ddio_address_20;
input 	phy_ddio_address_21;
input 	phy_ddio_address_22;
input 	phy_ddio_address_23;
input 	phy_ddio_address_24;
input 	phy_ddio_address_25;
input 	phy_ddio_address_26;
input 	phy_ddio_address_27;
input 	phy_ddio_address_28;
input 	phy_ddio_address_29;
input 	phy_ddio_address_30;
input 	phy_ddio_address_31;
input 	phy_ddio_address_32;
input 	phy_ddio_address_33;
input 	phy_ddio_address_34;
input 	phy_ddio_address_35;
input 	phy_ddio_address_36;
input 	phy_ddio_address_37;
input 	phy_ddio_address_38;
input 	phy_ddio_address_39;
input 	phy_ddio_address_40;
input 	phy_ddio_address_41;
input 	phy_ddio_address_42;
input 	phy_ddio_address_43;
input 	phy_ddio_address_44;
input 	phy_ddio_address_45;
input 	phy_ddio_address_46;
input 	phy_ddio_address_47;
input 	phy_ddio_address_48;
input 	phy_ddio_address_49;
input 	phy_ddio_address_50;
input 	phy_ddio_address_51;
input 	phy_ddio_bank_0;
input 	phy_ddio_bank_1;
input 	phy_ddio_bank_2;
input 	phy_ddio_bank_3;
input 	phy_ddio_bank_4;
input 	phy_ddio_bank_5;
input 	phy_ddio_bank_6;
input 	phy_ddio_bank_7;
input 	phy_ddio_bank_8;
input 	phy_ddio_bank_9;
input 	phy_ddio_bank_10;
input 	phy_ddio_bank_11;
input 	phy_ddio_cas_n_0;
input 	phy_ddio_cas_n_1;
input 	phy_ddio_cas_n_2;
input 	phy_ddio_cas_n_3;
input 	phy_ddio_ck_0;
input 	phy_ddio_ck_1;
input 	phy_ddio_cke_0;
input 	phy_ddio_cke_1;
input 	phy_ddio_cke_2;
input 	phy_ddio_cke_3;
input 	phy_ddio_cs_n_0;
input 	phy_ddio_cs_n_1;
input 	phy_ddio_cs_n_2;
input 	phy_ddio_cs_n_3;
input 	phy_ddio_odt_0;
input 	phy_ddio_odt_1;
input 	phy_ddio_odt_2;
input 	phy_ddio_odt_3;
input 	phy_ddio_ras_n_0;
input 	phy_ddio_ras_n_1;
input 	phy_ddio_ras_n_2;
input 	phy_ddio_ras_n_3;
input 	phy_ddio_reset_n_0;
input 	phy_ddio_reset_n_1;
input 	phy_ddio_reset_n_2;
input 	phy_ddio_reset_n_3;
input 	phy_ddio_we_n_0;
input 	phy_ddio_we_n_1;
input 	phy_ddio_we_n_2;
input 	phy_ddio_we_n_3;
input 	dll_delayctrl_0;
input 	dll_delayctrl_1;
input 	dll_delayctrl_2;
input 	dll_delayctrl_3;
input 	dll_delayctrl_4;
input 	dll_delayctrl_5;
input 	dll_delayctrl_6;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \address_gen[0].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[1].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[2].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[3].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[4].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[5].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[6].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[7].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[8].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[9].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[10].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[11].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[12].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[13].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[14].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[15].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[17].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[16].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[19].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[20].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[21].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[22].acv_ac_ldc|adc_clk_cps ;
wire \address_gen[18].acv_ac_ldc|adc_clk_cps ;
wire \clock_gen[0].umem_ck_pad|auto_generated|dataout[0] ;
wire \mem_ck_source[0] ;
wire \clock_gen[0].leveled_dqs_clocks[0] ;
wire \clock_gen[0].leveled_dqs_clocks[1] ;
wire \clock_gen[0].leveled_dqs_clocks[2] ;
wire \clock_gen[0].leveled_dqs_clocks[3] ;

wire [3:0] \clock_gen[0].leveling_delay_chain_dqs_CLKOUT_bus ;

assign \clock_gen[0].leveled_dqs_clocks[0]  = \clock_gen[0].leveling_delay_chain_dqs_CLKOUT_bus [0];
assign \clock_gen[0].leveled_dqs_clocks[1]  = \clock_gen[0].leveling_delay_chain_dqs_CLKOUT_bus [1];
assign \clock_gen[0].leveled_dqs_clocks[2]  = \clock_gen[0].leveling_delay_chain_dqs_CLKOUT_bus [2];
assign \clock_gen[0].leveled_dqs_clocks[3]  = \clock_gen[0].leveling_delay_chain_dqs_CLKOUT_bus [3];

HPS_hps_sdram_p0_acv_ldc_22 \address_gen[9].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[9].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_4 \address_gen[13].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[13].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_10 \address_gen[19].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[19].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_12 \address_gen[20].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[20].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_13 \address_gen[21].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[21].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_9 \address_gen[18].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[18].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_14 \address_gen[22].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[22].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_6 \address_gen[15].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[15].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_3 \address_gen[12].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[12].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_2 \address_gen[11].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[11].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_5 \address_gen[14].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[14].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_8 \address_gen[17].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[17].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_generic_ddio uaddress_pad(
	.clk_hr({afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk}),
	.dataout({dataout_12,dataout_11,dataout_10,dataout_9,dataout_8,dataout_7,dataout_6,dataout_5,dataout_4,dataout_3,dataout_2,dataout_1,dataout_0}),
	.clk_fr({\address_gen[12].acv_ac_ldc|adc_clk_cps ,\address_gen[11].acv_ac_ldc|adc_clk_cps ,\address_gen[10].acv_ac_ldc|adc_clk_cps ,\address_gen[9].acv_ac_ldc|adc_clk_cps ,\address_gen[8].acv_ac_ldc|adc_clk_cps ,\address_gen[7].acv_ac_ldc|adc_clk_cps ,
\address_gen[6].acv_ac_ldc|adc_clk_cps ,\address_gen[5].acv_ac_ldc|adc_clk_cps ,\address_gen[4].acv_ac_ldc|adc_clk_cps ,\address_gen[3].acv_ac_ldc|adc_clk_cps ,\address_gen[2].acv_ac_ldc|adc_clk_cps ,\address_gen[1].acv_ac_ldc|adc_clk_cps ,
\address_gen[0].acv_ac_ldc|adc_clk_cps }),
	.datain({phy_ddio_address_51,phy_ddio_address_50,phy_ddio_address_49,phy_ddio_address_48,phy_ddio_address_47,phy_ddio_address_46,phy_ddio_address_45,phy_ddio_address_44,phy_ddio_address_43,phy_ddio_address_42,phy_ddio_address_41,phy_ddio_address_40,phy_ddio_address_39,
phy_ddio_address_38,phy_ddio_address_37,phy_ddio_address_36,phy_ddio_address_35,phy_ddio_address_34,phy_ddio_address_33,phy_ddio_address_32,phy_ddio_address_31,phy_ddio_address_30,phy_ddio_address_29,phy_ddio_address_28,phy_ddio_address_27,phy_ddio_address_26,
phy_ddio_address_25,phy_ddio_address_24,phy_ddio_address_23,phy_ddio_address_22,phy_ddio_address_21,phy_ddio_address_20,phy_ddio_address_19,phy_ddio_address_18,phy_ddio_address_17,phy_ddio_address_16,phy_ddio_address_15,phy_ddio_address_14,phy_ddio_address_13,
phy_ddio_address_12,phy_ddio_address_11,phy_ddio_address_10,phy_ddio_address_9,phy_ddio_address_8,phy_ddio_address_7,phy_ddio_address_6,phy_ddio_address_5,phy_ddio_address_4,phy_ddio_address_3,phy_ddio_address_2,phy_ddio_address_1,phy_ddio_address_0}));

HPS_hps_sdram_p0_acv_ldc_1 \address_gen[10].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[10].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_generic_ddio_1 ubank_pad(
	.clk_hr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,afi_clk,afi_clk,afi_clk}),
	.dataout({dataout_unconnected_wire_12,dataout_unconnected_wire_11,dataout_unconnected_wire_10,dataout_unconnected_wire_9,dataout_unconnected_wire_8,dataout_unconnected_wire_7,dataout_unconnected_wire_6,dataout_unconnected_wire_5,dataout_unconnected_wire_4,
dataout_unconnected_wire_3,dataout_21,dataout_13,dataout_01}),
	.clk_fr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\address_gen[15].acv_ac_ldc|adc_clk_cps ,\address_gen[14].acv_ac_ldc|adc_clk_cps ,\address_gen[13].acv_ac_ldc|adc_clk_cps }),
	.datain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,phy_ddio_bank_11,phy_ddio_bank_10,phy_ddio_bank_9,phy_ddio_bank_8,phy_ddio_bank_7,phy_ddio_bank_6,phy_ddio_bank_5,phy_ddio_bank_4,
phy_ddio_bank_3,phy_ddio_bank_2,phy_ddio_bank_1,phy_ddio_bank_0}));

HPS_hps_sdram_p0_acv_ldc_7 \address_gen[16].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[16].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_generic_ddio_2 ucmd_pad(
	.clk_hr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk,afi_clk}),
	.dataout({dataout_unconnected_wire_12_1,dataout_unconnected_wire_11_1,dataout_unconnected_wire_10_1,dataout_unconnected_wire_9_1,dataout_unconnected_wire_8_1,dataout_unconnected_wire_7_1,dataout_unconnected_wire_6_1,dataout_51,dataout_41,dataout_31,dataout_22,dataout_14,
dataout_02}),
	.clk_fr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,\address_gen[21].acv_ac_ldc|adc_clk_cps ,\address_gen[20].acv_ac_ldc|adc_clk_cps ,\address_gen[19].acv_ac_ldc|adc_clk_cps ,\address_gen[18].acv_ac_ldc|adc_clk_cps ,\address_gen[17].acv_ac_ldc|adc_clk_cps ,
\address_gen[16].acv_ac_ldc|adc_clk_cps }),
	.datain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,phy_ddio_we_n_3,phy_ddio_we_n_2,phy_ddio_we_n_1,phy_ddio_we_n_0,phy_ddio_cas_n_3,phy_ddio_cas_n_2,phy_ddio_cas_n_1,phy_ddio_cas_n_0,phy_ddio_ras_n_3,phy_ddio_ras_n_2,phy_ddio_ras_n_1,
phy_ddio_ras_n_0,phy_ddio_odt_3,phy_ddio_odt_2,phy_ddio_odt_1,phy_ddio_odt_0,phy_ddio_cke_3,phy_ddio_cke_2,phy_ddio_cke_1,phy_ddio_cke_0,phy_ddio_cs_n_3,phy_ddio_cs_n_2,phy_ddio_cs_n_1,phy_ddio_cs_n_0}));

HPS_hps_sdram_p0_acv_ldc \address_gen[0].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[0].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_11 \address_gen[1].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[1].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_15 \address_gen[2].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[2].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_17 \address_gen[4].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[4].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_18 \address_gen[5].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[5].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_19 \address_gen[6].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[6].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_16 \address_gen[3].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[3].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_20 \address_gen[7].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[7].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_acv_ldc_21 \address_gen[8].acv_ac_ldc (
	.pll_dqs_clk(afi_clk),
	.adc_clk_cps(\address_gen[8].acv_ac_ldc|adc_clk_cps ),
	.dll_phy_delayctrl({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}));

HPS_hps_sdram_p0_generic_ddio_3 ureset_n_pad(
	.clk_hr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,afi_clk}),
	.dataout({dataout_unconnected_wire_12_2,dataout_unconnected_wire_11_2,dataout_unconnected_wire_10_2,dataout_unconnected_wire_9_2,dataout_unconnected_wire_8_2,dataout_unconnected_wire_7_2,dataout_unconnected_wire_6_2,dataout_unconnected_wire_5_1,dataout_unconnected_wire_4_1,
dataout_unconnected_wire_3_1,dataout_unconnected_wire_2,dataout_unconnected_wire_1,dataout_03}),
	.clk_fr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\address_gen[22].acv_ac_ldc|adc_clk_cps }),
	.datain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,phy_ddio_reset_n_3,phy_ddio_reset_n_2,phy_ddio_reset_n_1,phy_ddio_reset_n_0}));

HPS_altddio_out_1 \clock_gen[0].umem_ck_pad (
	.dataout({\clock_gen[0].umem_ck_pad|auto_generated|dataout[0] }),
	.datain_h({phy_ddio_ck_0}),
	.datain_l({phy_ddio_ck_1}),
	.outclock(\mem_ck_source[0] ));

HPS_hps_sdram_p0_clock_pair_generator \clock_gen[0].uclk_generator (
	.wire_pseudo_diffa_o_0(wire_pseudo_diffa_o_0),
	.wire_pseudo_diffa_obar_0(wire_pseudo_diffa_obar_0),
	.wire_pseudo_diffa_oeout_0(wire_pseudo_diffa_oeout_0),
	.wire_pseudo_diffa_oebout_0(wire_pseudo_diffa_oebout_0),
	.datain({\clock_gen[0].umem_ck_pad|auto_generated|dataout[0] }));

cyclonev_clk_phase_select \clock_gen[0].clk_phase_select_dqs (
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({gnd,gnd,gnd,\clock_gen[0].leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(\mem_ck_source[0] ));
defparam \clock_gen[0].clk_phase_select_dqs .invert_phase = "false";
defparam \clock_gen[0].clk_phase_select_dqs .phase_setting = 0;
defparam \clock_gen[0].clk_phase_select_dqs .physical_clock_source = "dqs";
defparam \clock_gen[0].clk_phase_select_dqs .use_dqs_input = "false";
defparam \clock_gen[0].clk_phase_select_dqs .use_phasectrlin = "false";

cyclonev_leveling_delay_chain \clock_gen[0].leveling_delay_chain_dqs (
	.clkin(afi_clk),
	.delayctrlin({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}),
	.clkout(\clock_gen[0].leveling_delay_chain_dqs_CLKOUT_bus ));
defparam \clock_gen[0].leveling_delay_chain_dqs .physical_clock_source = "dqs";
defparam \clock_gen[0].leveling_delay_chain_dqs .sim_buffer_delay_increment = 10;
defparam \clock_gen[0].leveling_delay_chain_dqs .sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_altddio_out_1 (
	dataout,
	datain_h,
	datain_l,
	outclock)/* synthesis synthesis_greybox=0 */;
inout 	[0:0] dataout;
input 	[0:0] datain_h;
input 	[0:0] datain_l;
input 	outclock;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



HPS_ddio_out_uqe auto_generated(
	.dataout({dataout[0]}),
	.datain_h({datain_h[0]}),
	.datain_l({datain_l[0]}),
	.outclock(outclock));

endmodule

module HPS_ddio_out_uqe (
	dataout,
	datain_h,
	datain_l,
	outclock)/* synthesis synthesis_greybox=0 */;
output 	[0:0] dataout;
input 	[0:0] datain_h;
input 	[0:0] datain_l;
input 	outclock;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_ddio_out \ddio_outa[0] (
	.datainlo(datain_l[0]),
	.datainhi(datain_h[0]),
	.clkhi(outclock),
	.clklo(outclock),
	.muxsel(outclock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[0]),
	.dfflo(),
	.dffhi());
defparam \ddio_outa[0] .async_mode = "none";
defparam \ddio_outa[0] .half_rate_mode = "false";
defparam \ddio_outa[0] .power_up = "low";
defparam \ddio_outa[0] .sync_mode = "none";
defparam \ddio_outa[0] .use_new_clocking_model = "true";

endmodule

module HPS_hps_sdram_p0_acv_ldc (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_1 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_2 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_3 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_4 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_5 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_6 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_7 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_8 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_9 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_10 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_11 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_12 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_13 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_14 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_15 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_16 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_17 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_18 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_19 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_20 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_21 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_acv_ldc_22 (
	pll_dqs_clk,
	adc_clk_cps,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
output 	adc_clk_cps;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_clk_phase_select clk_phase_select_addr_cmd(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(adc_clk_cps));
defparam clk_phase_select_addr_cmd.invert_phase = "true";
defparam clk_phase_select_addr_cmd.phase_setting = 0;
defparam clk_phase_select_addr_cmd.physical_clock_source = "add_cmd";
defparam clk_phase_select_addr_cmd.use_dqs_input = "false";
defparam clk_phase_select_addr_cmd.use_phasectrlin = "false";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_p0_clock_pair_generator (
	wire_pseudo_diffa_o_0,
	wire_pseudo_diffa_obar_0,
	wire_pseudo_diffa_oeout_0,
	wire_pseudo_diffa_oebout_0,
	datain)/* synthesis synthesis_greybox=0 */;
output 	wire_pseudo_diffa_o_0;
output 	wire_pseudo_diffa_obar_0;
output 	wire_pseudo_diffa_oeout_0;
output 	wire_pseudo_diffa_oebout_0;
input 	[0:0] datain;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_pseudo_diff_out pseudo_diffa_0(
	.i(datain[0]),
	.oein(gnd),
	.dtcin(gnd),
	.o(wire_pseudo_diffa_o_0),
	.obar(wire_pseudo_diffa_obar_0),
	.oeout(wire_pseudo_diffa_oeout_0),
	.oebout(wire_pseudo_diffa_oebout_0),
	.dtc(),
	.dtcbar());

endmodule

module HPS_hps_sdram_p0_generic_ddio (
	clk_hr,
	dataout,
	clk_fr,
	datain)/* synthesis synthesis_greybox=0 */;
input 	[12:0] clk_hr;
output 	[12:0] dataout;
input 	[12:0] clk_fr;
input 	[51:0] datain;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \acblock[0].fr_data_lo ;
wire \acblock[0].fr_data_hi ;
wire \acblock[1].fr_data_lo ;
wire \acblock[1].fr_data_hi ;
wire \acblock[2].fr_data_lo ;
wire \acblock[2].fr_data_hi ;
wire \acblock[3].fr_data_lo ;
wire \acblock[3].fr_data_hi ;
wire \acblock[4].fr_data_lo ;
wire \acblock[4].fr_data_hi ;
wire \acblock[5].fr_data_lo ;
wire \acblock[5].fr_data_hi ;
wire \acblock[6].fr_data_lo ;
wire \acblock[6].fr_data_hi ;
wire \acblock[7].fr_data_lo ;
wire \acblock[7].fr_data_hi ;
wire \acblock[8].fr_data_lo ;
wire \acblock[8].fr_data_hi ;
wire \acblock[9].fr_data_lo ;
wire \acblock[9].fr_data_hi ;
wire \acblock[10].fr_data_lo ;
wire \acblock[10].fr_data_hi ;
wire \acblock[11].fr_data_lo ;
wire \acblock[11].fr_data_hi ;
wire \acblock[12].fr_data_lo ;
wire \acblock[12].fr_data_hi ;


cyclonev_ddio_out \acblock[0].ddio_out (
	.datainlo(\acblock[0].fr_data_lo ),
	.datainhi(\acblock[0].fr_data_hi ),
	.clkhi(clk_fr[0]),
	.clklo(clk_fr[0]),
	.muxsel(clk_fr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[0]),
	.dfflo(),
	.dffhi());
defparam \acblock[0].ddio_out .async_mode = "none";
defparam \acblock[0].ddio_out .half_rate_mode = "false";
defparam \acblock[0].ddio_out .power_up = "low";
defparam \acblock[0].ddio_out .sync_mode = "none";
defparam \acblock[0].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].ddio_out (
	.datainlo(\acblock[1].fr_data_lo ),
	.datainhi(\acblock[1].fr_data_hi ),
	.clkhi(clk_fr[1]),
	.clklo(clk_fr[1]),
	.muxsel(clk_fr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[1]),
	.dfflo(),
	.dffhi());
defparam \acblock[1].ddio_out .async_mode = "none";
defparam \acblock[1].ddio_out .half_rate_mode = "false";
defparam \acblock[1].ddio_out .power_up = "low";
defparam \acblock[1].ddio_out .sync_mode = "none";
defparam \acblock[1].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].ddio_out (
	.datainlo(\acblock[2].fr_data_lo ),
	.datainhi(\acblock[2].fr_data_hi ),
	.clkhi(clk_fr[2]),
	.clklo(clk_fr[2]),
	.muxsel(clk_fr[2]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[2]),
	.dfflo(),
	.dffhi());
defparam \acblock[2].ddio_out .async_mode = "none";
defparam \acblock[2].ddio_out .half_rate_mode = "false";
defparam \acblock[2].ddio_out .power_up = "low";
defparam \acblock[2].ddio_out .sync_mode = "none";
defparam \acblock[2].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[3].ddio_out (
	.datainlo(\acblock[3].fr_data_lo ),
	.datainhi(\acblock[3].fr_data_hi ),
	.clkhi(clk_fr[3]),
	.clklo(clk_fr[3]),
	.muxsel(clk_fr[3]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[3]),
	.dfflo(),
	.dffhi());
defparam \acblock[3].ddio_out .async_mode = "none";
defparam \acblock[3].ddio_out .half_rate_mode = "false";
defparam \acblock[3].ddio_out .power_up = "low";
defparam \acblock[3].ddio_out .sync_mode = "none";
defparam \acblock[3].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[4].ddio_out (
	.datainlo(\acblock[4].fr_data_lo ),
	.datainhi(\acblock[4].fr_data_hi ),
	.clkhi(clk_fr[4]),
	.clklo(clk_fr[4]),
	.muxsel(clk_fr[4]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[4]),
	.dfflo(),
	.dffhi());
defparam \acblock[4].ddio_out .async_mode = "none";
defparam \acblock[4].ddio_out .half_rate_mode = "false";
defparam \acblock[4].ddio_out .power_up = "low";
defparam \acblock[4].ddio_out .sync_mode = "none";
defparam \acblock[4].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[5].ddio_out (
	.datainlo(\acblock[5].fr_data_lo ),
	.datainhi(\acblock[5].fr_data_hi ),
	.clkhi(clk_fr[5]),
	.clklo(clk_fr[5]),
	.muxsel(clk_fr[5]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[5]),
	.dfflo(),
	.dffhi());
defparam \acblock[5].ddio_out .async_mode = "none";
defparam \acblock[5].ddio_out .half_rate_mode = "false";
defparam \acblock[5].ddio_out .power_up = "low";
defparam \acblock[5].ddio_out .sync_mode = "none";
defparam \acblock[5].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[6].ddio_out (
	.datainlo(\acblock[6].fr_data_lo ),
	.datainhi(\acblock[6].fr_data_hi ),
	.clkhi(clk_fr[6]),
	.clklo(clk_fr[6]),
	.muxsel(clk_fr[6]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[6]),
	.dfflo(),
	.dffhi());
defparam \acblock[6].ddio_out .async_mode = "none";
defparam \acblock[6].ddio_out .half_rate_mode = "false";
defparam \acblock[6].ddio_out .power_up = "low";
defparam \acblock[6].ddio_out .sync_mode = "none";
defparam \acblock[6].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[7].ddio_out (
	.datainlo(\acblock[7].fr_data_lo ),
	.datainhi(\acblock[7].fr_data_hi ),
	.clkhi(clk_fr[7]),
	.clklo(clk_fr[7]),
	.muxsel(clk_fr[7]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[7]),
	.dfflo(),
	.dffhi());
defparam \acblock[7].ddio_out .async_mode = "none";
defparam \acblock[7].ddio_out .half_rate_mode = "false";
defparam \acblock[7].ddio_out .power_up = "low";
defparam \acblock[7].ddio_out .sync_mode = "none";
defparam \acblock[7].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[8].ddio_out (
	.datainlo(\acblock[8].fr_data_lo ),
	.datainhi(\acblock[8].fr_data_hi ),
	.clkhi(clk_fr[8]),
	.clklo(clk_fr[8]),
	.muxsel(clk_fr[8]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[8]),
	.dfflo(),
	.dffhi());
defparam \acblock[8].ddio_out .async_mode = "none";
defparam \acblock[8].ddio_out .half_rate_mode = "false";
defparam \acblock[8].ddio_out .power_up = "low";
defparam \acblock[8].ddio_out .sync_mode = "none";
defparam \acblock[8].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[9].ddio_out (
	.datainlo(\acblock[9].fr_data_lo ),
	.datainhi(\acblock[9].fr_data_hi ),
	.clkhi(clk_fr[9]),
	.clklo(clk_fr[9]),
	.muxsel(clk_fr[9]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[9]),
	.dfflo(),
	.dffhi());
defparam \acblock[9].ddio_out .async_mode = "none";
defparam \acblock[9].ddio_out .half_rate_mode = "false";
defparam \acblock[9].ddio_out .power_up = "low";
defparam \acblock[9].ddio_out .sync_mode = "none";
defparam \acblock[9].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[10].ddio_out (
	.datainlo(\acblock[10].fr_data_lo ),
	.datainhi(\acblock[10].fr_data_hi ),
	.clkhi(clk_fr[10]),
	.clklo(clk_fr[10]),
	.muxsel(clk_fr[10]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[10]),
	.dfflo(),
	.dffhi());
defparam \acblock[10].ddio_out .async_mode = "none";
defparam \acblock[10].ddio_out .half_rate_mode = "false";
defparam \acblock[10].ddio_out .power_up = "low";
defparam \acblock[10].ddio_out .sync_mode = "none";
defparam \acblock[10].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[11].ddio_out (
	.datainlo(\acblock[11].fr_data_lo ),
	.datainhi(\acblock[11].fr_data_hi ),
	.clkhi(clk_fr[11]),
	.clklo(clk_fr[11]),
	.muxsel(clk_fr[11]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[11]),
	.dfflo(),
	.dffhi());
defparam \acblock[11].ddio_out .async_mode = "none";
defparam \acblock[11].ddio_out .half_rate_mode = "false";
defparam \acblock[11].ddio_out .power_up = "low";
defparam \acblock[11].ddio_out .sync_mode = "none";
defparam \acblock[11].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[12].ddio_out (
	.datainlo(\acblock[12].fr_data_lo ),
	.datainhi(\acblock[12].fr_data_hi ),
	.clkhi(clk_fr[12]),
	.clklo(clk_fr[12]),
	.muxsel(clk_fr[12]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[12]),
	.dfflo(),
	.dffhi());
defparam \acblock[12].ddio_out .async_mode = "none";
defparam \acblock[12].ddio_out .half_rate_mode = "false";
defparam \acblock[12].ddio_out .power_up = "low";
defparam \acblock[12].ddio_out .sync_mode = "none";
defparam \acblock[12].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_lo (
	.datainlo(datain[3]),
	.datainhi(datain[1]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_lo .async_mode = "none";
defparam \acblock[0].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_lo .power_up = "low";
defparam \acblock[0].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[0].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_hi (
	.datainlo(datain[2]),
	.datainhi(datain[0]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_hi .async_mode = "none";
defparam \acblock[0].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_hi .power_up = "low";
defparam \acblock[0].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[0].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].hr_to_fr_lo (
	.datainlo(datain[7]),
	.datainhi(datain[5]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[1].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[1].hr_to_fr_lo .async_mode = "none";
defparam \acblock[1].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[1].hr_to_fr_lo .power_up = "low";
defparam \acblock[1].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[1].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].hr_to_fr_hi (
	.datainlo(datain[6]),
	.datainhi(datain[4]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[1].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[1].hr_to_fr_hi .async_mode = "none";
defparam \acblock[1].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[1].hr_to_fr_hi .power_up = "low";
defparam \acblock[1].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[1].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].hr_to_fr_lo (
	.datainlo(datain[11]),
	.datainhi(datain[9]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[2].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[2].hr_to_fr_lo .async_mode = "none";
defparam \acblock[2].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[2].hr_to_fr_lo .power_up = "low";
defparam \acblock[2].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[2].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].hr_to_fr_hi (
	.datainlo(datain[10]),
	.datainhi(datain[8]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[2].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[2].hr_to_fr_hi .async_mode = "none";
defparam \acblock[2].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[2].hr_to_fr_hi .power_up = "low";
defparam \acblock[2].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[2].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[3].hr_to_fr_lo (
	.datainlo(datain[15]),
	.datainhi(datain[13]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[3].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[3].hr_to_fr_lo .async_mode = "none";
defparam \acblock[3].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[3].hr_to_fr_lo .power_up = "low";
defparam \acblock[3].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[3].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[3].hr_to_fr_hi (
	.datainlo(datain[14]),
	.datainhi(datain[12]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[3].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[3].hr_to_fr_hi .async_mode = "none";
defparam \acblock[3].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[3].hr_to_fr_hi .power_up = "low";
defparam \acblock[3].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[3].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[4].hr_to_fr_lo (
	.datainlo(datain[19]),
	.datainhi(datain[17]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[4].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[4].hr_to_fr_lo .async_mode = "none";
defparam \acblock[4].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[4].hr_to_fr_lo .power_up = "low";
defparam \acblock[4].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[4].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[4].hr_to_fr_hi (
	.datainlo(datain[18]),
	.datainhi(datain[16]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[4].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[4].hr_to_fr_hi .async_mode = "none";
defparam \acblock[4].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[4].hr_to_fr_hi .power_up = "low";
defparam \acblock[4].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[4].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[5].hr_to_fr_lo (
	.datainlo(datain[23]),
	.datainhi(datain[21]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[5].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[5].hr_to_fr_lo .async_mode = "none";
defparam \acblock[5].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[5].hr_to_fr_lo .power_up = "low";
defparam \acblock[5].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[5].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[5].hr_to_fr_hi (
	.datainlo(datain[22]),
	.datainhi(datain[20]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[5].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[5].hr_to_fr_hi .async_mode = "none";
defparam \acblock[5].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[5].hr_to_fr_hi .power_up = "low";
defparam \acblock[5].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[5].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[6].hr_to_fr_lo (
	.datainlo(datain[27]),
	.datainhi(datain[25]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[6].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[6].hr_to_fr_lo .async_mode = "none";
defparam \acblock[6].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[6].hr_to_fr_lo .power_up = "low";
defparam \acblock[6].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[6].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[6].hr_to_fr_hi (
	.datainlo(datain[26]),
	.datainhi(datain[24]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[6].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[6].hr_to_fr_hi .async_mode = "none";
defparam \acblock[6].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[6].hr_to_fr_hi .power_up = "low";
defparam \acblock[6].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[6].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[7].hr_to_fr_lo (
	.datainlo(datain[31]),
	.datainhi(datain[29]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[7].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[7].hr_to_fr_lo .async_mode = "none";
defparam \acblock[7].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[7].hr_to_fr_lo .power_up = "low";
defparam \acblock[7].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[7].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[7].hr_to_fr_hi (
	.datainlo(datain[30]),
	.datainhi(datain[28]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[7].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[7].hr_to_fr_hi .async_mode = "none";
defparam \acblock[7].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[7].hr_to_fr_hi .power_up = "low";
defparam \acblock[7].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[7].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[8].hr_to_fr_lo (
	.datainlo(datain[35]),
	.datainhi(datain[33]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[8].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[8].hr_to_fr_lo .async_mode = "none";
defparam \acblock[8].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[8].hr_to_fr_lo .power_up = "low";
defparam \acblock[8].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[8].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[8].hr_to_fr_hi (
	.datainlo(datain[34]),
	.datainhi(datain[32]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[8].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[8].hr_to_fr_hi .async_mode = "none";
defparam \acblock[8].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[8].hr_to_fr_hi .power_up = "low";
defparam \acblock[8].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[8].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[9].hr_to_fr_lo (
	.datainlo(datain[39]),
	.datainhi(datain[37]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[9].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[9].hr_to_fr_lo .async_mode = "none";
defparam \acblock[9].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[9].hr_to_fr_lo .power_up = "low";
defparam \acblock[9].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[9].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[9].hr_to_fr_hi (
	.datainlo(datain[38]),
	.datainhi(datain[36]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[9].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[9].hr_to_fr_hi .async_mode = "none";
defparam \acblock[9].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[9].hr_to_fr_hi .power_up = "low";
defparam \acblock[9].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[9].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[10].hr_to_fr_lo (
	.datainlo(datain[43]),
	.datainhi(datain[41]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[10].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[10].hr_to_fr_lo .async_mode = "none";
defparam \acblock[10].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[10].hr_to_fr_lo .power_up = "low";
defparam \acblock[10].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[10].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[10].hr_to_fr_hi (
	.datainlo(datain[42]),
	.datainhi(datain[40]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[10].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[10].hr_to_fr_hi .async_mode = "none";
defparam \acblock[10].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[10].hr_to_fr_hi .power_up = "low";
defparam \acblock[10].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[10].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[11].hr_to_fr_lo (
	.datainlo(datain[47]),
	.datainhi(datain[45]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[11].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[11].hr_to_fr_lo .async_mode = "none";
defparam \acblock[11].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[11].hr_to_fr_lo .power_up = "low";
defparam \acblock[11].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[11].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[11].hr_to_fr_hi (
	.datainlo(datain[46]),
	.datainhi(datain[44]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[11].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[11].hr_to_fr_hi .async_mode = "none";
defparam \acblock[11].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[11].hr_to_fr_hi .power_up = "low";
defparam \acblock[11].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[11].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[12].hr_to_fr_lo (
	.datainlo(datain[51]),
	.datainhi(datain[49]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[12].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[12].hr_to_fr_lo .async_mode = "none";
defparam \acblock[12].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[12].hr_to_fr_lo .power_up = "low";
defparam \acblock[12].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[12].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[12].hr_to_fr_hi (
	.datainlo(datain[50]),
	.datainhi(datain[48]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[12].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[12].hr_to_fr_hi .async_mode = "none";
defparam \acblock[12].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[12].hr_to_fr_hi .power_up = "low";
defparam \acblock[12].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[12].hr_to_fr_hi .use_new_clocking_model = "true";

endmodule

module HPS_hps_sdram_p0_generic_ddio_1 (
	clk_hr,
	dataout,
	clk_fr,
	datain)/* synthesis synthesis_greybox=0 */;
input 	[12:0] clk_hr;
output 	[12:0] dataout;
input 	[12:0] clk_fr;
input 	[51:0] datain;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \acblock[0].fr_data_lo ;
wire \acblock[0].fr_data_hi ;
wire \acblock[1].fr_data_lo ;
wire \acblock[1].fr_data_hi ;
wire \acblock[2].fr_data_lo ;
wire \acblock[2].fr_data_hi ;


cyclonev_ddio_out \acblock[0].ddio_out (
	.datainlo(\acblock[0].fr_data_lo ),
	.datainhi(\acblock[0].fr_data_hi ),
	.clkhi(clk_fr[0]),
	.clklo(clk_fr[0]),
	.muxsel(clk_fr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[0]),
	.dfflo(),
	.dffhi());
defparam \acblock[0].ddio_out .async_mode = "none";
defparam \acblock[0].ddio_out .half_rate_mode = "false";
defparam \acblock[0].ddio_out .power_up = "low";
defparam \acblock[0].ddio_out .sync_mode = "none";
defparam \acblock[0].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].ddio_out (
	.datainlo(\acblock[1].fr_data_lo ),
	.datainhi(\acblock[1].fr_data_hi ),
	.clkhi(clk_fr[1]),
	.clklo(clk_fr[1]),
	.muxsel(clk_fr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[1]),
	.dfflo(),
	.dffhi());
defparam \acblock[1].ddio_out .async_mode = "none";
defparam \acblock[1].ddio_out .half_rate_mode = "false";
defparam \acblock[1].ddio_out .power_up = "low";
defparam \acblock[1].ddio_out .sync_mode = "none";
defparam \acblock[1].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].ddio_out (
	.datainlo(\acblock[2].fr_data_lo ),
	.datainhi(\acblock[2].fr_data_hi ),
	.clkhi(clk_fr[2]),
	.clklo(clk_fr[2]),
	.muxsel(clk_fr[2]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[2]),
	.dfflo(),
	.dffhi());
defparam \acblock[2].ddio_out .async_mode = "none";
defparam \acblock[2].ddio_out .half_rate_mode = "false";
defparam \acblock[2].ddio_out .power_up = "low";
defparam \acblock[2].ddio_out .sync_mode = "none";
defparam \acblock[2].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_lo (
	.datainlo(datain[3]),
	.datainhi(datain[1]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_lo .async_mode = "none";
defparam \acblock[0].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_lo .power_up = "low";
defparam \acblock[0].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[0].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_hi (
	.datainlo(datain[2]),
	.datainhi(datain[0]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_hi .async_mode = "none";
defparam \acblock[0].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_hi .power_up = "low";
defparam \acblock[0].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[0].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].hr_to_fr_lo (
	.datainlo(datain[7]),
	.datainhi(datain[5]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[1].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[1].hr_to_fr_lo .async_mode = "none";
defparam \acblock[1].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[1].hr_to_fr_lo .power_up = "low";
defparam \acblock[1].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[1].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].hr_to_fr_hi (
	.datainlo(datain[6]),
	.datainhi(datain[4]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[1].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[1].hr_to_fr_hi .async_mode = "none";
defparam \acblock[1].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[1].hr_to_fr_hi .power_up = "low";
defparam \acblock[1].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[1].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].hr_to_fr_lo (
	.datainlo(datain[11]),
	.datainhi(datain[9]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[2].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[2].hr_to_fr_lo .async_mode = "none";
defparam \acblock[2].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[2].hr_to_fr_lo .power_up = "low";
defparam \acblock[2].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[2].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].hr_to_fr_hi (
	.datainlo(datain[10]),
	.datainhi(datain[8]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[2].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[2].hr_to_fr_hi .async_mode = "none";
defparam \acblock[2].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[2].hr_to_fr_hi .power_up = "low";
defparam \acblock[2].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[2].hr_to_fr_hi .use_new_clocking_model = "true";

endmodule

module HPS_hps_sdram_p0_generic_ddio_2 (
	clk_hr,
	dataout,
	clk_fr,
	datain)/* synthesis synthesis_greybox=0 */;
input 	[12:0] clk_hr;
output 	[12:0] dataout;
input 	[12:0] clk_fr;
input 	[51:0] datain;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \acblock[1].fr_data_lo ;
wire \acblock[1].fr_data_hi ;
wire \acblock[0].fr_data_lo ;
wire \acblock[0].fr_data_hi ;
wire \acblock[3].fr_data_lo ;
wire \acblock[3].fr_data_hi ;
wire \acblock[4].fr_data_lo ;
wire \acblock[4].fr_data_hi ;
wire \acblock[5].fr_data_lo ;
wire \acblock[5].fr_data_hi ;
wire \acblock[2].fr_data_lo ;
wire \acblock[2].fr_data_hi ;


cyclonev_ddio_out \acblock[1].ddio_out (
	.datainlo(\acblock[1].fr_data_lo ),
	.datainhi(\acblock[1].fr_data_hi ),
	.clkhi(clk_fr[1]),
	.clklo(clk_fr[1]),
	.muxsel(clk_fr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[1]),
	.dfflo(),
	.dffhi());
defparam \acblock[1].ddio_out .async_mode = "none";
defparam \acblock[1].ddio_out .half_rate_mode = "false";
defparam \acblock[1].ddio_out .power_up = "low";
defparam \acblock[1].ddio_out .sync_mode = "none";
defparam \acblock[1].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].ddio_out (
	.datainlo(\acblock[0].fr_data_lo ),
	.datainhi(\acblock[0].fr_data_hi ),
	.clkhi(clk_fr[0]),
	.clklo(clk_fr[0]),
	.muxsel(clk_fr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[0]),
	.dfflo(),
	.dffhi());
defparam \acblock[0].ddio_out .async_mode = "none";
defparam \acblock[0].ddio_out .half_rate_mode = "false";
defparam \acblock[0].ddio_out .power_up = "low";
defparam \acblock[0].ddio_out .sync_mode = "none";
defparam \acblock[0].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[3].ddio_out (
	.datainlo(\acblock[3].fr_data_lo ),
	.datainhi(\acblock[3].fr_data_hi ),
	.clkhi(clk_fr[3]),
	.clklo(clk_fr[3]),
	.muxsel(clk_fr[3]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[3]),
	.dfflo(),
	.dffhi());
defparam \acblock[3].ddio_out .async_mode = "none";
defparam \acblock[3].ddio_out .half_rate_mode = "false";
defparam \acblock[3].ddio_out .power_up = "low";
defparam \acblock[3].ddio_out .sync_mode = "none";
defparam \acblock[3].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[4].ddio_out (
	.datainlo(\acblock[4].fr_data_lo ),
	.datainhi(\acblock[4].fr_data_hi ),
	.clkhi(clk_fr[4]),
	.clklo(clk_fr[4]),
	.muxsel(clk_fr[4]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[4]),
	.dfflo(),
	.dffhi());
defparam \acblock[4].ddio_out .async_mode = "none";
defparam \acblock[4].ddio_out .half_rate_mode = "false";
defparam \acblock[4].ddio_out .power_up = "low";
defparam \acblock[4].ddio_out .sync_mode = "none";
defparam \acblock[4].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[5].ddio_out (
	.datainlo(\acblock[5].fr_data_lo ),
	.datainhi(\acblock[5].fr_data_hi ),
	.clkhi(clk_fr[5]),
	.clklo(clk_fr[5]),
	.muxsel(clk_fr[5]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[5]),
	.dfflo(),
	.dffhi());
defparam \acblock[5].ddio_out .async_mode = "none";
defparam \acblock[5].ddio_out .half_rate_mode = "false";
defparam \acblock[5].ddio_out .power_up = "low";
defparam \acblock[5].ddio_out .sync_mode = "none";
defparam \acblock[5].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].ddio_out (
	.datainlo(\acblock[2].fr_data_lo ),
	.datainhi(\acblock[2].fr_data_hi ),
	.clkhi(clk_fr[2]),
	.clklo(clk_fr[2]),
	.muxsel(clk_fr[2]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[2]),
	.dfflo(),
	.dffhi());
defparam \acblock[2].ddio_out .async_mode = "none";
defparam \acblock[2].ddio_out .half_rate_mode = "false";
defparam \acblock[2].ddio_out .power_up = "low";
defparam \acblock[2].ddio_out .sync_mode = "none";
defparam \acblock[2].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].hr_to_fr_lo (
	.datainlo(datain[7]),
	.datainhi(datain[5]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[1].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[1].hr_to_fr_lo .async_mode = "none";
defparam \acblock[1].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[1].hr_to_fr_lo .power_up = "low";
defparam \acblock[1].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[1].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[1].hr_to_fr_hi (
	.datainlo(datain[6]),
	.datainhi(datain[4]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[1].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[1].hr_to_fr_hi .async_mode = "none";
defparam \acblock[1].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[1].hr_to_fr_hi .power_up = "low";
defparam \acblock[1].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[1].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_lo (
	.datainlo(datain[3]),
	.datainhi(datain[1]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_lo .async_mode = "none";
defparam \acblock[0].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_lo .power_up = "low";
defparam \acblock[0].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[0].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_hi (
	.datainlo(datain[2]),
	.datainhi(datain[0]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_hi .async_mode = "none";
defparam \acblock[0].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_hi .power_up = "low";
defparam \acblock[0].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[0].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[3].hr_to_fr_lo (
	.datainlo(datain[15]),
	.datainhi(datain[13]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[3].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[3].hr_to_fr_lo .async_mode = "none";
defparam \acblock[3].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[3].hr_to_fr_lo .power_up = "low";
defparam \acblock[3].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[3].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[3].hr_to_fr_hi (
	.datainlo(datain[14]),
	.datainhi(datain[12]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[3].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[3].hr_to_fr_hi .async_mode = "none";
defparam \acblock[3].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[3].hr_to_fr_hi .power_up = "low";
defparam \acblock[3].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[3].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[4].hr_to_fr_lo (
	.datainlo(datain[19]),
	.datainhi(datain[17]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[4].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[4].hr_to_fr_lo .async_mode = "none";
defparam \acblock[4].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[4].hr_to_fr_lo .power_up = "low";
defparam \acblock[4].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[4].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[4].hr_to_fr_hi (
	.datainlo(datain[18]),
	.datainhi(datain[16]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[4].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[4].hr_to_fr_hi .async_mode = "none";
defparam \acblock[4].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[4].hr_to_fr_hi .power_up = "low";
defparam \acblock[4].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[4].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[5].hr_to_fr_lo (
	.datainlo(datain[23]),
	.datainhi(datain[21]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[5].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[5].hr_to_fr_lo .async_mode = "none";
defparam \acblock[5].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[5].hr_to_fr_lo .power_up = "low";
defparam \acblock[5].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[5].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[5].hr_to_fr_hi (
	.datainlo(datain[22]),
	.datainhi(datain[20]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[5].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[5].hr_to_fr_hi .async_mode = "none";
defparam \acblock[5].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[5].hr_to_fr_hi .power_up = "low";
defparam \acblock[5].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[5].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].hr_to_fr_lo (
	.datainlo(datain[11]),
	.datainhi(datain[9]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[2].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[2].hr_to_fr_lo .async_mode = "none";
defparam \acblock[2].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[2].hr_to_fr_lo .power_up = "low";
defparam \acblock[2].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[2].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[2].hr_to_fr_hi (
	.datainlo(datain[10]),
	.datainhi(datain[8]),
	.clkhi(clk_hr[1]),
	.clklo(clk_hr[1]),
	.muxsel(clk_hr[1]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[2].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[2].hr_to_fr_hi .async_mode = "none";
defparam \acblock[2].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[2].hr_to_fr_hi .power_up = "low";
defparam \acblock[2].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[2].hr_to_fr_hi .use_new_clocking_model = "true";

endmodule

module HPS_hps_sdram_p0_generic_ddio_3 (
	clk_hr,
	dataout,
	clk_fr,
	datain)/* synthesis synthesis_greybox=0 */;
input 	[12:0] clk_hr;
output 	[12:0] dataout;
input 	[12:0] clk_fr;
input 	[51:0] datain;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \acblock[0].fr_data_lo ;
wire \acblock[0].fr_data_hi ;


cyclonev_ddio_out \acblock[0].ddio_out (
	.datainlo(\acblock[0].fr_data_lo ),
	.datainhi(\acblock[0].fr_data_hi ),
	.clkhi(clk_fr[0]),
	.clklo(clk_fr[0]),
	.muxsel(clk_fr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(dataout[0]),
	.dfflo(),
	.dffhi());
defparam \acblock[0].ddio_out .async_mode = "none";
defparam \acblock[0].ddio_out .half_rate_mode = "false";
defparam \acblock[0].ddio_out .power_up = "low";
defparam \acblock[0].ddio_out .sync_mode = "none";
defparam \acblock[0].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_lo (
	.datainlo(datain[3]),
	.datainhi(datain[1]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_lo .async_mode = "none";
defparam \acblock[0].hr_to_fr_lo .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_lo .power_up = "low";
defparam \acblock[0].hr_to_fr_lo .sync_mode = "none";
defparam \acblock[0].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \acblock[0].hr_to_fr_hi (
	.datainlo(datain[2]),
	.datainhi(datain[0]),
	.clkhi(clk_hr[0]),
	.clklo(clk_hr[0]),
	.muxsel(clk_hr[0]),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(\acblock[0].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \acblock[0].hr_to_fr_hi .async_mode = "none";
defparam \acblock[0].hr_to_fr_hi .half_rate_mode = "true";
defparam \acblock[0].hr_to_fr_hi .power_up = "low";
defparam \acblock[0].hr_to_fr_hi .sync_mode = "none";
defparam \acblock[0].hr_to_fr_hi .use_new_clocking_model = "true";

endmodule

module HPS_hps_sdram_p0_altdqdqs (
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	afi_clk,
	pll_write_clk,
	extra_output_pad_gen0delayed_data_out,
	phy_ddio_dmdout_0,
	phy_ddio_dmdout_1,
	phy_ddio_dmdout_2,
	phy_ddio_dmdout_3,
	phy_ddio_dqdout_0,
	phy_ddio_dqdout_1,
	phy_ddio_dqdout_2,
	phy_ddio_dqdout_3,
	phy_ddio_dqdout_4,
	phy_ddio_dqdout_5,
	phy_ddio_dqdout_6,
	phy_ddio_dqdout_7,
	phy_ddio_dqdout_8,
	phy_ddio_dqdout_9,
	phy_ddio_dqdout_10,
	phy_ddio_dqdout_11,
	phy_ddio_dqdout_12,
	phy_ddio_dqdout_13,
	phy_ddio_dqdout_14,
	phy_ddio_dqdout_15,
	phy_ddio_dqdout_16,
	phy_ddio_dqdout_17,
	phy_ddio_dqdout_18,
	phy_ddio_dqdout_19,
	phy_ddio_dqdout_20,
	phy_ddio_dqdout_21,
	phy_ddio_dqdout_22,
	phy_ddio_dqdout_23,
	phy_ddio_dqdout_24,
	phy_ddio_dqdout_25,
	phy_ddio_dqdout_26,
	phy_ddio_dqdout_27,
	phy_ddio_dqdout_28,
	phy_ddio_dqdout_29,
	phy_ddio_dqdout_30,
	phy_ddio_dqdout_31,
	phy_ddio_dqoe_0,
	phy_ddio_dqoe_1,
	phy_ddio_dqoe_2,
	phy_ddio_dqoe_3,
	phy_ddio_dqoe_4,
	phy_ddio_dqoe_5,
	phy_ddio_dqoe_6,
	phy_ddio_dqoe_7,
	phy_ddio_dqoe_8,
	phy_ddio_dqoe_9,
	phy_ddio_dqoe_10,
	phy_ddio_dqoe_11,
	phy_ddio_dqoe_12,
	phy_ddio_dqoe_13,
	phy_ddio_dqoe_14,
	phy_ddio_dqoe_15,
	phy_ddio_dqs_dout_0,
	phy_ddio_dqs_dout_1,
	phy_ddio_dqs_dout_2,
	phy_ddio_dqs_dout_3,
	phy_ddio_dqslogic_aclr_fifoctrl_0,
	phy_ddio_dqslogic_aclr_pstamble_0,
	phy_ddio_dqslogic_dqsena_0,
	phy_ddio_dqslogic_dqsena_1,
	phy_ddio_dqslogic_fiforeset_0,
	phy_ddio_dqslogic_incrdataen_0,
	phy_ddio_dqslogic_incrdataen_1,
	phy_ddio_dqslogic_incwrptr_0,
	phy_ddio_dqslogic_incwrptr_1,
	phy_ddio_dqslogic_oct_0,
	phy_ddio_dqslogic_oct_1,
	phy_ddio_dqslogic_readlatency_0,
	phy_ddio_dqslogic_readlatency_1,
	phy_ddio_dqslogic_readlatency_2,
	phy_ddio_dqslogic_readlatency_3,
	phy_ddio_dqslogic_readlatency_4,
	phy_ddio_dqs_oe_0,
	phy_ddio_dqs_oe_1,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	input_path_gen0read_fifo_out_0,
	input_path_gen0read_fifo_out_1,
	input_path_gen0read_fifo_out_2,
	input_path_gen0read_fifo_out_3,
	input_path_gen1read_fifo_out_0,
	input_path_gen1read_fifo_out_1,
	input_path_gen1read_fifo_out_2,
	input_path_gen1read_fifo_out_3,
	input_path_gen2read_fifo_out_0,
	input_path_gen2read_fifo_out_1,
	input_path_gen2read_fifo_out_2,
	input_path_gen2read_fifo_out_3,
	input_path_gen3read_fifo_out_0,
	input_path_gen3read_fifo_out_1,
	input_path_gen3read_fifo_out_2,
	input_path_gen3read_fifo_out_3,
	input_path_gen4read_fifo_out_0,
	input_path_gen4read_fifo_out_1,
	input_path_gen4read_fifo_out_2,
	input_path_gen4read_fifo_out_3,
	input_path_gen5read_fifo_out_0,
	input_path_gen5read_fifo_out_1,
	input_path_gen5read_fifo_out_2,
	input_path_gen5read_fifo_out_3,
	input_path_gen6read_fifo_out_0,
	input_path_gen6read_fifo_out_1,
	input_path_gen6read_fifo_out_2,
	input_path_gen6read_fifo_out_3,
	input_path_gen7read_fifo_out_0,
	input_path_gen7read_fifo_out_1,
	input_path_gen7read_fifo_out_2,
	input_path_gen7read_fifo_out_3,
	lfifo_rdata_valid,
	dll_delayctrl_0,
	dll_delayctrl_1,
	dll_delayctrl_2,
	dll_delayctrl_3,
	dll_delayctrl_4,
	dll_delayctrl_5,
	dll_delayctrl_6,
	GND_port)/* synthesis synthesis_greybox=0 */;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
input 	afi_clk;
input 	pll_write_clk;
output 	extra_output_pad_gen0delayed_data_out;
input 	phy_ddio_dmdout_0;
input 	phy_ddio_dmdout_1;
input 	phy_ddio_dmdout_2;
input 	phy_ddio_dmdout_3;
input 	phy_ddio_dqdout_0;
input 	phy_ddio_dqdout_1;
input 	phy_ddio_dqdout_2;
input 	phy_ddio_dqdout_3;
input 	phy_ddio_dqdout_4;
input 	phy_ddio_dqdout_5;
input 	phy_ddio_dqdout_6;
input 	phy_ddio_dqdout_7;
input 	phy_ddio_dqdout_8;
input 	phy_ddio_dqdout_9;
input 	phy_ddio_dqdout_10;
input 	phy_ddio_dqdout_11;
input 	phy_ddio_dqdout_12;
input 	phy_ddio_dqdout_13;
input 	phy_ddio_dqdout_14;
input 	phy_ddio_dqdout_15;
input 	phy_ddio_dqdout_16;
input 	phy_ddio_dqdout_17;
input 	phy_ddio_dqdout_18;
input 	phy_ddio_dqdout_19;
input 	phy_ddio_dqdout_20;
input 	phy_ddio_dqdout_21;
input 	phy_ddio_dqdout_22;
input 	phy_ddio_dqdout_23;
input 	phy_ddio_dqdout_24;
input 	phy_ddio_dqdout_25;
input 	phy_ddio_dqdout_26;
input 	phy_ddio_dqdout_27;
input 	phy_ddio_dqdout_28;
input 	phy_ddio_dqdout_29;
input 	phy_ddio_dqdout_30;
input 	phy_ddio_dqdout_31;
input 	phy_ddio_dqoe_0;
input 	phy_ddio_dqoe_1;
input 	phy_ddio_dqoe_2;
input 	phy_ddio_dqoe_3;
input 	phy_ddio_dqoe_4;
input 	phy_ddio_dqoe_5;
input 	phy_ddio_dqoe_6;
input 	phy_ddio_dqoe_7;
input 	phy_ddio_dqoe_8;
input 	phy_ddio_dqoe_9;
input 	phy_ddio_dqoe_10;
input 	phy_ddio_dqoe_11;
input 	phy_ddio_dqoe_12;
input 	phy_ddio_dqoe_13;
input 	phy_ddio_dqoe_14;
input 	phy_ddio_dqoe_15;
input 	phy_ddio_dqs_dout_0;
input 	phy_ddio_dqs_dout_1;
input 	phy_ddio_dqs_dout_2;
input 	phy_ddio_dqs_dout_3;
input 	phy_ddio_dqslogic_aclr_fifoctrl_0;
input 	phy_ddio_dqslogic_aclr_pstamble_0;
input 	phy_ddio_dqslogic_dqsena_0;
input 	phy_ddio_dqslogic_dqsena_1;
input 	phy_ddio_dqslogic_fiforeset_0;
input 	phy_ddio_dqslogic_incrdataen_0;
input 	phy_ddio_dqslogic_incrdataen_1;
input 	phy_ddio_dqslogic_incwrptr_0;
input 	phy_ddio_dqslogic_incwrptr_1;
input 	phy_ddio_dqslogic_oct_0;
input 	phy_ddio_dqslogic_oct_1;
input 	phy_ddio_dqslogic_readlatency_0;
input 	phy_ddio_dqslogic_readlatency_1;
input 	phy_ddio_dqslogic_readlatency_2;
input 	phy_ddio_dqslogic_readlatency_3;
input 	phy_ddio_dqslogic_readlatency_4;
input 	phy_ddio_dqs_oe_0;
input 	phy_ddio_dqs_oe_1;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
output 	input_path_gen0read_fifo_out_0;
output 	input_path_gen0read_fifo_out_1;
output 	input_path_gen0read_fifo_out_2;
output 	input_path_gen0read_fifo_out_3;
output 	input_path_gen1read_fifo_out_0;
output 	input_path_gen1read_fifo_out_1;
output 	input_path_gen1read_fifo_out_2;
output 	input_path_gen1read_fifo_out_3;
output 	input_path_gen2read_fifo_out_0;
output 	input_path_gen2read_fifo_out_1;
output 	input_path_gen2read_fifo_out_2;
output 	input_path_gen2read_fifo_out_3;
output 	input_path_gen3read_fifo_out_0;
output 	input_path_gen3read_fifo_out_1;
output 	input_path_gen3read_fifo_out_2;
output 	input_path_gen3read_fifo_out_3;
output 	input_path_gen4read_fifo_out_0;
output 	input_path_gen4read_fifo_out_1;
output 	input_path_gen4read_fifo_out_2;
output 	input_path_gen4read_fifo_out_3;
output 	input_path_gen5read_fifo_out_0;
output 	input_path_gen5read_fifo_out_1;
output 	input_path_gen5read_fifo_out_2;
output 	input_path_gen5read_fifo_out_3;
output 	input_path_gen6read_fifo_out_0;
output 	input_path_gen6read_fifo_out_1;
output 	input_path_gen6read_fifo_out_2;
output 	input_path_gen6read_fifo_out_3;
output 	input_path_gen7read_fifo_out_0;
output 	input_path_gen7read_fifo_out_1;
output 	input_path_gen7read_fifo_out_2;
output 	input_path_gen7read_fifo_out_3;
output 	lfifo_rdata_valid;
input 	dll_delayctrl_0;
input 	dll_delayctrl_1;
input 	dll_delayctrl_2;
input 	dll_delayctrl_3;
input 	dll_delayctrl_4;
input 	dll_delayctrl_5;
input 	dll_delayctrl_6;
input 	GND_port;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



HPS_altdq_dqs2_acv_connect_to_hard_phy_cyclonev altdq_dqs2_inst(
	.dqsin(dqsin),
	.pad_gen0raw_input(pad_gen0raw_input),
	.pad_gen1raw_input(pad_gen1raw_input),
	.pad_gen2raw_input(pad_gen2raw_input),
	.pad_gen3raw_input(pad_gen3raw_input),
	.pad_gen4raw_input(pad_gen4raw_input),
	.pad_gen5raw_input(pad_gen5raw_input),
	.pad_gen6raw_input(pad_gen6raw_input),
	.pad_gen7raw_input(pad_gen7raw_input),
	.config_clock_in(afi_clk),
	.hr_clock_in(afi_clk),
	.write_strobe_clock_in(afi_clk),
	.fr_clock_in(pll_write_clk),
	.extra_output_pad_gen0delayed_data_out(extra_output_pad_gen0delayed_data_out),
	.extra_write_data_in({phy_ddio_dmdout_3,phy_ddio_dmdout_2,phy_ddio_dmdout_1,phy_ddio_dmdout_0}),
	.write_data_in({phy_ddio_dqdout_31,phy_ddio_dqdout_30,phy_ddio_dqdout_29,phy_ddio_dqdout_28,phy_ddio_dqdout_27,phy_ddio_dqdout_26,phy_ddio_dqdout_25,phy_ddio_dqdout_24,phy_ddio_dqdout_23,phy_ddio_dqdout_22,phy_ddio_dqdout_21,phy_ddio_dqdout_20,phy_ddio_dqdout_19,phy_ddio_dqdout_18,
phy_ddio_dqdout_17,phy_ddio_dqdout_16,phy_ddio_dqdout_15,phy_ddio_dqdout_14,phy_ddio_dqdout_13,phy_ddio_dqdout_12,phy_ddio_dqdout_11,phy_ddio_dqdout_10,phy_ddio_dqdout_9,phy_ddio_dqdout_8,phy_ddio_dqdout_7,phy_ddio_dqdout_6,phy_ddio_dqdout_5,phy_ddio_dqdout_4,
phy_ddio_dqdout_3,phy_ddio_dqdout_2,phy_ddio_dqdout_1,phy_ddio_dqdout_0}),
	.write_oe_in({phy_ddio_dqoe_15,phy_ddio_dqoe_14,phy_ddio_dqoe_13,phy_ddio_dqoe_12,phy_ddio_dqoe_11,phy_ddio_dqoe_10,phy_ddio_dqoe_9,phy_ddio_dqoe_8,phy_ddio_dqoe_7,phy_ddio_dqoe_6,phy_ddio_dqoe_5,phy_ddio_dqoe_4,phy_ddio_dqoe_3,phy_ddio_dqoe_2,phy_ddio_dqoe_1,phy_ddio_dqoe_0}),
	.write_strobe({phy_ddio_dqs_dout_3,phy_ddio_dqs_dout_2,phy_ddio_dqs_dout_1,phy_ddio_dqs_dout_0}),
	.lfifo_reset_n(phy_ddio_dqslogic_aclr_fifoctrl_0),
	.vfifo_reset_n(phy_ddio_dqslogic_aclr_pstamble_0),
	.lfifo_rdata_en_full({phy_ddio_dqslogic_dqsena_1,phy_ddio_dqslogic_dqsena_0}),
	.vfifo_qvld({phy_ddio_dqslogic_dqsena_1,phy_ddio_dqslogic_dqsena_0}),
	.rfifo_reset_n(phy_ddio_dqslogic_fiforeset_0),
	.lfifo_rdata_en({phy_ddio_dqslogic_incrdataen_1,phy_ddio_dqslogic_incrdataen_0}),
	.vfifo_inc_wr_ptr({phy_ddio_dqslogic_incwrptr_1,phy_ddio_dqslogic_incwrptr_0}),
	.oct_ena_in({phy_ddio_dqslogic_oct_1,phy_ddio_dqslogic_oct_0}),
	.lfifo_rd_latency({phy_ddio_dqslogic_readlatency_4,phy_ddio_dqslogic_readlatency_3,phy_ddio_dqslogic_readlatency_2,phy_ddio_dqslogic_readlatency_1,phy_ddio_dqslogic_readlatency_0}),
	.output_strobe_ena({phy_ddio_dqs_oe_1,phy_ddio_dqs_oe_0}),
	.pad_gen0delayed_data_out(pad_gen0delayed_data_out),
	.pad_gen0delayed_oe_1(pad_gen0delayed_oe_1),
	.delayed_oct(delayed_oct),
	.pad_gen1delayed_data_out(pad_gen1delayed_data_out),
	.pad_gen1delayed_oe_1(pad_gen1delayed_oe_1),
	.pad_gen2delayed_data_out(pad_gen2delayed_data_out),
	.pad_gen2delayed_oe_1(pad_gen2delayed_oe_1),
	.pad_gen3delayed_data_out(pad_gen3delayed_data_out),
	.pad_gen3delayed_oe_1(pad_gen3delayed_oe_1),
	.pad_gen4delayed_data_out(pad_gen4delayed_data_out),
	.pad_gen4delayed_oe_1(pad_gen4delayed_oe_1),
	.pad_gen5delayed_data_out(pad_gen5delayed_data_out),
	.pad_gen5delayed_oe_1(pad_gen5delayed_oe_1),
	.pad_gen6delayed_data_out(pad_gen6delayed_data_out),
	.pad_gen6delayed_oe_1(pad_gen6delayed_oe_1),
	.pad_gen7delayed_data_out(pad_gen7delayed_data_out),
	.pad_gen7delayed_oe_1(pad_gen7delayed_oe_1),
	.os(os),
	.os_bar(os_bar),
	.diff_oe(diff_oe),
	.diff_oe_bar(diff_oe_bar),
	.diff_dtc(diff_dtc),
	.diff_dtc_bar(diff_dtc_bar),
	.read_data_out({input_path_gen7read_fifo_out_3,input_path_gen7read_fifo_out_2,input_path_gen7read_fifo_out_1,input_path_gen7read_fifo_out_0,input_path_gen6read_fifo_out_3,input_path_gen6read_fifo_out_2,input_path_gen6read_fifo_out_1,input_path_gen6read_fifo_out_0,
input_path_gen5read_fifo_out_3,input_path_gen5read_fifo_out_2,input_path_gen5read_fifo_out_1,input_path_gen5read_fifo_out_0,input_path_gen4read_fifo_out_3,input_path_gen4read_fifo_out_2,input_path_gen4read_fifo_out_1,input_path_gen4read_fifo_out_0,
input_path_gen3read_fifo_out_3,input_path_gen3read_fifo_out_2,input_path_gen3read_fifo_out_1,input_path_gen3read_fifo_out_0,input_path_gen2read_fifo_out_3,input_path_gen2read_fifo_out_2,input_path_gen2read_fifo_out_1,input_path_gen2read_fifo_out_0,
input_path_gen1read_fifo_out_3,input_path_gen1read_fifo_out_2,input_path_gen1read_fifo_out_1,input_path_gen1read_fifo_out_0,input_path_gen0read_fifo_out_3,input_path_gen0read_fifo_out_2,input_path_gen0read_fifo_out_1,input_path_gen0read_fifo_out_0}),
	.lfifo_rdata_valid(lfifo_rdata_valid),
	.dll_delayctrl_in({dll_delayctrl_6,dll_delayctrl_5,dll_delayctrl_4,dll_delayctrl_3,dll_delayctrl_2,dll_delayctrl_1,dll_delayctrl_0}),
	.GND_port(GND_port));

endmodule

module HPS_altdq_dqs2_acv_connect_to_hard_phy_cyclonev (
	dqsin,
	pad_gen0raw_input,
	pad_gen1raw_input,
	pad_gen2raw_input,
	pad_gen3raw_input,
	pad_gen4raw_input,
	pad_gen5raw_input,
	pad_gen6raw_input,
	pad_gen7raw_input,
	config_clock_in,
	hr_clock_in,
	write_strobe_clock_in,
	fr_clock_in,
	extra_output_pad_gen0delayed_data_out,
	extra_write_data_in,
	write_data_in,
	write_oe_in,
	write_strobe,
	lfifo_reset_n,
	vfifo_reset_n,
	lfifo_rdata_en_full,
	vfifo_qvld,
	rfifo_reset_n,
	lfifo_rdata_en,
	vfifo_inc_wr_ptr,
	oct_ena_in,
	lfifo_rd_latency,
	output_strobe_ena,
	pad_gen0delayed_data_out,
	pad_gen0delayed_oe_1,
	delayed_oct,
	pad_gen1delayed_data_out,
	pad_gen1delayed_oe_1,
	pad_gen2delayed_data_out,
	pad_gen2delayed_oe_1,
	pad_gen3delayed_data_out,
	pad_gen3delayed_oe_1,
	pad_gen4delayed_data_out,
	pad_gen4delayed_oe_1,
	pad_gen5delayed_data_out,
	pad_gen5delayed_oe_1,
	pad_gen6delayed_data_out,
	pad_gen6delayed_oe_1,
	pad_gen7delayed_data_out,
	pad_gen7delayed_oe_1,
	os,
	os_bar,
	diff_oe,
	diff_oe_bar,
	diff_dtc,
	diff_dtc_bar,
	read_data_out,
	lfifo_rdata_valid,
	dll_delayctrl_in,
	GND_port)/* synthesis synthesis_greybox=0 */;
input 	dqsin;
input 	pad_gen0raw_input;
input 	pad_gen1raw_input;
input 	pad_gen2raw_input;
input 	pad_gen3raw_input;
input 	pad_gen4raw_input;
input 	pad_gen5raw_input;
input 	pad_gen6raw_input;
input 	pad_gen7raw_input;
input 	config_clock_in;
input 	hr_clock_in;
input 	write_strobe_clock_in;
input 	fr_clock_in;
output 	extra_output_pad_gen0delayed_data_out;
input 	[3:0] extra_write_data_in;
input 	[31:0] write_data_in;
input 	[15:0] write_oe_in;
input 	[3:0] write_strobe;
input 	lfifo_reset_n;
input 	vfifo_reset_n;
input 	[1:0] lfifo_rdata_en_full;
input 	[1:0] vfifo_qvld;
input 	rfifo_reset_n;
input 	[1:0] lfifo_rdata_en;
input 	[1:0] vfifo_inc_wr_ptr;
input 	[1:0] oct_ena_in;
input 	[4:0] lfifo_rd_latency;
input 	[1:0] output_strobe_ena;
output 	pad_gen0delayed_data_out;
output 	pad_gen0delayed_oe_1;
output 	delayed_oct;
output 	pad_gen1delayed_data_out;
output 	pad_gen1delayed_oe_1;
output 	pad_gen2delayed_data_out;
output 	pad_gen2delayed_oe_1;
output 	pad_gen3delayed_data_out;
output 	pad_gen3delayed_oe_1;
output 	pad_gen4delayed_data_out;
output 	pad_gen4delayed_oe_1;
output 	pad_gen5delayed_data_out;
output 	pad_gen5delayed_oe_1;
output 	pad_gen6delayed_data_out;
output 	pad_gen6delayed_oe_1;
output 	pad_gen7delayed_data_out;
output 	pad_gen7delayed_oe_1;
output 	os;
output 	os_bar;
output 	diff_oe;
output 	diff_oe_bar;
output 	diff_dtc;
output 	diff_dtc_bar;
output 	[31:0] read_data_out;
output 	lfifo_rdata_valid;
input 	[6:0] dll_delayctrl_in;
input 	GND_port;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \extra_output_pad_gen[0].config_1~dataout ;
wire \input_path_gen[0].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[1].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[2].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[3].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[4].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[5].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[6].read_fifo~O_LVDSMODEEN ;
wire \input_path_gen[7].read_fifo~O_LVDSMODEEN ;
wire \pad_gen[0].config_1~dataout ;
wire \dqs_config_gen[0].dqs_config_inst~dataout ;
wire \pad_gen[1].config_1~dataout ;
wire \pad_gen[2].config_1~dataout ;
wire \pad_gen[3].config_1~dataout ;
wire \pad_gen[4].config_1~dataout ;
wire \pad_gen[5].config_1~dataout ;
wire \pad_gen[6].config_1~dataout ;
wire \pad_gen[7].config_1~dataout ;
wire \leveled_dq_clocks[1] ;
wire \leveled_dq_clocks[2] ;
wire \leveled_dq_clocks[3] ;
wire \dqs_io_config_1~dataout ;
wire \leveled_hr_clocks[1] ;
wire \leveled_hr_clocks[2] ;
wire \leveled_hr_clocks[3] ;
wire lfifo_rden;
wire lfifo_oct;
wire \leveled_hr_clocks[0] ;
wire hr_seq_clock;
wire \extra_output_pad_gen[0].extra_outputhalfratebypass ;
wire \extra_output_pad_gen[0].fr_data_lo ;
wire \extra_output_pad_gen[0].fr_data_hi ;
wire \leveled_dq_clocks[0] ;
wire dq_shifted_clock;
wire \extra_output_pad_gen[0].aligned_data ;
wire \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[0] ;
wire \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[1] ;
wire \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[2] ;
wire \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[3] ;
wire \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[4] ;
wire \dq_outputhalfratebypass[0] ;
wire \output_path_gen[0].fr_data_lo ;
wire \output_path_gen[0].fr_data_hi ;
wire \pad_gen[0].predelayed_data ;
wire \pad_gen[0].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[0].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[0].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[0].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[0].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[0].fr_oe ;
wire \output_path_gen[0].oe_reg~q ;
wire \pad_gen[0].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[0].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[0].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[0].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[0].dq_outputenabledelaysetting_dlc[4] ;
wire \dqshalfratebypass[0] ;
wire fr_os_oct;
wire \leveled_dqs_clocks[0] ;
wire dqs_shifted_clock;
wire predelayed_os_oct;
wire \octdelaysetting1_dlc[0][0] ;
wire \octdelaysetting1_dlc[0][1] ;
wire \octdelaysetting1_dlc[0][2] ;
wire \octdelaysetting1_dlc[0][3] ;
wire \octdelaysetting1_dlc[0][4] ;
wire \dq_outputhalfratebypass[1] ;
wire \output_path_gen[1].fr_data_lo ;
wire \output_path_gen[1].fr_data_hi ;
wire \pad_gen[1].predelayed_data ;
wire \pad_gen[1].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[1].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[1].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[1].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[1].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[1].fr_oe ;
wire \output_path_gen[1].oe_reg~q ;
wire \pad_gen[1].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[1].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[1].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[1].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[1].dq_outputenabledelaysetting_dlc[4] ;
wire \dq_outputhalfratebypass[2] ;
wire \output_path_gen[2].fr_data_lo ;
wire \output_path_gen[2].fr_data_hi ;
wire \pad_gen[2].predelayed_data ;
wire \pad_gen[2].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[2].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[2].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[2].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[2].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[2].fr_oe ;
wire \output_path_gen[2].oe_reg~q ;
wire \pad_gen[2].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[2].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[2].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[2].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[2].dq_outputenabledelaysetting_dlc[4] ;
wire \dq_outputhalfratebypass[3] ;
wire \output_path_gen[3].fr_data_lo ;
wire \output_path_gen[3].fr_data_hi ;
wire \pad_gen[3].predelayed_data ;
wire \pad_gen[3].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[3].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[3].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[3].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[3].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[3].fr_oe ;
wire \output_path_gen[3].oe_reg~q ;
wire \pad_gen[3].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[3].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[3].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[3].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[3].dq_outputenabledelaysetting_dlc[4] ;
wire \dq_outputhalfratebypass[4] ;
wire \output_path_gen[4].fr_data_lo ;
wire \output_path_gen[4].fr_data_hi ;
wire \pad_gen[4].predelayed_data ;
wire \pad_gen[4].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[4].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[4].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[4].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[4].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[4].fr_oe ;
wire \output_path_gen[4].oe_reg~q ;
wire \pad_gen[4].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[4].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[4].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[4].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[4].dq_outputenabledelaysetting_dlc[4] ;
wire \dq_outputhalfratebypass[5] ;
wire \output_path_gen[5].fr_data_lo ;
wire \output_path_gen[5].fr_data_hi ;
wire \pad_gen[5].predelayed_data ;
wire \pad_gen[5].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[5].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[5].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[5].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[5].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[5].fr_oe ;
wire \output_path_gen[5].oe_reg~q ;
wire \pad_gen[5].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[5].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[5].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[5].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[5].dq_outputenabledelaysetting_dlc[4] ;
wire \dq_outputhalfratebypass[6] ;
wire \output_path_gen[6].fr_data_lo ;
wire \output_path_gen[6].fr_data_hi ;
wire \pad_gen[6].predelayed_data ;
wire \pad_gen[6].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[6].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[6].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[6].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[6].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[6].fr_oe ;
wire \output_path_gen[6].oe_reg~q ;
wire \pad_gen[6].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[6].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[6].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[6].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[6].dq_outputenabledelaysetting_dlc[4] ;
wire \dq_outputhalfratebypass[7] ;
wire \output_path_gen[7].fr_data_lo ;
wire \output_path_gen[7].fr_data_hi ;
wire \pad_gen[7].predelayed_data ;
wire \pad_gen[7].dq_outputdelaysetting_dlc[0] ;
wire \pad_gen[7].dq_outputdelaysetting_dlc[1] ;
wire \pad_gen[7].dq_outputdelaysetting_dlc[2] ;
wire \pad_gen[7].dq_outputdelaysetting_dlc[3] ;
wire \pad_gen[7].dq_outputdelaysetting_dlc[4] ;
wire \output_path_gen[7].fr_oe ;
wire \output_path_gen[7].oe_reg~q ;
wire \pad_gen[7].dq_outputenabledelaysetting_dlc[0] ;
wire \pad_gen[7].dq_outputenabledelaysetting_dlc[1] ;
wire \pad_gen[7].dq_outputenabledelaysetting_dlc[2] ;
wire \pad_gen[7].dq_outputenabledelaysetting_dlc[3] ;
wire \pad_gen[7].dq_outputenabledelaysetting_dlc[4] ;
wire fr_os_lo;
wire fr_os_hi;
wire predelayed_os;
wire \dqs_outputdelaysetting_dlc[0] ;
wire \dqs_outputdelaysetting_dlc[1] ;
wire \dqs_outputdelaysetting_dlc[2] ;
wire \dqs_outputdelaysetting_dlc[3] ;
wire \dqs_outputdelaysetting_dlc[4] ;
wire os_delayed2;
wire fr_os_oe;
wire \os_oe_reg~q ;
wire \dqs_outputenabledelaysetting_dlc[0] ;
wire \dqs_outputenabledelaysetting_dlc[1] ;
wire \dqs_outputenabledelaysetting_dlc[2] ;
wire \dqs_outputenabledelaysetting_dlc[3] ;
wire \dqs_outputenabledelaysetting_dlc[4] ;
wire delayed_os_oe;
wire \rfifo_clock_select[0] ;
wire \rfifo_clock_select[1] ;
wire \input_path_gen[0].rfifo_rd_clk ;
wire vfifo_inc_wr_ptr_fr;
wire vfifo_qvld_fr;
wire ena_zero_phase_clock;
wire dqs_pre_delayed;
wire \enadqsenablephasetransferreg[0] ;
wire \dqsenablectrlphaseinvert[0] ;
wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;
wire \dqsenablectrlphasesetting[0][0] ;
wire \dqsenablectrlphasesetting[0][1] ;
wire ena_clock;
wire dqs_enable_shifted;
wire \dqsenabledelaysetting_dlc[0][0] ;
wire \dqsenabledelaysetting_dlc[0][1] ;
wire \dqsenabledelaysetting_dlc[0][2] ;
wire \dqsenabledelaysetting_dlc[0][3] ;
wire \dqsenabledelaysetting_dlc[0][4] ;
wire dqs_enable_int;
wire \dqsdisabledelaysetting_dlc[0][0] ;
wire \dqsdisabledelaysetting_dlc[0][1] ;
wire \dqsdisabledelaysetting_dlc[0][2] ;
wire \dqsdisabledelaysetting_dlc[0][3] ;
wire \dqsdisabledelaysetting_dlc[0][4] ;
wire dqs_disable_int;
wire dqs_shifted;
wire \dqsbusoutdelaysetting_dlc[0][0] ;
wire \dqsbusoutdelaysetting_dlc[0][1] ;
wire \dqsbusoutdelaysetting_dlc[0][2] ;
wire \dqsbusoutdelaysetting_dlc[0][3] ;
wire \dqsbusoutdelaysetting_dlc[0][4] ;
wire dqsbusout;
wire \pad_gen[0].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[0].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[0].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[0].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[0].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[0] ;
wire \input_path_gen[0].aligned_input[0] ;
wire \input_path_gen[0].aligned_input[1] ;
wire \rfifo_mode[0] ;
wire \rfifo_mode[1] ;
wire \rfifo_mode[2] ;
wire \rfifo_clock_select[2] ;
wire \rfifo_clock_select[3] ;
wire \input_path_gen[1].rfifo_rd_clk ;
wire \pad_gen[1].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[1].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[1].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[1].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[1].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[1] ;
wire \input_path_gen[1].aligned_input[0] ;
wire \input_path_gen[1].aligned_input[1] ;
wire \rfifo_mode[3] ;
wire \rfifo_mode[4] ;
wire \rfifo_mode[5] ;
wire \rfifo_clock_select[4] ;
wire \rfifo_clock_select[5] ;
wire \input_path_gen[2].rfifo_rd_clk ;
wire \pad_gen[2].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[2].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[2].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[2].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[2].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[2] ;
wire \input_path_gen[2].aligned_input[0] ;
wire \input_path_gen[2].aligned_input[1] ;
wire \rfifo_mode[6] ;
wire \rfifo_mode[7] ;
wire \rfifo_mode[8] ;
wire \rfifo_clock_select[6] ;
wire \rfifo_clock_select[7] ;
wire \input_path_gen[3].rfifo_rd_clk ;
wire \pad_gen[3].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[3].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[3].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[3].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[3].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[3] ;
wire \input_path_gen[3].aligned_input[0] ;
wire \input_path_gen[3].aligned_input[1] ;
wire \rfifo_mode[9] ;
wire \rfifo_mode[10] ;
wire \rfifo_mode[11] ;
wire \rfifo_clock_select[8] ;
wire \rfifo_clock_select[9] ;
wire \input_path_gen[4].rfifo_rd_clk ;
wire \pad_gen[4].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[4].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[4].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[4].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[4].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[4] ;
wire \input_path_gen[4].aligned_input[0] ;
wire \input_path_gen[4].aligned_input[1] ;
wire \rfifo_mode[12] ;
wire \rfifo_mode[13] ;
wire \rfifo_mode[14] ;
wire \rfifo_clock_select[10] ;
wire \rfifo_clock_select[11] ;
wire \input_path_gen[5].rfifo_rd_clk ;
wire \pad_gen[5].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[5].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[5].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[5].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[5].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[5] ;
wire \input_path_gen[5].aligned_input[0] ;
wire \input_path_gen[5].aligned_input[1] ;
wire \rfifo_mode[15] ;
wire \rfifo_mode[16] ;
wire \rfifo_mode[17] ;
wire \rfifo_clock_select[12] ;
wire \rfifo_clock_select[13] ;
wire \input_path_gen[6].rfifo_rd_clk ;
wire \pad_gen[6].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[6].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[6].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[6].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[6].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[6] ;
wire \input_path_gen[6].aligned_input[0] ;
wire \input_path_gen[6].aligned_input[1] ;
wire \rfifo_mode[18] ;
wire \rfifo_mode[19] ;
wire \rfifo_mode[20] ;
wire \rfifo_clock_select[14] ;
wire \rfifo_clock_select[15] ;
wire \input_path_gen[7].rfifo_rd_clk ;
wire \pad_gen[7].dq_inputdelaysetting_dlc[0] ;
wire \pad_gen[7].dq_inputdelaysetting_dlc[1] ;
wire \pad_gen[7].dq_inputdelaysetting_dlc[2] ;
wire \pad_gen[7].dq_inputdelaysetting_dlc[3] ;
wire \pad_gen[7].dq_inputdelaysetting_dlc[4] ;
wire \ddr_data[7] ;
wire \input_path_gen[7].aligned_input[0] ;
wire \input_path_gen[7].aligned_input[1] ;
wire \rfifo_mode[21] ;
wire \rfifo_mode[22] ;
wire \rfifo_mode[23] ;
wire lfifo_rdata_en_fr;
wire lfifo_rdata_en_full_fr;

wire [4:0] \extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [3:0] \input_path_gen[0].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[1].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[2].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[3].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[4].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[5].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[6].read_fifo_DOUT_bus ;
wire [3:0] \input_path_gen[7].read_fifo_DOUT_bus ;
wire [4:0] \pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[0].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[0].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus ;
wire [1:0] \dqs_config_gen[0].dqs_config_inst_POSTAMBLEPHASESETTING_bus ;
wire [4:0] \dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus ;
wire [4:0] \dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus ;
wire [4:0] \dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus ;
wire [4:0] \pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[1].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[1].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[2].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[2].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[3].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[3].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[4].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[4].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[5].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[5].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[6].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[6].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [4:0] \pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ;
wire [2:0] \pad_gen[7].config_1_READFIFOMODE_bus ;
wire [4:0] \pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus ;
wire [4:0] \pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus ;
wire [1:0] \pad_gen[7].config_1_READFIFOREADCLOCKSELECT_bus ;
wire [3:0] leveling_delay_chain_dq_CLKOUT_bus;
wire [4:0] dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus;
wire [4:0] dqs_io_config_1_OUTPUTREGDELAYSETTING_bus;
wire [3:0] leveling_delay_chain_hr_CLKOUT_bus;
wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;

assign \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[0]  = \extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[1]  = \extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[2]  = \extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[3]  = \extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[4]  = \extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign read_data_out[0] = \input_path_gen[0].read_fifo_DOUT_bus [0];
assign read_data_out[1] = \input_path_gen[0].read_fifo_DOUT_bus [1];
assign read_data_out[2] = \input_path_gen[0].read_fifo_DOUT_bus [2];
assign read_data_out[3] = \input_path_gen[0].read_fifo_DOUT_bus [3];

assign read_data_out[4] = \input_path_gen[1].read_fifo_DOUT_bus [0];
assign read_data_out[5] = \input_path_gen[1].read_fifo_DOUT_bus [1];
assign read_data_out[6] = \input_path_gen[1].read_fifo_DOUT_bus [2];
assign read_data_out[7] = \input_path_gen[1].read_fifo_DOUT_bus [3];

assign read_data_out[8] = \input_path_gen[2].read_fifo_DOUT_bus [0];
assign read_data_out[9] = \input_path_gen[2].read_fifo_DOUT_bus [1];
assign read_data_out[10] = \input_path_gen[2].read_fifo_DOUT_bus [2];
assign read_data_out[11] = \input_path_gen[2].read_fifo_DOUT_bus [3];

assign read_data_out[12] = \input_path_gen[3].read_fifo_DOUT_bus [0];
assign read_data_out[13] = \input_path_gen[3].read_fifo_DOUT_bus [1];
assign read_data_out[14] = \input_path_gen[3].read_fifo_DOUT_bus [2];
assign read_data_out[15] = \input_path_gen[3].read_fifo_DOUT_bus [3];

assign read_data_out[16] = \input_path_gen[4].read_fifo_DOUT_bus [0];
assign read_data_out[17] = \input_path_gen[4].read_fifo_DOUT_bus [1];
assign read_data_out[18] = \input_path_gen[4].read_fifo_DOUT_bus [2];
assign read_data_out[19] = \input_path_gen[4].read_fifo_DOUT_bus [3];

assign read_data_out[20] = \input_path_gen[5].read_fifo_DOUT_bus [0];
assign read_data_out[21] = \input_path_gen[5].read_fifo_DOUT_bus [1];
assign read_data_out[22] = \input_path_gen[5].read_fifo_DOUT_bus [2];
assign read_data_out[23] = \input_path_gen[5].read_fifo_DOUT_bus [3];

assign read_data_out[24] = \input_path_gen[6].read_fifo_DOUT_bus [0];
assign read_data_out[25] = \input_path_gen[6].read_fifo_DOUT_bus [1];
assign read_data_out[26] = \input_path_gen[6].read_fifo_DOUT_bus [2];
assign read_data_out[27] = \input_path_gen[6].read_fifo_DOUT_bus [3];

assign read_data_out[28] = \input_path_gen[7].read_fifo_DOUT_bus [0];
assign read_data_out[29] = \input_path_gen[7].read_fifo_DOUT_bus [1];
assign read_data_out[30] = \input_path_gen[7].read_fifo_DOUT_bus [2];
assign read_data_out[31] = \input_path_gen[7].read_fifo_DOUT_bus [3];

assign \pad_gen[0].dq_inputdelaysetting_dlc[0]  = \pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[0].dq_inputdelaysetting_dlc[1]  = \pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[0].dq_inputdelaysetting_dlc[2]  = \pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[0].dq_inputdelaysetting_dlc[3]  = \pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[0].dq_inputdelaysetting_dlc[4]  = \pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[0]  = \pad_gen[0].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[1]  = \pad_gen[0].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[2]  = \pad_gen[0].config_1_READFIFOMODE_bus [2];

assign \pad_gen[0].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[0].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[0].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[0].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[0].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[0].dq_outputdelaysetting_dlc[0]  = \pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[0].dq_outputdelaysetting_dlc[1]  = \pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[0].dq_outputdelaysetting_dlc[2]  = \pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[0].dq_outputdelaysetting_dlc[3]  = \pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[0].dq_outputdelaysetting_dlc[4]  = \pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[0]  = \pad_gen[0].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[1]  = \pad_gen[0].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \dqsbusoutdelaysetting_dlc[0][0]  = \dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus [0];
assign \dqsbusoutdelaysetting_dlc[0][1]  = \dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus [1];
assign \dqsbusoutdelaysetting_dlc[0][2]  = \dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus [2];
assign \dqsbusoutdelaysetting_dlc[0][3]  = \dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus [3];
assign \dqsbusoutdelaysetting_dlc[0][4]  = \dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus [4];

assign \dqsenablectrlphasesetting[0][0]  = \dqs_config_gen[0].dqs_config_inst_POSTAMBLEPHASESETTING_bus [0];
assign \dqsenablectrlphasesetting[0][1]  = \dqs_config_gen[0].dqs_config_inst_POSTAMBLEPHASESETTING_bus [1];

assign \octdelaysetting1_dlc[0][0]  = \dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus [0];
assign \octdelaysetting1_dlc[0][1]  = \dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus [1];
assign \octdelaysetting1_dlc[0][2]  = \dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus [2];
assign \octdelaysetting1_dlc[0][3]  = \dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus [3];
assign \octdelaysetting1_dlc[0][4]  = \dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus [4];

assign \dqsenabledelaysetting_dlc[0][0]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus [0];
assign \dqsenabledelaysetting_dlc[0][1]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus [1];
assign \dqsenabledelaysetting_dlc[0][2]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus [2];
assign \dqsenabledelaysetting_dlc[0][3]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus [3];
assign \dqsenabledelaysetting_dlc[0][4]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus [4];

assign \dqsdisabledelaysetting_dlc[0][0]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus [0];
assign \dqsdisabledelaysetting_dlc[0][1]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus [1];
assign \dqsdisabledelaysetting_dlc[0][2]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus [2];
assign \dqsdisabledelaysetting_dlc[0][3]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus [3];
assign \dqsdisabledelaysetting_dlc[0][4]  = \dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus [4];

assign \pad_gen[1].dq_inputdelaysetting_dlc[0]  = \pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[1].dq_inputdelaysetting_dlc[1]  = \pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[1].dq_inputdelaysetting_dlc[2]  = \pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[1].dq_inputdelaysetting_dlc[3]  = \pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[1].dq_inputdelaysetting_dlc[4]  = \pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[3]  = \pad_gen[1].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[4]  = \pad_gen[1].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[5]  = \pad_gen[1].config_1_READFIFOMODE_bus [2];

assign \pad_gen[1].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[1].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[1].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[1].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[1].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[1].dq_outputdelaysetting_dlc[0]  = \pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[1].dq_outputdelaysetting_dlc[1]  = \pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[1].dq_outputdelaysetting_dlc[2]  = \pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[1].dq_outputdelaysetting_dlc[3]  = \pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[1].dq_outputdelaysetting_dlc[4]  = \pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[2]  = \pad_gen[1].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[3]  = \pad_gen[1].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \pad_gen[2].dq_inputdelaysetting_dlc[0]  = \pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[2].dq_inputdelaysetting_dlc[1]  = \pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[2].dq_inputdelaysetting_dlc[2]  = \pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[2].dq_inputdelaysetting_dlc[3]  = \pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[2].dq_inputdelaysetting_dlc[4]  = \pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[6]  = \pad_gen[2].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[7]  = \pad_gen[2].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[8]  = \pad_gen[2].config_1_READFIFOMODE_bus [2];

assign \pad_gen[2].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[2].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[2].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[2].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[2].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[2].dq_outputdelaysetting_dlc[0]  = \pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[2].dq_outputdelaysetting_dlc[1]  = \pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[2].dq_outputdelaysetting_dlc[2]  = \pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[2].dq_outputdelaysetting_dlc[3]  = \pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[2].dq_outputdelaysetting_dlc[4]  = \pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[4]  = \pad_gen[2].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[5]  = \pad_gen[2].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \pad_gen[3].dq_inputdelaysetting_dlc[0]  = \pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[3].dq_inputdelaysetting_dlc[1]  = \pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[3].dq_inputdelaysetting_dlc[2]  = \pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[3].dq_inputdelaysetting_dlc[3]  = \pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[3].dq_inputdelaysetting_dlc[4]  = \pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[9]  = \pad_gen[3].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[10]  = \pad_gen[3].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[11]  = \pad_gen[3].config_1_READFIFOMODE_bus [2];

assign \pad_gen[3].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[3].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[3].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[3].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[3].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[3].dq_outputdelaysetting_dlc[0]  = \pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[3].dq_outputdelaysetting_dlc[1]  = \pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[3].dq_outputdelaysetting_dlc[2]  = \pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[3].dq_outputdelaysetting_dlc[3]  = \pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[3].dq_outputdelaysetting_dlc[4]  = \pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[6]  = \pad_gen[3].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[7]  = \pad_gen[3].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \pad_gen[4].dq_inputdelaysetting_dlc[0]  = \pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[4].dq_inputdelaysetting_dlc[1]  = \pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[4].dq_inputdelaysetting_dlc[2]  = \pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[4].dq_inputdelaysetting_dlc[3]  = \pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[4].dq_inputdelaysetting_dlc[4]  = \pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[12]  = \pad_gen[4].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[13]  = \pad_gen[4].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[14]  = \pad_gen[4].config_1_READFIFOMODE_bus [2];

assign \pad_gen[4].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[4].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[4].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[4].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[4].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[4].dq_outputdelaysetting_dlc[0]  = \pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[4].dq_outputdelaysetting_dlc[1]  = \pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[4].dq_outputdelaysetting_dlc[2]  = \pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[4].dq_outputdelaysetting_dlc[3]  = \pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[4].dq_outputdelaysetting_dlc[4]  = \pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[8]  = \pad_gen[4].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[9]  = \pad_gen[4].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \pad_gen[5].dq_inputdelaysetting_dlc[0]  = \pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[5].dq_inputdelaysetting_dlc[1]  = \pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[5].dq_inputdelaysetting_dlc[2]  = \pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[5].dq_inputdelaysetting_dlc[3]  = \pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[5].dq_inputdelaysetting_dlc[4]  = \pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[15]  = \pad_gen[5].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[16]  = \pad_gen[5].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[17]  = \pad_gen[5].config_1_READFIFOMODE_bus [2];

assign \pad_gen[5].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[5].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[5].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[5].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[5].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[5].dq_outputdelaysetting_dlc[0]  = \pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[5].dq_outputdelaysetting_dlc[1]  = \pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[5].dq_outputdelaysetting_dlc[2]  = \pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[5].dq_outputdelaysetting_dlc[3]  = \pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[5].dq_outputdelaysetting_dlc[4]  = \pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[10]  = \pad_gen[5].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[11]  = \pad_gen[5].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \pad_gen[6].dq_inputdelaysetting_dlc[0]  = \pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[6].dq_inputdelaysetting_dlc[1]  = \pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[6].dq_inputdelaysetting_dlc[2]  = \pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[6].dq_inputdelaysetting_dlc[3]  = \pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[6].dq_inputdelaysetting_dlc[4]  = \pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[18]  = \pad_gen[6].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[19]  = \pad_gen[6].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[20]  = \pad_gen[6].config_1_READFIFOMODE_bus [2];

assign \pad_gen[6].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[6].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[6].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[6].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[6].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[6].dq_outputdelaysetting_dlc[0]  = \pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[6].dq_outputdelaysetting_dlc[1]  = \pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[6].dq_outputdelaysetting_dlc[2]  = \pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[6].dq_outputdelaysetting_dlc[3]  = \pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[6].dq_outputdelaysetting_dlc[4]  = \pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[12]  = \pad_gen[6].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[13]  = \pad_gen[6].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \pad_gen[7].dq_inputdelaysetting_dlc[0]  = \pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [0];
assign \pad_gen[7].dq_inputdelaysetting_dlc[1]  = \pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [1];
assign \pad_gen[7].dq_inputdelaysetting_dlc[2]  = \pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [2];
assign \pad_gen[7].dq_inputdelaysetting_dlc[3]  = \pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [3];
assign \pad_gen[7].dq_inputdelaysetting_dlc[4]  = \pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus [4];

assign \rfifo_mode[21]  = \pad_gen[7].config_1_READFIFOMODE_bus [0];
assign \rfifo_mode[22]  = \pad_gen[7].config_1_READFIFOMODE_bus [1];
assign \rfifo_mode[23]  = \pad_gen[7].config_1_READFIFOMODE_bus [2];

assign \pad_gen[7].dq_outputenabledelaysetting_dlc[0]  = \pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus [0];
assign \pad_gen[7].dq_outputenabledelaysetting_dlc[1]  = \pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus [1];
assign \pad_gen[7].dq_outputenabledelaysetting_dlc[2]  = \pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus [2];
assign \pad_gen[7].dq_outputenabledelaysetting_dlc[3]  = \pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus [3];
assign \pad_gen[7].dq_outputenabledelaysetting_dlc[4]  = \pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus [4];

assign \pad_gen[7].dq_outputdelaysetting_dlc[0]  = \pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus [0];
assign \pad_gen[7].dq_outputdelaysetting_dlc[1]  = \pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus [1];
assign \pad_gen[7].dq_outputdelaysetting_dlc[2]  = \pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus [2];
assign \pad_gen[7].dq_outputdelaysetting_dlc[3]  = \pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus [3];
assign \pad_gen[7].dq_outputdelaysetting_dlc[4]  = \pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus [4];

assign \rfifo_clock_select[14]  = \pad_gen[7].config_1_READFIFOREADCLOCKSELECT_bus [0];
assign \rfifo_clock_select[15]  = \pad_gen[7].config_1_READFIFOREADCLOCKSELECT_bus [1];

assign \leveled_dq_clocks[0]  = leveling_delay_chain_dq_CLKOUT_bus[0];
assign \leveled_dq_clocks[1]  = leveling_delay_chain_dq_CLKOUT_bus[1];
assign \leveled_dq_clocks[2]  = leveling_delay_chain_dq_CLKOUT_bus[2];
assign \leveled_dq_clocks[3]  = leveling_delay_chain_dq_CLKOUT_bus[3];

assign \dqs_outputenabledelaysetting_dlc[0]  = dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus[0];
assign \dqs_outputenabledelaysetting_dlc[1]  = dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus[1];
assign \dqs_outputenabledelaysetting_dlc[2]  = dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus[2];
assign \dqs_outputenabledelaysetting_dlc[3]  = dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus[3];
assign \dqs_outputenabledelaysetting_dlc[4]  = dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus[4];

assign \dqs_outputdelaysetting_dlc[0]  = dqs_io_config_1_OUTPUTREGDELAYSETTING_bus[0];
assign \dqs_outputdelaysetting_dlc[1]  = dqs_io_config_1_OUTPUTREGDELAYSETTING_bus[1];
assign \dqs_outputdelaysetting_dlc[2]  = dqs_io_config_1_OUTPUTREGDELAYSETTING_bus[2];
assign \dqs_outputdelaysetting_dlc[3]  = dqs_io_config_1_OUTPUTREGDELAYSETTING_bus[3];
assign \dqs_outputdelaysetting_dlc[4]  = dqs_io_config_1_OUTPUTREGDELAYSETTING_bus[4];

assign \leveled_hr_clocks[0]  = leveling_delay_chain_hr_CLKOUT_bus[0];
assign \leveled_hr_clocks[1]  = leveling_delay_chain_hr_CLKOUT_bus[1];
assign \leveled_hr_clocks[2]  = leveling_delay_chain_hr_CLKOUT_bus[2];
assign \leveled_hr_clocks[3]  = leveling_delay_chain_hr_CLKOUT_bus[3];

assign \leveled_dqs_clocks[0]  = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

cyclonev_delay_chain \extra_output_pad_gen[0].out_delay_1 (
	.datain(\extra_output_pad_gen[0].aligned_data ),
	.delayctrlin({\extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[4] ,\extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[3] ,\extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[2] ,\extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[1] ,
\extra_output_pad_gen[0].dq_outputdelaysetting1_dlc[0] }),
	.dataout(extra_output_pad_gen0delayed_data_out));
defparam \extra_output_pad_gen[0].out_delay_1 .sim_falling_delay_increment = 10;
defparam \extra_output_pad_gen[0].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \extra_output_pad_gen[0].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \extra_output_pad_gen[0].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[0].out_delay_1 (
	.datain(\pad_gen[0].predelayed_data ),
	.delayctrlin({\pad_gen[0].dq_outputdelaysetting_dlc[4] ,\pad_gen[0].dq_outputdelaysetting_dlc[3] ,\pad_gen[0].dq_outputdelaysetting_dlc[2] ,\pad_gen[0].dq_outputdelaysetting_dlc[1] ,\pad_gen[0].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen0delayed_data_out));
defparam \pad_gen[0].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[0].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[0].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[0].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[0].oe_delay_1 (
	.datain(\output_path_gen[0].oe_reg~q ),
	.delayctrlin({\pad_gen[0].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[0].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[0].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[0].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[0].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen0delayed_oe_1));
defparam \pad_gen[0].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[0].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[0].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[0].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain oct_delay(
	.datain(predelayed_os_oct),
	.delayctrlin({\octdelaysetting1_dlc[0][4] ,\octdelaysetting1_dlc[0][3] ,\octdelaysetting1_dlc[0][2] ,\octdelaysetting1_dlc[0][1] ,\octdelaysetting1_dlc[0][0] }),
	.dataout(delayed_oct));
defparam oct_delay.sim_falling_delay_increment = 10;
defparam oct_delay.sim_intrinsic_falling_delay = 0;
defparam oct_delay.sim_intrinsic_rising_delay = 0;
defparam oct_delay.sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[1].out_delay_1 (
	.datain(\pad_gen[1].predelayed_data ),
	.delayctrlin({\pad_gen[1].dq_outputdelaysetting_dlc[4] ,\pad_gen[1].dq_outputdelaysetting_dlc[3] ,\pad_gen[1].dq_outputdelaysetting_dlc[2] ,\pad_gen[1].dq_outputdelaysetting_dlc[1] ,\pad_gen[1].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen1delayed_data_out));
defparam \pad_gen[1].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[1].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[1].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[1].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[1].oe_delay_1 (
	.datain(\output_path_gen[1].oe_reg~q ),
	.delayctrlin({\pad_gen[1].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[1].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[1].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[1].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[1].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen1delayed_oe_1));
defparam \pad_gen[1].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[1].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[1].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[1].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[2].out_delay_1 (
	.datain(\pad_gen[2].predelayed_data ),
	.delayctrlin({\pad_gen[2].dq_outputdelaysetting_dlc[4] ,\pad_gen[2].dq_outputdelaysetting_dlc[3] ,\pad_gen[2].dq_outputdelaysetting_dlc[2] ,\pad_gen[2].dq_outputdelaysetting_dlc[1] ,\pad_gen[2].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen2delayed_data_out));
defparam \pad_gen[2].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[2].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[2].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[2].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[2].oe_delay_1 (
	.datain(\output_path_gen[2].oe_reg~q ),
	.delayctrlin({\pad_gen[2].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[2].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[2].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[2].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[2].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen2delayed_oe_1));
defparam \pad_gen[2].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[2].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[2].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[2].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[3].out_delay_1 (
	.datain(\pad_gen[3].predelayed_data ),
	.delayctrlin({\pad_gen[3].dq_outputdelaysetting_dlc[4] ,\pad_gen[3].dq_outputdelaysetting_dlc[3] ,\pad_gen[3].dq_outputdelaysetting_dlc[2] ,\pad_gen[3].dq_outputdelaysetting_dlc[1] ,\pad_gen[3].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen3delayed_data_out));
defparam \pad_gen[3].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[3].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[3].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[3].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[3].oe_delay_1 (
	.datain(\output_path_gen[3].oe_reg~q ),
	.delayctrlin({\pad_gen[3].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[3].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[3].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[3].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[3].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen3delayed_oe_1));
defparam \pad_gen[3].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[3].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[3].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[3].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[4].out_delay_1 (
	.datain(\pad_gen[4].predelayed_data ),
	.delayctrlin({\pad_gen[4].dq_outputdelaysetting_dlc[4] ,\pad_gen[4].dq_outputdelaysetting_dlc[3] ,\pad_gen[4].dq_outputdelaysetting_dlc[2] ,\pad_gen[4].dq_outputdelaysetting_dlc[1] ,\pad_gen[4].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen4delayed_data_out));
defparam \pad_gen[4].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[4].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[4].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[4].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[4].oe_delay_1 (
	.datain(\output_path_gen[4].oe_reg~q ),
	.delayctrlin({\pad_gen[4].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[4].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[4].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[4].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[4].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen4delayed_oe_1));
defparam \pad_gen[4].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[4].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[4].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[4].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[5].out_delay_1 (
	.datain(\pad_gen[5].predelayed_data ),
	.delayctrlin({\pad_gen[5].dq_outputdelaysetting_dlc[4] ,\pad_gen[5].dq_outputdelaysetting_dlc[3] ,\pad_gen[5].dq_outputdelaysetting_dlc[2] ,\pad_gen[5].dq_outputdelaysetting_dlc[1] ,\pad_gen[5].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen5delayed_data_out));
defparam \pad_gen[5].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[5].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[5].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[5].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[5].oe_delay_1 (
	.datain(\output_path_gen[5].oe_reg~q ),
	.delayctrlin({\pad_gen[5].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[5].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[5].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[5].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[5].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen5delayed_oe_1));
defparam \pad_gen[5].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[5].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[5].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[5].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[6].out_delay_1 (
	.datain(\pad_gen[6].predelayed_data ),
	.delayctrlin({\pad_gen[6].dq_outputdelaysetting_dlc[4] ,\pad_gen[6].dq_outputdelaysetting_dlc[3] ,\pad_gen[6].dq_outputdelaysetting_dlc[2] ,\pad_gen[6].dq_outputdelaysetting_dlc[1] ,\pad_gen[6].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen6delayed_data_out));
defparam \pad_gen[6].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[6].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[6].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[6].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[6].oe_delay_1 (
	.datain(\output_path_gen[6].oe_reg~q ),
	.delayctrlin({\pad_gen[6].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[6].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[6].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[6].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[6].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen6delayed_oe_1));
defparam \pad_gen[6].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[6].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[6].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[6].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[7].out_delay_1 (
	.datain(\pad_gen[7].predelayed_data ),
	.delayctrlin({\pad_gen[7].dq_outputdelaysetting_dlc[4] ,\pad_gen[7].dq_outputdelaysetting_dlc[3] ,\pad_gen[7].dq_outputdelaysetting_dlc[2] ,\pad_gen[7].dq_outputdelaysetting_dlc[1] ,\pad_gen[7].dq_outputdelaysetting_dlc[0] }),
	.dataout(pad_gen7delayed_data_out));
defparam \pad_gen[7].out_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[7].out_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[7].out_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[7].out_delay_1 .sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[7].oe_delay_1 (
	.datain(\output_path_gen[7].oe_reg~q ),
	.delayctrlin({\pad_gen[7].dq_outputenabledelaysetting_dlc[4] ,\pad_gen[7].dq_outputenabledelaysetting_dlc[3] ,\pad_gen[7].dq_outputenabledelaysetting_dlc[2] ,\pad_gen[7].dq_outputenabledelaysetting_dlc[1] ,\pad_gen[7].dq_outputenabledelaysetting_dlc[0] }),
	.dataout(pad_gen7delayed_oe_1));
defparam \pad_gen[7].oe_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[7].oe_delay_1 .sim_intrinsic_falling_delay = 0;
defparam \pad_gen[7].oe_delay_1 .sim_intrinsic_rising_delay = 0;
defparam \pad_gen[7].oe_delay_1 .sim_rising_delay_increment = 10;

cyclonev_pseudo_diff_out pseudo_diffa_0(
	.i(os_delayed2),
	.oein(delayed_os_oe),
	.dtcin(delayed_oct),
	.o(os),
	.obar(os_bar),
	.oeout(diff_oe),
	.oebout(diff_oe_bar),
	.dtc(diff_dtc),
	.dtcbar(diff_dtc_bar));

cyclonev_ir_fifo_userdes \input_path_gen[0].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[0].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[0].aligned_input[1] ,\input_path_gen[0].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[2] ,\rfifo_mode[1] ,\rfifo_mode[0] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[0].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[0].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[0].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[0].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[0].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[0].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[0].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[0].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[0].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[0].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[0].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[1].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[1].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[1].aligned_input[1] ,\input_path_gen[1].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[5] ,\rfifo_mode[4] ,\rfifo_mode[3] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[1].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[1].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[1].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[1].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[1].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[1].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[1].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[1].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[1].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[1].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[1].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[2].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[2].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[2].aligned_input[1] ,\input_path_gen[2].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[8] ,\rfifo_mode[7] ,\rfifo_mode[6] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[2].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[2].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[2].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[2].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[2].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[2].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[2].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[2].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[2].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[2].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[2].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[3].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[3].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[3].aligned_input[1] ,\input_path_gen[3].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[11] ,\rfifo_mode[10] ,\rfifo_mode[9] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[3].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[3].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[3].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[3].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[3].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[3].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[3].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[3].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[3].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[3].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[3].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[4].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[4].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[4].aligned_input[1] ,\input_path_gen[4].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[14] ,\rfifo_mode[13] ,\rfifo_mode[12] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[4].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[4].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[4].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[4].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[4].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[4].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[4].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[4].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[4].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[4].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[4].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[5].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[5].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[5].aligned_input[1] ,\input_path_gen[5].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[17] ,\rfifo_mode[16] ,\rfifo_mode[15] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[5].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[5].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[5].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[5].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[5].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[5].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[5].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[5].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[5].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[5].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[5].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[6].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[6].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[6].aligned_input[1] ,\input_path_gen[6].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[20] ,\rfifo_mode[19] ,\rfifo_mode[18] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[6].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[6].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[6].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[6].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[6].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[6].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[6].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[6].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[6].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[6].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[6].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_ir_fifo_userdes \input_path_gen[7].read_fifo (
	.bslipctl(gnd),
	.bslipin(gnd),
	.loaden(gnd),
	.readclk(\input_path_gen[7].rfifo_rd_clk ),
	.readenable(lfifo_rden),
	.regscan(gnd),
	.regscanovrd(gnd),
	.rstn(rfifo_reset_n),
	.scanin(gnd),
	.tstclk(gnd),
	.writeclk(!dqsbusout),
	.writeenable(vcc),
	.dinfiforx({\input_path_gen[7].aligned_input[1] ,\input_path_gen[7].aligned_input[0] }),
	.dynfifomode({\rfifo_mode[23] ,\rfifo_mode[22] ,\rfifo_mode[21] }),
	.txin(10'b0000000000),
	.bslipmax(),
	.bslipout(),
	.lvdsmodeen(\input_path_gen[7].read_fifo~O_LVDSMODEEN ),
	.lvdstxsel(),
	.scanout(),
	.txout(),
	.dout(\input_path_gen[7].read_fifo_DOUT_bus ),
	.rxout());
defparam \input_path_gen[7].read_fifo .a_enable_soft_cdr = "false";
defparam \input_path_gen[7].read_fifo .a_rb_bslipcfg = 1;
defparam \input_path_gen[7].read_fifo .a_rb_bypass_serializer = "false";
defparam \input_path_gen[7].read_fifo .a_rb_data_width = 10;
defparam \input_path_gen[7].read_fifo .a_rb_fifo_mode = "hrate_mode";
defparam \input_path_gen[7].read_fifo .a_rb_tx_outclk = "false";
defparam \input_path_gen[7].read_fifo .a_sim_readenable_pre_delay = 10;
defparam \input_path_gen[7].read_fifo .a_sim_wclk_pre_delay = 10;
defparam \input_path_gen[7].read_fifo .a_use_dynamic_fifo_mode = "true";

cyclonev_lfifo lfifo(
	.rdataen(lfifo_rdata_en_fr),
	.rdataenfull(lfifo_rdata_en_full_fr),
	.rstn(lfifo_reset_n),
	.clk(dqs_shifted_clock),
	.rdlatency({lfifo_rd_latency[4],lfifo_rd_latency[3],lfifo_rd_latency[2],lfifo_rd_latency[1],lfifo_rd_latency[0]}),
	.rdatavalid(lfifo_rdata_valid),
	.rden(lfifo_rden),
	.octlfifo(lfifo_oct));
defparam lfifo.oct_lfifo_enable = -1;

cyclonev_leveling_delay_chain leveling_delay_chain_hr(
	.clkin(config_clock_in),
	.delayctrlin(7'b0000000),
	.clkout(leveling_delay_chain_hr_CLKOUT_bus));
defparam leveling_delay_chain_hr.physical_clock_source = "hr";
defparam leveling_delay_chain_hr.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_hr.sim_buffer_intrinsic_delay = 175;

cyclonev_clk_phase_select clk_phase_select_hr(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({gnd,gnd,gnd,\leveled_hr_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(hr_seq_clock));
defparam clk_phase_select_hr.invert_phase = "false";
defparam clk_phase_select_hr.phase_setting = 0;
defparam clk_phase_select_hr.physical_clock_source = "hr";
defparam clk_phase_select_hr.use_dqs_input = "false";
defparam clk_phase_select_hr.use_phasectrlin = "false";

cyclonev_io_config \extra_output_pad_gen[0].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\extra_output_pad_gen[0].extra_outputhalfratebypass ),
	.dataout(\extra_output_pad_gen[0].config_1~dataout ),
	.readfiforeadclockselect(),
	.readfifomode(),
	.outputregdelaysetting(\extra_output_pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(),
	.padtoinputregisterdelaysetting());

cyclonev_ddio_out \extra_output_pad_gen[0].hr_to_fr_lo (
	.datainlo(extra_write_data_in[3]),
	.datainhi(extra_write_data_in[1]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\extra_output_pad_gen[0].extra_outputhalfratebypass ),
	.clk(gnd),
	.dataout(\extra_output_pad_gen[0].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \extra_output_pad_gen[0].hr_to_fr_lo .async_mode = "none";
defparam \extra_output_pad_gen[0].hr_to_fr_lo .half_rate_mode = "true";
defparam \extra_output_pad_gen[0].hr_to_fr_lo .power_up = "low";
defparam \extra_output_pad_gen[0].hr_to_fr_lo .sync_mode = "none";
defparam \extra_output_pad_gen[0].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \extra_output_pad_gen[0].hr_to_fr_hi (
	.datainlo(extra_write_data_in[2]),
	.datainhi(extra_write_data_in[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\extra_output_pad_gen[0].extra_outputhalfratebypass ),
	.clk(gnd),
	.dataout(\extra_output_pad_gen[0].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \extra_output_pad_gen[0].hr_to_fr_hi .async_mode = "none";
defparam \extra_output_pad_gen[0].hr_to_fr_hi .half_rate_mode = "true";
defparam \extra_output_pad_gen[0].hr_to_fr_hi .power_up = "low";
defparam \extra_output_pad_gen[0].hr_to_fr_hi .sync_mode = "none";
defparam \extra_output_pad_gen[0].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_leveling_delay_chain leveling_delay_chain_dq(
	.clkin(fr_clock_in),
	.delayctrlin(7'b0000000),
	.clkout(leveling_delay_chain_dq_CLKOUT_bus));
defparam leveling_delay_chain_dq.physical_clock_source = "dq";
defparam leveling_delay_chain_dq.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dq.sim_buffer_intrinsic_delay = 175;

cyclonev_clk_phase_select clk_phase_select_dq(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({gnd,gnd,gnd,\leveled_dq_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(dq_shifted_clock));
defparam clk_phase_select_dq.invert_phase = "false";
defparam clk_phase_select_dq.phase_setting = 0;
defparam clk_phase_select_dq.physical_clock_source = "dq";
defparam clk_phase_select_dq.use_dqs_input = "false";
defparam clk_phase_select_dq.use_phasectrlin = "false";

cyclonev_ddio_out \extra_output_pad_gen[0].ddio_out (
	.datainlo(\extra_output_pad_gen[0].fr_data_lo ),
	.datainhi(\extra_output_pad_gen[0].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\extra_output_pad_gen[0].aligned_data ),
	.dfflo(),
	.dffhi());
defparam \extra_output_pad_gen[0].ddio_out .async_mode = "none";
defparam \extra_output_pad_gen[0].ddio_out .half_rate_mode = "false";
defparam \extra_output_pad_gen[0].ddio_out .power_up = "low";
defparam \extra_output_pad_gen[0].ddio_out .sync_mode = "none";
defparam \extra_output_pad_gen[0].ddio_out .use_new_clocking_model = "true";

cyclonev_io_config \pad_gen[0].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[0] ),
	.dataout(\pad_gen[0].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[0].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[0].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[0].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[0].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[0].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[0].hr_to_fr_lo (
	.datainlo(write_data_in[3]),
	.datainhi(write_data_in[1]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[0] ),
	.clk(gnd),
	.dataout(\output_path_gen[0].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[0].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[0].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[0].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[0].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[0].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[0].hr_to_fr_hi (
	.datainlo(write_data_in[2]),
	.datainhi(write_data_in[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[0] ),
	.clk(gnd),
	.dataout(\output_path_gen[0].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[0].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[0].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[0].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[0].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[0].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[0].ddio_out (
	.datainlo(\output_path_gen[0].fr_data_lo ),
	.datainhi(\output_path_gen[0].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[0].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[0].ddio_out .async_mode = "none";
defparam \output_path_gen[0].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[0].ddio_out .power_up = "low";
defparam \output_path_gen[0].ddio_out .sync_mode = "none";
defparam \output_path_gen[0].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[0].hr_to_fr_oe (
	.datainlo(!write_oe_in[1]),
	.datainhi(!write_oe_in[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[0] ),
	.clk(gnd),
	.dataout(\output_path_gen[0].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[0].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[0].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[0].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[0].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[0].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[0].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[0].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[0].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[0].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[0].oe_reg .power_up = "low";

cyclonev_dqs_config \dqs_config_gen[0].dqs_config_inst (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.postamblephaseinvert(\dqsenablectrlphaseinvert[0] ),
	.dqshalfratebypass(\dqshalfratebypass[0] ),
	.enadqsenablephasetransferreg(\enadqsenablephasetransferreg[0] ),
	.dataout(\dqs_config_gen[0].dqs_config_inst~dataout ),
	.postamblephasesetting(\dqs_config_gen[0].dqs_config_inst_POSTAMBLEPHASESETTING_bus ),
	.dqsbusoutdelaysetting(\dqs_config_gen[0].dqs_config_inst_DQSBUSOUTDELAYSETTING_bus ),
	.octdelaysetting(\dqs_config_gen[0].dqs_config_inst_OCTDELAYSETTING_bus ),
	.dqsenablegatingdelaysetting(\dqs_config_gen[0].dqs_config_inst_DQSENABLEGATINGDELAYSETTING_bus ),
	.dqsenableungatingdelaysetting(\dqs_config_gen[0].dqs_config_inst_DQSENABLEUNGATINGDELAYSETTING_bus ));

cyclonev_ddio_out hr_to_fr_os_oct(
	.datainlo(oct_ena_in[1]),
	.datainhi(oct_ena_in[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dqshalfratebypass[0] ),
	.clk(gnd),
	.dataout(fr_os_oct),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_os_oct.async_mode = "none";
defparam hr_to_fr_os_oct.half_rate_mode = "true";
defparam hr_to_fr_os_oct.power_up = "low";
defparam hr_to_fr_os_oct.sync_mode = "none";
defparam hr_to_fr_os_oct.use_new_clocking_model = "true";

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(config_clock_in),
	.delayctrlin({dll_delayctrl_in[6],dll_delayctrl_in[5],dll_delayctrl_in[4],dll_delayctrl_in[3],dll_delayctrl_in[2],dll_delayctrl_in[1],dll_delayctrl_in[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

cyclonev_clk_phase_select clk_phase_select_dqs(
	.phaseinvertctrl(gnd),
	.dqsin(gnd),
	.clkin({gnd,gnd,gnd,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(dqs_shifted_clock));
defparam clk_phase_select_dqs.invert_phase = "false";
defparam clk_phase_select_dqs.phase_setting = 0;
defparam clk_phase_select_dqs.physical_clock_source = "dqs";
defparam clk_phase_select_dqs.use_dqs_input = "false";
defparam clk_phase_select_dqs.use_phasectrlin = "false";

cyclonev_ddio_oe os_oct_ddio_oe(
	.oe(fr_os_oct),
	.clk(dqs_shifted_clock),
	.ena(vcc),
	.octreadcontrol(lfifo_oct),
	.areset(gnd),
	.sreset(gnd),
	.dataout(predelayed_os_oct),
	.dfflo(),
	.dffhi());
defparam os_oct_ddio_oe.async_mode = "none";
defparam os_oct_ddio_oe.disable_second_level_register = "true";
defparam os_oct_ddio_oe.power_up = "low";
defparam os_oct_ddio_oe.sync_mode = "none";

cyclonev_io_config \pad_gen[1].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[1] ),
	.dataout(\pad_gen[1].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[1].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[1].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[1].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[1].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[1].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[1].hr_to_fr_lo (
	.datainlo(write_data_in[7]),
	.datainhi(write_data_in[5]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[1] ),
	.clk(gnd),
	.dataout(\output_path_gen[1].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[1].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[1].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[1].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[1].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[1].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[1].hr_to_fr_hi (
	.datainlo(write_data_in[6]),
	.datainhi(write_data_in[4]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[1] ),
	.clk(gnd),
	.dataout(\output_path_gen[1].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[1].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[1].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[1].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[1].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[1].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[1].ddio_out (
	.datainlo(\output_path_gen[1].fr_data_lo ),
	.datainhi(\output_path_gen[1].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[1].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[1].ddio_out .async_mode = "none";
defparam \output_path_gen[1].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[1].ddio_out .power_up = "low";
defparam \output_path_gen[1].ddio_out .sync_mode = "none";
defparam \output_path_gen[1].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[1].hr_to_fr_oe (
	.datainlo(!write_oe_in[3]),
	.datainhi(!write_oe_in[2]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[1] ),
	.clk(gnd),
	.dataout(\output_path_gen[1].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[1].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[1].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[1].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[1].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[1].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[1].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[1].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[1].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[1].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[1].oe_reg .power_up = "low";

cyclonev_io_config \pad_gen[2].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[2] ),
	.dataout(\pad_gen[2].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[2].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[2].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[2].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[2].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[2].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[2].hr_to_fr_lo (
	.datainlo(write_data_in[11]),
	.datainhi(write_data_in[9]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[2] ),
	.clk(gnd),
	.dataout(\output_path_gen[2].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[2].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[2].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[2].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[2].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[2].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[2].hr_to_fr_hi (
	.datainlo(write_data_in[10]),
	.datainhi(write_data_in[8]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[2] ),
	.clk(gnd),
	.dataout(\output_path_gen[2].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[2].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[2].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[2].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[2].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[2].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[2].ddio_out (
	.datainlo(\output_path_gen[2].fr_data_lo ),
	.datainhi(\output_path_gen[2].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[2].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[2].ddio_out .async_mode = "none";
defparam \output_path_gen[2].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[2].ddio_out .power_up = "low";
defparam \output_path_gen[2].ddio_out .sync_mode = "none";
defparam \output_path_gen[2].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[2].hr_to_fr_oe (
	.datainlo(!write_oe_in[5]),
	.datainhi(!write_oe_in[4]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[2] ),
	.clk(gnd),
	.dataout(\output_path_gen[2].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[2].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[2].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[2].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[2].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[2].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[2].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[2].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[2].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[2].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[2].oe_reg .power_up = "low";

cyclonev_io_config \pad_gen[3].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[3] ),
	.dataout(\pad_gen[3].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[3].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[3].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[3].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[3].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[3].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[3].hr_to_fr_lo (
	.datainlo(write_data_in[15]),
	.datainhi(write_data_in[13]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[3] ),
	.clk(gnd),
	.dataout(\output_path_gen[3].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[3].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[3].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[3].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[3].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[3].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[3].hr_to_fr_hi (
	.datainlo(write_data_in[14]),
	.datainhi(write_data_in[12]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[3] ),
	.clk(gnd),
	.dataout(\output_path_gen[3].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[3].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[3].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[3].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[3].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[3].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[3].ddio_out (
	.datainlo(\output_path_gen[3].fr_data_lo ),
	.datainhi(\output_path_gen[3].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[3].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[3].ddio_out .async_mode = "none";
defparam \output_path_gen[3].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[3].ddio_out .power_up = "low";
defparam \output_path_gen[3].ddio_out .sync_mode = "none";
defparam \output_path_gen[3].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[3].hr_to_fr_oe (
	.datainlo(!write_oe_in[7]),
	.datainhi(!write_oe_in[6]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[3] ),
	.clk(gnd),
	.dataout(\output_path_gen[3].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[3].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[3].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[3].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[3].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[3].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[3].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[3].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[3].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[3].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[3].oe_reg .power_up = "low";

cyclonev_io_config \pad_gen[4].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[4] ),
	.dataout(\pad_gen[4].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[4].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[4].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[4].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[4].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[4].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[4].hr_to_fr_lo (
	.datainlo(write_data_in[19]),
	.datainhi(write_data_in[17]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[4] ),
	.clk(gnd),
	.dataout(\output_path_gen[4].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[4].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[4].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[4].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[4].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[4].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[4].hr_to_fr_hi (
	.datainlo(write_data_in[18]),
	.datainhi(write_data_in[16]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[4] ),
	.clk(gnd),
	.dataout(\output_path_gen[4].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[4].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[4].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[4].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[4].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[4].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[4].ddio_out (
	.datainlo(\output_path_gen[4].fr_data_lo ),
	.datainhi(\output_path_gen[4].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[4].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[4].ddio_out .async_mode = "none";
defparam \output_path_gen[4].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[4].ddio_out .power_up = "low";
defparam \output_path_gen[4].ddio_out .sync_mode = "none";
defparam \output_path_gen[4].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[4].hr_to_fr_oe (
	.datainlo(!write_oe_in[9]),
	.datainhi(!write_oe_in[8]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[4] ),
	.clk(gnd),
	.dataout(\output_path_gen[4].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[4].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[4].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[4].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[4].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[4].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[4].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[4].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[4].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[4].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[4].oe_reg .power_up = "low";

cyclonev_io_config \pad_gen[5].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[5] ),
	.dataout(\pad_gen[5].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[5].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[5].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[5].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[5].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[5].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[5].hr_to_fr_lo (
	.datainlo(write_data_in[23]),
	.datainhi(write_data_in[21]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[5] ),
	.clk(gnd),
	.dataout(\output_path_gen[5].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[5].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[5].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[5].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[5].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[5].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[5].hr_to_fr_hi (
	.datainlo(write_data_in[22]),
	.datainhi(write_data_in[20]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[5] ),
	.clk(gnd),
	.dataout(\output_path_gen[5].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[5].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[5].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[5].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[5].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[5].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[5].ddio_out (
	.datainlo(\output_path_gen[5].fr_data_lo ),
	.datainhi(\output_path_gen[5].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[5].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[5].ddio_out .async_mode = "none";
defparam \output_path_gen[5].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[5].ddio_out .power_up = "low";
defparam \output_path_gen[5].ddio_out .sync_mode = "none";
defparam \output_path_gen[5].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[5].hr_to_fr_oe (
	.datainlo(!write_oe_in[11]),
	.datainhi(!write_oe_in[10]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[5] ),
	.clk(gnd),
	.dataout(\output_path_gen[5].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[5].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[5].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[5].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[5].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[5].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[5].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[5].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[5].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[5].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[5].oe_reg .power_up = "low";

cyclonev_io_config \pad_gen[6].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[6] ),
	.dataout(\pad_gen[6].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[6].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[6].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[6].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[6].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[6].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[6].hr_to_fr_lo (
	.datainlo(write_data_in[27]),
	.datainhi(write_data_in[25]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[6] ),
	.clk(gnd),
	.dataout(\output_path_gen[6].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[6].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[6].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[6].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[6].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[6].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[6].hr_to_fr_hi (
	.datainlo(write_data_in[26]),
	.datainhi(write_data_in[24]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[6] ),
	.clk(gnd),
	.dataout(\output_path_gen[6].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[6].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[6].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[6].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[6].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[6].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[6].ddio_out (
	.datainlo(\output_path_gen[6].fr_data_lo ),
	.datainhi(\output_path_gen[6].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[6].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[6].ddio_out .async_mode = "none";
defparam \output_path_gen[6].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[6].ddio_out .power_up = "low";
defparam \output_path_gen[6].ddio_out .sync_mode = "none";
defparam \output_path_gen[6].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[6].hr_to_fr_oe (
	.datainlo(!write_oe_in[13]),
	.datainhi(!write_oe_in[12]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[6] ),
	.clk(gnd),
	.dataout(\output_path_gen[6].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[6].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[6].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[6].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[6].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[6].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[6].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[6].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[6].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[6].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[6].oe_reg .power_up = "low";

cyclonev_io_config \pad_gen[7].config_1 (
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(\dq_outputhalfratebypass[7] ),
	.dataout(\pad_gen[7].config_1~dataout ),
	.readfiforeadclockselect(\pad_gen[7].config_1_READFIFOREADCLOCKSELECT_bus ),
	.readfifomode(\pad_gen[7].config_1_READFIFOMODE_bus ),
	.outputregdelaysetting(\pad_gen[7].config_1_OUTPUTREGDELAYSETTING_bus ),
	.outputenabledelaysetting(\pad_gen[7].config_1_OUTPUTENABLEDELAYSETTING_bus ),
	.padtoinputregisterdelaysetting(\pad_gen[7].config_1_PADTOINPUTREGISTERDELAYSETTING_bus ));

cyclonev_ddio_out \output_path_gen[7].hr_to_fr_lo (
	.datainlo(write_data_in[31]),
	.datainhi(write_data_in[29]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[7] ),
	.clk(gnd),
	.dataout(\output_path_gen[7].fr_data_lo ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[7].hr_to_fr_lo .async_mode = "none";
defparam \output_path_gen[7].hr_to_fr_lo .half_rate_mode = "true";
defparam \output_path_gen[7].hr_to_fr_lo .power_up = "low";
defparam \output_path_gen[7].hr_to_fr_lo .sync_mode = "none";
defparam \output_path_gen[7].hr_to_fr_lo .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[7].hr_to_fr_hi (
	.datainlo(write_data_in[30]),
	.datainhi(write_data_in[28]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[7] ),
	.clk(gnd),
	.dataout(\output_path_gen[7].fr_data_hi ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[7].hr_to_fr_hi .async_mode = "none";
defparam \output_path_gen[7].hr_to_fr_hi .half_rate_mode = "true";
defparam \output_path_gen[7].hr_to_fr_hi .power_up = "low";
defparam \output_path_gen[7].hr_to_fr_hi .sync_mode = "none";
defparam \output_path_gen[7].hr_to_fr_hi .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[7].ddio_out (
	.datainlo(\output_path_gen[7].fr_data_lo ),
	.datainhi(\output_path_gen[7].fr_data_hi ),
	.clkhi(dq_shifted_clock),
	.clklo(dq_shifted_clock),
	.muxsel(dq_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(\pad_gen[7].predelayed_data ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[7].ddio_out .async_mode = "none";
defparam \output_path_gen[7].ddio_out .half_rate_mode = "false";
defparam \output_path_gen[7].ddio_out .power_up = "low";
defparam \output_path_gen[7].ddio_out .sync_mode = "none";
defparam \output_path_gen[7].ddio_out .use_new_clocking_model = "true";

cyclonev_ddio_out \output_path_gen[7].hr_to_fr_oe (
	.datainlo(!write_oe_in[15]),
	.datainhi(!write_oe_in[14]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dq_outputhalfratebypass[7] ),
	.clk(gnd),
	.dataout(\output_path_gen[7].fr_oe ),
	.dfflo(),
	.dffhi());
defparam \output_path_gen[7].hr_to_fr_oe .async_mode = "none";
defparam \output_path_gen[7].hr_to_fr_oe .half_rate_mode = "true";
defparam \output_path_gen[7].hr_to_fr_oe .power_up = "low";
defparam \output_path_gen[7].hr_to_fr_oe .sync_mode = "none";
defparam \output_path_gen[7].hr_to_fr_oe .use_new_clocking_model = "true";

dffeas \output_path_gen[7].oe_reg (
	.clk(dq_shifted_clock),
	.d(\output_path_gen[7].fr_oe ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\output_path_gen[7].oe_reg~q ),
	.prn(vcc));
defparam \output_path_gen[7].oe_reg .is_wysiwyg = "true";
defparam \output_path_gen[7].oe_reg .power_up = "low";

cyclonev_ddio_out hr_to_fr_os_lo(
	.datainlo(write_strobe[3]),
	.datainhi(write_strobe[1]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(fr_os_lo),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_os_lo.async_mode = "none";
defparam hr_to_fr_os_lo.half_rate_mode = "true";
defparam hr_to_fr_os_lo.power_up = "low";
defparam hr_to_fr_os_lo.sync_mode = "none";
defparam hr_to_fr_os_lo.use_new_clocking_model = "true";

cyclonev_ddio_out hr_to_fr_os_hi(
	.datainlo(write_strobe[2]),
	.datainhi(write_strobe[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(fr_os_hi),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_os_hi.async_mode = "none";
defparam hr_to_fr_os_hi.half_rate_mode = "true";
defparam hr_to_fr_os_hi.power_up = "low";
defparam hr_to_fr_os_hi.sync_mode = "none";
defparam hr_to_fr_os_hi.use_new_clocking_model = "true";

cyclonev_ddio_out phase_align_os(
	.datainlo(fr_os_lo),
	.datainhi(fr_os_hi),
	.clkhi(dqs_shifted_clock),
	.clklo(dqs_shifted_clock),
	.muxsel(dqs_shifted_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(gnd),
	.clk(gnd),
	.dataout(predelayed_os),
	.dfflo(),
	.dffhi());
defparam phase_align_os.async_mode = "none";
defparam phase_align_os.half_rate_mode = "false";
defparam phase_align_os.power_up = "low";
defparam phase_align_os.sync_mode = "none";
defparam phase_align_os.use_new_clocking_model = "true";

cyclonev_io_config dqs_io_config_1(
	.datain(gnd),
	.clk(config_clock_in),
	.ena(gnd),
	.update(gnd),
	.outputhalfratebypass(),
	.dataout(\dqs_io_config_1~dataout ),
	.readfiforeadclockselect(),
	.readfifomode(),
	.outputregdelaysetting(dqs_io_config_1_OUTPUTREGDELAYSETTING_bus),
	.outputenabledelaysetting(dqs_io_config_1_OUTPUTENABLEDELAYSETTING_bus),
	.padtoinputregisterdelaysetting());

cyclonev_delay_chain dqs_out_delay_1(
	.datain(predelayed_os),
	.delayctrlin({\dqs_outputdelaysetting_dlc[4] ,\dqs_outputdelaysetting_dlc[3] ,\dqs_outputdelaysetting_dlc[2] ,\dqs_outputdelaysetting_dlc[1] ,\dqs_outputdelaysetting_dlc[0] }),
	.dataout(os_delayed2));
defparam dqs_out_delay_1.sim_falling_delay_increment = 10;
defparam dqs_out_delay_1.sim_intrinsic_falling_delay = 0;
defparam dqs_out_delay_1.sim_intrinsic_rising_delay = 0;
defparam dqs_out_delay_1.sim_rising_delay_increment = 10;

cyclonev_ddio_out hr_to_fr_os_oe(
	.datainlo(!output_strobe_ena[1]),
	.datainhi(!output_strobe_ena[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(vcc),
	.clk(gnd),
	.dataout(fr_os_oe),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_os_oe.async_mode = "none";
defparam hr_to_fr_os_oe.half_rate_mode = "true";
defparam hr_to_fr_os_oe.power_up = "low";
defparam hr_to_fr_os_oe.sync_mode = "none";
defparam hr_to_fr_os_oe.use_new_clocking_model = "true";

dffeas os_oe_reg(
	.clk(dqs_shifted_clock),
	.d(fr_os_oe),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\os_oe_reg~q ),
	.prn(vcc));
defparam os_oe_reg.is_wysiwyg = "true";
defparam os_oe_reg.power_up = "low";

cyclonev_delay_chain oe_delay_1(
	.datain(\os_oe_reg~q ),
	.delayctrlin({\dqs_outputenabledelaysetting_dlc[4] ,\dqs_outputenabledelaysetting_dlc[3] ,\dqs_outputenabledelaysetting_dlc[2] ,\dqs_outputenabledelaysetting_dlc[1] ,\dqs_outputenabledelaysetting_dlc[0] }),
	.dataout(delayed_os_oe));
defparam oe_delay_1.sim_falling_delay_increment = 10;
defparam oe_delay_1.sim_intrinsic_falling_delay = 0;
defparam oe_delay_1.sim_intrinsic_rising_delay = 0;
defparam oe_delay_1.sim_rising_delay_increment = 10;

cyclonev_read_fifo_read_clock_select \input_path_gen[0].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[1] ,\rfifo_clock_select[0] }),
	.clkout(\input_path_gen[0].rfifo_rd_clk ));

cyclonev_ddio_out hr_to_fr_vfifo_inc_wr_ptr(
	.datainlo(vfifo_inc_wr_ptr[1]),
	.datainhi(vfifo_inc_wr_ptr[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dqshalfratebypass[0] ),
	.clk(gnd),
	.dataout(vfifo_inc_wr_ptr_fr),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_vfifo_inc_wr_ptr.async_mode = "none";
defparam hr_to_fr_vfifo_inc_wr_ptr.half_rate_mode = "true";
defparam hr_to_fr_vfifo_inc_wr_ptr.power_up = "low";
defparam hr_to_fr_vfifo_inc_wr_ptr.sync_mode = "none";
defparam hr_to_fr_vfifo_inc_wr_ptr.use_new_clocking_model = "true";

cyclonev_ddio_out hr_to_fr_vfifo_qvld(
	.datainlo(lfifo_rdata_en_full[1]),
	.datainhi(lfifo_rdata_en_full[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dqshalfratebypass[0] ),
	.clk(gnd),
	.dataout(vfifo_qvld_fr),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_vfifo_qvld.async_mode = "none";
defparam hr_to_fr_vfifo_qvld.half_rate_mode = "true";
defparam hr_to_fr_vfifo_qvld.power_up = "low";
defparam hr_to_fr_vfifo_qvld.sync_mode = "none";
defparam hr_to_fr_vfifo_qvld.use_new_clocking_model = "true";

cyclonev_clk_phase_select clk_phase_select_pst_0p(
	.phaseinvertctrl(gnd),
	.dqsin(dqsbusout),
	.clkin({gnd,gnd,gnd,\leveled_dqs_clocks[0] }),
	.phasectrlin(2'b00),
	.clkout(ena_zero_phase_clock));
defparam clk_phase_select_pst_0p.invert_phase = "false";
defparam clk_phase_select_pst_0p.phase_setting = 0;
defparam clk_phase_select_pst_0p.physical_clock_source = "pst_0p";
defparam clk_phase_select_pst_0p.use_dqs_input = "false";
defparam clk_phase_select_pst_0p.use_phasectrlin = "false";

cyclonev_vfifo vfifo(
	.incwrptr(vfifo_inc_wr_ptr_fr),
	.qvldin(vfifo_qvld_fr),
	.rdclk(ena_zero_phase_clock),
	.rstn(vfifo_reset_n),
	.wrclk(dqs_shifted_clock),
	.qvldreg(dqs_pre_delayed));

cyclonev_clk_phase_select clk_phase_select_pst(
	.phaseinvertctrl(\dqsenablectrlphaseinvert[0] ),
	.dqsin(gnd),
	.clkin({\leveled_dqs_clocks[3] ,\leveled_dqs_clocks[2] ,\leveled_dqs_clocks[1] ,\leveled_dqs_clocks[0] }),
	.phasectrlin({\dqsenablectrlphasesetting[0][1] ,\dqsenablectrlphasesetting[0][0] }),
	.clkout(ena_clock));
defparam clk_phase_select_pst.invert_phase = "dynamic";
defparam clk_phase_select_pst.phase_setting = 0;
defparam clk_phase_select_pst.physical_clock_source = "pst";
defparam clk_phase_select_pst.use_dqs_input = "false";
defparam clk_phase_select_pst.use_phasectrlin = "true";

cyclonev_dqs_enable_ctrl dqs_enable_ctrl(
	.rstn(gnd),
	.dqsenablein(dqs_pre_delayed),
	.zerophaseclk(ena_zero_phase_clock),
	.enaphasetransferreg(\enadqsenablephasetransferreg[0] ),
	.levelingclk(ena_clock),
	.dqsenableout(dqs_enable_shifted));
defparam dqs_enable_ctrl.add_phase_transfer_reg = "dynamic";
defparam dqs_enable_ctrl.delay_dqs_enable = "one_and_half_cycle";

cyclonev_delay_chain dqs_ena_delay_1(
	.datain(dqs_enable_shifted),
	.delayctrlin({\dqsenabledelaysetting_dlc[0][4] ,\dqsenabledelaysetting_dlc[0][3] ,\dqsenabledelaysetting_dlc[0][2] ,\dqsenabledelaysetting_dlc[0][1] ,\dqsenabledelaysetting_dlc[0][0] }),
	.dataout(dqs_enable_int));
defparam dqs_ena_delay_1.sim_falling_delay_increment = 10;
defparam dqs_ena_delay_1.sim_intrinsic_falling_delay = 0;
defparam dqs_ena_delay_1.sim_intrinsic_rising_delay = 0;
defparam dqs_ena_delay_1.sim_rising_delay_increment = 10;

cyclonev_delay_chain dqs_dis_delay_1(
	.datain(dqs_enable_shifted),
	.delayctrlin({\dqsdisabledelaysetting_dlc[0][4] ,\dqsdisabledelaysetting_dlc[0][3] ,\dqsdisabledelaysetting_dlc[0][2] ,\dqsdisabledelaysetting_dlc[0][1] ,\dqsdisabledelaysetting_dlc[0][0] }),
	.dataout(dqs_disable_int));
defparam dqs_dis_delay_1.sim_falling_delay_increment = 10;
defparam dqs_dis_delay_1.sim_intrinsic_falling_delay = 0;
defparam dqs_dis_delay_1.sim_intrinsic_rising_delay = 0;
defparam dqs_dis_delay_1.sim_rising_delay_increment = 10;

cyclonev_dqs_delay_chain dqs_delay_chain(
	.dqsin(dqsin),
	.dqsenable(dqs_enable_int),
	.dqsdisablen(dqs_disable_int),
	.dqsupdateen(gnd),
	.testin(gnd),
	.delayctrlin({dll_delayctrl_in[6],dll_delayctrl_in[5],dll_delayctrl_in[4],dll_delayctrl_in[3],dll_delayctrl_in[2],dll_delayctrl_in[1],dll_delayctrl_in[0]}),
	.dqsbusout(dqs_shifted));
defparam dqs_delay_chain.dqs_ctrl_latches_enable = "false";
defparam dqs_delay_chain.dqs_delay_chain_bypass = "true";
defparam dqs_delay_chain.dqs_delay_chain_test_mode = "off";
defparam dqs_delay_chain.dqs_input_frequency = "0";
defparam dqs_delay_chain.dqs_phase_shift = 0;
defparam dqs_delay_chain.sim_buffer_delay_increment = 10;
defparam dqs_delay_chain.sim_buffer_intrinsic_delay = 175;

cyclonev_delay_chain dqs_in_delay_1(
	.datain(dqs_shifted),
	.delayctrlin({\dqsbusoutdelaysetting_dlc[0][4] ,\dqsbusoutdelaysetting_dlc[0][3] ,\dqsbusoutdelaysetting_dlc[0][2] ,\dqsbusoutdelaysetting_dlc[0][1] ,\dqsbusoutdelaysetting_dlc[0][0] }),
	.dataout(dqsbusout));
defparam dqs_in_delay_1.sim_falling_delay_increment = 10;
defparam dqs_in_delay_1.sim_intrinsic_falling_delay = 0;
defparam dqs_in_delay_1.sim_intrinsic_rising_delay = 0;
defparam dqs_in_delay_1.sim_rising_delay_increment = 10;

cyclonev_delay_chain \pad_gen[0].in_delay_1 (
	.datain(pad_gen0raw_input),
	.delayctrlin({\pad_gen[0].dq_inputdelaysetting_dlc[4] ,\pad_gen[0].dq_inputdelaysetting_dlc[3] ,\pad_gen[0].dq_inputdelaysetting_dlc[2] ,\pad_gen[0].dq_inputdelaysetting_dlc[1] ,\pad_gen[0].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[0] ));
defparam \pad_gen[0].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[0].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[0].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[0].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[0].capture_reg (
	.datain(\ddr_data[0] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[0].aligned_input[0] ),
	.regouthi(\input_path_gen[0].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[0].capture_reg .async_mode = "none";
defparam \input_path_gen[0].capture_reg .power_up = "low";
defparam \input_path_gen[0].capture_reg .sync_mode = "none";
defparam \input_path_gen[0].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[1].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[3] ,\rfifo_clock_select[2] }),
	.clkout(\input_path_gen[1].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[1].in_delay_1 (
	.datain(pad_gen1raw_input),
	.delayctrlin({\pad_gen[1].dq_inputdelaysetting_dlc[4] ,\pad_gen[1].dq_inputdelaysetting_dlc[3] ,\pad_gen[1].dq_inputdelaysetting_dlc[2] ,\pad_gen[1].dq_inputdelaysetting_dlc[1] ,\pad_gen[1].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[1] ));
defparam \pad_gen[1].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[1].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[1].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[1].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[1].capture_reg (
	.datain(\ddr_data[1] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[1].aligned_input[0] ),
	.regouthi(\input_path_gen[1].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[1].capture_reg .async_mode = "none";
defparam \input_path_gen[1].capture_reg .power_up = "low";
defparam \input_path_gen[1].capture_reg .sync_mode = "none";
defparam \input_path_gen[1].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[2].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[5] ,\rfifo_clock_select[4] }),
	.clkout(\input_path_gen[2].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[2].in_delay_1 (
	.datain(pad_gen2raw_input),
	.delayctrlin({\pad_gen[2].dq_inputdelaysetting_dlc[4] ,\pad_gen[2].dq_inputdelaysetting_dlc[3] ,\pad_gen[2].dq_inputdelaysetting_dlc[2] ,\pad_gen[2].dq_inputdelaysetting_dlc[1] ,\pad_gen[2].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[2] ));
defparam \pad_gen[2].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[2].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[2].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[2].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[2].capture_reg (
	.datain(\ddr_data[2] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[2].aligned_input[0] ),
	.regouthi(\input_path_gen[2].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[2].capture_reg .async_mode = "none";
defparam \input_path_gen[2].capture_reg .power_up = "low";
defparam \input_path_gen[2].capture_reg .sync_mode = "none";
defparam \input_path_gen[2].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[3].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[7] ,\rfifo_clock_select[6] }),
	.clkout(\input_path_gen[3].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[3].in_delay_1 (
	.datain(pad_gen3raw_input),
	.delayctrlin({\pad_gen[3].dq_inputdelaysetting_dlc[4] ,\pad_gen[3].dq_inputdelaysetting_dlc[3] ,\pad_gen[3].dq_inputdelaysetting_dlc[2] ,\pad_gen[3].dq_inputdelaysetting_dlc[1] ,\pad_gen[3].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[3] ));
defparam \pad_gen[3].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[3].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[3].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[3].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[3].capture_reg (
	.datain(\ddr_data[3] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[3].aligned_input[0] ),
	.regouthi(\input_path_gen[3].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[3].capture_reg .async_mode = "none";
defparam \input_path_gen[3].capture_reg .power_up = "low";
defparam \input_path_gen[3].capture_reg .sync_mode = "none";
defparam \input_path_gen[3].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[4].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[9] ,\rfifo_clock_select[8] }),
	.clkout(\input_path_gen[4].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[4].in_delay_1 (
	.datain(pad_gen4raw_input),
	.delayctrlin({\pad_gen[4].dq_inputdelaysetting_dlc[4] ,\pad_gen[4].dq_inputdelaysetting_dlc[3] ,\pad_gen[4].dq_inputdelaysetting_dlc[2] ,\pad_gen[4].dq_inputdelaysetting_dlc[1] ,\pad_gen[4].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[4] ));
defparam \pad_gen[4].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[4].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[4].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[4].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[4].capture_reg (
	.datain(\ddr_data[4] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[4].aligned_input[0] ),
	.regouthi(\input_path_gen[4].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[4].capture_reg .async_mode = "none";
defparam \input_path_gen[4].capture_reg .power_up = "low";
defparam \input_path_gen[4].capture_reg .sync_mode = "none";
defparam \input_path_gen[4].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[5].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[11] ,\rfifo_clock_select[10] }),
	.clkout(\input_path_gen[5].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[5].in_delay_1 (
	.datain(pad_gen5raw_input),
	.delayctrlin({\pad_gen[5].dq_inputdelaysetting_dlc[4] ,\pad_gen[5].dq_inputdelaysetting_dlc[3] ,\pad_gen[5].dq_inputdelaysetting_dlc[2] ,\pad_gen[5].dq_inputdelaysetting_dlc[1] ,\pad_gen[5].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[5] ));
defparam \pad_gen[5].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[5].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[5].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[5].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[5].capture_reg (
	.datain(\ddr_data[5] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[5].aligned_input[0] ),
	.regouthi(\input_path_gen[5].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[5].capture_reg .async_mode = "none";
defparam \input_path_gen[5].capture_reg .power_up = "low";
defparam \input_path_gen[5].capture_reg .sync_mode = "none";
defparam \input_path_gen[5].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[6].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[13] ,\rfifo_clock_select[12] }),
	.clkout(\input_path_gen[6].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[6].in_delay_1 (
	.datain(pad_gen6raw_input),
	.delayctrlin({\pad_gen[6].dq_inputdelaysetting_dlc[4] ,\pad_gen[6].dq_inputdelaysetting_dlc[3] ,\pad_gen[6].dq_inputdelaysetting_dlc[2] ,\pad_gen[6].dq_inputdelaysetting_dlc[1] ,\pad_gen[6].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[6] ));
defparam \pad_gen[6].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[6].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[6].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[6].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[6].capture_reg (
	.datain(\ddr_data[6] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[6].aligned_input[0] ),
	.regouthi(\input_path_gen[6].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[6].capture_reg .async_mode = "none";
defparam \input_path_gen[6].capture_reg .power_up = "low";
defparam \input_path_gen[6].capture_reg .sync_mode = "none";
defparam \input_path_gen[6].capture_reg .use_clkn = "false";

cyclonev_read_fifo_read_clock_select \input_path_gen[7].read_fifo_clk_sel (
	.clkin({hr_seq_clock,dqs_shifted_clock,GND_port}),
	.clksel({\rfifo_clock_select[15] ,\rfifo_clock_select[14] }),
	.clkout(\input_path_gen[7].rfifo_rd_clk ));

cyclonev_delay_chain \pad_gen[7].in_delay_1 (
	.datain(pad_gen7raw_input),
	.delayctrlin({\pad_gen[7].dq_inputdelaysetting_dlc[4] ,\pad_gen[7].dq_inputdelaysetting_dlc[3] ,\pad_gen[7].dq_inputdelaysetting_dlc[2] ,\pad_gen[7].dq_inputdelaysetting_dlc[1] ,\pad_gen[7].dq_inputdelaysetting_dlc[0] }),
	.dataout(\ddr_data[7] ));
defparam \pad_gen[7].in_delay_1 .sim_falling_delay_increment = 10;
defparam \pad_gen[7].in_delay_1 .sim_intrinsic_falling_delay = 200;
defparam \pad_gen[7].in_delay_1 .sim_intrinsic_rising_delay = 200;
defparam \pad_gen[7].in_delay_1 .sim_rising_delay_increment = 10;

cyclonev_ddio_in \input_path_gen[7].capture_reg (
	.datain(\ddr_data[7] ),
	.clk(!dqsbusout),
	.clkn(gnd),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.regoutlo(\input_path_gen[7].aligned_input[0] ),
	.regouthi(\input_path_gen[7].aligned_input[1] ),
	.dfflo());
defparam \input_path_gen[7].capture_reg .async_mode = "none";
defparam \input_path_gen[7].capture_reg .power_up = "low";
defparam \input_path_gen[7].capture_reg .sync_mode = "none";
defparam \input_path_gen[7].capture_reg .use_clkn = "false";

cyclonev_ddio_out hr_to_fr_lfifo_rdata_en(
	.datainlo(lfifo_rdata_en[1]),
	.datainhi(lfifo_rdata_en[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dqshalfratebypass[0] ),
	.clk(gnd),
	.dataout(lfifo_rdata_en_fr),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_lfifo_rdata_en.async_mode = "none";
defparam hr_to_fr_lfifo_rdata_en.half_rate_mode = "true";
defparam hr_to_fr_lfifo_rdata_en.power_up = "low";
defparam hr_to_fr_lfifo_rdata_en.sync_mode = "none";
defparam hr_to_fr_lfifo_rdata_en.use_new_clocking_model = "true";

cyclonev_ddio_out hr_to_fr_lfifo_rdata_en_full(
	.datainlo(lfifo_rdata_en_full[1]),
	.datainhi(lfifo_rdata_en_full[0]),
	.clkhi(hr_seq_clock),
	.clklo(hr_seq_clock),
	.muxsel(hr_seq_clock),
	.ena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.hrbypass(\dqshalfratebypass[0] ),
	.clk(gnd),
	.dataout(lfifo_rdata_en_full_fr),
	.dfflo(),
	.dffhi());
defparam hr_to_fr_lfifo_rdata_en_full.async_mode = "none";
defparam hr_to_fr_lfifo_rdata_en_full.half_rate_mode = "true";
defparam hr_to_fr_lfifo_rdata_en_full.power_up = "low";
defparam hr_to_fr_lfifo_rdata_en_full.sync_mode = "none";
defparam hr_to_fr_lfifo_rdata_en_full.use_new_clocking_model = "true";

endmodule

module HPS_hps_sdram_p0_acv_ldc_23 (
	pll_dqs_clk,
	pll_hr_clk,
	afi_clk,
	avl_clk,
	dll_phy_delayctrl)/* synthesis synthesis_greybox=0 */;
input 	pll_dqs_clk;
input 	pll_hr_clk;
output 	afi_clk;
output 	avl_clk;
input 	[6:0] dll_phy_delayctrl;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \leveled_dqs_clocks[1] ;
wire \leveled_dqs_clocks[2] ;
wire \leveled_dqs_clocks[3] ;
wire \leveled_hr_clocks[1] ;
wire \leveled_hr_clocks[2] ;
wire \leveled_hr_clocks[3] ;

wire [3:0] leveling_delay_chain_dqs_CLKOUT_bus;
wire [3:0] leveling_delay_chain_hr_CLKOUT_bus;

assign afi_clk = leveling_delay_chain_dqs_CLKOUT_bus[0];
assign \leveled_dqs_clocks[1]  = leveling_delay_chain_dqs_CLKOUT_bus[1];
assign \leveled_dqs_clocks[2]  = leveling_delay_chain_dqs_CLKOUT_bus[2];
assign \leveled_dqs_clocks[3]  = leveling_delay_chain_dqs_CLKOUT_bus[3];

assign avl_clk = leveling_delay_chain_hr_CLKOUT_bus[0];
assign \leveled_hr_clocks[1]  = leveling_delay_chain_hr_CLKOUT_bus[1];
assign \leveled_hr_clocks[2]  = leveling_delay_chain_hr_CLKOUT_bus[2];
assign \leveled_hr_clocks[3]  = leveling_delay_chain_hr_CLKOUT_bus[3];

cyclonev_leveling_delay_chain leveling_delay_chain_dqs(
	.clkin(pll_dqs_clk),
	.delayctrlin({dll_phy_delayctrl[6],dll_phy_delayctrl[5],dll_phy_delayctrl[4],dll_phy_delayctrl[3],dll_phy_delayctrl[2],dll_phy_delayctrl[1],dll_phy_delayctrl[0]}),
	.clkout(leveling_delay_chain_dqs_CLKOUT_bus));
defparam leveling_delay_chain_dqs.physical_clock_source = "dqs";
defparam leveling_delay_chain_dqs.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_dqs.sim_buffer_intrinsic_delay = 175;

cyclonev_leveling_delay_chain leveling_delay_chain_hr(
	.clkin(pll_dqs_clk),
	.delayctrlin(7'b0000000),
	.clkout(leveling_delay_chain_hr_CLKOUT_bus));
defparam leveling_delay_chain_hr.physical_clock_source = "hr";
defparam leveling_delay_chain_hr.sim_buffer_delay_increment = 10;
defparam leveling_delay_chain_hr.sim_buffer_intrinsic_delay = 175;

endmodule

module HPS_hps_sdram_pll (
	pll_mem_clk,
	pll_write_clk)/* synthesis synthesis_greybox=0 */;
output 	pll_mem_clk;
output 	pll_write_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \clk_out[2] ;
wire \clk_out[3] ;

wire [3:0] pll_CLK_OUT_bus;

assign pll_mem_clk = pll_CLK_OUT_bus[0];
assign pll_write_clk = pll_CLK_OUT_bus[1];
assign \clk_out[2]  = pll_CLK_OUT_bus[2];
assign \clk_out[3]  = pll_CLK_OUT_bus[3];

cyclonev_hps_sdram_pll pll(
	.ref_clk(gnd),
	.clk_out(pll_CLK_OUT_bus));

endmodule
