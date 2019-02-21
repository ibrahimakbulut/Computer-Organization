module data_memory( addr,write_data,read_data,memwrite,memread,clk);

input[31:0] addr;
input [31:0] write_data;
output wire [31:0] read_data;
input memwrite,memread,clk;

reg [31:0] MEMORY[255:0];

initial begin
	$readmemb("data.mem",MEMORY);
end

assign read_data=MEMORY[addr[7:0]];
always @(negedge clk) begin
  if (memwrite == 1'b1) begin
    MEMORY[addr[7:0]] = write_data;
	 $writememb("data.mem", MEMORY);
	end
end

always @(posedge clk) begin
	if (memread == 1'b1) begin
	end
	
end	

endmodule
