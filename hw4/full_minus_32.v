
module full_minus_32(in1,in2,cin,sum,cout);
	input [31:0] in1, in2;
	input cin;
	wire cin_not;
	wire [31:0] in2_not;
	output [31:0] sum;
	wire [30:0] couts;
	output cout;
	//reg [31:0] baytone;
	nor nor_not(cin_not,cin,cin);


	

 
 	xor_32 xor_not(in2_not,in2,32'b11111111111111111111111111111111);
	
	full_adder t1(in1[0],in2_not[0],cin_not,sum[0],couts[0]);
	full_adder t2(in1[1],in2_not[1],couts[0],sum[1],couts[1]);
	full_adder t3(in1[2],in2_not[2],couts[1],sum[2],couts[2]);
	full_adder t4(in1[3],in2_not[3],couts[2],sum[3],couts[3]);
	full_adder t5(in1[4],in2_not[4],couts[3],sum[4],couts[4]);
	full_adder t6(in1[5],in2_not[5],couts[4],sum[5],couts[5]);
	full_adder t7(in1[6],in2_not[6],couts[5],sum[6],couts[6]);
	full_adder t8(in1[7],in2_not[7],couts[6],sum[7],couts[7]);
	full_adder t9(in1[8],in2_not[8],couts[7],sum[8],couts[8]);
	full_adder t10(in1[9],in2_not[9],couts[8],sum[9],couts[9]);
	full_adder t11(in1[10],in2_not[10],couts[9],sum[10],couts[10]);
	full_adder t12(in1[11],in2_not[11],couts[10],sum[11],couts[11]);
	full_adder t13(in1[12],in2_not[12],couts[11],sum[12],couts[12]);
	full_adder t14(in1[13],in2_not[13],couts[12],sum[13],couts[13]);
	full_adder t15(in1[14],in2_not[14],couts[13],sum[14],couts[14]);
	full_adder t16(in1[15],in2_not[15],couts[14],sum[15],couts[15]);
	full_adder t17(in1[16],in2_not[16],couts[15],sum[16],couts[16]);
	full_adder t18(in1[17],in2_not[17],couts[16],sum[17],couts[17]);
	full_adder t19(in1[18],in2_not[18],couts[17],sum[18],couts[18]);
	full_adder t20(in1[19],in2_not[19],couts[18],sum[19],couts[19]);
	full_adder t21(in1[20],in2_not[20],couts[19],sum[20],couts[20]);
	full_adder t22(in1[21],in2_not[21],couts[20],sum[21],couts[21]);
	full_adder t23(in1[22],in2_not[22],couts[21],sum[22],couts[22]);
	full_adder t24(in1[23],in2_not[23],couts[22],sum[23],couts[23]);
	full_adder t25(in1[24],in2_not[24],couts[23],sum[24],couts[24]);
	full_adder t26(in1[25],in2_not[25],couts[24],sum[25],couts[25]);
	full_adder t27(in1[26],in2_not[26],couts[25],sum[26],couts[26]);
	full_adder t28(in1[27],in2_not[27],couts[26],sum[27],couts[27]);
	full_adder t29(in1[28],in2_not[28],couts[27],sum[28],couts[28]);
	full_adder t30(in1[29],in2_not[29],couts[28],sum[29],couts[29]);
	full_adder t31(in1[30],in2_not[30],couts[29],sum[30],couts[30]);
	full_adder t32(in1[31],in2_not[31],couts[30],sum[31],cout);

endmodule