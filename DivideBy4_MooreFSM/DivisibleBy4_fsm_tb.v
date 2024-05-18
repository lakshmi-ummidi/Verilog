`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:17 05/18/2024
// Design Name:   Divisibleby4_fsm
// Module Name:   /home/ise/Data/Xilinx Projects/Practice/DivisibleBy4_fsm_tb.v
// Project Name:  Practice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divisibleby4_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DivisibleBy4_fsm_tb;

	// Inputs
	reg clk;
	reg rst;
	reg bit_in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Divisibleby4_fsm uut (
		.clk(clk), 
		.rst(rst), 
		.bit_in(bit_in), 
		.out(out)
	);
	initial begin
		clk = 1;
		rst = 1;
		bit_in = 0;
	end

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    @(negedge clk)
		#10 rst = 1'b0; 
		bit_in = 1'b0;
		#10 bit_in = 1'b1;
		#10 bit_in = 1'b0;
		#10 bit_in = 1'b0;
		#10 bit_in = 1'b0;
		#10 bit_in = 1'b1;
		#10 bit_in = 1'b0;
		#10 bit_in = 1'b1;
	#100 $finish;
  end
  initial
		$monitor("Reset = %b, bit_in = %b, out = %b", rst, bit_in, out);

endmodule