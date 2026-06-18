module fpnew_divsqrt_th_32_3DF01_FC8AC (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
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
	parameter [31:0] NumPipeRegs = 0;
	parameter [1:0] PipeConfig = 2'd0;
	localparam [31:0] WIDTH = 32;
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	localparam [31:0] NUM_FORMATS = fpnew_pkg_NUM_FP_FORMATS;
	localparam [31:0] ExtRegEnaWidth = (NumPipeRegs == 0 ? 1 : NumPipeRegs);
	input wire clk_i;
	input wire rst_ni;
	input wire [63:0] operands_i;
	input wire [9:0] is_boxed_i;
	input wire [2:0] rnd_mode_i;
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	input wire [3:0] op_i;
	input wire tag_i;
	input wire mask_i;
	input wire [AuxType_AUX_BITS - 1:0] aux_i;
	input wire in_valid_i;
	output wire in_ready_o;
	input wire flush_i;
	output wire [31:0] result_o;
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
	wire [63:0] operands_q;
	wire [2:0] rnd_mode_q;
	wire [3:0] op_q;
	wire in_valid_q;
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0)) + 1) * 32) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) * 32) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)) + 1) * 32) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) * 32) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) * 32 : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) * 32)] inp_pipe_operands_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)] inp_pipe_rnd_mode_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_OP_BITS) + ((NUM_INP_REGS * fpnew_pkg_OP_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_OP_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_OP_BITS : 0)] inp_pipe_op_q;
	reg [0:NUM_INP_REGS] inp_pipe_tag_q;
	reg [0:NUM_INP_REGS] inp_pipe_mask_q;
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * AuxType_AUX_BITS) + ((NUM_INP_REGS * AuxType_AUX_BITS) - 1) : ((NUM_INP_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * AuxType_AUX_BITS : 0)] inp_pipe_aux_q;
	reg [0:NUM_INP_REGS] inp_pipe_valid_q;
	reg [0:NUM_INP_REGS] inp_pipe_ready;
	wire [64:1] sv2v_tmp_D1F38;
	assign sv2v_tmp_D1F38 = operands_i;
	always @(*) inp_pipe_operands_q[32 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:64] = sv2v_tmp_D1F38;
	wire [3:1] sv2v_tmp_A5988;
	assign sv2v_tmp_A5988 = rnd_mode_i;
	always @(*) inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3+:3] = sv2v_tmp_A5988;
	wire [4:1] sv2v_tmp_76106;
	assign sv2v_tmp_76106 = op_i;
	always @(*) inp_pipe_op_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] = sv2v_tmp_76106;
	wire [1:1] sv2v_tmp_DE624;
	assign sv2v_tmp_DE624 = tag_i;
	always @(*) inp_pipe_tag_q[0] = sv2v_tmp_DE624;
	wire [1:1] sv2v_tmp_AE6A6;
	assign sv2v_tmp_AE6A6 = mask_i;
	always @(*) inp_pipe_mask_q[0] = sv2v_tmp_AE6A6;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_B1FC2;
	assign sv2v_tmp_B1FC2 = aux_i;
	always @(*) inp_pipe_aux_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_B1FC2;
	wire [1:1] sv2v_tmp_CFC25;
	assign sv2v_tmp_CFC25 = in_valid_i;
	always @(*) inp_pipe_valid_q[0] = sv2v_tmp_CFC25;
	assign in_ready_o = inp_pipe_ready[0];
	genvar _gv_i_8;
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	function automatic [AuxType_AUX_BITS - 1:0] sv2v_cast_533F1;
		input reg [AuxType_AUX_BITS - 1:0] inp;
		sv2v_cast_533F1 = inp;
	endfunction
	generate
		for (_gv_i_8 = 0; _gv_i_8 < NUM_INP_REGS; _gv_i_8 = _gv_i_8 + 1) begin : gen_input_pipeline
			localparam i = _gv_i_8;
			wire reg_ena;
			wire [1:1] sv2v_tmp_FF0D2;
			assign sv2v_tmp_FF0D2 = inp_pipe_ready[i + 1] | ~inp_pipe_valid_q[i + 1];
			always @(*) inp_pipe_ready[i] = sv2v_tmp_FF0D2;
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_valid_q[i + 1] <= 1'b0;
				else
					inp_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (inp_pipe_ready[i] ? inp_pipe_valid_q[i] : inp_pipe_valid_q[i + 1]));
			assign reg_ena = (inp_pipe_ready[i] & inp_pipe_valid_q[i]) | reg_ena_i[i];
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					inp_pipe_operands_q[32 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:64] <= 1'sb0;
				else
					inp_pipe_operands_q[32 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:64] <= (reg_ena ? inp_pipe_operands_q[32 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:64] : inp_pipe_operands_q[32 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:64]);
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
	assign operands_q = inp_pipe_operands_q[32 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 2 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 2) + 1) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 2) + ((NUM_INP_REGS * 2) - 1) : ((NUM_INP_REGS + 1) * 2) - 1)))+:64];
	assign rnd_mode_q = inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3];
	assign op_q = inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS];
	assign in_valid_q = inp_pipe_valid_q[NUM_INP_REGS];
	reg in_ready;
	wire div_op;
	wire sqrt_op;
	reg unit_ready_q;
	reg unit_done;
	wire op_starting;
	reg out_valid;
	wire out_ready;
	reg hold_result;
	reg data_is_held;
	reg unit_busy;
	reg [1:0] state_q;
	reg [1:0] state_d;
	assign div_op = ((in_valid_q & (op_q == sv2v_cast_4CD2E(4))) & in_ready) & ~flush_i;
	assign sqrt_op = ((in_valid_q & (op_q == sv2v_cast_4CD2E(5))) & in_ready) & ~flush_i;
	assign op_starting = div_op | sqrt_op;
	wire fdsu_fpu_ex1_stall;
	reg fdsu_fpu_ex1_stall_q;
	wire div_op_d;
	reg div_op_q;
	wire sqrt_op_d;
	reg sqrt_op_q;
	assign div_op_d = (fdsu_fpu_ex1_stall ? div_op : 1'b0);
	assign sqrt_op_d = (fdsu_fpu_ex1_stall ? sqrt_op : 1'b0);
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			fdsu_fpu_ex1_stall_q <= 1'sb0;
		else
			fdsu_fpu_ex1_stall_q <= fdsu_fpu_ex1_stall;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			div_op_q <= 1'sb0;
		else
			div_op_q <= div_op_d;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			sqrt_op_q <= 1'sb0;
		else
			sqrt_op_q <= sqrt_op_d;
	always @(*) begin : flag_fsm
		if (_sv2v_0)
			;
		in_ready = 1'b0;
		out_valid = 1'b0;
		hold_result = 1'b0;
		data_is_held = 1'b0;
		unit_busy = 1'b0;
		state_d = state_q;
		inp_pipe_ready[NUM_INP_REGS] = unit_ready_q;
		(* full_case, parallel_case *)
		case (state_q)
			2'd0: begin
				in_ready = unit_ready_q;
				if (in_valid_q && unit_ready_q) begin
					inp_pipe_ready[NUM_INP_REGS] = unit_ready_q && !fdsu_fpu_ex1_stall;
					state_d = 2'd1;
				end
			end
			2'd1: begin
				inp_pipe_ready[NUM_INP_REGS] = fdsu_fpu_ex1_stall_q;
				unit_busy = 1'b1;
				if (unit_done) begin
					out_valid = 1'b1;
					if (out_ready) begin
						state_d = 2'd0;
						if (in_valid_q && unit_ready_q) begin
							in_ready = 1'b1;
							state_d = 2'd1;
						end
					end
					else begin
						hold_result = 1'b1;
						state_d = 2'd2;
					end
				end
			end
			2'd2: begin
				unit_busy = 1'b1;
				data_is_held = 1'b1;
				out_valid = 1'b1;
				if (out_ready) begin
					state_d = 2'd0;
					if (in_valid_q && unit_ready_q) begin
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
	reg result_tag_q;
	reg [AuxType_AUX_BITS - 1:0] result_aux_q;
	reg result_mask_q;
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
	reg [31:0] unit_result;
	reg [31:0] held_result_q;
	reg [4:0] unit_status;
	reg [4:0] held_status_q;
	reg ctrl_fdsu_ex1_sel;
	wire fdsu_fpu_ex1_cmplt;
	wire [4:0] fdsu_fpu_ex1_fflags;
	wire [7:0] fdsu_fpu_ex1_special_sel;
	wire [3:0] fdsu_fpu_ex1_special_sign;
	wire fdsu_fpu_no_op;
	reg [2:0] idu_fpu_ex1_eu_sel;
	wire [31:0] fdsu_frbus_data;
	wire [4:0] fdsu_frbus_fflags;
	wire fdsu_frbus_wb_vld;
	wire [31:0] dp_frbus_ex2_data;
	wire [4:0] dp_frbus_ex2_fflags;
	wire [2:0] dp_xx_ex1_cnan;
	wire [2:0] dp_xx_ex1_id;
	wire [2:0] dp_xx_ex1_inf;
	wire [2:0] dp_xx_ex1_norm;
	wire [2:0] dp_xx_ex1_qnan;
	wire [2:0] dp_xx_ex1_snan;
	wire [2:0] dp_xx_ex1_zero;
	wire ex2_inst_wb;
	wire ex2_inst_wb_vld_d;
	reg ex2_inst_wb_vld_q;
	wire [31:0] fpu_idu_fwd_data;
	wire [4:0] fpu_idu_fwd_fflags;
	wire fpu_idu_fwd_vld;
	reg unit_ready_d;
	always @(*) begin
		if (_sv2v_0)
			;
		if (op_starting && unit_ready_q) begin
			if (ex2_inst_wb && ex2_inst_wb_vld_q)
				unit_ready_d = 1'b1;
			else
				unit_ready_d = 1'b0;
		end
		else if (fpu_idu_fwd_vld | flush_i)
			unit_ready_d = 1'b1;
		else
			unit_ready_d = unit_ready_q;
	end
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			unit_ready_q <= 1'b1;
		else
			unit_ready_q <= unit_ready_d;
	always @(*) begin
		if (_sv2v_0)
			;
		ctrl_fdsu_ex1_sel = 1'b0;
		idu_fpu_ex1_eu_sel = 3'h0;
		if (op_starting) begin
			ctrl_fdsu_ex1_sel = 1'b1;
			idu_fpu_ex1_eu_sel = 3'h4;
		end
		else if (fdsu_fpu_ex1_stall_q) begin
			ctrl_fdsu_ex1_sel = 1'b1;
			idu_fpu_ex1_eu_sel = 3'h4;
		end
		else begin
			ctrl_fdsu_ex1_sel = 1'b0;
			idu_fpu_ex1_eu_sel = 3'h0;
		end
	end
	pa_fdsu_top i_divsqrt_thead(
		.cp0_fpu_icg_en(1'b0),
		.cp0_fpu_xx_dqnan(1'b0),
		.cp0_yy_clk_en(1'b1),
		.cpurst_b(rst_ni),
		.ctrl_fdsu_ex1_sel(ctrl_fdsu_ex1_sel),
		.ctrl_xx_ex1_cmplt_dp(ctrl_fdsu_ex1_sel),
		.ctrl_xx_ex1_inst_vld(ctrl_fdsu_ex1_sel),
		.ctrl_xx_ex1_stall(fdsu_fpu_ex1_stall),
		.ctrl_xx_ex1_warm_up(1'b0),
		.ctrl_xx_ex2_warm_up(1'b0),
		.ctrl_xx_ex3_warm_up(1'b0),
		.dp_xx_ex1_cnan(dp_xx_ex1_cnan),
		.dp_xx_ex1_id(dp_xx_ex1_id),
		.dp_xx_ex1_inf(dp_xx_ex1_inf),
		.dp_xx_ex1_qnan(dp_xx_ex1_qnan),
		.dp_xx_ex1_rm(rnd_mode_q),
		.dp_xx_ex1_snan(dp_xx_ex1_snan),
		.dp_xx_ex1_zero(dp_xx_ex1_zero),
		.fdsu_fpu_debug_info(),
		.fdsu_fpu_ex1_cmplt(fdsu_fpu_ex1_cmplt),
		.fdsu_fpu_ex1_cmplt_dp(),
		.fdsu_fpu_ex1_fflags(fdsu_fpu_ex1_fflags),
		.fdsu_fpu_ex1_special_sel(fdsu_fpu_ex1_special_sel),
		.fdsu_fpu_ex1_special_sign(fdsu_fpu_ex1_special_sign),
		.fdsu_fpu_ex1_stall(fdsu_fpu_ex1_stall),
		.fdsu_fpu_no_op(fdsu_fpu_no_op),
		.fdsu_frbus_data(fdsu_frbus_data),
		.fdsu_frbus_fflags(fdsu_frbus_fflags),
		.fdsu_frbus_freg(),
		.fdsu_frbus_wb_vld(fdsu_frbus_wb_vld),
		.forever_cpuclk(clk_i),
		.frbus_fdsu_wb_grant(fdsu_frbus_wb_vld),
		.idu_fpu_ex1_dst_freg(5'h0f),
		.idu_fpu_ex1_eu_sel(idu_fpu_ex1_eu_sel),
		.idu_fpu_ex1_func({8'b00000000, div_op | div_op_q, sqrt_op | sqrt_op_q}),
		.idu_fpu_ex1_srcf0(operands_q[31-:32]),
		.idu_fpu_ex1_srcf1(operands_q[63-:32]),
		.pad_yy_icg_scan_en(1'b0),
		.rtu_xx_ex1_cancel(1'b0),
		.rtu_xx_ex2_cancel(1'b0),
		.rtu_yy_xx_async_flush(flush_i),
		.rtu_yy_xx_flush(1'b0)
	);
	pa_fpu_dp x_pa_fpu_dp(
		.cp0_fpu_icg_en(1'b0),
		.cp0_fpu_xx_rm(rnd_mode_q),
		.cp0_yy_clk_en(1'b1),
		.ctrl_xx_ex1_inst_vld(ctrl_fdsu_ex1_sel),
		.ctrl_xx_ex1_stall(1'b0),
		.ctrl_xx_ex1_warm_up(1'b0),
		.dp_frbus_ex2_data(dp_frbus_ex2_data),
		.dp_frbus_ex2_fflags(dp_frbus_ex2_fflags),
		.dp_xx_ex1_cnan(dp_xx_ex1_cnan),
		.dp_xx_ex1_id(dp_xx_ex1_id),
		.dp_xx_ex1_inf(dp_xx_ex1_inf),
		.dp_xx_ex1_norm(dp_xx_ex1_norm),
		.dp_xx_ex1_qnan(dp_xx_ex1_qnan),
		.dp_xx_ex1_snan(dp_xx_ex1_snan),
		.dp_xx_ex1_zero(dp_xx_ex1_zero),
		.ex2_inst_wb(ex2_inst_wb),
		.fdsu_fpu_ex1_fflags(fdsu_fpu_ex1_fflags),
		.fdsu_fpu_ex1_special_sel(fdsu_fpu_ex1_special_sel),
		.fdsu_fpu_ex1_special_sign(fdsu_fpu_ex1_special_sign),
		.forever_cpuclk(clk_i),
		.idu_fpu_ex1_eu_sel(idu_fpu_ex1_eu_sel),
		.idu_fpu_ex1_func({8'b00000000, div_op, sqrt_op}),
		.idu_fpu_ex1_gateclk_vld(fdsu_fpu_ex1_cmplt),
		.idu_fpu_ex1_rm(rnd_mode_q),
		.idu_fpu_ex1_srcf0(operands_q[31-:32]),
		.idu_fpu_ex1_srcf1(operands_q[63-:32]),
		.idu_fpu_ex1_srcf2(1'sb0),
		.pad_yy_icg_scan_en(1'b0)
	);
	assign ex2_inst_wb_vld_d = ctrl_fdsu_ex1_sel;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			ex2_inst_wb_vld_q <= 1'sb0;
		else
			ex2_inst_wb_vld_q <= ex2_inst_wb_vld_d;
	pa_fpu_frbus x_pa_fpu_frbus(
		.ctrl_frbus_ex2_wb_req(ex2_inst_wb & ex2_inst_wb_vld_q),
		.dp_frbus_ex2_data(dp_frbus_ex2_data),
		.dp_frbus_ex2_fflags(dp_frbus_ex2_fflags),
		.fdsu_frbus_data(fdsu_frbus_data),
		.fdsu_frbus_fflags(fdsu_frbus_fflags),
		.fdsu_frbus_wb_vld(fdsu_frbus_wb_vld),
		.fpu_idu_fwd_data(fpu_idu_fwd_data),
		.fpu_idu_fwd_fflags(fpu_idu_fwd_fflags),
		.fpu_idu_fwd_vld(fpu_idu_fwd_vld)
	);
	always @(*) begin
		if (_sv2v_0)
			;
		unit_result[31:0] = fpu_idu_fwd_data[31:0];
		unit_status[4:0] = fpu_idu_fwd_fflags[4:0];
		unit_done = fpu_idu_fwd_vld;
	end
	always @(posedge clk_i) held_result_q <= (hold_result ? unit_result : held_result_q);
	always @(posedge clk_i) held_status_q <= (hold_result ? unit_status : held_status_q);
	wire [31:0] result_d;
	wire [4:0] status_d;
	assign result_d = (data_is_held ? held_result_q : unit_result);
	assign status_d = (data_is_held ? held_status_q : unit_status);
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * WIDTH) + ((NUM_OUT_REGS * WIDTH) - 1) : ((NUM_OUT_REGS + 1) * WIDTH) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * WIDTH : 0)] out_pipe_result_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 5) + ((NUM_OUT_REGS * 5) - 1) : ((NUM_OUT_REGS + 1) * 5) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 5 : 0)] out_pipe_status_q;
	reg [0:NUM_OUT_REGS] out_pipe_tag_q;
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * AuxType_AUX_BITS) + ((NUM_OUT_REGS * AuxType_AUX_BITS) - 1) : ((NUM_OUT_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * AuxType_AUX_BITS : 0)] out_pipe_aux_q;
	reg [0:NUM_OUT_REGS] out_pipe_mask_q;
	reg [0:NUM_OUT_REGS] out_pipe_valid_q;
	wire [0:NUM_OUT_REGS] out_pipe_ready;
	wire [32:1] sv2v_tmp_F1632;
	assign sv2v_tmp_F1632 = result_d;
	always @(*) out_pipe_result_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * WIDTH+:WIDTH] = sv2v_tmp_F1632;
	wire [5:1] sv2v_tmp_03440;
	assign sv2v_tmp_03440 = status_d;
	always @(*) out_pipe_status_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 5+:5] = sv2v_tmp_03440;
	wire [1:1] sv2v_tmp_AFEEA;
	assign sv2v_tmp_AFEEA = result_tag_q;
	always @(*) out_pipe_tag_q[0] = sv2v_tmp_AFEEA;
	wire [1:1] sv2v_tmp_0A048;
	assign sv2v_tmp_0A048 = result_mask_q;
	always @(*) out_pipe_mask_q[0] = sv2v_tmp_0A048;
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_EB2CC;
	assign sv2v_tmp_EB2CC = result_aux_q;
	always @(*) out_pipe_aux_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_EB2CC;
	wire [1:1] sv2v_tmp_F96BC;
	assign sv2v_tmp_F96BC = out_valid;
	always @(*) out_pipe_valid_q[0] = sv2v_tmp_F96BC;
	assign out_ready = out_pipe_ready[0];
	genvar _gv_i_9;
	generate
		for (_gv_i_9 = 0; _gv_i_9 < NUM_OUT_REGS; _gv_i_9 = _gv_i_9 + 1) begin : gen_output_pipeline
			localparam i = _gv_i_9;
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
