`timescale 1ns / 1ps
/*
This module does the add operation for all other horizontal rows of the multiplier;
it takes the anded outputs of all A bits with the B bit that is input to use in an add function with the carried
add function sums 
*/
module MultiplierFunctionHorizontalB(
    input [15:0]A, //A input
    input [14:0]carriedSums, //sums from previous horizontal row addition
    input chosenB, //B bit to be anded with A
    input carryOver, //carry to be put into add function
    output carry, // carry to be output into next horizontal row
    output [15:0]sumOut
    );

wire [15:0]andedAB;
wire [15:0]newCarry; 

submultiplier andAwithChosenB(
    .A(A),
    .B(chosenB),
    .andedA(andedAB)
);

assign newCarry[14:0] = carriedSums;
assign newCarry[15] = carryOver;

SimpleAddFunction addBits(
    .A(newCarry),
    .B(andedAB),
    .c_out(carry),
    .Q(sumOut)
   );
 
endmodule
