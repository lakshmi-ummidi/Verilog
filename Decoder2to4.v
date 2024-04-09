`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:01:14 04/09/2024 
// Design Name: 
// Module Name:    Decoder2to4 
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
module Decoder2to4(a, b, y);

input a, b;
output [3:0]y;

assign y[0] = ~a & ~b;
assign y[1] = ~a & b;
assign y[2] = a & ~b;
assign y[3] = a & b;
endmodule
