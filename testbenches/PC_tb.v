`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 08:02:41 PM
// Design Name: 
// Module Name: PC_tb
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


module PC_tb();
    reg clk;
	reg rst;
	reg hazrd;
	reg [15:0] PCin;
	wire [15:0] PCout; 
	
	PC u1(.clk(clk), .rst(rst), .hazrd(hazrd), .PCin(PCin), .PCout(PCout));
	
	always #10 clk = ~clk;
	
	initial begin
	   rst = 1;
	   clk = 0;
	   hazrd = 0;
	   PCin = 0;
	   #5
	   rst = 0;
	   PCin = {16{1'b1}};
	   #20
	   hazrd = 1;
	   #10
	   hazrd = 0;
	   #25
	   PCin = 'h1234;
	   #25
	   $finish;
	end
endmodule
