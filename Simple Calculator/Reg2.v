`timescale 1ns / 1ps

module Reg2(
	input [1:0] D, //D signifies the data input
	input sw_in,
	input clock,
	output [1:0] Q //Q signifies the data output
);

dff_en bit1 (
	.data_out( Q[1] ),
	.in_D( D[1] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit0 (
	.data_out( Q[0] ),
	.in_D( D[0] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

endmodule
