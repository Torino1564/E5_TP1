module addrBuilder_tb;

	reg[31:0] rs1data = 'z;
	reg[31:0] rs2data = 'z;
	reg[31:0] pc = 'b0;
	reg[31:0] imm = 'z;
	reg[31:0] opcode = 'z;
	reg stageEna = 'z;
	reg stageX = 'z;
	
	wire [31:0] dataAdd;

	initial begin
		rs1data = 4'b1100;
		imm = 4'b0011;
		stageEna = 'b1;
		
		#20 
		stageEna = 0;
	end

	addrBuilder addrBuilder_inst
	(
		.rs1data(rs1data),
		.rs2data(rs2data),
		.opcode(opcode),
		.pc(pc),
		.imm(imm),
		.stageEna(stageEna),
		.stageX(stageX),
		.dataAdd(dataAdd)
	);

endmodule
	
	
	
	
	
	
	
	
	