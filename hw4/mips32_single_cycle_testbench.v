module mips32_single_cycle_testbench ();


reg clk,clk2;
wire [31:0] result;

always #100 clk=~clk;
always #100 clk2=~clk2;

mips32_single_cycle h1(clk,result);

initial begin
clk=1;
clk2=1;
//you must sure the memory files as same name in instruction modülü read and mips_register modülü read.
$readmemb("instruction.mem",h1.v2.INST_MEMORY); 
$readmemb("registers.mem",h1.f1.registers);
end

always @(negedge clk2)

begin	
	$display("result = %32b \n" ,result);
end

endmodule