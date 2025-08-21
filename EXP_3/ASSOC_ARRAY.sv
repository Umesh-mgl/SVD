`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 10:45:43 AM
// Design Name: 
// Module Name: ASSOC_ARRAY
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


module ASSOC_ARRAY();
int fruits_10[string];
string fruits_11[int];
initial begin
fruits_10='{"apple":4,"orange":10,"plum":9,"guava":1};
fruits_11='{34:"grapes",22:"melon"};
$display("[10]size=%0d",fruits_10.size());
$display("[11]size=%0d",fruits_11.size());
$display("[10]num=%0d",fruits_10.num());
$display("[11]num=%0d",fruits_11.num());
if(fruits_10.exists("orange"))
$display("Found %0d orange!",fruits_10["orange"]);
if(fruits_11.exists(22))
$display("Found 22 %s!",fruits_11[22]);if(!fruits_10.exists("apricots"))
$display("Sorry,season for apricots is over....");
begin
string f;
if(fruits_10.first(f))
$display("fruits_10.first[%s]=%0d",f,fruits_10[f]);
end
begin
string f;
if(fruits_10.last(f))
$display("fruits_10.last[%s]=%0d",f,fruits_10[f]);
end
begin
string f;
f = ("orange");
if(fruits_10.prev(f))
$display("fruits_10_prev[%s]=%0d",f,fruits_10[f]);
end
begin
string f;
f = ("orange");
if(fruits_10.next(f))
$display("fruits_10_next[%s]=%0d",f,fruits_10[f]);
end
end
endmodule
