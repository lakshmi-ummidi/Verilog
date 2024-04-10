`timescale 1ns / 1ps

/********************************************************************************************

Filename    :	   Decoder2to4_tb.v

Description :      2:4 Decoder TestBench

Author Name :      Lakshmi Ummidi

Version     :      1.0
*********************************************************************************************/

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

