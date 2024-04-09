`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:08:54 04/09/2024
// Design Name:   Decoder2to4
// Module Name:   /home/ise/Data/Xilinx Projects/Practice/Decoder2to4_tb.v
// Project Name:  Practice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder2to4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder2to4_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire [3:0] y;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	Decoder2to4 uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		a = 0;
		b = 0;
	end
	initial begin
		for(i = 0; i < 4; i = i + 1)
		begin
			{a, b} = i;
			#10;
		end
	end
	initial 
		$monitor("a = %b, b = %b, y= %b", a, b, y);
	initial #40 $finish;
      
endmodule

