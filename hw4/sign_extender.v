module sign_extender(immediate_part,extended_part);

input [15:0] immediate_part;

output wire [31:0] extended_part;

buf h1(extended_part[0],immediate_part[0]);
buf h2(extended_part[1],immediate_part[1]);
buf h3(extended_part[2],immediate_part[2]);
buf h4(extended_part[3],immediate_part[3]);
buf h5(extended_part[4],immediate_part[4]);
buf h6(extended_part[5],immediate_part[5]);
buf h7(extended_part[6],immediate_part[6]);
buf h8(extended_part[7],immediate_part[7]);
buf h9(extended_part[8],immediate_part[8]);
buf h10(extended_part[9],immediate_part[9]);
buf h11(extended_part[10],immediate_part[10]);
buf h12(extended_part[11],immediate_part[11]);
buf h13(extended_part[12],immediate_part[12]);
buf h14(extended_part[13],immediate_part[13]);
buf h15(extended_part[14],immediate_part[14]);
buf h16(extended_part[15],immediate_part[15]);
buf h17(extended_part[16],immediate_part[15]);
buf h18(extended_part[17],immediate_part[15]);
buf h19(extended_part[18],immediate_part[15]);
buf h32(extended_part[19],immediate_part[15]);
buf h20(extended_part[20],immediate_part[15]);
buf h21(extended_part[21],immediate_part[15]);
buf h22(extended_part[22],immediate_part[15]);
buf h23(extended_part[23],immediate_part[15]);
buf h24(extended_part[24],immediate_part[15]);
buf h25(extended_part[25],immediate_part[15]);
buf h26(extended_part[26],immediate_part[15]);
buf h27(extended_part[27],immediate_part[15]);
buf h28(extended_part[28],immediate_part[15]);
buf h29(extended_part[29],immediate_part[15]);
buf h30(extended_part[30],immediate_part[15]);
buf h31(extended_part[31],immediate_part[15]);

endmodule

