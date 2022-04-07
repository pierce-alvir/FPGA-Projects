module Reg32 (
	input [31:0] D, //D signifies the data input
	input sw_in,
	input clock,
	output [31:0] Q //Q signifies the data output
);

dff_en bit31(
	.data_out( Q[31] ),
	.in_D( D[31] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit30(
	.data_out( Q[30] ),
	.in_D( D[30] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit29(
	.data_out( Q[29] ),
	.in_D( D[29] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit28(
	.data_out( Q[28] ),
	.in_D( D[28] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit27(
	.data_out( Q[27] ),
	.in_D( D[27] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit26(
	.data_out( Q[26] ),
	.in_D( D[26] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit25(
	.data_out( Q[25] ),
	.in_D( D[25] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit24(
	.data_out( Q[24] ),
	.in_D( D[24] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit23(
	.data_out( Q[23] ),
	.in_D( D[23] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit22(
	.data_out( Q[22] ),
	.in_D( D[22] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit21(
	.data_out( Q[21] ),
	.in_D( D[21] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit20(
	.data_out( Q[20] ),
	.in_D( D[20] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit19(
	.data_out( Q[19] ),
	.in_D( D[19] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit18(
	.data_out( Q[18] ),
	.in_D( D[18] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit17(
	.data_out( Q[17] ),
	.in_D( D[17] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit16(
	.data_out( Q[16] ),
	.in_D( D[16] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit15(
	.data_out( Q[15] ),
	.in_D( D[15] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit14(
	.data_out( Q[14] ),
	.in_D( D[14] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit13(
	.data_out( Q[13] ),
	.in_D( D[13] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit12(
	.data_out( Q[12] ),
	.in_D( D[12] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit11(
	.data_out( Q[11] ),
	.in_D( D[11] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit10(
	.data_out( Q[10] ),
	.in_D( D[10] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit9(
	.data_out( Q[9] ),
	.in_D( D[9] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit8(
	.data_out( Q[8] ),
	.in_D( D[8] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit7(
	.data_out( Q[7] ),
	.in_D( D[7] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit6(
	.data_out( Q[6] ),
	.in_D( D[6] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit5(
	.data_out( Q[5] ),
	.in_D( D[5] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit4(
	.data_out( Q[4] ),
	.in_D( D[4] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit3(
	.data_out( Q[3] ),
	.in_D( D[3] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit2(
	.data_out( Q[2] ),
	.in_D( D[2] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit1(
	.data_out( Q[1] ),
	.in_D( D[1] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit0(
	.data_out( Q[0] ),
	.in_D( D[0] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

endmodule
