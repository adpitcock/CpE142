`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 07:27:33 PM
// Design Name: 
// Module Name: comparator
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


module comparator(input [15:0] R15,
                  input [15:0] readData1,
                  input [1:0] ctrl,
                  output reg compOut);
    reg [15:0] r15;
    reg [15:0] read1;
    
    always@(*)
    begin
        r15 <= R15;
        read1 <= readData1;
        
        case(ctrl)
            'h1:                    //(B)ranch on (L)ess (T)han
                if(read1 < r15)     
                    compOut <= 1; 
                else
                    compOut <= 0;
            'h2:                    //(B)ranch on (G)reater (T)han
                if(read1 > r15)
                    compOut <= 1;
                else
                    compOut <= 0;
            'h3:                    //(B)ranch on (EQ)ual
                if(read1 == r15)    
                    compOut <= 1;
                else
                    compOut <= 0;
        endcase
        
    end
    
endmodule
