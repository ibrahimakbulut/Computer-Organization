
module xor_32(out,in1,in2);
	input [31:0] in1, in2;
	output [31:0] out;

	xor t1(out[31],in1[31],in2[31]);
	xor t2(out[30],in1[30],in2[30]);
	xor t3(out[29],in1[29],in2[29]);
	xor t4(out[28],in1[28],in2[28]);
	xor t5(out[27],in1[27],in2[27]);
	xor t6(out[26],in1[26],in2[26]);
	xor t7(out[25],in1[25],in2[25]);
	xor t8(out[24],in1[24],in2[24]);
	xor t9(out[23],in1[23],in2[23]);
	xor t10(out[22],in1[22],in2[22]);
	xor t11(out[21],in1[21],in2[21]);
	xor t12(out[20],in1[20],in2[20]);
	xor t13(out[19],in1[19],in2[19]);
	xor t14(out[18],in1[18],in2[18]);
	xor t15(out[17],in1[17],in2[17]);
	xor t16(out[16],in1[16],in2[16]);
	xor t17(out[15],in1[15],in2[15]);
	xor t18(out[14],in1[14],in2[14]);
	xor t19(out[13],in1[13],in2[13]);
	xor t20(out[12],in1[12],in2[12]);
	xor t21(out[11],in1[11],in2[11]);
	xor t22(out[10],in1[10],in2[10]);
	xor t23(out[9],in1[9],in2[9]);
	xor t24(out[8],in1[8],in2[8]);
	xor t25(out[7],in1[7],in2[7]);
	xor t26(out[6],in1[6],in2[6]);
	xor t27(out[5],in1[5],in2[5]);
	xor t28(out[4],in1[4],in2[4]);
	xor t29(out[3],in1[3],in2[3]);
	xor t30(out[0],in1[0],in2[0]);
	xor t31(out[2],in1[2],in2[2]);
	xor t32(out[1],in1[1],in2[1]);
	

endmodule