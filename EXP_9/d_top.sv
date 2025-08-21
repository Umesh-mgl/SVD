`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 10:49:35 AM
// Design Name: 
// Module Name: d_top
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


module d_top (ms_if tif);
// Pass the "master" modport to master
master m0 (tif.master);
// Pass the "slave" modport to slave
slave s0 (tif.slave);
endmodule
module tb;
reg clk;
always #10 clk = ~clk;
ms_if if0 (clk);
d_top d0 (if0);
// Let the stimulus run for 20 clocks and stop
initial begin
clk <= 0;
if0.rstn <= 0;
repeat (5) @ (posedge clk);
if0.rstn <= 1;
repeat (20) @ (posedge clk);
$finish; end
endmodule
