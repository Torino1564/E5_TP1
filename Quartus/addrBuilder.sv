module addrBuilder
(
	input wire[31:0] rs1data,
	input wire[31:0] rs2data,
	input wire[31:0] pc,
	input wire[31:0] imm,
	input wire[31:0] opcode,
	input wire stageEna,
	input wire stageX,
	
	output reg[31:0] pcAddrOut,
	output reg[31:0] dataAdd
);

always_comb begin

	if (stageEna) begin
		dataAdd = imm + rs1data;
	end
	else begin	
		dataAdd = 'z;
	end
end

endmodule







