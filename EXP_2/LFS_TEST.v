`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 09:52:59 AM
// Design Name: 
// Module Name: LFS_TEST
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


module LFS_TEST();
reg [7:0] R;        
reg L, E, clock;    
wire [7:0] q;       
LFS l1(R,L,E,clock,q);
initial begin
clock = 0;
L = 0;
E = 0;
R = 8'b10010101;
#10 L = 1;
#10 L = 0;
#10 E = 1;
end
always #5 clock = ~clock;
endmodule
