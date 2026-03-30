module addrBuilder_tb;

	wire[31:0] rs1data = 'z;
	wire[31:0] rs2data = 'z;
	wire[31:0] pc = 'b0;
	wire[31:0] imm = 'z;
	wire[31:0] opcode = 'z;
	wire stageEna = 'z;
	wire stageX = 'z;

initial begin
	rs1data = 4'b1100;
	imm = 4'b0011;
	stageEna = 'b1;
end

addrBuilder addrBuilder_inst
(
.rs1data(rs1data),
.imm(imm),
);

endmodule
	
	
	
	
	
	
	
	
	