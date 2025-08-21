`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:41:17 AM
// Design Name: 
// Module Name: scoreboard
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


`ifndef _scoreboard_
`define _scoreboard_

`include "base_pkt1.sv"
`include "base_pkt.sv"

class scoreboard;
mailbox drv2sb;
mailbox mon2sb;
base pkt;
base_mon pkt1;

function new(mailbox drv2sb,mailbox mon2sb,base pkt,base_mon pkt1);
this.drv2sb=drv2sb;
this.mon2sb=mon2sb;
this.pkt=pkt;
this.pkt1=pkt1;
endfunction

task run();
drv2sb.get(pkt);
mon2sb.get(pkt1);

$display("scoreboard: expected = %0d, actual = %0d", (pkt.a & pkt.b), pkt1.y);
if(pkt1.y == (pkt.a & pkt.b))
$display("scoreboard: ✅ SUCCESS with a=%0d, b=%0d, c=%0d", pkt.a, pkt.b, pkt1.y);
else
$display("scoreboard: ❌ FAILURE with a=%0d, b=%0d, c=%0d", pkt.a, pkt.b, pkt1.y);
endtask
endclass
`endif