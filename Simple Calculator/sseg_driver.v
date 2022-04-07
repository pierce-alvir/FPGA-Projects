`timescale 1ns / 1ps

module sseg_driver(
    input [3:0]data,
	output [6:0]seg

);
//wires correlate to each bit of data input for A, B, C, D and their respective nots
wire A, B, C, D, Anot, Bnot, Cnot, Dnot;

//different and combinations of the data inputs and not versions for each segment
wire AnotBnotCnotD, AnotBCnotDnot, ABnotCD, ABCnotD, BCDnot, ACD, ABDnot, AnotBCnotD;
wire ABC, AnotBnotCDnot, BnotCnotD, BCD, ABnotCDnot, AnotD, AnotB, BnotCnotD;
wire AnotBnotD, AnotBnotC, AnotCD, AnotBnotCnot, AnotBCD, ABCnotDnot;

//simplifying data
assign A = data[3];
assign B = data[2];
assign C = data[1];
assign D = data[0];
//not gates
not noA(Anot, A);
not noB(Bnot, B);
not noC(Cnot, C);
not noD(Dnot, D);

//similarities between segments 
and AnotBCnotDnot(AnotBCnotDnot, Anot, B, Cnot, Dnot);
and ABCnotD (ABCnotD, A, B, Cnot, D);
and ABDnot (ABDnot, A, B, Dnot);
and BnotCnotD (BnotCnotD, Bnot, Cnot, D);

//seg[0]
and AnotBnotCnotD (AnotBnotCnotD, Anot, Bnot, Cnot, D);
and ABnotCD (ABnotCD, A, Bnot, C,D);
or seg0 (seg[0], AnotBnotCnotD, AnotBCnotDnot, ABnotCD, ABCnotD);

//seg[1]
and BCDnot (BCDnot, B, C, Dnot);
and ACD (ACD, A,C,D);
and AnotBCnotD (AnotBCnotD, Anot, B, Cnot,D);
or seg1 (seg[1], BCDnot, ACD, ABDnot, AnotBCnotD);

//seg[2]
and ABC (ABC, A,B,C);
and AnotBnotCDnot (AnotBnotCDnot, Anot, Bnot, C, Dnot);
or seg2 (seg[2], ABDnot, ABC, AnotBnotCDnot);

//seg [3] 
and BCD (BCD, B, C,D);
and ABnotCDnot (ABnotCDnot, A, Bnot,C,Dnot);
or seg3 (seg[3], BnotCnotD, BCD, AnotBCnotDnot, ABnotCDnot);

//seg[4] 
and AnotD (AnotD, Anot,D);
and AnotBCnot (AnotBCnot, Anot, B,Cnot);
or seg4 (seg[4], AnotD, AnotBCnot, BnotCnotD);

//seg[5]
and AnotBnotD (AnotBnotD, Anot, Bnot, D);
and AnotBnotC (AnotBnotC, Anot, Bnot, C);
and AnotCD (AnotCD, Anot, C,D);
or seg5 (seg[5], AnotBnotD, AnotBnotC, AnotCD, ABCnotD);

//seg[6]
and AnotBnotCnot (AnotBnotCnot, Anot, Bnot, Cnot);
and AnotBCD (AnotBCD, Anot, B,C,D);
and ABCnotDnot (ABCnotDnot, A,B,Cnot,Dnot);
or seg6 (seg[6], AnotBnotCnot, AnotBCD, ABCnotDnot);

endmodule
