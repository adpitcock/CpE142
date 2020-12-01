`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 09:08:12 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg [1:0] ctrl;
reg [15:0] R15;
reg [15:0] readData1;
wire compOut;

comparator g1(.ctrl(ctrl), .R15(R15), .readData1(readData1), .compOut(compOut));


initial begin
    #10;
    ctrl = 1;//BLT
    R15 = 'h1234;
    readData1 = 'h1233;
    #40
    ctrl = 1;//BLT
    R15 = 'h1233;
    readData1 = 'h1234;
    #40
    ctrl = 1;//BLT
    R15 = 'h1234;
    readData1 = 'h1234;
    #40;
    
    
    ctrl = 0;
    R15 = 'h0000;
    readData1 = 'h0000;
    #40;
    
    
    ctrl = 2;//BGT
    R15 = 'h1234;
    readData1 = 'h1233;
    #40;
    ctrl = 2;//BGT
    R15 = 'h1233;
    readData1 = 'h1234;
    #40;
    ctrl = 2;//BGT
    R15 = 'h1234;
    readData1 = 'h1234;
    #40;
    
    
    ctrl = 0;
    R15 = 'h0000;
    readData1 = 'h0000;
    #40;
    
    
    ctrl = 3;//BEQ
    R15 = 'h1234;
    readData1 = 'h1233;
    #40;
    ctrl = 3;//BEQ
    R15 = 'h1233;
    readData1 = 'h1234;
    #40;
    ctrl = 3;//BEQ
    R15 = 'h1234;
    readData1 = 'h1234;
    #40;
    $finish;
end
endmodule
