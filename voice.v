`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:38 12/30/2014 
// Design Name: 
// Module Name:    voice 
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
module voice(
    input [15:0] sstart,
    input [15:0] send,
    input clk,
    input trigger,
    output [15:0] addr
    );

reg [15:0] current;
reg playing;

assign addr = current;
initial playing = 0;
initial current = 0;
always @ (posedge clk)
begin
	if(trigger)
		begin
			playing <= 1;
			current <= sstart;
		end
	else if (playing && current == send)
		begin
			playing <= 0;
		end
	else if (playing)
		current <= current+1;
	end
endmodule
