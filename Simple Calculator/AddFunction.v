`timescale 1ns / 1ps

module AddFunction(
    input [15:0]A, //A and B signify the two 16-bit inputs
    input [15:0]B,
    output [31:0]Q //Q signifies the 32-bit output (only 17 bits used)
    );
wire [14:0]C; //used for carry
wire c_out; //final carry out for 17th bit

FullAdder bits0 (
    .in_A(A[0]),
    .in_B(B[0]),
    .Carry_In(1'b0),
    .Carry_Out(C[0]),
    .Sum(Q[0])
);
FullAdder bits1 (
    .in_A(A[1]),
    .in_B(B[1]),
    .Carry_In(C[0]),
    .Carry_Out(C[1]),
    .Sum(Q[1])
);
FullAdder bits2 (
    .in_A(A[2]),
    .in_B(B[2]),
    .Carry_In(C[1]),
    .Carry_Out(C[2]),
    .Sum(Q[2])
);
FullAdder bits3 (
    .in_A(A[3]),
    .in_B(B[3]),
    .Carry_In(C[2]),
    .Carry_Out(C[3]),
    .Sum(Q[3])
);
FullAdder bits4 (
    .in_A(A[4]),
    .in_B(B[4]),
    .Carry_In(C[3]),
    .Carry_Out(C[4]),
    .Sum(Q[4])
);
FullAdder bits5 (
    .in_A(A[5]),
    .in_B(B[5]),
    .Carry_In(C[4]),
    .Carry_Out(C[5]),
    .Sum(Q[5])
);
FullAdder bits6 (
    .in_A(A[6]),
    .in_B(B[6]),
    .Carry_In(C[5]),
    .Carry_Out(C[6]),
    .Sum(Q[6])
);
FullAdder bits7 (
    .in_A(A[7]),
    .in_B(B[7]),
    .Carry_In(C[6]),
    .Carry_Out(C[7]),
    .Sum(Q[7])
);
FullAdder bits8 (
    .in_A(A[8]),
    .in_B(B[8]),
    .Carry_In(C[7]),
    .Carry_Out(C[8]),
    .Sum(Q[8])
);
FullAdder bits9 (
    .in_A(A[9]),
    .in_B(B[9]),
    .Carry_In(C[8]),
    .Carry_Out(C[9]),
    .Sum(Q[9])
);
FullAdder bits10 (
    .in_A(A[10]),
    .in_B(B[10]),
    .Carry_In(C[9]),
    .Carry_Out(C[10]),
    .Sum(Q[10])
);
FullAdder bits11 (
    .in_A(A[11]),
    .in_B(B[11]),
    .Carry_In(C[10]),
    .Carry_Out(C[11]),
    .Sum(Q[11])
);
FullAdder bits12 (
    .in_A(A[12]),
    .in_B(B[12]),
    .Carry_In(C[11]),
    .Carry_Out(C[12]),
    .Sum(Q[12])
);
FullAdder bits13 (
    .in_A(A[13]),
    .in_B(B[13]),
    .Carry_In(C[12]),
    .Carry_Out(C[13]),
    .Sum(Q[13])
);
FullAdder bits14 (
    .in_A(A[14]),
    .in_B(B[14]),
    .Carry_In(C[13]),
    .Carry_Out(C[14]),
    .Sum(Q[14])
);
FullAdder bits15 (
    .in_A(A[15]),
    .in_B(B[15]),
    .Carry_In(C[14]),
    .Carry_Out(c_out),
    .Sum(Q[15])
);

assign Q[16]=c_out;
assign Q[31:17]=15'd0;

endmodule
