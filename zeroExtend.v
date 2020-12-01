`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 07:41:49 PM
// Design Name: 
// Module Name: zeroExtend
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


module zeroExtend(input[7:0] in,
				  output reg [15:0] out);
	//reg [15:0] out;
	always@(*)
	begin
	   out = {8'b00000000,in};
	end
endmodule
