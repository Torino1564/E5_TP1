module fpnew_opgroup_block_37AAD (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	op_mod_i,
	src_fmt_i,
	dst_fmt_i,
	int_fmt_i,
	vectorial_op_i,
	tag_i,
	simd_mask_i,
	in_valid_i,
	in_ready_o,
	flush_i,
	result_o,
	status_o,
	extension_bit_o,
	tag_o,
	out_valid_o,
	out_ready_i,
	busy_o,
	early_valid_o
);
	reg _sv2v_0;
	parameter [1:0] OpGroup = 2'd0;
	parameter [31:0] Width = 32;
	parameter [0:0] EnableVectors = 1'b1;
	parameter [1:0] DivSqrtSel = 2'd2;
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	parameter [0:4] FpFmtMask = 1'sb1;
	localparam [31:0] fpnew_pkg_NUM_INT_FORMATS = 4;
	parameter [0:3] IntFmtMask = 1'sb1;
	parameter [159:0] FmtPipeRegs = {fpnew_pkg_NUM_FP_FORMATS {32'd0}};
	parameter [9:0] FmtUnitTypes = {fpnew_pkg_NUM_FP_FORMATS {2'd1}};
	parameter [1:0] PipeConfig = 2'd0;
	parameter [31:0] TrueSIMDClass = 0;
	localparam [31:0] NUM_FORMATS = fpnew_pkg_NUM_FP_FORMATS;
	function automatic [31:0] fpnew_pkg_num_operands;
		input reg [1:0] grp;
		(* full_case, parallel_case *)
		case (grp)
			2'd0: fpnew_pkg_num_operands = 3;
			2'd1: fpnew_pkg_num_operands = 2;
			2'd2: fpnew_pkg_num_operands = 2;
			2'd3: fpnew_pkg_num_operands = 3;
			default: fpnew_pkg_num_operands = 0;
		endcase
	endfunction
	localparam [31:0] NUM_OPERANDS = fpnew_pkg_num_operands(OpGroup);
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
	function automatic signed [31:0] fpnew_pkg_minimum;
		input reg signed [31:0] a;
		input reg signed [31:0] b;
		fpnew_pkg_minimum = (a < b ? a : b);
	endfunction
	function automatic [31:0] fpnew_pkg_min_fp_width;
		input reg [0:4] cfg;
		reg [31:0] res;
		begin
			res = fpnew_pkg_max_fp_width(cfg);
			begin : sv2v_autoblock_2
				reg [31:0] i;
				for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
					if (cfg[i])
						res = $unsigned(fpnew_pkg_minimum(res, fpnew_pkg_fp_width(sv2v_cast_5D882(i))));
			end
			fpnew_pkg_min_fp_width = res;
		end
	endfunction
	function automatic [31:0] fpnew_pkg_max_num_lanes;
		input reg [31:0] width;
		input reg [0:4] cfg;
		input reg vec;
		fpnew_pkg_max_num_lanes = (vec ? width / fpnew_pkg_min_fp_width(cfg) : 1);
	endfunction
	localparam [31:0] NUM_LANES = fpnew_pkg_max_num_lanes(Width, FpFmtMask, EnableVectors);
	input wire clk_i;
	input wire rst_ni;
	input wire [(NUM_OPERANDS * Width) - 1:0] operands_i;
	input wire [(NUM_FORMATS * NUM_OPERANDS) - 1:0] is_boxed_i;
	input wire [2:0] rnd_mode_i;
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	input wire [3:0] op_i;
	input wire op_mod_i;
	input wire [2:0] src_fmt_i;
	input wire [2:0] dst_fmt_i;
	localparam [31:0] fpnew_pkg_INT_FORMAT_BITS = 2;
	input wire [1:0] int_fmt_i;
	input wire vectorial_op_i;
	input wire tag_i;
	input wire [NUM_LANES - 1:0] simd_mask_i;
	input wire in_valid_i;
	output wire in_ready_o;
	input wire flush_i;
	output wire [Width - 1:0] result_o;
	output wire [4:0] status_o;
	output wire extension_bit_o;
	output wire tag_o;
	output wire out_valid_o;
	input wire out_ready_i;
	output wire busy_o;
	output wire early_valid_o;
	wire [4:0] fmt_in_ready;
	wire [4:0] fmt_out_valid;
	wire [4:0] fmt_out_ready;
	wire [4:0] fmt_busy;
	wire [4:0] early_valid;
	wire [((Width + 6) >= 0 ? (5 * (Width + 7)) - 1 : (5 * (1 - (Width + 6))) + (Width + 5)):((Width + 6) >= 0 ? 0 : Width + 6)] fmt_outputs;
	assign in_ready_o = in_valid_i & fmt_in_ready[dst_fmt_i];
	genvar _gv_fmt_2;
	localparam [0:0] fpnew_pkg_DONT_CARE = 1'b1;
	function automatic fpnew_pkg_any_enabled_multi;
		input reg [9:0] types;
		input reg [0:4] cfg;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			begin : sv2v_autoblock_3
				reg [31:0] i;
				begin : sv2v_autoblock_4
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							if (cfg[i] && (types[(4 - i) * 2+:2] == 2'd2)) begin
								fpnew_pkg_any_enabled_multi = 1'b1;
								_sv2v_jump = 2'b11;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
			if (_sv2v_jump == 2'b00) begin
				fpnew_pkg_any_enabled_multi = 1'b0;
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	function automatic [2:0] fpnew_pkg_get_first_enabled_multi;
		input reg [9:0] types;
		input reg [0:4] cfg;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			begin : sv2v_autoblock_5
				reg [31:0] i;
				begin : sv2v_autoblock_6
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							if (cfg[i] && (types[(4 - i) * 2+:2] == 2'd2)) begin
								fpnew_pkg_get_first_enabled_multi = sv2v_cast_5D882(i);
								_sv2v_jump = 2'b11;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
			if (_sv2v_jump == 2'b00) begin
				fpnew_pkg_get_first_enabled_multi = sv2v_cast_5D882(0);
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	function automatic fpnew_pkg_is_first_enabled_multi;
		input reg [2:0] fmt;
		input reg [9:0] types;
		input reg [0:4] cfg;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			begin : sv2v_autoblock_7
				reg [31:0] i;
				begin : sv2v_autoblock_8
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							if (cfg[i] && (types[(4 - i) * 2+:2] == 2'd2)) begin
								fpnew_pkg_is_first_enabled_multi = sv2v_cast_5D882(i) == fmt;
								_sv2v_jump = 2'b11;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
			if (_sv2v_jump == 2'b00) begin
				fpnew_pkg_is_first_enabled_multi = 1'b0;
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	function automatic [31:0] fpnew_pkg_num_lanes;
		input reg [31:0] width;
		input reg [2:0] fmt;
		input reg vec;
		fpnew_pkg_num_lanes = (vec ? width / fpnew_pkg_fp_width(fmt) : 1);
	endfunction
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	generate
		for (_gv_fmt_2 = 0; _gv_fmt_2 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_2 = _gv_fmt_2 + 1) begin : gen_parallel_slices
			localparam fmt = _gv_fmt_2;
			localparam [0:0] ANY_MERGED = fpnew_pkg_any_enabled_multi(FmtUnitTypes, FpFmtMask);
			localparam [0:0] IS_FIRST_MERGED = fpnew_pkg_is_first_enabled_multi(sv2v_cast_5D882(fmt), FmtUnitTypes, FpFmtMask);
			if (FpFmtMask[fmt] && (FmtUnitTypes[(4 - fmt) * 2+:2] == 2'd1)) begin : active_format
				localparam [2:0] FpFormat = sv2v_cast_5D882(fmt);
				wire in_valid;
				assign in_valid = in_valid_i & (dst_fmt_i == sv2v_cast_5D882(fmt));
				localparam [31:0] INTERNAL_LANES = fpnew_pkg_num_lanes(Width, sv2v_cast_5D882(fmt), EnableVectors);
				reg [INTERNAL_LANES - 1:0] mask_slice;
				always @(*) begin : sv2v_autoblock_9
					reg signed [31:0] b;
					if (_sv2v_0)
						;
					for (b = 0; b < INTERNAL_LANES; b = b + 1)
						mask_slice[b] = simd_mask_i[(NUM_LANES / INTERNAL_LANES) * b];
				end
				localparam [31:0] sv2v_uu_i_fmt_slice_NumPipeRegs = FmtPipeRegs[(4 - fmt) * 32+:32];
				localparam [31:0] sv2v_uu_i_fmt_slice_ExtRegEnaWidth = (sv2v_uu_i_fmt_slice_NumPipeRegs == 0 ? 1 : sv2v_uu_i_fmt_slice_NumPipeRegs);
				localparam [sv2v_cast_32((sv2v_cast_32(FmtPipeRegs[(4 - _gv_fmt_2) * 32+:32]) == 0 ? 1 : sv2v_cast_32(FmtPipeRegs[(4 - _gv_fmt_2) * 32+:32]))) - 1:0] sv2v_uu_i_fmt_slice_ext_reg_ena_i_0 = 1'sb0;
				fpnew_opgroup_fmt_slice_07650 #(
					.OpGroup(OpGroup),
					.FpFormat(FpFormat),
					.Width(Width),
					.EnableVectors(EnableVectors),
					.NumPipeRegs(FmtPipeRegs[(4 - fmt) * 32+:32]),
					.PipeConfig(PipeConfig),
					.TrueSIMDClass(TrueSIMDClass)
				) i_fmt_slice(
					.clk_i(clk_i),
					.rst_ni(rst_ni),
					.operands_i(operands_i),
					.is_boxed_i(is_boxed_i[fmt * NUM_OPERANDS+:NUM_OPERANDS]),
					.rnd_mode_i(rnd_mode_i),
					.op_i(op_i),
					.op_mod_i(op_mod_i),
					.vectorial_op_i(vectorial_op_i),
					.tag_i(tag_i),
					.simd_mask_i(mask_slice),
					.in_valid_i(in_valid),
					.in_ready_o(fmt_in_ready[fmt]),
					.flush_i(flush_i),
					.result_o(fmt_outputs[((Width + 6) >= 0 ? (fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6)) : (((fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6))) + ((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))) - 1)-:((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))]),
					.status_o(fmt_outputs[((Width + 6) >= 0 ? (fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0) : ((fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0)) + 4)-:5]),
					.extension_bit_o(fmt_outputs[(fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 1 : Width + 5)]),
					.tag_o(fmt_outputs[(fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 0 : Width + 6)]),
					.out_valid_o(fmt_out_valid[fmt]),
					.out_ready_i(fmt_out_ready[fmt]),
					.busy_o(fmt_busy[fmt]),
					.reg_ena_i(sv2v_uu_i_fmt_slice_ext_reg_ena_i_0),
					.early_out_valid_o(early_valid[fmt])
				);
			end
			else if ((FpFmtMask[fmt] && ANY_MERGED) && !IS_FIRST_MERGED) begin : merged_unused
				localparam FMT = fpnew_pkg_get_first_enabled_multi(FmtUnitTypes, FpFmtMask);
				assign fmt_in_ready[fmt] = fmt_in_ready[sv2v_cast_32_signed(FMT)];
				assign fmt_out_valid[fmt] = 1'b0;
				assign fmt_busy[fmt] = 1'b0;
				assign fmt_outputs[((Width + 6) >= 0 ? (fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6)) : (((fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6))) + ((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))) - 1)-:((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))] = {Width {fpnew_pkg_DONT_CARE}};
				assign fmt_outputs[((Width + 6) >= 0 ? (fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0) : ((fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0)) + 4)-:5] = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				assign fmt_outputs[(fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 1 : Width + 5)] = fpnew_pkg_DONT_CARE;
				assign fmt_outputs[(fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 0 : Width + 6)] = fpnew_pkg_DONT_CARE;
				assign early_valid[fmt] = 1'b0;
			end
			else if (!FpFmtMask[fmt] || (FmtUnitTypes[(4 - fmt) * 2+:2] == 2'd0)) begin : disable_fmt
				assign fmt_in_ready[fmt] = 1'b0;
				assign fmt_out_valid[fmt] = 1'b0;
				assign fmt_busy[fmt] = 1'b0;
				assign fmt_outputs[((Width + 6) >= 0 ? (fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6)) : (((fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6))) + ((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))) - 1)-:((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))] = {Width {fpnew_pkg_DONT_CARE}};
				assign fmt_outputs[((Width + 6) >= 0 ? (fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0) : ((fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0)) + 4)-:5] = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				assign fmt_outputs[(fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 1 : Width + 5)] = fpnew_pkg_DONT_CARE;
				assign fmt_outputs[(fmt * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 0 : Width + 6)] = fpnew_pkg_DONT_CARE;
				assign early_valid[fmt] = 1'b0;
			end
		end
	endgenerate
	function automatic [31:0] fpnew_pkg_get_num_regs_multi;
		input reg [159:0] regs;
		input reg [9:0] types;
		input reg [0:4] cfg;
		reg [31:0] res;
		begin
			res = 0;
			begin : sv2v_autoblock_10
				reg [31:0] i;
				for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
					if (cfg[i] && (types[(4 - i) * 2+:2] == 2'd2))
						res = fpnew_pkg_maximum(res, regs[(4 - i) * 32+:32]);
			end
			fpnew_pkg_get_num_regs_multi = res;
		end
	endfunction
	generate
		if (fpnew_pkg_any_enabled_multi(FmtUnitTypes, FpFmtMask)) begin : gen_merged_slice
			localparam FMT = fpnew_pkg_get_first_enabled_multi(FmtUnitTypes, FpFmtMask);
			localparam REG = fpnew_pkg_get_num_regs_multi(FmtPipeRegs, FmtUnitTypes, FpFmtMask);
			wire in_valid;
			assign in_valid = in_valid_i & (FmtUnitTypes[(4 - dst_fmt_i) * 2+:2] == 2'd2);
			localparam [31:0] sv2v_uu_i_multifmt_slice_NumPipeRegs = REG;
			localparam [31:0] sv2v_uu_i_multifmt_slice_ExtRegEnaWidth = (sv2v_uu_i_multifmt_slice_NumPipeRegs == 0 ? 1 : sv2v_uu_i_multifmt_slice_NumPipeRegs);
			localparam [sv2v_uu_i_multifmt_slice_ExtRegEnaWidth - 1:0] sv2v_uu_i_multifmt_slice_ext_reg_ena_i_0 = 1'sb0;
			fpnew_opgroup_multifmt_slice_23084 #(
				.OpGroup(OpGroup),
				.Width(Width),
				.FpFmtConfig(FpFmtMask),
				.IntFmtConfig(IntFmtMask),
				.EnableVectors(EnableVectors),
				.DivSqrtSel(DivSqrtSel),
				.NumPipeRegs(REG),
				.PipeConfig(PipeConfig)
			) i_multifmt_slice(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.operands_i(operands_i),
				.is_boxed_i(is_boxed_i),
				.rnd_mode_i(rnd_mode_i),
				.op_i(op_i),
				.op_mod_i(op_mod_i),
				.src_fmt_i(src_fmt_i),
				.dst_fmt_i(dst_fmt_i),
				.int_fmt_i(int_fmt_i),
				.vectorial_op_i(vectorial_op_i),
				.tag_i(tag_i),
				.simd_mask_i(simd_mask_i),
				.in_valid_i(in_valid),
				.in_ready_o(fmt_in_ready[FMT]),
				.flush_i(flush_i),
				.result_o(fmt_outputs[((Width + 6) >= 0 ? (FMT * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6)) : (((FMT * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? Width + 6 : (Width + 6) - (Width + 6))) + ((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))) - 1)-:((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))]),
				.status_o(fmt_outputs[((Width + 6) >= 0 ? (FMT * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0) : ((FMT * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 6 : Width + 0)) + 4)-:5]),
				.extension_bit_o(fmt_outputs[(FMT * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 1 : Width + 5)]),
				.tag_o(fmt_outputs[(FMT * ((Width + 6) >= 0 ? Width + 7 : 1 - (Width + 6))) + ((Width + 6) >= 0 ? 0 : Width + 6)]),
				.out_valid_o(fmt_out_valid[FMT]),
				.out_ready_i(fmt_out_ready[FMT]),
				.busy_o(fmt_busy[FMT]),
				.reg_ena_i(sv2v_uu_i_multifmt_slice_ext_reg_ena_i_0),
				.early_out_valid_o(early_valid[FMT])
			);
		end
	endgenerate
	wire [Width + 6:0] arbiter_output;
	localparam [31:0] sv2v_uu_i_arbiter_NumIn = NUM_FORMATS;
	localparam [31:0] sv2v_uu_i_arbiter_IdxWidth = $unsigned(3);
	localparam [sv2v_uu_i_arbiter_IdxWidth - 1:0] sv2v_uu_i_arbiter_ext_rr_i_0 = 1'sb0;
	rr_arb_tree_3ECCC_C4496 #(
		.DataType_Width(Width),
		.NumIn(NUM_FORMATS),
		.AxiVldRdy(1'b1)
	) i_arbiter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.rr_i(sv2v_uu_i_arbiter_ext_rr_i_0),
		.req_i(fmt_out_valid),
		.gnt_o(fmt_out_ready),
		.data_i(fmt_outputs),
		.gnt_i(out_ready_i),
		.req_o(out_valid_o),
		.data_o(arbiter_output),
		.idx_o()
	);
	assign result_o = arbiter_output[Width + 6-:((Width + 6) >= 7 ? Width + 0 : 8 - (Width + 6))];
	assign status_o = arbiter_output[6-:5];
	assign extension_bit_o = arbiter_output[1];
	assign tag_o = arbiter_output[0];
	assign early_valid_o = |early_valid;
	assign busy_o = |fmt_busy;
	initial _sv2v_0 = 0;
endmodule
