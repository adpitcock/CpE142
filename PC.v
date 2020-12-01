`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 08:01:27 PM
// Design Name: 
// Module Name: PC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC(input clk,
		  input rst,
		  input hazrd,
		  input [15:0] PCin,
		  output reg [15:0] PCout);
	
	always@(posedge clk or negedge rst)
	begin
		if(rst || hazrd)
			PCout <= PCout;
		else
			PCout <= PCin;
	end
endmodule
