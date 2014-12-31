`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:42 12/30/2014 
// Design Name: 
// Module Name:    seq 
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
module seq(output reg [2:0] tick, output reg [7:0] sel, input clk);

initial tick = 0;
initial sel = 0;
always @ (posedge clk)
begin
	tick = tick+1;
	case(tick)
	  3'b000: sel <= 8'b00000001;
	  3'b001: sel <= 8'b00000010;
	  3'b010: sel <= 8'b00000100;
	  3'b011: sel <= 8'b00001000;
	  3'b100: sel <= 8'b00010000;
	  3'b101: sel <= 8'b00100000;
	  3'b110: sel <= 8'b01000000;
	  3'b111: sel <= 8'b10000000;
	endcase
end

endmodule
