`timescale 1ns / 1ps

module Calculator(
    input [15:0]sw, //16 switch input, 3 button input, clock input
    input btnR, btnL, btnD, 
    input clk,
    output [3:0]an, //SSEG output anodes, segments, decimal point
    output [6:0]seg,
    output dp,
    output [15:0]led //LED outputs
    );
    
wire sw_out_R, sw_out_L, sw_out_D;
wire [31:0]display_data; //data to be displayed by SSEG and LEDs
wire [31:0]ALUdata; //data to be output by the ALU
wire [31:0]clear_data = 32'd0; // clear data for having all 0s 32'd0 assigns 32 bits of 0s
wire [31:0]add_data; //data from add function
wire [31:0]subtract_data; //data from subtract function
wire [31:0]multiply_data; //data from multiply function
wire [15:0]A_wire; //two 16 bit inputs
wire [15:0]B_wire;
wire [15:0]SSEG_data; //data to be derived from display data and displayed on SSEG
wire [1:0]ALU_select; //selects for the mux components
wire [1:0]display_select; 
wire dp_check; //checks for negative output
 
debouncer right_button( 
    .clk(clk), 
    .PB(btnR), 
    .PB_up(sw_out_R) 
);
    
Reg16 storeB (
    .D(sw),
    .sw_in(sw_out_R),
    .clock(clk),
    .Q(B_wire)
);
Reg16 storeA (
    .D(B_wire),
    .sw_in(sw_out_R),
    .clock(clk),
    .Q(A_wire)
);

AddFunction add(
    .A(A_wire),
    .B(B_wire),
    .Q(add_data)
);

SubtractFunction subtract( 
    .A(A_wire),
    .B(B_wire),
    .Q(subtract_data),
    .c_out(dp_check) 
);

MultiplierFunctionVertical multiply(
    .A(A_wire),
    .B(B_wire),
    .Q(multiply_data)
);

debouncer left_button( 
    .clk(clk), 
    .PB(btnL), 
    .PB_up(sw_out_L) 
);

Incrementer incrementALUMux(
    .clk(clk),
    .PB_in(sw_out_L),
    .Q(ALU_select)
);

mux4b #(32) ALU_Mux
(	
	.in3(multiply_data), //11 
	.in2(subtract_data), //10
	.in1(add_data), //01
	.in0(clear_data), //00
	.sel(ALU_select),
	.out(ALUdata)
);

Reg32 storeBits(
	.D(ALUdata),
	.sw_in(sw_out_L),
	.clock(clk),
	.Q(display_data)
);

debouncer down_button( 
    .clk(clk), 
    .PB(btnD), 
    .PB_up(sw_out_D) 
);

Incrementer incrementDisplayMux(
    .clk(clk),
    .PB_in(sw_out_D),
    .Q(display_select)
);

mux4b #(16) display_Mux
(	
	.in3(display_data[31:16]), //11 
	.in2(B_wire), //10
	.in1(A_wire), //01
	.in0(clear_data[15:0]), //00
	.sel(display_select),
	.out(SSEG_data)
);

SSEG display(
    .clk(clk),
    .D(SSEG_data),
    .dp_check(dp_check),
    .dp(dp),
    .seg(seg),
	.an(an)
);    
assign led = display_data[15:0];

endmodule
