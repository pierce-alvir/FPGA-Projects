`timescale 1ns / 1ps
/*
This module does the add operation for the first horizontal row of the multiplier;
it takes the anded outputs of all A bits with the first B bit and second B bit instead of all A
anded with just one B bit and the carried over sum from the last add function as the second bit 
*/
module MultiplierFunctionHorizontalA( 
    input[15:0] A, 
    input firstB,  
    input secondB, 
    output carry,
    output [15:0]sumOut
    );
   
wire [15:0]AandFirstB;
wire [15:0]AandSecondB;
wire [15:0]fixAandFirstB; 

submultiplier andAwithFirstB(
    .A(A),
    .B(firstB),
    .andedA(AandFirstB)
);

submultiplier andAwithSecondB(
    .A(A),
    .B(secondB),
    .andedA(AandSecondB)
);

assign fixAandFirstB[14:0] = AandFirstB[15:1];
assign fixAandFirstB[15] = 1'b0;

SimpleAddFunction addAndedBits(
    .A(fixAandFirstB),
    .B(AandSecondB),
    .c_out(carry),
    .Q(sumOut)
);
 
endmodule
