
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
	memory_oct_rzqin);	

	input		hps_0_f2h_sdram0_clock_clk;
	input	[31:0]	hps_0_f2h_sdram0_data_araddr;
	input	[3:0]	hps_0_f2h_sdram0_data_arlen;
	input	[7:0]	hps_0_f2h_sdram0_data_arid;
	input	[2:0]	hps_0_f2h_sdram0_data_arsize;
	input	[1:0]	hps_0_f2h_sdram0_data_arburst;
	input	[1:0]	hps_0_f2h_sdram0_data_arlock;
	input	[2:0]	hps_0_f2h_sdram0_data_arprot;
	input		hps_0_f2h_sdram0_data_arvalid;
	input	[3:0]	hps_0_f2h_sdram0_data_arcache;
	input	[31:0]	hps_0_f2h_sdram0_data_awaddr;
	input	[3:0]	hps_0_f2h_sdram0_data_awlen;
	input	[7:0]	hps_0_f2h_sdram0_data_awid;
	input	[2:0]	hps_0_f2h_sdram0_data_awsize;
	input	[1:0]	hps_0_f2h_sdram0_data_awburst;
	input	[1:0]	hps_0_f2h_sdram0_data_awlock;
	input	[2:0]	hps_0_f2h_sdram0_data_awprot;
	input		hps_0_f2h_sdram0_data_awvalid;
	input	[3:0]	hps_0_f2h_sdram0_data_awcache;
	output	[1:0]	hps_0_f2h_sdram0_data_bresp;
	output	[7:0]	hps_0_f2h_sdram0_data_bid;
	output		hps_0_f2h_sdram0_data_bvalid;
	input		hps_0_f2h_sdram0_data_bready;
	output		hps_0_f2h_sdram0_data_arready;
	output		hps_0_f2h_sdram0_data_awready;
	input		hps_0_f2h_sdram0_data_rready;
	output	[127:0]	hps_0_f2h_sdram0_data_rdata;
	output	[1:0]	hps_0_f2h_sdram0_data_rresp;
	output		hps_0_f2h_sdram0_data_rlast;
	output	[7:0]	hps_0_f2h_sdram0_data_rid;
	output		hps_0_f2h_sdram0_data_rvalid;
	input		hps_0_f2h_sdram0_data_wlast;
	input		hps_0_f2h_sdram0_data_wvalid;
	input	[127:0]	hps_0_f2h_sdram0_data_wdata;
	input	[15:0]	hps_0_f2h_sdram0_data_wstrb;
	output		hps_0_f2h_sdram0_data_wready;
	input	[7:0]	hps_0_f2h_sdram0_data_wid;
	output		hps_0_h2f_reset_reset_n;
	output	[12:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[7:0]	memory_mem_dq;
	inout		memory_mem_dqs;
	inout		memory_mem_dqs_n;
	output		memory_mem_odt;
	output		memory_mem_dm;
	input		memory_oct_rzqin;
endmodule
