`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 09:32:02 AM
// Design Name: 
// Module Name: SERIAL_ADDER_TEST
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


module SERIAL_ADDER_TEST();
reg [7:0] A, B;
reg reset, clock;
wire [7:0] sum;
SERIAL_ADDER s1(A, B, reset, clock, sum);
always begin
#5 clock = ~clock;
end
initial begin
clock = 0;
A = 8'hAF;
B = 8'h10;
reset = 1;
#10 reset = 0;
#100 $finish;
end
endmodule

