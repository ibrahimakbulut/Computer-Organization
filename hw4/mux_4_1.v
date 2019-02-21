module mux_4_1(out,a0,a1,a2,a3,s0,s1);

  input a0,a1,a2,a3,s0,s1; 
  output out;
  wire v0,v1,v2,v3,ns0,ns1;

  not n1(ns0,s0);
  not n2(ns1,s1);

  and and1(v0,a0,ns1,ns0);
  and and2(v1,a1,ns1,s0);
  and and3(v2,a2,s1,ns0);
  and and4(v3,a3,s1,s0);

  or or1(out,v0,v1,v2,v3);

endmodule