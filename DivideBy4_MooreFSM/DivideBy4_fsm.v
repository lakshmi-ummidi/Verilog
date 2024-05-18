`timescale 1ns / 1ps
/********************************************************************************************

Filename    :	   Divisibleby4_fsm.v   

Description :      Output goes high whenever the number received so far is divisible by 4.

Author Name :      Lakshmi Ummidi

Version     :      1.0

*********************************************************************************************/
module Divisibleby4_fsm(
    input clk,
    input rst,
    input bit_in,
    output reg out
    );

  reg [2:0] state, next;
  parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;

  always @(posedge clk or posedge rst) 
  begin
    if (rst) 
	 begin
      state <= S0;
    end
	 else
		state <= next;
	end
	always@(*)
   begin
      case (state)
        S0: begin
			 if (bit_in) next <= S1;
          else next <= S0;
			 out = 1'b0;
        end
        S1: begin
			 if (bit_in) next <= S3;
          else next <= S2;
			 out = 1'b0;
        end
        S2: begin
          if (bit_in) next <= S1;
          else next <= S4;
			 out = 1'b0;
        end
        S3: begin
          if (bit_in) next <= S3;
          else next <= S2;
			 out = 1'b0;
        end
		  S4: begin
			  if (bit_in) next <= S1;
          else next <= S4;
			 out = 1'b1;
			end
      endcase
    end
	 //assign out = (state == s4)? 1'b1 : 1'b0;
endmodule 
