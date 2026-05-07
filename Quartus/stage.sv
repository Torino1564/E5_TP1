package stage;

	typedef struct packed {
		logic [31:0] pc;
		logic [31:0] inst;
		logic [31:0] rs1data;
		logic [31:0] rs2data;
		logic [31:0] imm;
		logic [31:0] alu_result;
		logic [31:0] rddata;
		logic [31:0] reg_read_port;
		logic [4:0] rs1;
		logic [4:0] rs2;
		logic [4:0] rd;
		logic [2:0] func3;
		logic [6:0] func7;
		logic [6:0] opcode;
		
		// flags
		logic inst_write_rd;
		logic inst_write_pc_jal;
		logic jal_return_address;
		logic inst_write_mem;
		logic inst_read_mem;
		logic inst_change_pc_request;
		logic branch_condition;
	} stage_t;
	
	localparam STAGE_SIZE = $bits(stage_t);

	typedef enum logic [2:0] {
		FETCH_STAGE,
		DECODE_STAGE,
		REGISTER_STAGE,
		EXECUTION_STAGE,
		MEMORY_STAGE,
		WRITEBACK_STAGE,
		NUM_STAGES
	} Stages;
	
	localparam STAGE_BIT_SIZE = $clog2(NUM_STAGES);
	
endpackage