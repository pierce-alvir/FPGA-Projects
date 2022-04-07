`timescale 1ns / 1ps

module SubtractFunction(
    input  [15:0] A, //A and B signify the two 16-bit inputs
    input  [15:0] B,
    output [31:0] Q, //Q signifies the 32-bit output (only 16 bits used)
    output c_out //used for the decimal point check on negative output
    );
wire [16:0]C; //used for carry
wire [15:0]newB; //for new B inputs when B is put through a not gate
wire check; //nots the carry out, so output for negative can be displayed

not changeB0 (newB[0],B[0]);
assign C[0] = 1'b1;
FullAdder bits0(
    .in_A (A[0]),
    .in_B (newB[0]),
    .Carry_In (C[0]),
    .Carry_Out (C[1]),
    .Sum (Q[0])
);
not changeB1 (newB[1],B[1]);
FullAdder bits1(
    .in_A (A[1]),
    .in_B (newB[1]),
    .Carry_In (C[1]),
    .Carry_Out (C[2]),
    .Sum (Q[1])
);
not changeB2 (newB[2],B[2]);
FullAdder bits2(
    .in_A (A[2]),
    .in_B (newB[2]),
    .Carry_In (C[2]),
    .Carry_Out (C[3]),
    .Sum (Q[2])
);
not changeB3 (newB[3],B[3]);
FullAdder bits3(
    .in_A (A[3]),
    .in_B (newB[3]),
    .Carry_In (C[3]),
    .Carry_Out (C[4]),
    .Sum (Q[3])
);
not changeB4 (newB[4],B[4]);
FullAdder bits4(
    .in_A (A[4]),
    .in_B (newB[4]),
    .Carry_In (C[4]),
    .Carry_Out (C[5]),
    .Sum (Q[4])
);
not changeB5 (newB[5],B[5]);
FullAdder bits5(
    .in_A (A[5]),
    .in_B (newB[5]),
    .Carry_In (C[5]),
    .Carry_Out (C[6]),
    .Sum (Q[5])
);
not changeB6 (newB[6],B[6]);
FullAdder bits6(
    .in_A (A[6]),
    .in_B (newB[6]),
    .Carry_In (C[6]),
    .Carry_Out (C[7]),
    .Sum (Q[6])
);
not changeB7 (newB[7],B[7]);
FullAdder bits7(
    .in_A (A[7]),
    .in_B (newB[7]),
    .Carry_In (C[7]),
    .Carry_Out (C[8]),
    .Sum (Q[7])
);
not changeB8 (newB[8],B[8]);
FullAdder bits8(
    .in_A (A[8]),
    .in_B (newB[8]),
    .Carry_In (C[8]),
    .Carry_Out (C[9]),
    .Sum (Q[8])
);
not changeB9 (newB[9],B[9]);
FullAdder bits9(
    .in_A (A[9]),
    .in_B (newB[9]),
    .Carry_In (C[9]),
    .Carry_Out (C[10]),
    .Sum (Q[9])
);
not changeB10 (newB[10],B[10]);
FullAdder bits10(
    .in_A (A[10]),
    .in_B (newB[10]),
    .Carry_In (C[10]),
    .Carry_Out (C[11]),
    .Sum (Q[10])
);
not changeB11 (newB[11],B[11]);
FullAdder bits11(
    .in_A (A[11]),
    .in_B (newB[11]),
    .Carry_In (C[11]),
    .Carry_Out (C[12]),
    .Sum (Q[11])
);
not changeB12 (newB[12],B[12]);
FullAdder bits12(
    .in_A (A[12]),
    .in_B (newB[12]),
    .Carry_In (C[12]),
    .Carry_Out (C[13]),
    .Sum (Q[12])
);
not changeB13 (newB[13],B[13]);
FullAdder bits13(
    .in_A (A[13]),
    .in_B (newB[13]),
    .Carry_In (C[13]),
    .Carry_Out (C[14]),
    .Sum (Q[13])
);
not changeB14 (newB[14],B[14]);
FullAdder bits14(
    .in_A (A[14]),
    .in_B (newB[14]),
    .Carry_In (C[14]),
    .Carry_Out (C[15]),
    .Sum (Q[14])
);
not changeB15 (newB[15],B[15]);
FullAdder bits15(
    .in_A (A[15]),
    .in_B (newB[15]),
    .Carry_In (C[15]),
    .Carry_Out (C[16]),
    .Sum (Q[15])
);
not fixCarryOut (check,C[16]); 
assign c_out = check;
assign Q[31:16]=16'd0;

endmodule
