`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 05:02:11 PM
// Design Name: 
// Module Name: IDEX
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


module IDEX(input [15:0] shiftIn,
            input [1:0] pcIn,
            input [15:0]addIn,
            input [15:0]readDataIn1,
            input [15:0]readDataIn2,
            input [3:0]ALUfuncIn,
            input [3:0]readRegIn1,
            input [3:0]readRegIn2,
            input [2:0]exIn,
            input clk,
            input rst,
            input [1:0]wbIn,
            input [2:0]mIn,
            
            output [15:0]shiftOut,
            output [1:0]pcOut,
            output [15:0]addOut,
            output [15:0]readDataOut1,
            output [15:0]readDataOut2,
            output [3:0]ALUfuncOut,
            output [3:0]readRegOut1,
            output [3:0]readRegOut2,
            output [2:0]mOut,
            output [1:0]wbOut,
            output [2:0]exOut);

    reg[15:0]shiftHold, addHold, readDataHold1,readDataHold2, shiftTemp, addTemp, readDataTemp1, readDataTemp2;
    reg[3:0] ALUfuncHold, ALUfuncTemp,readRegHold1, readRegHold2, readRegTemp1, readRegTemp2;
    reg[2:0] mHold, mTemp,exHold,exTemp;
    reg[1:0] pcHold, pcTemp, wbHold, wbTemp;

    reg[15:0]shiftOut, addOut, readDataOut1,readDataOut2;
    reg[3:0] ALUfuncOut, readRegOut1, readRegOut2;
    reg[2:0] mOut,exOut;
    reg[1:0] pcOut, wbOut;


    //assign shiftOut = shiftTemp;
    
   
    always@(posedge clk or negedge rst)
    begin
        if(!rst)
        begin
            shiftOut = shiftTemp;
            pcOut = pcTemp;
            addOut = addTemp;
            readDataOut1 = readDataTemp1;
            readDataOut2 = readDataTemp2;
            ALUfuncOut = ALUfuncTemp;
            readRegOut1 = readRegTemp1;
            readRegOut2 = readRegTemp2;
            mOut = mTemp;
            wbOut = wbTemp;
            exOut = exTemp;
    
        
            shiftTemp = shiftHold;
            pcTemp = pcHold;
            addTemp = addHold;
            readDataTemp1 = readDataHold1;
            readDataTemp2 = readDataHold2;
            ALUfuncTemp = ALUfuncHold;
            readRegTemp1 = readRegHold1;
            readRegTemp2 = readRegHold2;
            mTemp = mHold;
            wbTemp = wbHold;
            exTemp = exHold;
            
            shiftHold = shiftIn;
            pcHold = pcIn;
            addHold = addIn;
            readDataHold1 = readDataIn1;
            readDataHold2 = readDataIn2;
            ALUfuncHold = ALUfuncIn;
            readRegHold1 = readRegIn1;
            readRegHold2 = readRegIn2;
            mHold = mIn;
            wbHold = wbIn;
            exHold = exIn;
        end 
        else
        begin
            shiftHold = 0;
            pcHold = 0;
            addHold = 0;
            readDataHold1 = 0;
            readDataHold2 = 0;
            ALUfuncHold = 0;
            readRegHold1 = 0;
            readRegHold2 = 0;
            mHold = 0;
            wbHold = 0;
            exHold = 0;
            
            shiftOut = 0;
            pcOut = 0;
            addOut = 0;
            readDataOut1 = 0;
            readDataOut2 = 0;
            ALUfuncOut = 0;
            readRegOut1 = 0;
            readRegOut2 = 0;
            mOut = 0;
            wbOut = 0;
            exOut = 0;
            
        end
    end
  




endmodule
