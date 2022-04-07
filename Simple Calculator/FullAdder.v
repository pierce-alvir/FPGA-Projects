`timescale 1ns / 1ps

module FullAdder(
	input in_A,
	input in_B,
	input Carry_In,
	output Carry_Out,
	output Sum
);

wire First_Xor,First_And, Second_And;
xor find_sum (First_Xor ,in_A, in_B);
xor get_sum (Sum,First_Xor , Carry_In);
and check_carry_inputs (First_And,in_A, in_B);
and check_carry_in (Second_And ,Carry_In, First_Xor);
or get_carry_out (Carry_Out,First_And, Second_And);

endmodule
