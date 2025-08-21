`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 09:49:38 AM
// Design Name: 
// Module Name: RANDOM_INHERIT
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

class packet;
rand bit [3:0]addr;
constraint addr_range {addr>5;}
endclass
class packet2 extends packet;
constraint addr_range_1 { addr<10; }
endclass
module RANDOM_INHERIT();
initial begin
packet pkt1;
packet2 pkt2;
pkt1 = new();
pkt2 = new();
$display("------------------");
repeat(5) begin
pkt1.randomize();
$display("\tpkt1:: addr = %0d",pkt1.addr);
end
$display("------------------");
repeat(5) begin
pkt2.randomize();
$display("\tpkt2:: addr = %0d",pkt2.addr);
end
$display("------------------");
end
endmodule


