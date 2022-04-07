`timescale 1ns / 1ps

module SSEG(
    input clk,
    input [15:0]D,
    input dp_check,
    output dp,
    output [6:0]seg,
	output [3:0]an
    );
wire [3:0]data;

sseg_mux chooseDataAndAnode(
    .clk(clk),
    .leftmost(D[15:12]),
    .left_center(D[11:8]),
    .right_center(D[7:4]),
    .rightmost(D[3:0]), 
    .rightmost_dp(dp_check),   
    .data_out(data),
    .dp_out(dp),
    .anode(an)
);

sseg_driver displayDataOnAnode(
    .data(data),
	.seg(seg)
);
    
    
endmodule
