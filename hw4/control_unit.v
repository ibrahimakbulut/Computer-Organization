module control_unit(select_bits_ALU, function_code, Opcode,reg_des,branch_signal,jump_signal,memread,memwrite,memtoreg,regwrite,alusrc,zero_or_sign);

input [5:0] function_code;
input [5:0] Opcode;


output [2:0] select_bits_ALU;
output reg_des,branch_signal,jump_signal,memread,memwrite,memtoreg,regwrite,alusrc,zero_or_sign;
wire copy_reg_des;

wire andd,orr,add,addu,norr,sub,subu,sltu,sll,srl;
wire i_and,i_beg,i_j,lw_add,i_ori,sw_add,addiu;
wire select_r_or0,select_r_or1,select_r_or2;


wire func_code0_not,func_code1_not,func_code2_not,func_code3_not,func_code4_not,func_code5_not;
wire op_code0_not,op_code1_not,op_code2_not,op_code3_not,op_code4_not,op_code5_not;

wire select_i_or0,select_i_or1,select_i_or2;

wire r_or_i;


//inverse of functioncode digits ,for use later.  
not n1(func_code0_not,function_code[0]);
not n2(func_code1_not,function_code[1]);
not n3(func_code2_not,function_code[2]);
not n4(func_code3_not,function_code[3]);
not n5(func_code4_not,function_code[4]);
not n6(func_code5_not,function_code[5]);

not n7(op_code0_not,Opcode[0]);
not n8(op_code1_not,Opcode[1]);
not n9(op_code2_not,Opcode[2]);
not n10(op_code3_not,Opcode[3]);
not n11(op_code4_not,Opcode[4]);
not n12(op_code5_not,Opcode[5]);

//generating sinyals for R type instructions
and a1(add,function_code[5],func_code4_not,func_code3_not,func_code2_not,func_code1_not,func_code0_not);
and a2(addu,function_code[5],func_code4_not,func_code3_not,func_code2_not,func_code1_not,function_code[0]);
and a3(andd,function_code[5],func_code4_not,func_code3_not,function_code[2],func_code1_not,func_code0_not);
and a4(norr,function_code[5],func_code4_not,func_code3_not,function_code[2],function_code[1],function_code[0]);
and a5(orr,function_code[5],func_code4_not,func_code3_not,function_code[2],func_code1_not,function_code[0]);
and a6(sltu,function_code[5],func_code4_not,function_code[3],func_code2_not,function_code[1],function_code[0]);
and a7(sll,func_code5_not,func_code4_not,func_code3_not,func_code2_not,func_code1_not,func_code0_not);
and a8(srl,func_code5_not,func_code4_not,func_code3_not,func_code2_not,function_code[1],func_code0_not);
and a9(sub,function_code[5],func_code4_not,func_code3_not,func_code2_not,function_code[1],func_code0_not);
and a10(subu,function_code[5],func_code4_not,func_code3_not,func_code2_not,function_code[1],function_code[0]);


//generating sinyals for non-R type instructions
//and a11(addi,op_code5_not,op_code4_not,Opcode[3],op_code2_not,op_code1_not,Opcode[0]);
and a12(sw_add,Opcode[5],op_code4_not,Opcode[3],op_code2_not,Opcode[1],Opcode[0]);
and a13(lw_add,Opcode[5],op_code4_not,op_code3_not,op_code2_not,Opcode[1],Opcode[0]);
and a14(i_and,op_code5_not,op_code4_not,Opcode[3],Opcode[2],op_code1_not,op_code0_not);
and a15(i_beg,op_code5_not,op_code4_not,op_code3_not,Opcode[2],op_code1_not,op_code0_not);
and a16(i_j,op_code5_not,op_code4_not,op_code3_not,op_code2_not,Opcode[1],op_code0_not);
and a17(i_ori,op_code5_not,op_code4_not,Opcode[3],Opcode[2],op_code1_not,Opcode[0]);
and f(addiu,op_code5_not,op_code4_not,Opcode[3],op_code2_not,op_code1_not,Opcode[0]);

//check instruction R type or non-R type
and a18(r_or_i,op_code5_not,op_code4_not,op_code3_not,op_code2_not,op_code1_not,op_code0_not);

//where each selection bit is 1 ,or is processed
or o1(select_r_or2,norr,sltu,sll,srl,sub,subu);
or o2(select_r_or1,add,addu,norr,sll);
or o3(select_r_or0,norr,orr,srl);

//non-R instruction to select bite
or o4(select_i_or1,lw_add,sw_add,addiu);


mux_2_1 p1(r_or_i,i_beg,select_r_or2,select_bits_ALU[2]);
mux_2_1 p2(r_or_i,select_i_or1,select_r_or1,select_bits_ALU[1]);
mux_2_1 p3(r_or_i,i_ori,select_r_or0,select_bits_ALU[0]);


//signals
or o5(regwrite,lw_add,r_or_i,i_and,i_ori,addiu);

or o9(zero_or_sign,i_ori,i_and);
or o6(alusrc,lw_add,sw_add,i_and,i_ori,addiu);
and a25(reg_des,1'b1,r_or_i);
and a20(memtoreg,1'b1,lw_add);
and a21(memread,1'b1,lw_add);
and a22(memwrite,1'b1,sw_add);
and a23(branch_signal,1'b1,i_beg);
and a24(jump_signal,1'b1,i_j);

endmodule