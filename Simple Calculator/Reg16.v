module Reg16 (
	input [15:0] D, //D signifies the data input
	input sw_in,
	input clock,
	output [15:0] Q //Q signifies the data output
);

dff_en bit15 (
	.data_out( Q[15] ),
	.in_D( D[15] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit14 (
	.data_out( Q[14] ),
	.in_D( D[14] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit13 (
	.data_out( Q[13] ),
	.in_D( D[13] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
	
);
	
dff_en bit12 (
	.data_out( Q[12] ),
	.in_D( D[12] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit11 (
	.data_out( Q[11] ),
	.in_D( D[11] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit10 (
	.data_out( Q[10] ),
	.in_D( D[10] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit9 (
	.data_out( Q[9] ),
	.in_D( D[9] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
	
);
	
dff_en bit8 (
	.data_out( Q[8] ),
	.in_D( D[8] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit7 (
	.data_out( Q[7] ),
	.in_D( D[7] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit6 (
	.data_out( Q[6] ),
	.in_D( D[6] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit5 (
	.data_out( Q[5] ),
	.in_D( D[5] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
	
);
	
dff_en bit4 (
	.data_out( Q[4] ),
	.in_D( D[4] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit3 (
	.data_out( Q[3] ),
	.in_D( D[3] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en bit2 (
	.data_out( Q[2] ),
	.in_D( D[2] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
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
