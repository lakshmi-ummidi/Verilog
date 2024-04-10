`timescale 1ns / 1ps
/********************************************************************************************

Filename    :	     Decoder2to4  

Description :      Design of 2:4 Decoder using Dataflow model

Author Name :      Lakshmi Ummidi

Version     :      1.0
*********************************************************************************************/
module Decoder2to4(a, b, y);

input a, b;
output [3:0]y;

assign y[0] = ~a & ~b;
assign y[1] = ~a & b;
assign y[2] = a & ~b;
assign y[3] = a & b;
endmodule
