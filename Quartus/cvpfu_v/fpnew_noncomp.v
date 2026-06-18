module fpnew_noncomp_DE16F (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	op_mod_i,
	tag_i,
	mask_i,
	aux_i,
	in_valid_i,
	in_ready_o,
	flush_i,
	result_o,
	status_o,
	extension_bit_o,
	class_mask_o,
	is_class_o,
	tag_o,
	mask_o,
	aux_o,
	out_valid_o,
	out_ready_i,
	busy_o,
	reg_ena_i,
	early_out_valid_o
);
	reg _sv2v_0;
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	localparam [31:0] fpnew_pkg_FP_FORMAT_BITS = 3;
	function automatic [2:0] sv2v_cast_5D882;
		input reg [2:0] inp;
		sv2v_cast_5D882 = inp;
	endfunction
	parameter [2:0] FpFormat = sv2v_cast_5D882(0);
	parameter [31:0] NumPipeRegs = 0;
	parameter [1:0] PipeConfig = 2'd0;
	localparam [319:0] fpnew_pkg_FP_ENCODINGS = 320'h8000000170000000b00000034000000050000000a00000005000000020000000800000007;
	function automatic [31:0] fpnew_pkg_fp_width;
		input reg [2:0] fmt;
		fpnew_pkg_fp_width = (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] + fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32]) + 1;
	endfunction
	localparam [31:0] WIDTH = fpnew_pkg_fp_width(FpFormat);
	localparam [31:0] ExtRegEnaWidth = (NumPipeRegs == 0 ? 1 : NumPipeRegs);
	input wire clk_i;
	input wire rst_ni;
	input wire [(2 * WIDTH) - 1:0] operands_i;
	input wire [1:0] is_boxed_i;
	input wire [2:0] rnd_mode_i;
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	input wire [3:0] op_i;
	input wire op_mod_i;
	input wire tag_i;
	input wire mask_i;
	input wire aux_i;
	input wire in_valid_i;
	output wire in_ready_o;
	input wire flush_i;
	output wire [WIDTH - 1:0] result_o;
	output wire [4:0] status_o;
	output wire extension_bit_o;
	output wire [9:0] class_mask_o;
	output wire is_class_o;
	output wire tag_o;
	output wire mask_o;
	output wire aux_o;
	output wire out_valid_o;
	input wire out_ready_i;
	output wire busy_o;
	input wire [ExtRegEnaWidth - 1:0] reg_ena_i;
	output wire early_out_valid_o;
	function automatic [31:0] fpnew_pkg_exp_bits;
		input reg [2:0] fmt;
		fpnew_pkg_exp_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32];
	endfunction
	localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(FpFormat);
	function automatic [31:0] fpnew_pkg_man_bits;
		input reg [2:0] fmt;
		fpnew_pkg_man_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32];
	endfunction
	localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(FpFormat);
	localparam NUM_INP_REGS = ((PipeConfig == 2'd0) || (PipeConfig == 2'd2) ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 1) / 2 : 0));
	localparam NUM_OUT_REGS = (PipeConfig == 2'd1 ? NumPipeRegs : (PipeConfig == 2'd3 ? NumPipeRegs / 2 : 0));
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) * WIDTH) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) * WIDTH) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) * WIDTH : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) * WIDTH)] inp_pipe_operands_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0)] inp_pipe_is_boxed_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)] inp_pipe_rnd_mode_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_OP_BITS) + ((NUM_INP_REGS * fpnew_pkg_OP_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_OP_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_OP_BITS : 0)] inp_pipe_op_q;
	reg [0:NUM_INP_REGS] inp_pipe_op_mod_q;
	reg [0:NUM_INP_REGS] inp_pipe_tag_q;
	reg [0:NUM_INP_REGS] inp_pipe_mask_q;
	reg [0:NUM_INP_REGS] inp_pipe_aux_q;
	reg [0:NUM_INP_REGS] inp_pipe_valid_q;
	wire [0:NUM_INP_REGS] inp_pipe_ready;
	wire [2 * WIDTH:1] sv2v_tmp_E768C;
	assign sv2v_tmp_E768C = operands_i;
	always @(*) inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2] = sv2v_tmp_E768C;
	wire [2:1] sv2v_tmp_9866C;
	assign sv2v_tmp_9866C = is_boxed_i;
	always @(*) inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2+:2] = sv2v_tmp_9866C;
	wire [3:1] sv2v_tmp_B26FC;
	assign sv2v_tmp_B26FC = rnd_mode_i;
	always @(*) inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3+:3] = sv2v_tmp_B26FC;
	wire [4:1] sv2v_tmp_6E66E;
	assign sv2v_tmp_6E66E = op_i;
	always @(*) inp_pipe_op_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] = sv2v_tmp_6E66E;
	wire [1:1] sv2v_tmp_72E02;
	assign sv2v_tmp_72E02 = op_mod_i;
	always @(*) inp_pipe_op_mod_q[0] = sv2v_tmp_72E02;
	wire [1:1] sv2v_tmp_DE624;
	assign sv2v_tmp_DE624 = tag_i;
	always @(*) inp_pipe_tag_q[0] = sv2v_tmp_DE624;
	wire [1:1] sv2v_tmp_AE6A6;
	assign sv2v_tmp_AE6A6 = mask_i;
	always @(*) inp_pipe_mask_q[0] = sv2v_tmp_AE6A6;
	wire [1:1] sv2v_tmp_683C4;
	assign sv2v_tmp_683C4 = aux_i;
	always @(*) inp_pipe_aux_q[0] = sv2v_tmp_683C4;
	wire [1:1] sv2v_tmp_CFC25;
	assign sv2v_tmp_CFC25 = in_valid_i;
	always @(*) inp_pipe_valid_q[0] = sv2v_tmp_CFC25;
	assign in_ready_o = inp_pipe_ready[0];
	genvar _gv_i_18;
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	generate
		for (_gv_i_18 = 0; _gv_i_18 < NUM_INP_REGS; _gv_i_18 = _gv_i_18 + 1) begin : gen_input_pipeline
			localparam i = _gv_i_18;
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
					inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2+:2] <= 1'sb0;
				else
					inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2+:2] <= (reg_ena ? inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2+:2] : inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2+:2]);
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
					inp_pipe_aux_q[i + 1] <= 1'b0;
				else
					inp_pipe_aux_q[i + 1] <= (reg_ena ? inp_pipe_aux_q[i] : inp_pipe_aux_q[i + 1]);
		end
	endgenerate
	wire [15:0] info_q;
	fpnew_classifier #(
		.FpFormat(FpFormat),
		.NumOperands(2)
	) i_class_a(
		.operands_i(inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:WIDTH * 2]),
		.is_boxed_i(inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2+:2]),
		.info_o(info_q)
	);
	wire [((1 + EXP_BITS) + MAN_BITS) - 1:0] operand_a;
	wire [((1 + EXP_BITS) + MAN_BITS) - 1:0] operand_b;
	wire [7:0] info_a;
	wire [7:0] info_b;
	assign operand_a = inp_pipe_operands_q[((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1))) * WIDTH+:WIDTH];
	assign operand_b = inp_pipe_operands_q[((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1 : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - ((((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1))) * WIDTH+:WIDTH];
	assign info_a = info_q[0+:8];
	assign info_b = info_q[8+:8];
	wire any_operand_inf;
	wire any_operand_nan;
	wire signalling_nan;
	assign any_operand_inf = |{info_a[4], info_b[4]};
	assign any_operand_nan = |{info_a[3], info_b[3]};
	assign signalling_nan = |{info_a[2], info_b[2]};
	wire operands_equal;
	wire operand_a_smaller;
	assign operands_equal = (operand_a == operand_b) || (info_a[5] && info_b[5]);
	assign operand_a_smaller = (operand_a < operand_b) ^ (operand_a[1 + (EXP_BITS + (MAN_BITS - 1))] || operand_b[1 + (EXP_BITS + (MAN_BITS - 1))]);
	reg [((1 + EXP_BITS) + MAN_BITS) - 1:0] sgnj_result;
	wire [4:0] sgnj_status;
	wire sgnj_extension_bit;
	localparam [0:0] fpnew_pkg_DONT_CARE = 1'b1;
	function automatic [EXP_BITS - 1:0] sv2v_cast_8D8F7;
		input reg [EXP_BITS - 1:0] inp;
		sv2v_cast_8D8F7 = inp;
	endfunction
	function automatic [MAN_BITS - 1:0] sv2v_cast_D5F4C;
		input reg [MAN_BITS - 1:0] inp;
		sv2v_cast_D5F4C = inp;
	endfunction
	function automatic [EXP_BITS - 1:0] sv2v_cast_51E93;
		input reg [EXP_BITS - 1:0] inp;
		sv2v_cast_51E93 = inp;
	endfunction
	always @(*) begin : sign_injections
		reg sign_a;
		reg sign_b;
		if (_sv2v_0)
			;
		sgnj_result = operand_a;
		if (!info_a[0])
			sgnj_result = {1'b0, sv2v_cast_8D8F7(1'sb1), sv2v_cast_D5F4C(2 ** (MAN_BITS - 1))};
		sign_a = operand_a[1 + (EXP_BITS + (MAN_BITS - 1))] & info_a[0];
		sign_b = operand_b[1 + (EXP_BITS + (MAN_BITS - 1))] & info_b[0];
		(* full_case, parallel_case *)
		case (inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3])
			3'b000: sgnj_result[1 + (EXP_BITS + (MAN_BITS - 1))] = sign_b;
			3'b001: sgnj_result[1 + (EXP_BITS + (MAN_BITS - 1))] = ~sign_b;
			3'b010: sgnj_result[1 + (EXP_BITS + (MAN_BITS - 1))] = sign_a ^ sign_b;
			3'b011: sgnj_result = operand_a;
			default: sgnj_result = {fpnew_pkg_DONT_CARE, sv2v_cast_51E93(fpnew_pkg_DONT_CARE), sv2v_cast_D5F4C(fpnew_pkg_DONT_CARE)};
		endcase
	end
	assign sgnj_status = 1'sb0;
	assign sgnj_extension_bit = (inp_pipe_op_mod_q[NUM_INP_REGS] ? sgnj_result[1 + (EXP_BITS + (MAN_BITS - 1))] : 1'b1);
	reg [((1 + EXP_BITS) + MAN_BITS) - 1:0] minmax_result;
	reg [4:0] minmax_status;
	wire minmax_extension_bit;
	always @(*) begin : min_max
		if (_sv2v_0)
			;
		minmax_status = 1'sb0;
		minmax_status[4] = signalling_nan;
		if (info_a[3] && info_b[3])
			minmax_result = {1'b0, sv2v_cast_8D8F7(1'sb1), sv2v_cast_D5F4C(2 ** (MAN_BITS - 1))};
		else if (info_a[3])
			minmax_result = operand_b;
		else if (info_b[3])
			minmax_result = operand_a;
		else
			(* full_case, parallel_case *)
			case (inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3])
				3'b000: minmax_result = (operand_a_smaller ? operand_a : operand_b);
				3'b001: minmax_result = (operand_a_smaller ? operand_b : operand_a);
				default: minmax_result = {fpnew_pkg_DONT_CARE, sv2v_cast_51E93(fpnew_pkg_DONT_CARE), sv2v_cast_D5F4C(fpnew_pkg_DONT_CARE)};
			endcase
	end
	assign minmax_extension_bit = 1'b1;
	reg [((1 + EXP_BITS) + MAN_BITS) - 1:0] cmp_result;
	reg [4:0] cmp_status;
	wire cmp_extension_bit;
	always @(*) begin : comparisons
		if (_sv2v_0)
			;
		cmp_result = 1'sb0;
		cmp_status = 1'sb0;
		if (signalling_nan) begin
			cmp_status[4] = 1'b1;
			cmp_result = (inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3] == 3'b010) && inp_pipe_op_mod_q[NUM_INP_REGS];
		end
		else
			(* full_case, parallel_case *)
			case (inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3])
				3'b000:
					if (any_operand_nan)
						cmp_status[4] = 1'b1;
					else
						cmp_result = (operand_a_smaller | operands_equal) ^ inp_pipe_op_mod_q[NUM_INP_REGS];
				3'b001:
					if (any_operand_nan)
						cmp_status[4] = 1'b1;
					else
						cmp_result = (operand_a_smaller & ~operands_equal) ^ inp_pipe_op_mod_q[NUM_INP_REGS];
				3'b010:
					if (any_operand_nan)
						cmp_result = inp_pipe_op_mod_q[NUM_INP_REGS];
					else
						cmp_result = operands_equal ^ inp_pipe_op_mod_q[NUM_INP_REGS];
				default: cmp_result = {fpnew_pkg_DONT_CARE, sv2v_cast_51E93(fpnew_pkg_DONT_CARE), sv2v_cast_D5F4C(fpnew_pkg_DONT_CARE)};
			endcase
	end
	assign cmp_extension_bit = 1'b0;
	wire [4:0] class_status;
	wire class_extension_bit;
	reg [9:0] class_mask_d;
	always @(*) begin : classify
		if (_sv2v_0)
			;
		if (info_a[7])
			class_mask_d = (operand_a[1 + (EXP_BITS + (MAN_BITS - 1))] ? 10'b0000000010 : 10'b0001000000);
		else if (info_a[6])
			class_mask_d = (operand_a[1 + (EXP_BITS + (MAN_BITS - 1))] ? 10'b0000000100 : 10'b0000100000);
		else if (info_a[5])
			class_mask_d = (operand_a[1 + (EXP_BITS + (MAN_BITS - 1))] ? 10'b0000001000 : 10'b0000010000);
		else if (info_a[4])
			class_mask_d = (operand_a[1 + (EXP_BITS + (MAN_BITS - 1))] ? 10'b0000000001 : 10'b0010000000);
		else if (info_a[3])
			class_mask_d = (info_a[2] ? 10'b0100000000 : 10'b1000000000);
		else
			class_mask_d = 10'b1000000000;
	end
	assign class_status = 1'sb0;
	assign class_extension_bit = 1'b0;
	reg [((1 + EXP_BITS) + MAN_BITS) - 1:0] result_d;
	reg [4:0] status_d;
	reg extension_bit_d;
	wire is_class_d;
	always @(*) begin : select_result
		if (_sv2v_0)
			;
		(* full_case, parallel_case *)
		case (inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS])
			sv2v_cast_4CD2E(6): begin
				result_d = sgnj_result;
				status_d = sgnj_status;
				extension_bit_d = sgnj_extension_bit;
			end
			sv2v_cast_4CD2E(7): begin
				result_d = minmax_result;
				status_d = minmax_status;
				extension_bit_d = minmax_extension_bit;
			end
			sv2v_cast_4CD2E(8): begin
				result_d = cmp_result;
				status_d = cmp_status;
				extension_bit_d = cmp_extension_bit;
			end
			sv2v_cast_4CD2E(9): begin
				result_d = {fpnew_pkg_DONT_CARE, sv2v_cast_51E93(fpnew_pkg_DONT_CARE), sv2v_cast_D5F4C(fpnew_pkg_DONT_CARE)};
				status_d = class_status;
				extension_bit_d = class_extension_bit;
			end
			default: begin
				result_d = {fpnew_pkg_DONT_CARE, sv2v_cast_51E93(fpnew_pkg_DONT_CARE), sv2v_cast_D5F4C(fpnew_pkg_DONT_CARE)};
				status_d = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				extension_bit_d = fpnew_pkg_DONT_CARE;
			end
		endcase
	end
	assign is_class_d = inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] == sv2v_cast_4CD2E(9);
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * ((1 + EXP_BITS) + MAN_BITS)) + ((NUM_OUT_REGS * ((1 + EXP_BITS) + MAN_BITS)) - 1) : ((NUM_OUT_REGS + 1) * ((1 + EXP_BITS) + MAN_BITS)) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * ((1 + EXP_BITS) + MAN_BITS) : 0)] out_pipe_result_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 5) + ((NUM_OUT_REGS * 5) - 1) : ((NUM_OUT_REGS + 1) * 5) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 5 : 0)] out_pipe_status_q;
	reg [0:NUM_OUT_REGS] out_pipe_extension_bit_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 10) + ((NUM_OUT_REGS * 10) - 1) : ((NUM_OUT_REGS + 1) * 10) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 10 : 0)] out_pipe_class_mask_q;
	reg [0:NUM_OUT_REGS] out_pipe_is_class_q;
	reg [0:NUM_OUT_REGS] out_pipe_tag_q;
	reg [0:NUM_OUT_REGS] out_pipe_mask_q;
	reg [0:NUM_OUT_REGS] out_pipe_aux_q;
	reg [0:NUM_OUT_REGS] out_pipe_valid_q;
	wire [0:NUM_OUT_REGS] out_pipe_ready;
	wire [((1 + EXP_BITS) + MAN_BITS) * 1:1] sv2v_tmp_35063;
	assign sv2v_tmp_35063 = result_d;
	always @(*) out_pipe_result_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * ((1 + EXP_BITS) + MAN_BITS)+:(1 + EXP_BITS) + MAN_BITS] = sv2v_tmp_35063;
	wire [5:1] sv2v_tmp_036FC;
	assign sv2v_tmp_036FC = status_d;
	always @(*) out_pipe_status_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 5+:5] = sv2v_tmp_036FC;
	wire [1:1] sv2v_tmp_C9204;
	assign sv2v_tmp_C9204 = extension_bit_d;
	always @(*) out_pipe_extension_bit_q[0] = sv2v_tmp_C9204;
	wire [10:1] sv2v_tmp_0A406;
	assign sv2v_tmp_0A406 = class_mask_d;
	always @(*) out_pipe_class_mask_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 10+:10] = sv2v_tmp_0A406;
	wire [1:1] sv2v_tmp_C899A;
	assign sv2v_tmp_C899A = is_class_d;
	always @(*) out_pipe_is_class_q[0] = sv2v_tmp_C899A;
	wire [1:1] sv2v_tmp_13053;
	assign sv2v_tmp_13053 = inp_pipe_tag_q[NUM_INP_REGS];
	always @(*) out_pipe_tag_q[0] = sv2v_tmp_13053;
	wire [1:1] sv2v_tmp_CF9A1;
	assign sv2v_tmp_CF9A1 = inp_pipe_mask_q[NUM_INP_REGS];
	always @(*) out_pipe_mask_q[0] = sv2v_tmp_CF9A1;
	wire [1:1] sv2v_tmp_571F3;
	assign sv2v_tmp_571F3 = inp_pipe_aux_q[NUM_INP_REGS];
	always @(*) out_pipe_aux_q[0] = sv2v_tmp_571F3;
	wire [1:1] sv2v_tmp_B2A17;
	assign sv2v_tmp_B2A17 = inp_pipe_valid_q[NUM_INP_REGS];
	always @(*) out_pipe_valid_q[0] = sv2v_tmp_B2A17;
	assign inp_pipe_ready[NUM_INP_REGS] = out_pipe_ready[0];
	genvar _gv_i_19;
	generate
		for (_gv_i_19 = 0; _gv_i_19 < NUM_OUT_REGS; _gv_i_19 = _gv_i_19 + 1) begin : gen_output_pipeline
			localparam i = _gv_i_19;
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
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * ((1 + EXP_BITS) + MAN_BITS)+:(1 + EXP_BITS) + MAN_BITS] <= 1'sb0;
				else
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * ((1 + EXP_BITS) + MAN_BITS)+:(1 + EXP_BITS) + MAN_BITS] <= (reg_ena ? out_pipe_result_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * ((1 + EXP_BITS) + MAN_BITS)+:(1 + EXP_BITS) + MAN_BITS] : out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * ((1 + EXP_BITS) + MAN_BITS)+:(1 + EXP_BITS) + MAN_BITS]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= 1'sb0;
				else
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= (reg_ena ? out_pipe_status_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * 5+:5] : out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_extension_bit_q[i + 1] <= 1'sb0;
				else
					out_pipe_extension_bit_q[i + 1] <= (reg_ena ? out_pipe_extension_bit_q[i] : out_pipe_extension_bit_q[i + 1]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_class_mask_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 10+:10] <= 10'b1000000000;
				else
					out_pipe_class_mask_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 10+:10] <= (reg_ena ? out_pipe_class_mask_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * 10+:10] : out_pipe_class_mask_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 10+:10]);
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					out_pipe_is_class_q[i + 1] <= 1'sb0;
				else
					out_pipe_is_class_q[i + 1] <= (reg_ena ? out_pipe_is_class_q[i] : out_pipe_is_class_q[i + 1]);
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
					out_pipe_aux_q[i + 1] <= 1'b0;
				else
					out_pipe_aux_q[i + 1] <= (reg_ena ? out_pipe_aux_q[i] : out_pipe_aux_q[i + 1]);
		end
	endgenerate
	assign out_pipe_ready[NUM_OUT_REGS] = out_ready_i;
	assign result_o = out_pipe_result_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * ((1 + EXP_BITS) + MAN_BITS)+:(1 + EXP_BITS) + MAN_BITS];
	assign status_o = out_pipe_status_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * 5+:5];
	assign extension_bit_o = out_pipe_extension_bit_q[NUM_OUT_REGS];
	assign class_mask_o = out_pipe_class_mask_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * 10+:10];
	assign is_class_o = out_pipe_is_class_q[NUM_OUT_REGS];
	assign tag_o = out_pipe_tag_q[NUM_OUT_REGS];
	assign mask_o = out_pipe_mask_q[NUM_OUT_REGS];
	assign aux_o = out_pipe_aux_q[NUM_OUT_REGS];
	assign out_valid_o = out_pipe_valid_q[NUM_OUT_REGS];
	assign busy_o = |{inp_pipe_valid_q, out_pipe_valid_q};
	generate
		if (NUM_OUT_REGS > 0) begin : genblk3
			assign early_out_valid_o = |{out_pipe_valid_q[NUM_OUT_REGS] & ~out_pipe_ready[NUM_OUT_REGS], out_pipe_valid_q[NUM_OUT_REGS - 1]};
		end
		else if (NUM_INP_REGS > 0) begin : genblk3
			assign early_out_valid_o = |{inp_pipe_valid_q[NUM_INP_REGS] & ~inp_pipe_ready[NUM_INP_REGS], inp_pipe_valid_q[NUM_INP_REGS - 1]};
		end
		else begin : genblk3
			assign early_out_valid_o = 1'b0;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
