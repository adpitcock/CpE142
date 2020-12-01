`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 02:21:25 PM
// Design Name: 
// Module Name: InstMem_tb
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


module InstMem_tb();
reg [15:0] address;
wire [15:0] dataOut;
reg clk,rst;

InstMem g1(.address(address), .dataOut(dataOut), .clk(clk), .rst(rst));

always #10 clk <= ~clk;

initial 
begin
    clk = 0;
    rst = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;
    address = 'h00;
    #40;
    address = 'h02;
    #40;
    address = 'h04;
    #40;
    address = 'h06;
    #40;
    address = 'h08;
    #40;
    address = 'h0A;
    #40;
    address = 'h0C;
    #40;
    address = 'h0E;
    #40;
    address = 'h10;
    #40;
    address = 'h12;
    #40;
    address = 'h14;
    #40;
    address = 'h16;
    #40;
    address = 'h18;
    #40;
    address = 'h1A;
    #40;
    address = 'h1C;
    #40;
    address = 'h1E;
    #40;
    address = 'h20;
    #40;
    address = 'h22;
    #40;
    address = 'h24;
    #40;
    address = 'h26;
    #40;
    address = 'h28;
    #40;
    address = 'h2A;
    #40;
    address = 'h2C;
    #40;
    address = 'h2E;
    #40;
    address = 'h30;
    #40;
    $finish;
end
endmodule
