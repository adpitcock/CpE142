`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 01:48:41 PM
// Design Name: 
// Module Name: InstMem
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


module InstMem(input[15:0] address,
               output[15:0] dataOut,
               input clk,
               input rst);
               
    reg [15:0] memory [256:0];
    reg [15:0] tempData;
    
    assign dataOut = tempData;
    
   always@(posedge clk or address)
   begin  
        if(rst)
        begin
            memory['h00] = 'h1120;
            memory['h02] = 'h11D1;
            memory['h04] = 'h148E;
            memory['h06] = 'h5800;
            memory['h08] = 'h146F;
            memory['h0A] = 'h4794;
            memory['h0C] = 'h934C;
            memory['h0E] = 'h1EE1;
            memory['h10] = 'h5796;
            memory['h12] = 'h6698;
            memory['h14] = 'hE704;
            memory['h16] = 'h1B10;
            memory['h18] = 'hC705;
            memory['h1A] = 'h1B20;
            memory['h1C] = 'hD702;
            memory['h1E] = 'h1110;
            memory['h20] = 'h1110;
            memory['h22] = 'h6890;
            memory['h24] = 'h1880;
            memory['h26] = 'h7892;
            memory['h28] = 'h1A92;
            memory['h2A] = 'h1CA0;
            memory['h2C] = 'h1CD1;
            memory['h2E] = 'h1CD0;
            memory['h30] = 'hEF20;
        end
        
        else
        begin
            tempData <= memory[address];
        end
  end
   
endmodule
