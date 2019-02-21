
module nor_32(out,in1,in2);
	input [31:0] in1, in2;
	output [31:0] out;

	nor t1(out[31],in1[31],in2[31]);
	nor t2(out[30],in1[30],in2[30]);
	nor t3(out[29],in1[29],in2[29]);
	nor t4(out[28],in1[28],in2[28]);
	nor t5(out[27],in1[27],in2[27]);
	nor t6(out[26],in1[26],in2[26]);
	nor t7(out[25],in1[25],in2[25]);
	nor t8(out[24],in1[24],in2[24]);
	nor t9(out[23],in1[23],in2[23]);
	nor t10(out[22],in1[22],in2[22]);
	nor t11(out[21],in1[21],in2[21]);
	nor t12(out[20],in1[20],in2[20]);
	nor t13(out[19],in1[19],in2[19]);
	nor t14(out[18],in1[18],in2[18]);
	nor t15(out[17],in1[17],in2[17]);
	nor t16(out[16],in1[16],in2[16]);
	nor t17(out[15],in1[15],in2[15]);
	nor t18(out[14],in1[14],in2[14]);
	nor t19(out[13],in1[13],in2[13]);
	nor t20(out[12],in1[12],in2[12]);
	nor t21(out[11],in1[11],in2[11]);
	nor t22(out[10],in1[10],in2[10]);
	nor t23(out[9],in1[9],in2[9]);
	nor t24(out[8],in1[8],in2[8]);
	nor t25(out[7],in1[7],in2[7]);
	nor t26(out[6],in1[6],in2[6]);
	nor t27(out[5],in1[5],in2[5]);
	nor t28(out[4],in1[4],in2[4]);
	nor t29(out[3],in1[3],in2[3]);
	nor t30(out[0],in1[0],in2[0]);
	nor t31(out[2],in1[2],in2[2]);
	nor t32(out[1],in1[1],in2[1]);
	
endmodule