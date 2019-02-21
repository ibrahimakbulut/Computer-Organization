module mips_registers( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

	output [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input signal_reg_write, clk;
	
	reg [31:0] registers [31:0];

initial begin
	$readmemb("registers.mem", registers); //register file is read
end

 assign read_data_1=registers[read_reg_1]; //rs content is taken
 assign read_data_2=registers[read_reg_2]; //rt content is taken

always @(negedge clk) begin
if(signal_reg_write==1'b1 && write_reg!=5'b00000)//Write to 0.register is not allowed and write_signal must be 1
	registers[write_reg]=write_data; //data is written to registers array then array is written to register file.
	$writememb("registers.mem", registers);
end	

endmodule