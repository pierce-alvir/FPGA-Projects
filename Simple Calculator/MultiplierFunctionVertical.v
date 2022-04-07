`timescale 1ns / 1ps

module MultiplierFunctionVertical(
    input [15:0]A,
    input [15:0]B,
    output [31:0]Q
    );
//carry sums from each row
wire [15:0]row1;
wire [15:0]row2;
wire [15:0]row3;
wire [15:0]row4;
wire [15:0]row5;
wire [15:0]row6;
wire [15:0]row7;
wire [15:0]row8;
wire [15:0]row9;
wire [15:0]row10;
wire [15:0]row11;
wire [15:0]row12;
wire [15:0]row13;
wire [15:0]row14;
wire [15:0]row15;
wire [14:0]carryOut;

MultiplierFunctionHorizontalA row1(
    .A(A),
    .firstB(B[0]),
    .secondB(B[1]),
    .carry(carryOut[0]),
    .sumOut(row1)
);

MultiplierFunctionHorizontalB row2(
    .A(A),
    .carriedSums(row1[15:1]),
    .chosenB(B[2]),
    .carryOver(carryOut[0]),
    .carry(carryOut[1]),
    .sumOut(row2)
);

MultiplierFunctionHorizontalB row3(
    .A(A),
    .carriedSums(row2[15:1]),
    .chosenB(B[3]),
    .carryOver(carryOut[1]),
    .carry(carryOut[2]),
    .sumOut(row3)
);

MultiplierFunctionHorizontalB row4(
    .A(A),
    .carriedSums(row3[15:1]),
    .chosenB(B[4]),
    .carryOver(carryOut[2]),
    .carry(carryOut[3]),
    .sumOut(row4)
);

MultiplierFunctionHorizontalB row5(
    .A(A),
    .carriedSums(row4[15:1]),
    .chosenB(B[5]),
    .carryOver(carryOut[3]),
    .carry(carryOut[4]),
    .sumOut(row5)
);

MultiplierFunctionHorizontalB row6(
    .A(A),
    .carriedSums(row5[15:1]),
    .chosenB(B[6]),
    .carryOver(carryOut[4]),
    .carry(carryOut[5]),
    .sumOut(row6)
);

MultiplierFunctionHorizontalB row7(
    .A(A),
    .carriedSums(row6[15:1]),
    .chosenB(B[7]),
    .carryOver(carryOut[5]),
    .carry(carryOut[6]),
    .sumOut(row7)
);

MultiplierFunctionHorizontalB row8(
    .A(A),
    .carriedSums(row7[15:1]),
    .chosenB(B[8]),
    .carryOver(carryOut[6]),
    .carry(carryOut[7]),
    .sumOut(row8)
);

MultiplierFunctionHorizontalB row9(
    .A(A),
    .carriedSums(row8[15:1]),
    .chosenB(B[9]),
    .carryOver(carryOut[7]),
    .carry(carryOut[8]),
    .sumOut(row9)
);

MultiplierFunctionHorizontalB row10(
    .A(A),
    .carriedSums(row9[15:1]),
    .chosenB(B[10]),
    .carryOver(carryOut[8]),
    .carry(carryOut[9]),
    .sumOut(row10)
);

MultiplierFunctionHorizontalB row11(
    .A(A),
    .carriedSums(row10[15:1]),
    .chosenB(B[11]),
    .carryOver(carryOut[9]),
    .carry(carryOut[10]),
    .sumOut(row11)
);

MultiplierFunctionHorizontalB row12(
    .A(A),
    .carriedSums(row11[15:1]),
    .chosenB(B[12]),
    .carryOver(carryOut[10]),
    .carry(carryOut[11]),
    .sumOut(row12)
);

MultiplierFunctionHorizontalB row13(
    .A(A),
    .carriedSums(row12[15:1]),
    .chosenB(B[13]),
    .carryOver(carryOut[11]),
    .carry(carryOut[12]),
    .sumOut(row13)
);

MultiplierFunctionHorizontalB row14(
    .A(A),
    .carriedSums(row13[15:1]),
    .chosenB(B[14]),
    .carryOver(carryOut[12]),
    .carry(carryOut[13]),
    .sumOut(row14)
);

MultiplierFunctionHorizontalB row15(
    .A(A),
    .carriedSums(row14[15:1]),
    .chosenB(B[15]),
    .carryOver(carryOut[13]),
    .carry(carryOut[14]),
    .sumOut(row15)
);

and bit0 (Q[0], A[0], B[0]);
assign Q[1] = row1[0];
assign Q[2] = row2[0];
assign Q[3] = row3[0];
assign Q[4] = row4[0];
assign Q[5] = row5[0];
assign Q[6] = row6[0];
assign Q[7] = row7[0];
assign Q[8] = row8[0];
assign Q[9] = row9[0];
assign Q[10] = row10[0];
assign Q[11] = row11[0];
assign Q[12] = row12[0];
assign Q[13] = row13[0];
assign Q[14] = row14[0];
assign Q[30:15] = row15[15:0];  
assign Q[31] = carryOut[14];

endmodule


