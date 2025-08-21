`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 

// Create Date: 02.04.2025 00:11:55
// Design Name: 
// Module Name: MULTIPLIER_TEST
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


module MULTIPLIER_TEST();
reg a0,a1,b0,b1,reset;
wire [3:0]c;
MULTIPLIER m1(a0,a1,b0,b1,reset,c);
initial begin
reset=0;
a0=0;a1=0;b0=1;b1=1;
#10 a0=0;a1=1;b0=1;b1=0;
#10 a0=1;a1=0;b0=0;b1=1;
#10 a0=1;a1=1;b0=0;b1=1;
#10 reset=1;
end
endmodule
