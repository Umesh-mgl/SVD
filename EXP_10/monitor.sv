`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:24:06 AM
// Design Name: 
// Module Name: monitor
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


`ifndef _monitor_
`define _monitor_
`include "base_pkt1.sv"

class monitor;
base_mon pkt1;
virtual and2_intf intf;
mailbox mon2sb;

function new(virtual and2_intf intf,base_mon pkt1,mailbox mon2sb);
this.intf=intf;
this.pkt1=pkt1;
this.mon2sb=mon2sb;
endfunction

task run();
#1;
pkt1.y=intf.dut.y;
$display("@ %0t,Monitor Capture c = %0d",$time,pkt1.y);
mon2sb.put(pkt1);
endtask
endclass
`endif
