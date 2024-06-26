/********************************************************************************************

Filename    :	   full_adder_data_tb.v   

Description :      One bit Full adder Testbench

Author Name :      Lakshmi Ummidi

Version     :      1.0
*********************************************************************************************/

module full_adder_data_tb();
	//Testbench global variables
	reg   a,b,c;
	wire Sum,Carry;

	//Variable for loop iteration 
	integer i;

	//Step1 : Instantiate the full adder with order based port mapping
	full_adder_data	dut (.a(a), .b(b), .c(c), .Sum(Sum), .Carry(Carry));

	//Process to initialize the variables at 0ns
	initial 
		begin
			a = 1'b0;
			b = 1'b0;
			c = 1'b0;
		end
				
	//Process to generate stimulus using for loop
	initial
		begin 
			for (i=0;i<8;i=i+1)
				begin
					{a,b,c}=i;
					#10;
				end
		end
				
	//Process to monitor the changes in the variables
	initial 
		$monitor("Input a=%b, b=%b, c=%b, Output sum =%b, carry=%b", a, b, c, Sum, Carry);
									
	//Process to terminate simulation after 100ns
	initial #80 $finish;
			
   
endmodule
