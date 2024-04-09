`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:00:33 04/02/2024 
// Design Name: 
// Module Name:    logical_op 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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
