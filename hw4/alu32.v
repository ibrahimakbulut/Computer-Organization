module alu32(in1,in2,select,result);

  input [31:0] in1,in2;
  input [2:0] select;
  output [31:0] result;
  wire carry_out1,carry_out2;
  
  wire [31:0] add,substraction,or_operation,and_operation,xor_operation,nor_operation,right_shift,left_shift;
  
  
  and32 result_for_and(and_operation,in1,in2);
  or_32 result_for_or(or_operation,in1,in2);
  xor_32 result_for_xor(xor_operation,in1,in2);
  nor_32 result_for_nor(nor_operation,in1,in2);
  full_adder_32 result_for_ader(in1,in2,1'b0,add,carry_out1);
  full_minus_32 result_for_minus(in1,in2,1'b0,substraction,carry_out2);
  shifter result_for_right_shift(in1,in2,right_shift);
  left_shifter result_for_left_shift(in1,in2,left_shift);
  
  
  
  mux_8_1 t1(result[0],and_operation[0],or_operation[0],add[0],xor_operation[0],substraction[0],right_shift[0],left_shift[0],nor_operation[0],select[0],select[1],select[2]);
  mux_8_1 t2(result[1],and_operation[1],or_operation[1],add[1],xor_operation[1],substraction[1],right_shift[1],left_shift[1],nor_operation[1],select[0],select[1],select[2]);
  mux_8_1 t3(result[2],and_operation[2],or_operation[2],add[2],xor_operation[2],substraction[2],right_shift[2],left_shift[2],nor_operation[2],select[0],select[1],select[2]);
  mux_8_1 t4(result[3],and_operation[3],or_operation[3],add[3],xor_operation[3],substraction[3],right_shift[3],left_shift[3],nor_operation[3],select[0],select[1],select[2]);
  mux_8_1 t5(result[4],and_operation[4],or_operation[4],add[4],xor_operation[4],substraction[4],right_shift[4],left_shift[4],nor_operation[4],select[0],select[1],select[2]);
  mux_8_1 t6(result[5],and_operation[5],or_operation[5],add[5],xor_operation[5],substraction[5],right_shift[5],left_shift[5],nor_operation[5],select[0],select[1],select[2]);
  mux_8_1 t7(result[6],and_operation[6],or_operation[6],add[6],xor_operation[6],substraction[6],right_shift[6],left_shift[6],nor_operation[6],select[0],select[1],select[2]);
  mux_8_1 t8(result[7],and_operation[7],or_operation[7],add[7],xor_operation[7],substraction[7],right_shift[7],left_shift[7],nor_operation[7],select[0],select[1],select[2]);  
  mux_8_1 t9(result[8],and_operation[8],or_operation[8],add[8],xor_operation[8],substraction[8],right_shift[8],left_shift[8],nor_operation[8],select[0],select[1],select[2]);
  mux_8_1 t10(result[9],and_operation[9],or_operation[9],add[9],xor_operation[9],substraction[9],right_shift[9],left_shift[9],nor_operation[9],select[0],select[1],select[2]);
  mux_8_1 t11(result[10],and_operation[10],or_operation[10],add[10],xor_operation[10],substraction[10],right_shift[10],left_shift[10],nor_operation[10],select[0],select[1],select[2]);
  mux_8_1 t12(result[11],and_operation[11],or_operation[11],add[11],xor_operation[11],substraction[11],right_shift[11],left_shift[11],nor_operation[11],select[0],select[1],select[2]);
  mux_8_1 t13(result[12],and_operation[12],or_operation[12],add[12],xor_operation[12],substraction[12],right_shift[12],left_shift[12],nor_operation[12],select[0],select[1],select[2]);
  mux_8_1 t14(result[13],and_operation[13],or_operation[13],add[13],xor_operation[13],substraction[13],right_shift[13],left_shift[13],nor_operation[13],select[0],select[1],select[2]);
  mux_8_1 t15(result[14],and_operation[14],or_operation[14],add[14],xor_operation[14],substraction[14],right_shift[14],left_shift[14],nor_operation[14],select[0],select[1],select[2]);
  mux_8_1 t16(result[15],and_operation[15],or_operation[15],add[15],xor_operation[15],substraction[15],right_shift[15],left_shift[15],nor_operation[15],select[0],select[1],select[2]);
  mux_8_1 t17(result[16],and_operation[16],or_operation[16],add[16],xor_operation[16],substraction[16],right_shift[16],left_shift[16],nor_operation[16],select[0],select[1],select[2]);
  mux_8_1 t18(result[17],and_operation[17],or_operation[17],add[17],xor_operation[17],substraction[17],right_shift[17],left_shift[17],nor_operation[17],select[0],select[1],select[2]);
  mux_8_1 t19(result[18],and_operation[18],or_operation[18],add[18],xor_operation[18],substraction[18],right_shift[18],left_shift[18],nor_operation[18],select[0],select[1],select[2]);
  mux_8_1 t20(result[19],and_operation[19],or_operation[19],add[19],xor_operation[19],substraction[19],right_shift[19],left_shift[19],nor_operation[19],select[0],select[1],select[2]);
  mux_8_1 t21(result[20],and_operation[20],or_operation[20],add[20],xor_operation[20],substraction[20],right_shift[20],left_shift[20],nor_operation[20],select[0],select[1],select[2]);
  mux_8_1 t22(result[21],and_operation[21],or_operation[21],add[21],xor_operation[21],substraction[21],right_shift[21],left_shift[21],nor_operation[21],select[0],select[1],select[2]);
  mux_8_1 t23(result[22],and_operation[22],or_operation[22],add[22],xor_operation[22],substraction[22],right_shift[22],left_shift[22],nor_operation[22],select[0],select[1],select[2]);
  mux_8_1 t24(result[23],and_operation[23],or_operation[23],add[23],xor_operation[23],substraction[23],right_shift[23],left_shift[23],nor_operation[23],select[0],select[1],select[2]);
  mux_8_1 t25(result[24],and_operation[24],or_operation[24],add[24],xor_operation[24],substraction[24],right_shift[24],left_shift[24],nor_operation[24],select[0],select[1],select[2]);
  mux_8_1 t26(result[25],and_operation[25],or_operation[25],add[25],xor_operation[25],substraction[25],right_shift[25],left_shift[25],nor_operation[25],select[0],select[1],select[2]);
  mux_8_1 t27(result[26],and_operation[26],or_operation[26],add[26],xor_operation[26],substraction[26],right_shift[26],left_shift[26],nor_operation[26],select[0],select[1],select[2]);
  mux_8_1 t28(result[27],and_operation[27],or_operation[27],add[27],xor_operation[27],substraction[27],right_shift[27],left_shift[27],nor_operation[27],select[0],select[1],select[2]);
  mux_8_1 t29(result[28],and_operation[28],or_operation[28],add[28],xor_operation[28],substraction[28],right_shift[28],left_shift[28],nor_operation[28],select[0],select[1],select[2]);
  mux_8_1 t30(result[29],and_operation[29],or_operation[29],add[29],xor_operation[29],substraction[29],right_shift[29],left_shift[29],nor_operation[29],select[0],select[1],select[2]);  
  mux_8_1 t31(result[30],and_operation[30],or_operation[30],add[30],xor_operation[30],substraction[30],right_shift[30],left_shift[30],nor_operation[30],select[0],select[1],select[2]);  
  mux_8_1 t32(result[31],and_operation[31],or_operation[31],add[31],xor_operation[31],substraction[31],right_shift[31],left_shift[31],nor_operation[31],select[0],select[1],select[2]);    
  

endmodule