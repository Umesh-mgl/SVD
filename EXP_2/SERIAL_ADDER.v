`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 09:26:56 AM
// Design Name: 
// Module Name: SERIAL_ADDER
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


module SERIAL_ADDER(
input [7:0] A, B,
input reset,
input clock,
output wire [7:0] sum
);
reg [3:0] count;
reg carry_in;
reg s;
reg carry_in_next;
wire [7:0] qa, qb;
wire run;
SHIFT_REG A1(A, reset, 1'b1, 1'b0, clock, qa);
SHIFT_REG B1(B, reset, 1'b1, 1'b0, clock, qb);
SHIFT_REG SUM1(8'b0, reset, run, s, clock, sum);
always @(posedge clock or posedge reset) begin
if (reset) begin
carry_in <= 0;
count <= 8;
end else if (run) begin
carry_in <= carry_in_next;
end
end
always @(qa, qb, carry_in) begin
s = qa[0] ^ qb[0] ^ carry_in;
carry_in_next = (qa[0] & qb[0]) | (qa[0] & carry_in) | (qb[0] & carry_in);
end
always @(posedge clock or posedge reset) begin
if (reset)
count <= 8;
else if (run)count <= count - 1;
end
assign run = (count > 0);
endmodule
