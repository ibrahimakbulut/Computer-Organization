module mux32_2_1(s,in1,in2,out);

input s;
input [31:0] in1,in2;
output [31:0] out;

mux_2_1 m1(s,in1[0],in2[0],out[0]);
mux_2_1 m2(s,in1[1],in2[1],out[1]);
mux_2_1 m3(s,in1[2],in2[2],out[2]);
mux_2_1 m4(s,in1[3],in2[3],out[3]);
mux_2_1 m5(s,in1[4],in2[4],out[4]);
mux_2_1 m6(s,in1[5],in2[5],out[5]);
mux_2_1 m7(s,in1[6],in2[6],out[6]);
mux_2_1 m8(s,in1[7],in2[7],out[7]);
mux_2_1 m9(s,in1[8],in2[8],out[8]);
mux_2_1 m10(s,in1[9],in2[9],out[9]);
mux_2_1 m11(s,in1[10],in2[10],out[10]);
mux_2_1 m12(s,in1[11],in2[11],out[11]);
mux_2_1 m13(s,in1[12],in2[12],out[12]);
mux_2_1 m14(s,in1[13],in2[13],out[13]);
mux_2_1 m15(s,in1[14],in2[14],out[14]);
mux_2_1 m16(s,in1[15],in2[15],out[15]);
mux_2_1 m17(s,in1[16],in2[16],out[16]);
mux_2_1 m18(s,in1[17],in2[17],out[17]);
mux_2_1 m19(s,in1[18],in2[18],out[18]);
mux_2_1 m20(s,in1[19],in2[19],out[19]);
mux_2_1 m21(s,in1[20],in2[20],out[20]);
mux_2_1 m22(s,in1[21],in2[21],out[21]);
mux_2_1 m23(s,in1[22],in2[22],out[22]);
mux_2_1 m24(s,in1[23],in2[23],out[23]);
mux_2_1 m25(s,in1[24],in2[24],out[24]);
mux_2_1 m26(s,in1[25],in2[25],out[25]);
mux_2_1 m27(s,in1[26],in2[26],out[26]);
mux_2_1 m28(s,in1[27],in2[27],out[27]);
mux_2_1 m29(s,in1[28],in2[28],out[28]);
mux_2_1 m30(s,in1[29],in2[29],out[29]);
mux_2_1 m31(s,in1[30],in2[30],out[30]);
mux_2_1 m32(s,in1[31],in2[31],out[31]);

endmodule
