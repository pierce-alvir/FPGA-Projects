`timescale 1ns / 1ps

module submultiplier( //gets anded versions of A with the specific B input
    input [15:0] A,
    input B,
    output [15:0]andedA
    );
    
and andBit15 (andedA[15], A[15], B);
and andBit14 (andedA[14], A[14], B); 
and andBit13 (andedA[13], A[13], B);
and andBit12 (andedA[12], A[12], B);
and andBit11 (andedA[11], A[11], B);
and andBit10 (andedA[10], A[10], B); 
and andBit9 (andedA[9], A[9], B);
and andBit8 (andedA[8], A[8], B);
and andBit7 (andedA[7], A[7], B);
and andBit6 (andedA[6], A[6], B); 
and andBit5 (andedA[5], A[5], B);
and andBit4 (andedA[4], A[4], B);
and andBit3 (andedA[3], A[3], B);
and andBit2 (andedA[2], A[2], B); 
and andBit1 (andedA[1], A[1], B);
and andBit0 (andedA[0], A[0], B);

endmodule
