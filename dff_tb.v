/********************************************************************************************

Filename    :	   dff_tb.v   

Description :      Testbench for Delay FF

Author Name :      Lakshmi Ummidi

Version     :      1.0
*********************************************************************************************/

module dff_tb();
		
	//Testbench global variables
	reg clk,reset,d;
	wire q,qb;
			
	//Step1 : Define a parameter with name "CYCLE" which is equal to 10  
	parameter CYCLE = 10;

	//Step2 : Instantiate the design       
	dff DUT(clk, reset, d, q, qb);
							
	//Understand the clock generation logic
	always
		begin
			#(CYCLE/2);
			clk = 1'b0;
			#(CYCLE/2);
			clk=~clk;
		end		
	//Reset task
	task rst_dut();
		begin
			@(negedge clk);
            reset=1'b1;
			@(negedge clk);
            reset=1'b0;
		end
     endtask		
	//Data task
	task din(input i);
		begin
			@(negedge clk);
			d=i;
		end
	endtask
			
	//Process that generates stimulus by call by value method
	initial 
		begin
			rst_dut;
			din(0);
			din(1);
			din(0);
			din(1);
			din(1);
			rst_dut;
			din(0);
			din(1);
			#10;
			$finish;
		end
	//Step3 : Use $monitor to display the various inputs and outputs
	initial
		begin
			$monitor("Values of clk=%b,reset=%b,data=%b,q=%b,qb=%b",clk,reset,d,q,qb);
		end			
endmodule
