module next_PC(branch_signal,jump_signal,clk,instruction,outPC);

output reg[31:0] outPC;


input branch_signal,jump_signal,clk;
input [31:0] instruction;

wire [31:0] extended;
wire [31:0] concanate;

reg [31:0] PC;

initial begin

PC=32'b0;
outPC=32'b0;
end

sign_extender g1(instruction[15:0],extended);

always @(posedge clk) begin
	if(PC>32'd29) begin
		$display("function is finished \n");
		$finish;
	end	
end

always @(negedge clk) begin
	if(jump_signal==1'b1)begin
	 PC={PC[31:26],instruction[25:0]};
	 PC=PC-1;
	outPC = PC;
	end
	if(branch_signal==1'b1)begin
	PC=PC+extended+32'd1;
	outPC = PC;
	end
	else begin
		PC=PC+32'd1;
		outPC = PC;
	end
end

endmodule