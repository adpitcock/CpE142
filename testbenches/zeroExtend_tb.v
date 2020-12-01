`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 07:51:31 PM
// Design Name: 
// Module Name: zeroExtend_tb
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


module zeroExtend_tb();
reg [7:0] in;
wire[15:0] out;

zeroExtend u1(.in(in), .out(out));

initial begin
    in = 8'b01110011;
#20
    in = 8'b11111111;
#20;
$finish;

end
endmodule
