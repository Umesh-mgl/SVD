`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2025 23:33:17
// Design Name: 
// Module Name: COMPRATOR_TEST
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


module COMPRATOR_TEST();
reg [3:0]a,b;
reg reset;
wire agb,alb,aeb;
COMPRATOR c1(a,b,reset,agb,alb,aeb);
initial begin
reset = 0;
#10 a = 4'b0001; b = 4'b0100;  
#10 a = 4'b0100; b = 4'b0001;  
#10 a = 4'b1010; b = 4'b1010;  
#10 reset = 1;  
end    
endmodule
