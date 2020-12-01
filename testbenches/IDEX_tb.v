`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 06:14:20 PM
// Design Name: 
// Module Name: IDEX_tb
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


module IDEX_tb();
    reg [15:0]shiftIn;
    reg [1:0]pcIn;
    reg [15:0]addIn;
    reg [15:0]readDataIn1;
    reg [15:0]readDataIn2;
    reg [3:0]ALUfuncIn;
    reg [3:0]readRegIn1;
    reg [3:0]readRegIn2;
    reg [2:0]exIn;
    reg clk;
    reg rst;
    reg [1:0]wbIn;
    reg [2:0]mIn;
    
    wire [15:0]shiftOut;
    wire [1:0]pcOut;
    wire [15:0]addOut;
    wire [15:0]readDataOut1;
    wire [15:0]readDataOut2;
    wire [3:0]ALUfuncOut;
    wire [3:0]readRegOut1;
    wire [3:0]readRegOut2;
    wire [2:0]mOut;
    wire [1:0]wbOut;
    wire [2:0]exOut;
    
    IDEX uut(.shiftIn(shiftIn), .pcIn(pcIn), .addIn(addIn), .readDataIn1(readDataIn1), .readDataIn2(readDataIn2),
           .ALUfuncIn(ALUfuncIn), .readRegIn1(readRegIn1), .readRegIn2(readRegIn2), .exIn(exIn), .clk(clk),
           .rst(rst), .wbIn(wbIn), .mIn(mIn), .shiftOut(shiftOut), .pcOut(pcOut), .addOut(addOut), .readDataOut1(readDataOut1),
           .readDataOut2(readDataOut2), .ALUfuncOut(ALUfuncOut), .readRegOut1(readRegOut1), .readRegOut2(readRegOut2),
           .mOut(mOut), .wbOut(wbOut), .exOut(exOut));
           
           
    always #10 clk <= ~clk;  
    
    initial
    begin
        $display($time, " << Starting the Simulation >>");
        clk = 0;
        rst = 1;
        #10
        //Test values 
        rst = 0;
        shiftIn = {16{1'b1}};
        pcIn = {2{1'b1}};
        addIn = {16{1'b1}};
        readDataIn1 = {16{1'b1}};
        readDataIn2 = {16{1'b1}};
        ALUfuncIn = {4{1'b1}};
        readRegIn1 = {4{1'b1}};
        readRegIn2 = {4{1'b1}};
        exIn = {3{1'b1}};
        wbIn = {2{1'b1}};
        mIn = {3{1'b1}};
        
        #40
        
        shiftIn = 'h1234;
        pcIn = 2'b01;
        addIn = 'h1122;
        readDataIn1 = 'h0000;
        readDataIn2 = 'h1111;
        ALUfuncIn = 'h8;
        readRegIn1 = 'h3;
        readRegIn2 = 'hA;
        exIn = 3'b001;
        wbIn = 2'b01;
        mIn = 3'b000;
        
        #20
        rst = 1;
        #5
        rst = 0;
       
        shiftIn = 'h1234;
        pcIn = 2'b01;
        addIn = 'h1122;
        readDataIn1 = 'h0000;
        readDataIn2 = 'h1111;
        ALUfuncIn = 'h8;
        readRegIn1 = 'h3;
        readRegIn2 = 'hA;
        exIn = 3'b001;
        wbIn = 2'b01;
        mIn = 3'b000;
        #40
        $finish;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    end
endmodule
