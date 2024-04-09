`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:17:52 04/03/2024 
// Design Name: 
// Module Name:    full_adder_data 
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
module full_adder_data(a, b, c, Sum, Carry);

	input a, b, c;
	output Sum, Carry;
	
	assign Sum = a ^ b ^ c;
	assign Carry = (a & b) | (b & c) | (a & c);
endmodule
