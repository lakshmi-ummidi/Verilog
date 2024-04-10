`timescale 1ns / 1ps
/********************************************************************************************

Filename    :	   full_adder_data_tb.v   

Description :      One bit Full adder using dataflow model

Author Name :      Lakshmi Ummidi

Version     :      1.0
*********************************************************************************************/
module full_adder_data(a, b, c, Sum, Carry);

	input a, b, c;
	output Sum, Carry;
	
	assign Sum = a ^ b ^ c;
	assign Carry = (a & b) | (b & c) | (a & c);
endmodule
