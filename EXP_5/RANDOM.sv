`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 09:16:31 AM
// Design Name: 
// Module Name: RANDOM
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
rand bit[7:0]addr;
randc bit wr_rd;
bit tmp_wr_rd;
function void pre_randomize();
if(tmp_wr_rd==1)addr.rand_mode(0);
else
addr.rand_mode(1);
endfunction
function void post_randomize();
tmp_wr_rd=wr_rd;
$display("POST_RANDOMIZATION::Addr=%0h,wr_r=%0h",addr,wr_rd);
endfunction
endclass
module RANDOM();
initial begin
packet pkt;
pkt=new();
repeat(7) pkt.randomize();
end
endmodule
