`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 09:51:08 AM
// Design Name: 
// Module Name: LFS
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


module LFS(
input [7:0] R,
input L, E, clock,
output reg [7:0] q
);
integer k; 
always @(posedge clock) begin
if (L)
q <= R;
else if (E) begin
for (k = 7; k > 0; k = k - 1)
q[k-1] <= q[k];
q[7] <= q[7] ^ q[6] ^ q[5] ^ q[4] ^ q[3] ^ q[2] ^ q[1]^q[0];
end
end
endmodule

