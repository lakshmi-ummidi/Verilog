`timescale 1ns / 1ps
/********************************************************************************************

Filename    :	   logical_op.v  

Description :      Design to verify functionality of logical operators

Author Name :      Lakshmi Ummidi

Version     :      1.0
*********************************************************************************************/
module logical_op();
	reg [2:0]a, b;
	reg x, y, z;
	
	initial begin
		a = 3'b101;
		b = 3'b000;
		
		x = a && b;
		y = a || b;
		z = !b;
		
		$monitor("x = %b, y = %b, z = %b", x, y, z);
	end
endmodule
