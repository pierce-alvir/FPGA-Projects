`timescale 1ns / 1ps

module Incrementer(
    input clk, //clock input and button input
    input PB_in,
    output [1:0]Q //2-bit output for mux components
    );

wire D0_input, D1_input, Q0_out, Q1_out; //wires for loop input back into registers

not D0_next(D0_input, Q0_out); //D0 state gate 
xor D1_next(D1_input, Q1_out, Q0_out); //D1 state gate

Reg2 storeStates(
	.D({D1_input,D0_input}),
	.Q({Q1_out,Q0_out}),
	.clock(clk),
	.sw_in(PB_in)
);

assign Q[1]=Q1_out;
assign Q[0]=Q0_out;

endmodule
