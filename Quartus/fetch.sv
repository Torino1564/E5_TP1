module fetch (
    input  wire        clk,
    input  wire        n_rst,

    input  wire        ena,
    input  wire        flush,

    input  wire        branch_taken,
    input  wire [31:0] branch_target,

    output wire [11:0] instruction_address,
    input  wire [31:0] rom_out_port,

    output logic       valid,
    output logic [31:0] inst,
    output logic [31:0] pc
);

    logic [31:0] current_pc;
    logic [31:0] pc_bar;
    logic [31:0] next_pc;
	 logic flush_bar;

    always_comb begin
        next_pc = current_pc + 32'd4;

        if (branch_taken)
            next_pc = branch_target;
    end


    always_ff @(posedge clk) begin
        if (!n_rst)
            current_pc <= 32'b0;
        else if (ena)
            current_pc <= next_pc;
    end

    assign instruction_address = current_pc[14:2];

    always_ff @(posedge clk) begin
        if (!n_rst) begin
            valid  		<= 1'b0;
            inst   		<= 32'b0;
            pc     		<= 32'b0;
				pc_bar 		<= 32'b0;
				flush_bar	<= 1'b0;
        end
        else if (ena) begin
				flush_bar 	<= flush;
				inst  		<= rom_out_port;
				pc_bar		<= current_pc;
				pc 			<= pc_bar;
            valid 		<= (flush || flush_bar) ? 1'b0 : 1'b1;
        end
    end

endmodule