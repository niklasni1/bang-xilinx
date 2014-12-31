`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:07 12/30/2014 
// Design Name: 
// Module Name:    control 
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

/*
	reg map:
	'b0vvv0000 | voice v sample start LSB
	'b0vvv0001 | voice v sample start MB
	'b0vvv0010 | voice v sample start MSB
	'b0vvv0011 | RESERVED
	'b0vvv0100 | voice v sample end LSB
	'b0vvv0101 | voice v sample end MB
	'b0vvv0110 | voice v sample end MSB
	'b0vvv0111 | RESERVED
	'b0vvv1xxx | ALL RESERVED
	'b11111vvv | trigger voice v on next sample clock
				  | others: RESERVED
*/

module registers(
    input [7:0] ctrl_addr,
    input [7:0] ctrl_data,
    input ctrl_wr,
    output [15:0] s1_sstart,
    output [15:0] s1_send,
	 output s1_trigger,
    output [15:0] s2_start,
    output [15:0] s2_send,
	 output s2_trigger,
    output [15:0] s3_sstart,
    output [15:0] s3_send,
	 output s3_trigger,
    output [15:0] s4_sstart,
    output [15:0] s4_send,
	 output s4_trigger,
	 output [15:0] s5_sstart,
    output [15:0] s5_send,
	 output s5_trigger,
    output [15:0] s6_start,
    output [15:0] s6_send,
	 output s6_trigger,
    output [15:0] s7_sstart,
    output [15:0] s7_send,
	 output s7_trigger,
    output [15:0] s8_sstart,
    output [15:0] s8_send,
	 output s8_trigger
    );
	 
	 
endmodule
