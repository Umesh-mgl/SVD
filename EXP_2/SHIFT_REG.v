`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 09:15:30 AM
// Design Name: 
// Module Name: SHIFT_REG
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


module SHIFT_REG(
input [7:0] R,
input L, E, W, clock,
output reg [7:0] q
);
integer k;
always @(posedge clock) begin
if (L)
q <= R;
else if (E) begin
for (k = 7; k > 0; k = k - 1)
q[k-1] <= q[k];
q[7] <= W;
end
end
endmodule
