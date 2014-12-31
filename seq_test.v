`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:05 12/30/2014
// Design Name:   seq
// Module Name:   /home/niklas/code/cpld/bang/seq_test.v
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

`timescale 1 us / 100 ns

module seq_test;

	// Inputs
	reg clk;

	// Outputs
	wire [2:0] tick;
	wire [7:0] sel;

	// Instantiate the Unit Under Test (UUT)
	seq uut (
		.tick(tick), 
		.sel(sel), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #1 clk = ~clk;
      
endmodule

