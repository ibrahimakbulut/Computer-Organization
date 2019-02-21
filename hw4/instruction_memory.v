module instruction_memory(instruction_index,instruction,clk);

input [31:0] instruction_index;

output reg[31:0] instruction;
input clk;

reg [31:0]  INST_MEMORY[0:29];


always @(posedge clk) begin
	$readmemb("instruction.mem",INST_MEMORY);
	instruction<=INST_MEMORY[instruction_index];
end	

endmodule 