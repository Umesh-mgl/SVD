`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 10:51:59 AM
// Design Name: 
// Module Name: assertion_both
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


module assertion_both();
reg clk;
reg reset;
reg [3:0] count;
reg trigger;
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
reset = 0;
trigger = 0;
#10 reset = 1;
#20 trigger = 1;
#100 $finish;
end
always @(posedge clk) begin
if (reset)
count <= count + 1;
else
count <= 0;
end
always @(posedge clk) begin
if (trigger) begin
IMMEDIATE_ASSERT: assert (count < 10)
$display("Immediate Assertion Passed: count = %d", count);
else
$error("Immediate Assertion Failed: count = %d", count);
end
end
property count_less_than_10;
@(posedge clk) reset |=> (count < 10);
endproperty
CONCURRENT_ASSERT: assert property (count_less_than_10)
$display("Concurrent Assertion Passed: count eventually < 10, count = %d", count);
else
$error("Concurrent Assertion Failed: count never < 10, count = %d", count);
endmodule
