module fpu (
	input logic clk,
	input logic n_rst,
	
	output logic busy,
	output logic ready,
	
	input logic [31:0] in_data,
	output logic [31:0] out_data,
	
	input FP_OPS op,
	input logic [4:0] frs1, frs2,
	input logic frd,
	input logic start,
	input logic load_from_memory,
	input logic store_to_memory
);
	
	logic [31:0] frs1data, frs2data, fpalu_result;
	logic write_rd;
	
	// Register file
	register_bankregister_bank #(
		.NUM_REGISTERS(32),
		.WSIZE(32)
	) fregs (
		.clk(clk),
		.n_rst(n_rst),
		.ena('b1),
		
		// Read
		.rs1(frs1),
		.rs2(frs2),
		.rs1data(frs1data),
		.rs2data(frs2data),
		
		// Write
		.rd(frd),
		.rddata(fpalu_result),
		
		// Immediate
		.imm('x),
		
		// Instruction flags
		.inst_write_rd(write_rd)
	);
	
	logic [31:0] a, b;
	logic a_stb, b_stb, result_stb, a_ack, b_ack, result_ack;
	
	// FP Alu
	fp_alu fp_alu_inst (
		  .a(a),
        .b(b),
        .a_stb(a_stb),
        .b_stb(b_stb),
        .result_ack(result_ack),
        .clk(clk),
        .reset(~n_rst),
		  .op(op),
        .result(fpalu_result),
        .result_stb(result_stb),
        .a_ack(a_ack),
        .b_ack(b_ack)
	);
	
	// State machine
	
	typedef enum logic [3:0] {
		IDLE,
		SUBMITTING_A,
		SUBMITTING_B,
		WORKING
	} FPU_States;
	
	logic state, new_state;
	
	always_ff @(posedge clk, negedge n_rst) begin
		if (~n_rst)
			state <= IDLE;
		else begin
			state <= new_state;
		end
	end
	
	always_comb begin
		case (state)
			IDLE: begin
				
			end
			SUBMITTING_A: begin
				
			end
			SUBMITTING_B: begin
				
			end
			WORKING: begin
				
			end
		endcase
	end
	

endmodule