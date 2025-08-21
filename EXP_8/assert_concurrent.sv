`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 10:48:42 AM
// Design Name: 
// Module Name: assert_concurrent
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


module assert_concurrent();
reg clk, RST;
reg [3:0] count;
initial begin
clk = 0;
RST = 0;
count = 4'b0;
#4 RST = 1;
#40 $finish;
end
always #1 clk = ~clk;
always @(posedge clk) begin
if (RST == 1) begin
count = count + 1;
end
end
property count_reaches_9;
@(posedge clk) RST |=> count == 9;
endproperty
CHECK_COUNT_9: assert property (count_reaches_9)
$display("Concurrent assertion passed: count eventually reaches 9, count=%d", count);
else
$display("Concurrent assertion failed: count did not reach 9, count=%d", count);
endmodule