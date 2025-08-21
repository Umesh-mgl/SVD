`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer
// Create Date: 01.04.2025 23:27:48
// Design Name: 
// Module Name: COMPRATOR
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


module COMPRATOR(
input [3:0]a,b,
input reset,
output reg agb,alb,aeb);
always @ (a,b,reset) begin
if (reset) begin
agb=0;alb=0;aeb=0;
end
else begin
agb=0;alb=0;aeb=0;
if (a>b)
agb=1;
else if (a<b)
alb=1;
else 
aeb=1;
end
end
endmodule
