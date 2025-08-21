`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 10:25:37 AM
// Design Name: 
// Module Name: assert_immediate
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


module assert_immediate();
reg clk, RST;
reg [3:0]count;
time current_time;
initial begin
clk = 0;
RST = 0;
count=4'b0;
#4 RST = 1;
#40 $finish;
end
always #1 clk = ~clk;
always @ (posedge clk)
begin
if (RST == 1) begin
count=count+1;
end
CHECK_REQ_WHEN_GNT : assert (count==9) begin
$display ("Seems to be working as expected");
$display("count=%d", count);
end else begin
current_time = $time;
#1 $display("assert failed at time %0t", current_time);
$display("count=%d", count);
end
end
endmodule