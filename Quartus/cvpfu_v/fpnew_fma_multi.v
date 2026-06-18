module fpnew_fma_multi_B5D6B_2D261 (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	op_mod_i,
	src_fmt_i,
	src2_fmt_i,
	dst_fmt_i,
	tag_i,
	mask_i,
	aux_i,
	in_valid_i,
	in_ready_o,
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
	parameter [1:0] PipeConfig = 2'd0;
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
	input wire [(3 * WIDTH) - 1:0] operands_i;
	input wire [14:0] is_boxed_i;
	input wire [2:0] rnd_mode_i;
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	input wire [3:0] op_i;
	input wire op_mod_i;
	input wire [2:0] src_fmt_i;
	input wire [2:0] src2_fmt_i;
	input wire [2:0] dst_fmt_i;
	input wire tag_i;
	input wire mask_i;
	input wire [AuxType_AUX_BITS - 1:0] aux_i;
	input wire in_valid_i;
	output wire in_ready_o;
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
	function automatic [31:0] fpnew_pkg_exp_bits;
		input reg [2:0] fmt;
		fpnew_pkg_exp_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32];
	endfunction
	function automatic [31:0] fpnew_pkg_man_bits;
		input reg [2:0] fmt;
		fpnew_pkg_man_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32];
	endfunction
	function automatic [63:0] fpnew_pkg_super_format;
		input reg [0:4] cfg;
		reg [63:0] res;
		begin
			res = 1'sb0;
			begin : sv2v_autoblock_2
				reg [31:0] fmt;
				for (fmt = 0; fmt < fpnew_pkg_NUM_FP_FORMATS; fmt = fmt + 1)
					if (cfg[fmt]) begin
						res[63-:32] = $unsigned(fpnew_pkg_maximum(res[63-:32], fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt))));
						res[31-:32] = $unsigned(fpnew_pkg_maximum(res[31-:32], fpnew_pkg_man_bits(sv2v_cast_5D882(fmt))));
					end
			end
			fpnew_pkg_super_format = res;
		end
	endfunction
	localparam [63:0] SUPER_FORMAT = fpnew_pkg_super_format(FpFmtConfig);
	localparam [31:0] SUPER_EXP_BITS = SUPER_FORMAT[63-:32];
	localparam [31:0] SUPER_MAN_BITS = SUPER_FORMAT[31-:32];
	localparam [31:0] PRECISION_BITS = SUPER_MAN_BITS + 1;
	localparam [31:0] LOWER_SUM_WIDTH = (2 * PRECISION_BITS) + 3;
	localparam [31:0] LZC_RESULT_WIDTH = $clog2(LOWER_SUM_WIDTH);
	localparam [31:0] EXP_WIDTH = fpnew_pkg_maximum(SUPER_EXP_BITS + 2, LZC_RESULT_WIDTH);
	localparam [31:0] SHIFT_AMOUNT_WIDTH = $clog2((3 * PRECISION_BITS) + 5);
	localparam NUM_INP_REGS = (PipeConfig == 2'd0 ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 1) / 3 : 0));
	localparam NUM_MID_REGS = (PipeConfig == 2'd2 ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 2) / 3 : 0));
	localparam NUM_OUT_REGS = (PipeConfig == 2'd1 ? NumPipeRegs : (PipeConfig == 2'd3 ? NumPipeRegs / 3 : 0));
	wire [(3 * WIDTH) - 1:0] operands_q;
	wire [2:0] src_fmt_q;
	wire [2:0] src2_fmt_q;
	wire [2:0] dst_fmt_q;
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) * WIDTH) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) * WIDTH) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) * WIDTH : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) * WIDTH)] inp_pipe_operands_q;
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0)) + 1) * 3) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) * 3) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)) + 1) * 3) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) * 3) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) * 3 : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) * 3)] inp_pipe_is_boxed_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)] inp_pipe_rnd_mode_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_OP_BITS) + ((NUM_INP_REGS * fpnew_pkg_OP_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_OP_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_OP_BITS : 0)] inp_pipe_op_q;
	reg [0:NUM_INP_REGS] inp_pipe_op_mod_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_src_fmt_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_src2_fmt_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_dst_fmt_q;
	reg [0:NUM_INP_REGS] inp_pipe_tag_q;
	reg [0:NUM_INP_REGS] inp_pipe_mask_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * AuxType_AUX_BITS) + ((NUM_INP_REGS * AuxType_AUX_BITS) - 1) : ((NUM_INP_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * AuxType_AUX_BITS : 0)] inp_pipe_aux_q;
	reg [0:NUM_INP_REGS] inp_pipe_valid_q;
	wire [0:NUM_INP_REGS] inp_pipe_ready;
	wire [3 * WIDTH:1] sv2v_tmp_2F660;
	assign sv2v_tmp_2F660 = operands_i;
	always @(*) inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] = sv2v_tmp_2F660;
	wire [15:1] sv2v_tmp_F6596;
	assign sv2v_tmp_F6596 = is_boxed_i;
	always @(*) inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] = sv2v_tmp_F6596;
	wire [3:1] sv2v_tmp_D6AA0;
	assign sv2v_tmp_D6AA0 = rnd_mode_i;
	always @(*) inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3+:3] = sv2v_tmp_D6AA0;
	wire [4:1] sv2v_tmp_99256;
	assign sv2v_tmp_99256 = op_i;
	always @(*) inp_pipe_op_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] = sv2v_tmp_99256;
	wire [1:1] sv2v_tmp_72E02;
	assign sv2v_tmp_72E02 = op_mod_i;
	always @(*) inp_pipe_op_mod_q[0] = sv2v_tmp_72E02;
	wire [3:1] sv2v_tmp_97D9E;
	assign sv2v_tmp_97D9E = src_fmt_i;
	always @(*) inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_97D9E;
	wire [3:1] sv2v_tmp_64EC0;
	assign sv2v_tmp_64EC0 = src2_fmt_i;
	always @(*) inp_pipe_src2_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_64EC0;
	wire [3:1] sv2v_tmp_C878E;
	assign sv2v_tmp_C878E = dst_fmt_i;
	always @(*) inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_C878E;
	wire [1:1] sv2v_tmp_DE624;
	assign sv2v_tmp_DE624 = tag_i;
	always @(*) inp_pipe_tag_q[0] = sv2v_tmp_DE624;
	wire [1:1] sv2v_tmp_AE6A6;
	assign sv2v_tmp_AE6A6 = mask_i;
	always @(*) inp_pipe_mask_q[0] = sv2v_tmp_AE6A6;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_0E322;
	assign sv2v_tmp_0E322 = aux_i;
	always @(*) inp_pipe_aux_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_0E322;
	wire [1:1] sv2v_tmp_CFC25;
	assign sv2v_tmp_CFC25 = in_valid_i;
	always @(*) inp_pipe_valid_q[0] = sv2v_tmp_CFC25;
	assign in_ready_o = inp_pipe_ready[0];
	genvar _gv_i_15;
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	function automatic [AuxType_AUX_BITS - 1:0] sv2v_cast_533F1;
		input reg [AuxType_AUX_BITS - 1:0] inp;
		sv2v_cast_533F1 = inp;
	endfunction
	generate
		for (_gv_i_15 = 0; _gv_i_15 < NUM_INP_REGS; _gv_i_15 = _gv_i_15 + 1) begin : gen_input_pipeline
			localparam i = _gv_i_15;
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
					inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] <= 1'sb0;
				else
					inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] <= (reg_ena ? inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] : inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] <= 1'sb0;
				else
					inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] <= (reg_ena ? inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] : inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15]);
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
					inp_pipe_op_mod_q[i + 1] <= 1'sb0;
				else
					inp_pipe_op_mod_q[i + 1] <= (reg_ena ? inp_pipe_op_mod_q[i] : inp_pipe_op_mod_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_src2_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					inp_pipe_src2_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_src2_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_src2_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
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
		end
	endgenerate
	assign operands_q = inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3];
	assign src_fmt_q = inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	assign src2_fmt_q = inp_pipe_src2_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	assign dst_fmt_q = inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	wire [14:0] fmt_sign;
	wire signed [(15 * SUPER_EXP_BITS) - 1:0] fmt_exponent;
	wire [(15 * SUPER_MAN_BITS) - 1:0] fmt_mantissa;
	wire [119:0] info_q;
	genvar _gv_fmt_9;
	localparam [0:0] fpnew_pkg_DONT_CARE = 1'b1;
	function automatic [7:0] sv2v_cast_8;
		input reg [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	function automatic signed [SUPER_EXP_BITS - 1:0] sv2v_cast_994BB_signed;
		input reg signed [SUPER_EXP_BITS - 1:0] inp;
		sv2v_cast_994BB_signed = inp;
	endfunction
	function automatic [SUPER_MAN_BITS - 1:0] sv2v_cast_3FC64;
		input reg [SUPER_MAN_BITS - 1:0] inp;
		sv2v_cast_3FC64 = inp;
	endfunction
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_fmt_9 = 0; _gv_fmt_9 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_9 = _gv_fmt_9 + 1) begin : fmt_init_inputs
			localparam fmt = _gv_fmt_9;
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				localparam [2:0] FpFormat = sv2v_cast_5D882(fmt);
				wire [(3 * FP_WIDTH) - 1:0] trimmed_ops;
				fpnew_classifier #(
					.FpFormat(FpFormat),
					.NumOperands(3)
				) i_fpnew_classifier(
					.operands_i(trimmed_ops),
					.is_boxed_i(inp_pipe_is_boxed_q[((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * NUM_FORMATS) + fmt : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - ((((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * NUM_FORMATS) + fmt) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1))) * 3+:3]),
					.info_o(info_q[8 * (fmt * 3)+:24])
				);
				genvar _gv_op_2;
				for (_gv_op_2 = 0; _gv_op_2 < 3; _gv_op_2 = _gv_op_2 + 1) begin : gen_operands
					localparam op = _gv_op_2;
					assign trimmed_ops[op * fpnew_pkg_fp_width(sv2v_cast_5D882(_gv_fmt_9))+:fpnew_pkg_fp_width(sv2v_cast_5D882(_gv_fmt_9))] = operands_q[(op * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH];
					assign fmt_sign[(fmt * 3) + op] = operands_q[(op * WIDTH) + (FP_WIDTH - 1)];
					assign fmt_exponent[((fmt * 3) + op) * SUPER_EXP_BITS+:SUPER_EXP_BITS] = $signed({1'b0, operands_q[(op * WIDTH) + MAN_BITS+:EXP_BITS]});
					assign fmt_mantissa[((fmt * 3) + op) * SUPER_MAN_BITS+:SUPER_MAN_BITS] = {info_q[(((fmt * 3) + op) * 8) + 7], operands_q[(op * WIDTH) + (MAN_BITS - 1)-:MAN_BITS]} << (SUPER_MAN_BITS - MAN_BITS);
				end
			end
			else begin : inactive_format
				assign info_q[8 * (fmt * 3)+:24] = {3 {sv2v_cast_8(fpnew_pkg_DONT_CARE)}};
				assign fmt_sign[fmt * 3+:3] = fpnew_pkg_DONT_CARE;
				assign fmt_exponent[SUPER_EXP_BITS * (fmt * 3)+:SUPER_EXP_BITS * 3] = {3 {sv2v_cast_994BB_signed(fpnew_pkg_DONT_CARE)}};
				assign fmt_mantissa[SUPER_MAN_BITS * (fmt * 3)+:SUPER_MAN_BITS * 3] = {3 {sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)}};
			end
		end
	endgenerate
	reg [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] operand_a;
	reg [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] operand_b;
	reg [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] operand_c;
	reg [7:0] info_a;
	reg [7:0] info_b;
	reg [7:0] info_c;
	function automatic [31:0] fpnew_pkg_bias;
		input reg [2:0] fmt;
		fpnew_pkg_bias = $unsigned((2 ** (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] - 1)) - 1);
	endfunction
	function automatic [SUPER_EXP_BITS - 1:0] sv2v_cast_994BB;
		input reg [SUPER_EXP_BITS - 1:0] inp;
		sv2v_cast_994BB = inp;
	endfunction
	function automatic [SUPER_MAN_BITS - 1:0] sv2v_cast_2F96C;
		input reg [SUPER_MAN_BITS - 1:0] inp;
		sv2v_cast_2F96C = inp;
	endfunction
	function automatic [SUPER_EXP_BITS - 1:0] sv2v_cast_1FC93;
		input reg [SUPER_EXP_BITS - 1:0] inp;
		sv2v_cast_1FC93 = inp;
	endfunction
	always @(*) begin : op_select
		if (_sv2v_0)
			;
		operand_a = {fmt_sign[src_fmt_q * 3], fmt_exponent[(src_fmt_q * 3) * SUPER_EXP_BITS+:SUPER_EXP_BITS], fmt_mantissa[(src_fmt_q * 3) * SUPER_MAN_BITS+:SUPER_MAN_BITS]};
		operand_b = {fmt_sign[(src_fmt_q * 3) + 1], fmt_exponent[((src_fmt_q * 3) + 1) * SUPER_EXP_BITS+:SUPER_EXP_BITS], fmt_mantissa[((src_fmt_q * 3) + 1) * SUPER_MAN_BITS+:SUPER_MAN_BITS]};
		operand_c = {fmt_sign[(src2_fmt_q * 3) + 2], fmt_exponent[((src2_fmt_q * 3) + 2) * SUPER_EXP_BITS+:SUPER_EXP_BITS], fmt_mantissa[((src2_fmt_q * 3) + 2) * SUPER_MAN_BITS+:SUPER_MAN_BITS]};
		info_a = info_q[(src_fmt_q * 3) * 8+:8];
		info_b = info_q[((src_fmt_q * 3) + 1) * 8+:8];
		info_c = info_q[((src2_fmt_q * 3) + 2) * 8+:8];
		operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] = operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ inp_pipe_op_mod_q[NUM_INP_REGS];
		(* full_case, parallel_case *)
		case (inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS])
			sv2v_cast_4CD2E(0):
				;
			sv2v_cast_4CD2E(1): operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] = ~operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))];
			sv2v_cast_4CD2E(2), sv2v_cast_4CD2E(15): begin
				operand_a = {1'b0, sv2v_cast_994BB(fpnew_pkg_bias(src_fmt_q)), sv2v_cast_2F96C(1'sb0)};
				info_a = 8'b10000001;
			end
			sv2v_cast_4CD2E(3): begin
				if (inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3] == 3'b010)
					operand_c = {1'b0, sv2v_cast_1FC93(1'sb0), sv2v_cast_2F96C(1'sb0)};
				else
					operand_c = {1'b1, sv2v_cast_1FC93(1'sb0), sv2v_cast_2F96C(1'sb0)};
				info_c = 8'b00100001;
			end
			default: begin
				operand_a = {fpnew_pkg_DONT_CARE, sv2v_cast_994BB(fpnew_pkg_DONT_CARE), sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)};
				operand_b = {fpnew_pkg_DONT_CARE, sv2v_cast_994BB(fpnew_pkg_DONT_CARE), sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)};
				operand_c = {fpnew_pkg_DONT_CARE, sv2v_cast_994BB(fpnew_pkg_DONT_CARE), sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)};
				info_a = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				info_b = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				info_c = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
			end
		endcase
	end
	wire any_operand_inf;
	wire any_operand_nan;
	wire signalling_nan;
	wire effective_subtraction;
	wire tentative_sign;
	assign any_operand_inf = |{info_a[4], info_b[4], info_c[4]};
	assign any_operand_nan = |{info_a[3], info_b[3], info_c[3]};
	assign signalling_nan = |{info_a[2], info_b[2], info_c[2]};
	assign effective_subtraction = (operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ operand_b[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))]) ^ operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))];
	assign tentative_sign = operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ operand_b[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))];
	wire [WIDTH - 1:0] special_result;
	wire [4:0] special_status;
	wire result_is_special;
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_special_result;
	reg [24:0] fmt_special_status;
	reg [4:0] fmt_result_is_special;
	genvar _gv_fmt_10;
	generate
		for (_gv_fmt_10 = 0; _gv_fmt_10 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_10 = _gv_fmt_10 + 1) begin : gen_special_results
			localparam fmt = _gv_fmt_10;
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			localparam [EXP_BITS - 1:0] QNAN_EXPONENT = 1'sb1;
			localparam [MAN_BITS - 1:0] QNAN_MANTISSA = 2 ** (MAN_BITS - 1);
			localparam [MAN_BITS - 1:0] ZERO_MANTISSA = 1'sb0;
			if (FpFmtConfig[fmt]) begin : active_format
				always @(*) begin : special_results
					reg [FP_WIDTH - 1:0] special_res;
					if (_sv2v_0)
						;
					special_res = {1'b0, QNAN_EXPONENT, QNAN_MANTISSA};
					fmt_special_status[fmt * 5+:5] = 1'sb0;
					fmt_result_is_special[fmt] = 1'b0;
					if ((info_a[4] && info_b[5]) || (info_a[5] && info_b[4])) begin
						fmt_result_is_special[fmt] = 1'b1;
						fmt_special_status[(fmt * 5) + 4] = 1'b1;
					end
					else if (any_operand_nan) begin
						fmt_result_is_special[fmt] = 1'b1;
						fmt_special_status[(fmt * 5) + 4] = signalling_nan;
					end
					else if (any_operand_inf) begin
						fmt_result_is_special[fmt] = 1'b1;
						if (((info_a[4] || info_b[4]) && info_c[4]) && effective_subtraction)
							fmt_special_status[(fmt * 5) + 4] = 1'b1;
						else if (info_a[4] || info_b[4])
							special_res = {operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ operand_b[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))], QNAN_EXPONENT, ZERO_MANTISSA};
						else if (info_c[4])
							special_res = {operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))], QNAN_EXPONENT, ZERO_MANTISSA};
					end
					fmt_special_result[fmt * WIDTH+:WIDTH] = 1'sb1;
					fmt_special_result[(fmt * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH] = special_res;
				end
			end
			else begin : inactive_format
				wire [WIDTH * 1:1] sv2v_tmp_D05EE;
				assign sv2v_tmp_D05EE = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_special_result[fmt * WIDTH+:WIDTH] = sv2v_tmp_D05EE;
				wire [5:1] sv2v_tmp_0AFA1;
				assign sv2v_tmp_0AFA1 = 1'sb0;
				always @(*) fmt_special_status[fmt * 5+:5] = sv2v_tmp_0AFA1;
				wire [1:1] sv2v_tmp_EE036;
				assign sv2v_tmp_EE036 = 1'b0;
				always @(*) fmt_result_is_special[fmt] = sv2v_tmp_EE036;
			end
		end
	endgenerate
	assign result_is_special = fmt_result_is_special[dst_fmt_q];
	assign special_status = fmt_special_status[dst_fmt_q * 5+:5];
	assign special_result = fmt_special_result[dst_fmt_q * WIDTH+:WIDTH];
	wire signed [EXP_WIDTH - 1:0] exponent_a;
	wire signed [EXP_WIDTH - 1:0] exponent_b;
	wire signed [EXP_WIDTH - 1:0] exponent_c;
	wire signed [EXP_WIDTH - 1:0] exponent_addend;
	wire signed [EXP_WIDTH - 1:0] exponent_product;
	wire signed [EXP_WIDTH - 1:0] exponent_difference;
	wire signed [EXP_WIDTH - 1:0] tentative_exponent;
	assign exponent_a = $signed({1'b0, operand_a[SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)-:((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) >= (SUPER_MAN_BITS + 0) ? ((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) - (SUPER_MAN_BITS + 0)) + 1 : ((SUPER_MAN_BITS + 0) - (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))) + 1)]});
	assign exponent_b = $signed({1'b0, operand_b[SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)-:((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) >= (SUPER_MAN_BITS + 0) ? ((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) - (SUPER_MAN_BITS + 0)) + 1 : ((SUPER_MAN_BITS + 0) - (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))) + 1)]});
	assign exponent_c = $signed({1'b0, operand_c[SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)-:((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) >= (SUPER_MAN_BITS + 0) ? ((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) - (SUPER_MAN_BITS + 0)) + 1 : ((SUPER_MAN_BITS + 0) - (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))) + 1)]});
	assign exponent_addend = (info_c[5] ? 1 : $signed(((exponent_c + $signed({1'b0, ~info_c[7]})) - $signed(fpnew_pkg_bias(src2_fmt_q))) + $signed(fpnew_pkg_bias(dst_fmt_q))));
	assign exponent_product = (info_a[5] || info_b[5] ? 2 - $signed(fpnew_pkg_bias(dst_fmt_q)) : $signed(((((exponent_a + info_a[6]) + exponent_b) + info_b[6]) - (2 * $signed(fpnew_pkg_bias(src_fmt_q)))) + $signed(fpnew_pkg_bias(dst_fmt_q))));
	assign exponent_difference = exponent_addend - exponent_product;
	reg [SHIFT_AMOUNT_WIDTH - 1:0] addend_shamt;
	always @(*) begin : addend_shift_amount
		if (_sv2v_0)
			;
		if (exponent_difference <= $signed((-2 * PRECISION_BITS) - 1))
			addend_shamt = (3 * PRECISION_BITS) + 4;
		else if (exponent_difference <= $signed(PRECISION_BITS + 2))
			addend_shamt = $unsigned(($signed(PRECISION_BITS) + 3) - exponent_difference);
		else
			addend_shamt = 0;
	end
	wire [$clog2(SUPER_MAN_BITS) - 1:0] addend_lzc_count;
	wire [$clog2(SUPER_MAN_BITS):0] addend_lzc_count_sgn;
	reg [SHIFT_AMOUNT_WIDTH - 1:0] addend_normalize_shamt;
	lzc #(
		.WIDTH(SUPER_MAN_BITS),
		.MODE(1)
	) i_addend_lzc(
		.in_i(operand_c[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]),
		.cnt_o(addend_lzc_count),
		.empty_o()
	);
	assign addend_lzc_count_sgn = $signed({1'b0, addend_lzc_count});
	always @(*) begin
		if (_sv2v_0)
			;
		if (info_c[7] || info_c[5])
			addend_normalize_shamt = 0;
		else if (exponent_addend <= 1)
			addend_normalize_shamt = 0;
		else if ((addend_lzc_count_sgn + 1) < exponent_addend)
			addend_normalize_shamt = addend_lzc_count + 1;
		else
			addend_normalize_shamt = exponent_addend - 1;
	end
	assign tentative_exponent = (exponent_difference > 0 ? exponent_addend - addend_normalize_shamt : exponent_product);
	wire [PRECISION_BITS - 1:0] mantissa_a;
	wire [PRECISION_BITS - 1:0] mantissa_b;
	wire [PRECISION_BITS - 1:0] mantissa_c;
	wire [(2 * PRECISION_BITS) - 1:0] product;
	wire [(3 * PRECISION_BITS) + 3:0] product_shifted;
	assign mantissa_a = {info_a[7], operand_a[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]};
	assign mantissa_b = {info_b[7], operand_b[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]};
	assign mantissa_c = {info_c[7], operand_c[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]};
	assign product = mantissa_a * mantissa_b;
	assign product_shifted = product << 2;
	wire [(3 * PRECISION_BITS) + 3:0] addend_after_shift;
	wire [PRECISION_BITS - 1:0] addend_sticky_bits;
	wire sticky_before_add;
	wire [(3 * PRECISION_BITS) + 3:0] addend_shifted;
	wire inject_carry_in;
	assign {addend_after_shift, addend_sticky_bits} = (mantissa_c << ((3 * PRECISION_BITS) + 4)) >> addend_shamt;
	assign sticky_before_add = |addend_sticky_bits;
	assign addend_shifted = (effective_subtraction ? ~addend_after_shift : addend_after_shift);
	assign inject_carry_in = effective_subtraction & ~sticky_before_add;
	wire [(3 * PRECISION_BITS) + 4:0] sum_pos;
	wire [(3 * PRECISION_BITS) + 4:0] sum_neg;
	wire sum_carry;
	wire [(3 * PRECISION_BITS) + 3:0] sum;
	wire final_sign;
	assign sum_pos = (product_shifted + addend_shifted) + inject_carry_in;
	assign sum_carry = sum_pos[(3 * PRECISION_BITS) + 4];
	assign sum_neg = addend_after_shift - product_shifted;
	assign sum = (effective_subtraction && ~sum_carry ? sum_neg : sum_pos);
	assign final_sign = (effective_subtraction && (sum_carry == tentative_sign) ? 1'b1 : (effective_subtraction ? 1'b0 : tentative_sign));
	wire [LZC_RESULT_WIDTH - 1:0] lza_count;
	fmalza #(
		.WIDTH(LOWER_SUM_WIDTH),
		.NF(PRECISION_BITS - 1)
	) i_fmalza(
		.A(addend_shifted[LOWER_SUM_WIDTH - 1:0]),
		.Pm(product),
		.Cin(inject_carry_in),
		.sub(effective_subtraction),
		.SCnt(lza_count)
	);
	wire effective_subtraction_q;
	wire signed [EXP_WIDTH - 1:0] exponent_product_q;
	wire signed [EXP_WIDTH - 1:0] exponent_difference_q;
	wire signed [EXP_WIDTH - 1:0] tentative_exponent_q;
	wire [SHIFT_AMOUNT_WIDTH - 1:0] addend_shamt_q;
	wire sticky_before_add_q;
	wire [(3 * PRECISION_BITS) + 3:0] sum_q;
	wire [LZC_RESULT_WIDTH - 1:0] lza_count_q;
	wire final_sign_q;
	wire [2:0] dst_fmt_q2;
	wire [2:0] rnd_mode_q;
	wire result_is_special_q;
	wire [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] special_result_q;
	wire [4:0] special_status_q;
	reg [0:NUM_MID_REGS] mid_pipe_eff_sub_q;
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * EXP_WIDTH) + ((NUM_MID_REGS * EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * EXP_WIDTH : 0)] mid_pipe_exp_prod_q;
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * EXP_WIDTH) + ((NUM_MID_REGS * EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * EXP_WIDTH : 0)] mid_pipe_exp_diff_q;
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * EXP_WIDTH) + ((NUM_MID_REGS * EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * EXP_WIDTH : 0)] mid_pipe_tent_exp_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * SHIFT_AMOUNT_WIDTH) + ((NUM_MID_REGS * SHIFT_AMOUNT_WIDTH) - 1) : ((NUM_MID_REGS + 1) * SHIFT_AMOUNT_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * SHIFT_AMOUNT_WIDTH : 0)] mid_pipe_add_shamt_q;
	reg [0:NUM_MID_REGS] mid_pipe_sticky_q;
	reg [(0 >= NUM_MID_REGS ? (((3 * PRECISION_BITS) + 3) >= 0 ? ((1 - NUM_MID_REGS) * ((3 * PRECISION_BITS) + 4)) + ((NUM_MID_REGS * ((3 * PRECISION_BITS) + 4)) - 1) : ((1 - NUM_MID_REGS) * (1 - ((3 * PRECISION_BITS) + 3))) + ((((3 * PRECISION_BITS) + 3) + (NUM_MID_REGS * (1 - ((3 * PRECISION_BITS) + 3)))) - 1)) : (((3 * PRECISION_BITS) + 3) >= 0 ? ((NUM_MID_REGS + 1) * ((3 * PRECISION_BITS) + 4)) - 1 : ((NUM_MID_REGS + 1) * (1 - ((3 * PRECISION_BITS) + 3))) + ((3 * PRECISION_BITS) + 2))):(0 >= NUM_MID_REGS ? (((3 * PRECISION_BITS) + 3) >= 0 ? NUM_MID_REGS * ((3 * PRECISION_BITS) + 4) : ((3 * PRECISION_BITS) + 3) + (NUM_MID_REGS * (1 - ((3 * PRECISION_BITS) + 3)))) : (((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3))] mid_pipe_sum_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * LZC_RESULT_WIDTH) + ((NUM_MID_REGS * LZC_RESULT_WIDTH) - 1) : ((NUM_MID_REGS + 1) * LZC_RESULT_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * LZC_RESULT_WIDTH : 0)] mid_pipe_lza_count_q;
	reg [0:NUM_MID_REGS] mid_pipe_final_sign_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * 3) + ((NUM_MID_REGS * 3) - 1) : ((NUM_MID_REGS + 1) * 3) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * 3 : 0)] mid_pipe_rnd_mode_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_MID_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] mid_pipe_dst_fmt_q;
	reg [0:NUM_MID_REGS] mid_pipe_res_is_spec_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)) + ((NUM_MID_REGS * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)) - 1) : ((NUM_MID_REGS + 1) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) : 0)] mid_pipe_spec_res_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * 5) + ((NUM_MID_REGS * 5) - 1) : ((NUM_MID_REGS + 1) * 5) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * 5 : 0)] mid_pipe_spec_stat_q;
	reg [0:NUM_MID_REGS] mid_pipe_tag_q;
	reg [0:NUM_MID_REGS] mid_pipe_mask_q;
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * AuxType_AUX_BITS) + ((NUM_MID_REGS * AuxType_AUX_BITS) - 1) : ((NUM_MID_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * AuxType_AUX_BITS : 0)] mid_pipe_aux_q;
	reg [0:NUM_MID_REGS] mid_pipe_valid_q;
	wire [0:NUM_MID_REGS] mid_pipe_ready;
	wire [1:1] sv2v_tmp_301F1;
	assign sv2v_tmp_301F1 = effective_subtraction;
	always @(*) mid_pipe_eff_sub_q[0] = sv2v_tmp_301F1;
	wire [EXP_WIDTH * 1:1] sv2v_tmp_C29F5;
	assign sv2v_tmp_C29F5 = exponent_product;
	always @(*) mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH] = sv2v_tmp_C29F5;
	wire [EXP_WIDTH * 1:1] sv2v_tmp_24DD8;
	assign sv2v_tmp_24DD8 = exponent_difference;
	always @(*) mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH] = sv2v_tmp_24DD8;
	wire [EXP_WIDTH * 1:1] sv2v_tmp_6091A;
	assign sv2v_tmp_6091A = tentative_exponent;
	always @(*) mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH] = sv2v_tmp_6091A;
	wire [SHIFT_AMOUNT_WIDTH * 1:1] sv2v_tmp_25D5D;
	assign sv2v_tmp_25D5D = addend_shamt + addend_normalize_shamt;
	always @(*) mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] = sv2v_tmp_25D5D;
	wire [1:1] sv2v_tmp_6A24C;
	assign sv2v_tmp_6A24C = sticky_before_add;
	always @(*) mid_pipe_sticky_q[0] = sv2v_tmp_6A24C;
	wire [(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)) * 1:1] sv2v_tmp_6ABE6;
	assign sv2v_tmp_6ABE6 = sum;
	always @(*) mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] = sv2v_tmp_6ABE6;
	wire [LZC_RESULT_WIDTH * 1:1] sv2v_tmp_85E91;
	assign sv2v_tmp_85E91 = lza_count;
	always @(*) mid_pipe_lza_count_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * LZC_RESULT_WIDTH+:LZC_RESULT_WIDTH] = sv2v_tmp_85E91;
	wire [1:1] sv2v_tmp_9C379;
	assign sv2v_tmp_9C379 = final_sign;
	always @(*) mid_pipe_final_sign_q[0] = sv2v_tmp_9C379;
	wire [3:1] sv2v_tmp_68647;
	assign sv2v_tmp_68647 = inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3];
	always @(*) mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * 3+:3] = sv2v_tmp_68647;
	wire [3:1] sv2v_tmp_59791;
	assign sv2v_tmp_59791 = dst_fmt_q;
	always @(*) mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_59791;
	wire [1:1] sv2v_tmp_08378;
	assign sv2v_tmp_08378 = result_is_special;
	always @(*) mid_pipe_res_is_spec_q[0] = sv2v_tmp_08378;
	wire [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) * 1:1] sv2v_tmp_3E0BB;
	assign sv2v_tmp_3E0BB = special_result;
	always @(*) mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] = sv2v_tmp_3E0BB;
	wire [5:1] sv2v_tmp_80D24;
	assign sv2v_tmp_80D24 = special_status;
	always @(*) mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * 5+:5] = sv2v_tmp_80D24;
	wire [1:1] sv2v_tmp_7259D;
	assign sv2v_tmp_7259D = inp_pipe_tag_q[NUM_INP_REGS];
	always @(*) mid_pipe_tag_q[0] = sv2v_tmp_7259D;
	wire [1:1] sv2v_tmp_FAFEF;
	assign sv2v_tmp_FAFEF = inp_pipe_mask_q[NUM_INP_REGS];
	always @(*) mid_pipe_mask_q[0] = sv2v_tmp_FAFEF;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_45511;
	assign sv2v_tmp_45511 = inp_pipe_aux_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	always @(*) mid_pipe_aux_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_45511;
	wire [1:1] sv2v_tmp_C7159;
	assign sv2v_tmp_C7159 = inp_pipe_valid_q[NUM_INP_REGS];
	always @(*) mid_pipe_valid_q[0] = sv2v_tmp_C7159;
	assign inp_pipe_ready[NUM_INP_REGS] = mid_pipe_ready[0];
	genvar _gv_i_16;
	generate
		for (_gv_i_16 = 0; _gv_i_16 < NUM_MID_REGS; _gv_i_16 = _gv_i_16 + 1) begin : gen_inside_pipeline
			localparam i = _gv_i_16;
			wire reg_ena;
			assign mid_pipe_ready[i] = mid_pipe_ready[i + 1] | ~mid_pipe_valid_q[i + 1];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_valid_q[i + 1] <= 1'b0;
				else
					mid_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (mid_pipe_ready[i] ? mid_pipe_valid_q[i] : mid_pipe_valid_q[i + 1]));
			assign reg_ena = (mid_pipe_ready[i] & mid_pipe_valid_q[i]) | reg_ena_i[NUM_INP_REGS + i];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_eff_sub_q[i + 1] <= 1'sb0;
				else
					mid_pipe_eff_sub_q[i + 1] <= (reg_ena ? mid_pipe_eff_sub_q[i] : mid_pipe_eff_sub_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= 1'sb0;
				else
					mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= (reg_ena ? mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * EXP_WIDTH+:EXP_WIDTH] : mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= 1'sb0;
				else
					mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= (reg_ena ? mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * EXP_WIDTH+:EXP_WIDTH] : mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= 1'sb0;
				else
					mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= (reg_ena ? mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * EXP_WIDTH+:EXP_WIDTH] : mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] <= 1'sb0;
				else
					mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] <= (reg_ena ? mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] : mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_sticky_q[i + 1] <= 1'sb0;
				else
					mid_pipe_sticky_q[i + 1] <= (reg_ena ? mid_pipe_sticky_q[i] : mid_pipe_sticky_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] <= 1'sb0;
				else
					mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] <= (reg_ena ? mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] : mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_lza_count_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * LZC_RESULT_WIDTH+:LZC_RESULT_WIDTH] <= 1'sb0;
				else
					mid_pipe_lza_count_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * LZC_RESULT_WIDTH+:LZC_RESULT_WIDTH] <= (reg_ena ? mid_pipe_lza_count_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * LZC_RESULT_WIDTH+:LZC_RESULT_WIDTH] : mid_pipe_lza_count_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * LZC_RESULT_WIDTH+:LZC_RESULT_WIDTH]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_final_sign_q[i + 1] <= 1'sb0;
				else
					mid_pipe_final_sign_q[i + 1] <= (reg_ena ? mid_pipe_final_sign_q[i] : mid_pipe_final_sign_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3] <= 3'b000;
				else
					mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3] <= (reg_ena ? mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * 3+:3] : mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_res_is_spec_q[i + 1] <= 1'sb0;
				else
					mid_pipe_res_is_spec_q[i + 1] <= (reg_ena ? mid_pipe_res_is_spec_q[i] : mid_pipe_res_is_spec_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] <= 1'sb0;
				else
					mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] <= (reg_ena ? mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] : mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 5+:5] <= 1'sb0;
				else
					mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 5+:5] <= (reg_ena ? mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * 5+:5] : mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 5+:5]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_tag_q[i + 1] <= 1'b0;
				else
					mid_pipe_tag_q[i + 1] <= (reg_ena ? mid_pipe_tag_q[i] : mid_pipe_tag_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_mask_q[i + 1] <= 1'sb0;
				else
					mid_pipe_mask_q[i + 1] <= (reg_ena ? mid_pipe_mask_q[i] : mid_pipe_mask_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	assign effective_subtraction_q = mid_pipe_eff_sub_q[NUM_MID_REGS];
	assign exponent_product_q = mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH];
	assign exponent_difference_q = mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH];
	assign tentative_exponent_q = mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH];
	assign addend_shamt_q = mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH];
	assign sticky_before_add_q = mid_pipe_sticky_q[NUM_MID_REGS];
	assign sum_q = mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))];
	assign lza_count_q = mid_pipe_lza_count_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * LZC_RESULT_WIDTH+:LZC_RESULT_WIDTH];
	assign final_sign_q = mid_pipe_final_sign_q[NUM_MID_REGS];
	assign rnd_mode_q = mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * 3+:3];
	assign dst_fmt_q2 = mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	assign result_is_special_q = mid_pipe_res_is_spec_q[NUM_MID_REGS];
	assign special_result_q = mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS];
	assign special_status_q = mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * 5+:5];
	wire [LOWER_SUM_WIDTH - 1:0] sum_lower;
	wire [LZC_RESULT_WIDTH - 1:0] leading_zero_count;
	wire signed [LZC_RESULT_WIDTH:0] leading_zero_count_sgn;
	wire sum_lower_zero;
	wire [LOWER_SUM_WIDTH:0] least_leading_0_onehot;
	wire lza_overpredict;
	reg [SHIFT_AMOUNT_WIDTH - 1:0] norm_shamt;
	reg signed [EXP_WIDTH - 1:0] normalized_exponent;
	wire [(3 * PRECISION_BITS) + 4:0] sum_shifted;
	reg [PRECISION_BITS:0] final_mantissa;
	reg [(2 * PRECISION_BITS) + 2:0] sum_sticky_bits;
	wire sticky_after_norm;
	reg signed [EXP_WIDTH - 1:0] final_exponent;
	assign sum_lower = sum_q[LOWER_SUM_WIDTH - 1:0];
	assign sum_lower_zero = sum_lower == {LOWER_SUM_WIDTH {1'sb0}};
	assign least_leading_0_onehot = {1'b1, {LOWER_SUM_WIDTH {1'b0}}} >> lza_count_q;
	assign lza_overpredict = |(sum_q[LOWER_SUM_WIDTH:0] & least_leading_0_onehot);
	assign leading_zero_count = (lza_overpredict ? lza_count_q - 1 : lza_count_q);
	assign leading_zero_count_sgn = $signed({1'b0, leading_zero_count});
	always @(*) begin : norm_shift_amount
		if (_sv2v_0)
			;
		if ((exponent_difference_q <= 0) || (effective_subtraction_q && (exponent_difference_q <= 2))) begin
			if ((((exponent_product_q - $signed({1'b0, lza_count_q})) + 1) >= 0) && !sum_lower_zero) begin
				norm_shamt = (PRECISION_BITS + 1) + lza_count_q;
				normalized_exponent = (exponent_product_q - $signed({1'b0, lza_count_q})) + 2;
			end
			else begin
				norm_shamt = $unsigned($signed((PRECISION_BITS + 2) + exponent_product_q));
				normalized_exponent = 0;
				if ((((exponent_product_q - leading_zero_count_sgn) + 1) >= 0) && !sum_lower_zero)
					normalized_exponent = 1;
			end
		end
		else begin
			norm_shamt = addend_shamt_q;
			normalized_exponent = tentative_exponent_q;
		end
	end
	assign sum_shifted = sum_q << norm_shamt;
	always @(*) begin : small_norm
		if (_sv2v_0)
			;
		{final_mantissa, sum_sticky_bits} = sum_shifted;
		final_exponent = normalized_exponent;
		if (sum_shifted[(3 * PRECISION_BITS) + 4]) begin
			{final_mantissa, sum_sticky_bits} = sum_shifted >> 1;
			final_exponent = normalized_exponent + 1;
		end
		else if (sum_shifted[(3 * PRECISION_BITS) + 3])
			;
		else if (normalized_exponent > 1) begin
			{final_mantissa, sum_sticky_bits} = sum_shifted << 1;
			final_exponent = normalized_exponent - 1;
		end
		else
			final_exponent = 1'sb0;
	end
	assign sticky_after_norm = |{sum_sticky_bits} | sticky_before_add_q;
	wire pre_round_sign;
	wire [(SUPER_EXP_BITS + SUPER_MAN_BITS) - 1:0] pre_round_abs;
	wire [1:0] round_sticky_bits;
	wire of_before_round;
	wire of_after_round;
	wire uf_before_round;
	wire uf_after_round;
	wire [(NUM_FORMATS * (SUPER_EXP_BITS + SUPER_MAN_BITS)) - 1:0] fmt_pre_round_abs;
	wire [9:0] fmt_round_sticky_bits;
	reg [4:0] fmt_of_after_round;
	reg [4:0] fmt_uf_after_round;
	wire rounded_sign;
	wire [(SUPER_EXP_BITS + SUPER_MAN_BITS) - 1:0] rounded_abs;
	wire result_zero;
	assign of_before_round = final_exponent >= ((2 ** fpnew_pkg_exp_bits(dst_fmt_q2)) - 1);
	assign uf_before_round = final_exponent == 0;
	genvar _gv_fmt_11;
	generate
		for (_gv_fmt_11 = 0; _gv_fmt_11 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_11 = _gv_fmt_11 + 1) begin : gen_res_assemble
			localparam fmt = _gv_fmt_11;
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			wire [EXP_BITS - 1:0] pre_round_exponent;
			wire [MAN_BITS - 1:0] pre_round_mantissa;
			if (FpFmtConfig[fmt]) begin : active_format
				assign pre_round_exponent = (of_before_round ? (2 ** EXP_BITS) - 2 : final_exponent[EXP_BITS - 1:0]);
				assign pre_round_mantissa = (of_before_round ? {fpnew_pkg_man_bits(sv2v_cast_5D882(_gv_fmt_11)) {1'sb1}} : final_mantissa[SUPER_MAN_BITS-:MAN_BITS]);
				assign fmt_pre_round_abs[fmt * (SUPER_EXP_BITS + SUPER_MAN_BITS)+:SUPER_EXP_BITS + SUPER_MAN_BITS] = {pre_round_exponent, pre_round_mantissa};
				assign fmt_round_sticky_bits[(fmt * 2) + 1] = final_mantissa[SUPER_MAN_BITS - MAN_BITS] | of_before_round;
				if (MAN_BITS < SUPER_MAN_BITS) begin : narrow_sticky
					assign fmt_round_sticky_bits[fmt * 2] = (|final_mantissa[(SUPER_MAN_BITS - MAN_BITS) - 1:0] | sticky_after_norm) | of_before_round;
				end
				else begin : normal_sticky
					assign fmt_round_sticky_bits[fmt * 2] = sticky_after_norm | of_before_round;
				end
			end
			else begin : inactive_format
				assign fmt_pre_round_abs[fmt * (SUPER_EXP_BITS + SUPER_MAN_BITS)+:SUPER_EXP_BITS + SUPER_MAN_BITS] = {SUPER_EXP_BITS + SUPER_MAN_BITS {fpnew_pkg_DONT_CARE}};
				assign fmt_round_sticky_bits[fmt * 2+:2] = {2 {fpnew_pkg_DONT_CARE}};
			end
		end
	endgenerate
	assign pre_round_sign = final_sign_q;
	assign pre_round_abs = fmt_pre_round_abs[dst_fmt_q2 * (SUPER_EXP_BITS + SUPER_MAN_BITS)+:SUPER_EXP_BITS + SUPER_MAN_BITS];
	assign round_sticky_bits = fmt_round_sticky_bits[dst_fmt_q2 * 2+:2];
	fpnew_rounding #(.AbsWidth(SUPER_EXP_BITS + SUPER_MAN_BITS)) i_fpnew_rounding(
		.abs_value_i(pre_round_abs),
		.sign_i(pre_round_sign),
		.round_sticky_bits_i(round_sticky_bits),
		.rnd_mode_i(rnd_mode_q),
		.effective_subtraction_i(effective_subtraction_q),
		.abs_rounded_o(rounded_abs),
		.sign_o(rounded_sign),
		.exact_zero_o(result_zero)
	);
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_result;
	genvar _gv_fmt_12;
	generate
		for (_gv_fmt_12 = 0; _gv_fmt_12 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_12 = _gv_fmt_12 + 1) begin : gen_sign_inject
			localparam fmt = _gv_fmt_12;
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				always @(*) begin : post_process
					if (_sv2v_0)
						;
					fmt_uf_after_round[fmt] = (rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb0}}) || (((pre_round_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb0}}) && (rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == 1)) && ((round_sticky_bits != 2'b11) || (!sum_sticky_bits[(MAN_BITS * 2) + 4] && ((rnd_mode_q == 3'b000) || (rnd_mode_q == 3'b100)))));
					fmt_of_after_round[fmt] = rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb1}};
					fmt_result[fmt * WIDTH+:WIDTH] = 1'sb1;
					fmt_result[(fmt * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH] = {rounded_sign, rounded_abs[(EXP_BITS + MAN_BITS) - 1:0]};
				end
			end
			else begin : inactive_format
				wire [1:1] sv2v_tmp_4C394;
				assign sv2v_tmp_4C394 = fpnew_pkg_DONT_CARE;
				always @(*) fmt_uf_after_round[fmt] = sv2v_tmp_4C394;
				wire [1:1] sv2v_tmp_5852E;
				assign sv2v_tmp_5852E = fpnew_pkg_DONT_CARE;
				always @(*) fmt_of_after_round[fmt] = sv2v_tmp_5852E;
				wire [WIDTH * 1:1] sv2v_tmp_49668;
				assign sv2v_tmp_49668 = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_result[fmt * WIDTH+:WIDTH] = sv2v_tmp_49668;
			end
		end
	endgenerate
	assign uf_after_round = fmt_uf_after_round[dst_fmt_q2];
	assign of_after_round = fmt_of_after_round[dst_fmt_q2];
	wire [WIDTH - 1:0] regular_result;
	wire [4:0] regular_status;
	assign regular_result = fmt_result[dst_fmt_q2 * WIDTH+:WIDTH];
	assign regular_status[4] = 1'b0;
	assign regular_status[3] = 1'b0;
	assign regular_status[2] = of_before_round | of_after_round;
	assign regular_status[1] = uf_after_round & regular_status[0];
	assign regular_status[0] = (|round_sticky_bits | of_before_round) | of_after_round;
	wire [WIDTH - 1:0] result_d;
	wire [4:0] status_d;
	assign result_d = (result_is_special_q ? special_result_q : regular_result);
	assign status_d = (result_is_special_q ? special_status_q : regular_status);
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * WIDTH) + ((NUM_OUT_REGS * WIDTH) - 1) : ((NUM_OUT_REGS + 1) * WIDTH) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * WIDTH : 0)] out_pipe_result_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 5) + ((NUM_OUT_REGS * 5) - 1) : ((NUM_OUT_REGS + 1) * 5) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 5 : 0)] out_pipe_status_q;
	reg [0:NUM_OUT_REGS] out_pipe_tag_q;
	reg [0:NUM_OUT_REGS] out_pipe_mask_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * AuxType_AUX_BITS) + ((NUM_OUT_REGS * AuxType_AUX_BITS) - 1) : ((NUM_OUT_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * AuxType_AUX_BITS : 0)] out_pipe_aux_q;
	reg [0:NUM_OUT_REGS] out_pipe_valid_q;
	wire [0:NUM_OUT_REGS] out_pipe_ready;
	wire [WIDTH * 1:1] sv2v_tmp_469C2;
	assign sv2v_tmp_469C2 = result_d;
	always @(*) out_pipe_result_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * WIDTH+:WIDTH] = sv2v_tmp_469C2;
	wire [5:1] sv2v_tmp_A6238;
	assign sv2v_tmp_A6238 = status_d;
	always @(*) out_pipe_status_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 5+:5] = sv2v_tmp_A6238;
	wire [1:1] sv2v_tmp_1CCC3;
	assign sv2v_tmp_1CCC3 = mid_pipe_tag_q[NUM_MID_REGS];
	always @(*) out_pipe_tag_q[0] = sv2v_tmp_1CCC3;
	wire [1:1] sv2v_tmp_D6E81;
	assign sv2v_tmp_D6E81 = mid_pipe_mask_q[NUM_MID_REGS];
	always @(*) out_pipe_mask_q[0] = sv2v_tmp_D6E81;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_1BC38;
	assign sv2v_tmp_1BC38 = mid_pipe_aux_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	always @(*) out_pipe_aux_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_1BC38;
	wire [1:1] sv2v_tmp_E45E7;
	assign sv2v_tmp_E45E7 = mid_pipe_valid_q[NUM_MID_REGS];
	always @(*) out_pipe_valid_q[0] = sv2v_tmp_E45E7;
	assign mid_pipe_ready[NUM_MID_REGS] = out_pipe_ready[0];
	genvar _gv_i_17;
	generate
		for (_gv_i_17 = 0; _gv_i_17 < NUM_OUT_REGS; _gv_i_17 = _gv_i_17 + 1) begin : gen_output_pipeline
			localparam i = _gv_i_17;
			wire reg_ena;
			assign out_pipe_ready[i] = out_pipe_ready[i + 1] | ~out_pipe_valid_q[i + 1];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_valid_q[i + 1] <= 1'b0;
				else
					out_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (out_pipe_ready[i] ? out_pipe_valid_q[i] : out_pipe_valid_q[i + 1]));
			assign reg_ena = (out_pipe_ready[i] & out_pipe_valid_q[i]) | reg_ena_i[(NUM_INP_REGS + NUM_MID_REGS) + i];
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
	assign busy_o = |{inp_pipe_valid_q, mid_pipe_valid_q, out_pipe_valid_q};
	generate
		if (NUM_OUT_REGS > 0) begin : genblk8
			assign early_out_valid_o = |{out_pipe_valid_q[NUM_OUT_REGS] & ~out_pipe_ready[NUM_OUT_REGS], out_pipe_valid_q[NUM_OUT_REGS - 1]};
		end
		else if (NUM_MID_REGS > 0) begin : genblk8
			assign early_out_valid_o = |{mid_pipe_valid_q[NUM_MID_REGS] & ~mid_pipe_ready[NUM_OUT_REGS], mid_pipe_valid_q[NUM_MID_REGS - 1]};
		end
		else if (NUM_INP_REGS > 0) begin : genblk8
			assign early_out_valid_o = |{inp_pipe_valid_q[NUM_INP_REGS] & ~inp_pipe_ready[NUM_INP_REGS], inp_pipe_valid_q[NUM_INP_REGS - 1]};
		end
		else begin : genblk8
			assign early_out_valid_o = 1'b0;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
