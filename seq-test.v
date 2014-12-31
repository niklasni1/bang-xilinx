`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:35:22 12/30/2014
// Design Name:   seq
// Module Name:   /home/niklas/code/cpld/bang/seq-test.v
// Project Name:  bang
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_test;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] enc;
	wire [7:0] unenc;

	// Instantiate the Unit Under Test (UUT)
	seq uut (
		.enc(enc), 
		.unenc(unenc), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #1000 clk = ~clk;
      
endmodule

