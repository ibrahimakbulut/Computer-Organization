
module mux_2_1(s,a0,a1,out);

	input a1 , s , a0;
	output out;

	wire not_gate;
	wire and_gate_1,and_gate_0;
	
	not t1(not_gate,s);
	and t2(and_gate_1,a1,s);
	
	and t4(and_gate_0,not_gate,a0);
	
	or t3(out,and_gate_0,and_gate_1);
	
endmodule