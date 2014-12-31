`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:23:41 12/30/2014
// Design Name:   voice
// Module Name:   /home/niklas/code/cpld/bang/voice_test.v
// Project Name:  bang
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: voice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1 us / 100 ns

module voice_test;

	// Inputs
	reg [15:0] sstart;
	reg [15:0] send;
	reg clk;
	reg trigger;

	// Outputs
	wire [15:0] addr;

	// Instantiate the Unit Under Test (UUT)
	voice uut (
		.sstart(sstart), 
		.send(send), 
		.clk(clk), 
		.trigger(trigger), 
		.addr(addr)
	);

	initial begin
		// Initialize Inputs
		sstart = 0;
		send = 100;
		clk = 0;
		trigger = 0;

		// Wait 100 ns for global reset to finish
		#1;
        
		// Add stimulus here
		#2 trigger = 1;
		#3 trigger = 0;
	end
	
	always #1 clk = ~clk;
      
endmodule

