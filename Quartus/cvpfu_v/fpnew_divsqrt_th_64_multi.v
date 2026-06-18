module fpnew_divsqrt_th_64_multi_6575A_19233 (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	dst_fmt_i,
	tag_i,
	mask_i,
	aux_i,
	vectorial_op_i,
	in_valid_i,
	in_ready_o,
	divsqrt_done_o,
	simd_synch_done_i,
	divsqrt_ready_o,
	simd_synch_rdy_i,
	flush_i,
	result_o,
	status_o,
	extension_bit_o,
	tag_o,
	mask_o,
	aux_o,
	out_valid_o,
	out_ready_i,
	busy_o,
	reg_ena_i,
	early_out_valid_o
);
	parameter [31:0] AuxType_AUX_BITS = 0;
	reg _sv2v_0;
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	parameter [0:4] FpFmtConfig = 1'sb1;
	parameter [31:0] NumPipeRegs = 0;
	parameter [1:0] PipeConfig = 2'd1;
	localparam [31:0] fpnew_pkg_FP_FORMAT_BITS = 3;
	localparam [319:0] fpnew_pkg_FP_ENCODINGS = 320'h8000000170000000b00000034000000050000000a00000005000000020000000800000007;
	function automatic [31:0] fpnew_pkg_fp_width;
		input reg [2:0] fmt;
		fpnew_pkg_fp_width = (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] + fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32]) + 1;
	endfunction
	function automatic signed [31:0] fpnew_pkg_maximum;
		input reg signed [31:0] a;
		input reg signed [31:0] b;
		fpnew_pkg_maximum = (a > b ? a : b);
	endfunction
	function automatic [2:0] sv2v_cast_5D882;
		input reg [2:0] inp;
		sv2v_cast_5D882 = inp;
	endfunction
	function automatic [31:0] fpnew_pkg_max_fp_width;
		input reg [0:4] cfg;
		reg [31:0] res;
		begin
			res = 0;
			begin : sv2v_autoblock_1
				reg [31:0] i;
				for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
					if (cfg[i])
						res = $unsigned(fpnew_pkg_maximum(res, fpnew_pkg_fp_width(sv2v_cast_5D882(i))));
			end
			fpnew_pkg_max_fp_width = res;
		end
	endfunction
	localparam [31:0] WIDTH = fpnew_pkg_max_fp_width(FpFmtConfig);
	localparam [31:0] NUM_FORMATS = fpnew_pkg_NUM_FP_FORMATS;
	localparam [31:0] ExtRegEnaWidth = (NumPipeRegs == 0 ? 1 : NumPipeRegs);
	input wire clk_i;
	input wire rst_ni;
	input wire [(2 * WIDTH) - 1:0] operands_i;
	input wire [9:0] is_boxed_i;
	input wire [2:0] rnd_mode_i;
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	input wire [3:0] op_i;
	input wire [2:0] dst_fmt_i;
	input wire tag_i;
	input wire mask_i;
	input wire [AuxType_AUX_BITS - 1:0] aux_i;
	input wire vectorial_op_i;
	input wire in_valid_i;
	output wire in_ready_o;
	output wire divsqrt_done_o;
	input wire simd_synch_done_i;
	output wire divsqrt_ready_o;
	input wire simd_synch_rdy_i;
	input wire flush_i;
	output wire [WIDTH - 1:0] result_o;
	output wire [4:0] status_o;
	output wire extension_bit_o;
	output wire tag_o;
	output wire mask_o;
	output wire [AuxType_AUX_BITS - 1:0] aux_o;
	output wire out_valid_o;
	input wire out_ready_i;
	output wire busy_o;
	input wire [ExtRegEnaWidth - 1:0] reg_ena_i;
	output wire early_out_valid_o;
	localparam NUM_INP_REGS = (PipeConfig == 2'd0 ? NumPipeRegs : (PipeConfig == 2'd3 ? NumPipeRegs / 2 : 0));
	localparam NUM_OUT_REGS = ((PipeConfig == 2'd1) || (PipeConfig == 2'd2) ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 1) / 2 : 0));
	wire [(2 * WIDTH) - 1:0] operands_q;
	wire [2:0] rnd_mode_q;
	wire [3:0] op_q;
	wire [2:0] dst_fmt_q;
	wire in_valid_q;
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) * WIDTH) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) * WIDTH) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) * WIDTH : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) * WIDTH)] inp_pipe_operands_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)] inp_pipe_rnd_mode_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_OP_BITS) + ((NUM_INP_REGS * fpnew_pkg_OP_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_OP_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_OP_BITS : 0)] inp_pipe_op_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_dst_fmt_q;
	reg [0:NUM_INP_REGS] inp_pipe_tag_q;
	reg [0:NUM_INP_REGS] inp_pipe_mask_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * AuxType_AUX_BITS) + ((NUM_INP_REGS * AuxType_AUX_BITS) - 1) : ((NUM_INP_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * AuxType_AUX_BITS : 0)] inp_pipe_aux_q;
	reg [0:NUM_INP_REGS] inp_pipe_vec_op_q;
	reg [0:NUM_INP_REGS] inp_pipe_valid_q;
	wire [0:NUM_INP_REGS] inp_pipe_ready;
	wire [2 * WIDTH:1] sv2v_tmp_232C4;
	assign sv2v_tmp_232C4 = operands_i;
	always @(*) inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2] = sv2v_tmp_232C4;
	wire [3:1] sv2v_tmp_E1734;
	assign sv2v_tmp_E1734 = rnd_mode_i;
	always @(*) inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3+:3] = sv2v_tmp_E1734;
	wire [4:1] sv2v_tmp_B87DE;
	assign sv2v_tmp_B87DE = op_i;
	always @(*) inp_pipe_op_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] = sv2v_tmp_B87DE;
	wire [3:1] sv2v_tmp_43006;
	assign sv2v_tmp_43006 = dst_fmt_i;
	always @(*) inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_43006;
	wire [1:1] sv2v_tmp_DE624;
	assign sv2v_tmp_DE624 = tag_i;
	always @(*) inp_pipe_tag_q[0] = sv2v_tmp_DE624;
	wire [1:1] sv2v_tmp_AE6A6;
	assign sv2v_tmp_AE6A6 = mask_i;
	always @(*) inp_pipe_mask_q[0] = sv2v_tmp_AE6A6;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_B26BA;
	assign sv2v_tmp_B26BA = aux_i;
	always @(*) inp_pipe_aux_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_B26BA;
	wire [1:1] sv2v_tmp_8F475;
	assign sv2v_tmp_8F475 = vectorial_op_i;
	always @(*) inp_pipe_vec_op_q[0] = sv2v_tmp_8F475;
	wire [1:1] sv2v_tmp_CFC25;
	assign sv2v_tmp_CFC25 = in_valid_i;
	always @(*) inp_pipe_valid_q[0] = sv2v_tmp_CFC25;
	assign in_ready_o = inp_pipe_ready[0];
	genvar _gv_i_10;
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	function automatic [AuxType_AUX_BITS - 1:0] sv2v_cast_533F1;
		input reg [AuxType_AUX_BITS - 1:0] inp;
		sv2v_cast_533F1 = inp;
	endfunction
	generate
		for (_gv_i_10 = 0; _gv_i_10 < NUM_INP_REGS; _gv_i_10 = _gv_i_10 + 1) begin : gen_input_pipeline
			localparam i = _gv_i_10;
			wire reg_ena;
			assign inp_pipe_ready[i] = inp_pipe_ready[i + 1] | ~inp_pipe_valid_q[i + 1];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_valid_q[i + 1] <= 1'b0;
				else
					inp_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (inp_pipe_ready[i] ? inp_pipe_valid_q[i] : inp_pipe_valid_q[i + 1]));
			assign reg_ena = (inp_pipe_ready[i] & inp_pipe_valid_q[i]) | reg_ena_i[i];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2] <= 1'sb0;
				else
					inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2] <= (reg_ena ? inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2] : inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3] <= 3'b000;
				else
					inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3] <= (reg_ena ? inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3+:3] : inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] <= sv2v_cast_4CD2E(0);
				else
					inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] <= (reg_ena ? inp_pipe_op_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] : inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_tag_q[i + 1] <= 1'b0;
				else
					inp_pipe_tag_q[i + 1] <= (reg_ena ? inp_pipe_tag_q[i] : inp_pipe_tag_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_mask_q[i + 1] <= 1'sb0;
				else
					inp_pipe_mask_q[i + 1] <= (reg_ena ? inp_pipe_mask_q[i] : inp_pipe_mask_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_vec_op_q[i + 1] <= sv2v_cast_533F1(1'sb0);
				else
					inp_pipe_vec_op_q[i + 1] <= (reg_ena ? inp_pipe_vec_op_q[i] : inp_pipe_vec_op_q[i + 1]);
		end
	endgenerate
	assign operands_q = inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2];
	assign rnd_mode_q = inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3];
	assign op_q = inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS];
	assign dst_fmt_q = inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	assign in_valid_q = inp_pipe_valid_q[NUM_INP_REGS];
	wire last_inp_reg_ena;
	generate
		if (NUM_INP_REGS >= 1) begin : gen_last_inp_reg_ena_valid
			assign last_inp_reg_ena = reg_ena_i[NUM_INP_REGS - 1];
		end
		else begin : gen_last_inp_reg_ena_zero
			assign last_inp_reg_ena = 1'b0;
		end
	endgenerate
	reg ext_op_start_q;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			ext_op_start_q <= 1'b0;
		else
			ext_op_start_q <= last_inp_reg_ena;
	reg [3:0] divsqrt_fmt;
	generate
		if (WIDTH == 64) begin : translate_fmt_64_bits
			always @(*) begin : translate_fmt
				if (_sv2v_0)
					;
				(* full_case, parallel_case *)
				case (dst_fmt_q)
					sv2v_cast_5D882('d1): divsqrt_fmt = 4'b1000;
					sv2v_cast_5D882('d0): divsqrt_fmt = 4'b0100;
					sv2v_cast_5D882('d2): divsqrt_fmt = 4'b0010;
					sv2v_cast_5D882('d4): divsqrt_fmt = 4'b0001;
					default: divsqrt_fmt = 4'b1000;
				endcase
			end
		end
		else if (WIDTH == 32) begin : translate_fmt_32_bits
			always @(*) begin : translate_fmt
				if (_sv2v_0)
					;
				(* full_case, parallel_case *)
				case (dst_fmt_q)
					sv2v_cast_5D882('d0): divsqrt_fmt = 4'b0100;
					sv2v_cast_5D882('d2): divsqrt_fmt = 4'b0010;
					sv2v_cast_5D882('d4): divsqrt_fmt = 4'b0001;
					default: divsqrt_fmt = 4'b0100;
				endcase
			end
		end
		else if (WIDTH == 16) begin : translate_fmt_16_bits
			always @(*) begin : translate_fmt
				if (_sv2v_0)
					;
				(* full_case, parallel_case *)
				case (dst_fmt_q)
					sv2v_cast_5D882('d2): divsqrt_fmt = 4'b0010;
					sv2v_cast_5D882('d4): divsqrt_fmt = 4'b0001;
					default: divsqrt_fmt = 4'b0010;
				endcase
			end
		end
		else begin : genblk3
			initial begin
				$display("Fatal [elaboration] C:\Users\jtori\OneDrive\Escritorio\cvfpu\fpnew_divsqrt_th_64_multi.sv:193:5 - fpnew_divsqrt_th_64_multi.genblk3\n msg: ", "DivSqrt THMULTI: Unsupported WIDTH (the supported width are 64, 32, 16)");
				$finish(1);
			end
		end
	endgenerate
	reg in_ready;
	wire div_valid;
	wire sqrt_valid;
	wire unit_ready;
	wire unit_done;
	reg unit_done_q;
	wire op_starting;
	reg out_valid;
	wire out_ready;
	reg unit_busy;
	wire simd_synch_done;
	reg [1:0] state_q;
	reg [1:0] state_d;
	assign div_valid = (((in_valid_q & in_ready) & ~flush_i) | ext_op_start_q) & (op_q == sv2v_cast_4CD2E(4));
	assign sqrt_valid = (((in_valid_q & in_ready) & ~flush_i) | ext_op_start_q) & (op_q != sv2v_cast_4CD2E(4));
	assign op_starting = div_valid | sqrt_valid;
	reg result_tag_q;
	reg result_mask_q;
	reg [AuxType_AUX_BITS - 1:0] result_aux_q;
	reg result_vec_op_q;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			result_tag_q <= 1'sb0;
		else
			result_tag_q <= (op_starting ? inp_pipe_tag_q[NUM_INP_REGS] : result_tag_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			result_mask_q <= 1'sb0;
		else
			result_mask_q <= (op_starting ? inp_pipe_mask_q[NUM_INP_REGS] : result_mask_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			result_aux_q <= 1'sb0;
		else
			result_aux_q <= (op_starting ? inp_pipe_aux_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : result_aux_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			result_vec_op_q <= 1'sb0;
		else
			result_vec_op_q <= (op_starting ? inp_pipe_vec_op_q[NUM_INP_REGS] : result_vec_op_q);
	assign simd_synch_done = simd_synch_done_i || ~result_vec_op_q;
	wire unit_done_clear;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			unit_done_q <= 1'b0;
		else
			unit_done_q <= (unit_done_clear ? 1'b0 : (unit_done ? unit_done : unit_done_q));
	assign unit_done_clear = simd_synch_done | last_inp_reg_ena;
	assign divsqrt_done_o = (unit_done_q | unit_done) & result_vec_op_q;
	assign divsqrt_ready_o = in_ready;
	assign inp_pipe_ready[NUM_INP_REGS] = (result_vec_op_q ? simd_synch_rdy_i : in_ready);
	always @(*) begin : flag_fsm
		if (_sv2v_0)
			;
		in_ready = 1'b0;
		out_valid = 1'b0;
		unit_busy = 1'b0;
		state_d = state_q;
		(* full_case, parallel_case *)
		case (state_q)
			2'd0: begin
				in_ready = 1'b1;
				if (in_valid_q && unit_ready)
					state_d = 2'd1;
			end
			2'd1: begin
				unit_busy = 1'b1;
				if (simd_synch_done_i || (~result_vec_op_q && unit_done)) begin
					out_valid = 1'b1;
					if (out_ready) begin
						state_d = 2'd0;
						in_ready = 1'b1;
						if (in_valid_q && unit_ready)
							state_d = 2'd1;
					end
					else
						state_d = 2'd2;
				end
			end
			2'd2: begin
				unit_busy = 1'b1;
				out_valid = 1'b1;
				if (out_ready) begin
					state_d = 2'd0;
					if (in_valid_q && unit_ready) begin
						in_ready = 1'b1;
						state_d = 2'd1;
					end
				end
			end
			default: state_d = 2'd0;
		endcase
		if (flush_i) begin
			unit_busy = 1'b0;
			out_valid = 1'b0;
			state_d = 2'd0;
		end
	end
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			state_q <= 2'd0;
		else
			state_q <= state_d;
	wire [63:0] unit_result;
	reg [63:0] held_result_q;
	wire [4:0] unit_status;
	reg [4:0] held_status_q;
	wire hold_en;
	wire vfdsu_dp_fdiv_busy;
	reg [2:0] rm_q;
	reg [3:0] divsqrt_fmt_q;
	reg [3:0] divsqrt_op_q;
	wire div_op;
	wire sqrt_op;
	reg [WIDTH - 1:0] srcf0_q;
	reg [WIDTH - 1:0] srcf1_q;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			rm_q <= 3'b000;
		else
			rm_q <= (op_starting ? rnd_mode_q : rm_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			divsqrt_fmt_q <= 1'sb0;
		else
			divsqrt_fmt_q <= (op_starting ? divsqrt_fmt : divsqrt_fmt_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			divsqrt_op_q <= sv2v_cast_4CD2E(4);
		else
			divsqrt_op_q <= (op_starting ? op_q : divsqrt_op_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			srcf0_q <= 1'sb0;
		else
			srcf0_q <= (op_starting ? operands_q[0+:WIDTH] : srcf0_q);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			srcf1_q <= 1'sb0;
		else
			srcf1_q <= (op_starting ? operands_q[WIDTH+:WIDTH] : srcf1_q);
	assign div_op = (divsqrt_op_q == sv2v_cast_4CD2E(4) ? 1'b1 : 1'b0);
	assign sqrt_op = (divsqrt_op_q != sv2v_cast_4CD2E(4) ? 1'b1 : 1'b0);
	reg func_sel;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			func_sel <= 1'b0;
		else
			func_sel <= (func_sel ? 1'b0 : (op_starting ? 1'b1 : func_sel));
	reg op_sel;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			op_sel <= 1'b0;
		else
			op_sel <= (op_sel ? 1'b0 : (func_sel ? 1'b1 : op_sel));
	ct_vfdsu_top i_ct_vfdsu_top(
		.cp0_vfpu_icg_en(1'b0),
		.cp0_yy_clk_en(1'b1),
		.cpurst_b(rst_ni),
		.dp_vfdsu_ex1_pipex_dst_ereg(1'sb0),
		.dp_vfdsu_ex1_pipex_dst_vreg(1'sb0),
		.dp_vfdsu_ex1_pipex_iid(1'sb0),
		.dp_vfdsu_ex1_pipex_imm0(3'b111),
		.dp_vfdsu_ex1_pipex_sel(op_sel),
		.dp_vfdsu_ex1_pipex_srcf0(srcf0_q),
		.dp_vfdsu_ex1_pipex_srcf1(srcf1_q),
		.dp_vfdsu_fdiv_gateclk_issue(1'b1),
		.dp_vfdsu_idu_fdiv_issue(op_starting),
		.forever_cpuclk(clk_i),
		.idu_vfpu_rf_pipex_func({3'b000, divsqrt_fmt_q, 11'b00000000000, sqrt_op, div_op}),
		.idu_vfpu_rf_pipex_gateclk_sel(func_sel),
		.pad_yy_icg_scan_en(1'b0),
		.rtu_yy_xx_flush(flush_i | last_inp_reg_ena),
		.vfpu_yy_xx_dqnan(1'b0),
		.vfpu_yy_xx_rm(rm_q),
		.pipex_dp_vfdsu_ereg(),
		.pipex_dp_vfdsu_ereg_data(unit_status),
		.pipex_dp_vfdsu_freg_data(unit_result),
		.pipex_dp_vfdsu_inst_vld(unit_done),
		.pipex_dp_vfdsu_vreg(),
		.vfdsu_dp_fdiv_busy(vfdsu_dp_fdiv_busy),
		.vfdsu_dp_inst_wb_req(),
		.vfdsu_ifu_debug_ex2_wait(),
		.vfdsu_ifu_debug_idle(),
		.vfdsu_ifu_debug_pipe_busy()
	);
	assign unit_ready = !vfdsu_dp_fdiv_busy;
	assign hold_en = (unit_done & (~simd_synch_done_i | ~out_ready)) & ~(~result_vec_op_q & out_ready);
	always @(posedge clk_i) held_result_q <= (hold_en ? unit_result : held_result_q);
	always @(posedge clk_i) held_status_q <= (hold_en ? unit_status : held_status_q);
	wire [WIDTH - 1:0] result_d;
	wire [4:0] status_d;
	assign result_d[WIDTH - 1:0] = (unit_done_q ? held_result_q[WIDTH - 1:0] : unit_result[WIDTH - 1:0]);
	assign status_d = (unit_done_q ? held_status_q : unit_status);
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * WIDTH) + ((NUM_OUT_REGS * WIDTH) - 1) : ((NUM_OUT_REGS + 1) * WIDTH) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * WIDTH : 0)] out_pipe_result_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 5) + ((NUM_OUT_REGS * 5) - 1) : ((NUM_OUT_REGS + 1) * 5) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 5 : 0)] out_pipe_status_q;
	reg [0:NUM_OUT_REGS] out_pipe_tag_q;
	reg [0:NUM_OUT_REGS] out_pipe_mask_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * AuxType_AUX_BITS) + ((NUM_OUT_REGS * AuxType_AUX_BITS) - 1) : ((NUM_OUT_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * AuxType_AUX_BITS : 0)] out_pipe_aux_q;
	reg [0:NUM_OUT_REGS] out_pipe_valid_q;
	wire [0:NUM_OUT_REGS] out_pipe_ready;
	wire [WIDTH * 1:1] sv2v_tmp_B3E4A;
	assign sv2v_tmp_B3E4A = result_d;
	always @(*) out_pipe_result_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * WIDTH+:WIDTH] = sv2v_tmp_B3E4A;
	wire [5:1] sv2v_tmp_CE094;
	assign sv2v_tmp_CE094 = status_d;
	always @(*) out_pipe_status_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 5+:5] = sv2v_tmp_CE094;
	wire [1:1] sv2v_tmp_AFEEA;
	assign sv2v_tmp_AFEEA = result_tag_q;
	always @(*) out_pipe_tag_q[0] = sv2v_tmp_AFEEA;
	wire [1:1] sv2v_tmp_0A048;
	assign sv2v_tmp_0A048 = result_mask_q;
	always @(*) out_pipe_mask_q[0] = sv2v_tmp_0A048;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_39624;
	assign sv2v_tmp_39624 = result_aux_q;
	always @(*) out_pipe_aux_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_39624;
	wire [1:1] sv2v_tmp_F96BC;
	assign sv2v_tmp_F96BC = out_valid;
	always @(*) out_pipe_valid_q[0] = sv2v_tmp_F96BC;
	assign out_ready = out_pipe_ready[0];
	genvar _gv_i_11;
	generate
		for (_gv_i_11 = 0; _gv_i_11 < NUM_OUT_REGS; _gv_i_11 = _gv_i_11 + 1) begin : gen_output_pipeline
			localparam i = _gv_i_11;
			wire reg_ena;
			assign out_pipe_ready[i] = out_pipe_ready[i + 1] | ~out_pipe_valid_q[i + 1];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_valid_q[i + 1] <= 1'b0;
				else
					out_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (out_pipe_ready[i] ? out_pipe_valid_q[i] : out_pipe_valid_q[i + 1]));
			assign reg_ena = (out_pipe_ready[i] & out_pipe_valid_q[i]) | reg_ena_i[NUM_INP_REGS + i];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH] <= 1'sb0;
				else
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH] <= (reg_ena ? out_pipe_result_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * WIDTH+:WIDTH] : out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= 1'sb0;
				else
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= (reg_ena ? out_pipe_status_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * 5+:5] : out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_tag_q[i + 1] <= 1'b0;
				else
					out_pipe_tag_q[i + 1] <= (reg_ena ? out_pipe_tag_q[i] : out_pipe_tag_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_mask_q[i + 1] <= 1'sb0;
				else
					out_pipe_mask_q[i + 1] <= (reg_ena ? out_pipe_mask_q[i] : out_pipe_mask_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	assign out_pipe_ready[NUM_OUT_REGS] = out_ready_i;
	assign result_o = out_pipe_result_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * WIDTH+:WIDTH];
	assign status_o = out_pipe_status_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * 5+:5];
	assign extension_bit_o = 1'b1;
	assign tag_o = out_pipe_tag_q[NUM_OUT_REGS];
	assign mask_o = out_pipe_mask_q[NUM_OUT_REGS];
	assign aux_o = out_pipe_aux_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	assign out_valid_o = out_pipe_valid_q[NUM_OUT_REGS];
	assign busy_o = |{inp_pipe_valid_q, unit_busy, out_pipe_valid_q};
	generate
		if (NUM_OUT_REGS > 0) begin : genblk5
			assign early_out_valid_o = |{out_pipe_valid_q[NUM_OUT_REGS] & ~out_pipe_ready[NUM_OUT_REGS], out_pipe_valid_q[NUM_OUT_REGS - 1]};
		end
		else if (NUM_INP_REGS > 0) begin : genblk5
			assign early_out_valid_o = |{inp_pipe_valid_q[NUM_INP_REGS] & ~inp_pipe_ready[NUM_INP_REGS], inp_pipe_valid_q[NUM_INP_REGS - 1]};
		end
		else begin : genblk5
			assign early_out_valid_o = 1'b0;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
