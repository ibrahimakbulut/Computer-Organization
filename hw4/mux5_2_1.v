module mux5_2_1(s,in1,in2,out);

input s;
input [4:0] in1,in2;
output [4:0] out;

mux_2_1 m1(s,in1[0],in2[0],out[0]);
mux_2_1 m2(s,in1[1],in2[1],out[1]);
mux_2_1 m3(s,in1[2],in2[2],out[2]);
mux_2_1 m4(s,in1[3],in2[3],out[3]);
mux_2_1 m5(s,in1[4],in2[4],out[4]);

endmodule