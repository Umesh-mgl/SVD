`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 

// Create Date: 02.04.2025 00:00:44
// Design Name: 
// Module Name: MULTIPLIER
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


module MULTIPLIER(input a0,a1,b0,b1,reset,
output reg [3:0]c
);
wire p0,p1,p2,p3;
assign c0=a0&b0;
assign p0=a1&b0;
assign p1=a0&b1;
assign c1=p0^p1;
assign p2=p0&p1;
assign p3=a1&b1;
assign c2=p3^p2;
assign c3=p3&p2;
always @(a0,a1,b0,b1,reset) begin
if (reset) begin
c=4'b0;
end
else begin 
c=4'b0;
c[0]=c0;
c[1]=c1;
c[2]=c2;
c[3]=c3;
end
end
endmodule
