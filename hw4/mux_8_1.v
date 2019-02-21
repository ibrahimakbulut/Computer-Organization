module mux_8_1(out,a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2);

  input a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2; 
  output out;
	
	wire [1:0] mux4s;
	
	
	mux_4_1 mux4_1(mux4s[0],a0,a1,a2,a3,s0,s1);
	mux_4_1 mux4_2(mux4s[1],a4,a5,a6,a7,s0,s1);
	
	mux_2_1 mux2_1(s2,mux4s[0],mux4s[1],out);

endmodule