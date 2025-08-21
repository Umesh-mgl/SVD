`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:16:01 AM
// Design Name: 
// Module Name: driver
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

`ifndef _driver_
`define _driver_
`include "base_pkt.sv"

class driver;
virtual and2_intf intf;
base pkt;
mailbox drv2sb;

function new(virtual and2_intf intf,base pkt,mailbox drv2sb);
this.intf=intf;
this.pkt=pkt;
this.drv2sb=drv2sb;
endfunction

task run();
intf.dut.a=pkt.a;
intf.dut.b=pkt.b;
$display("@ %0t,Driving a = %0d, b = %0d",$time,pkt.a,pkt.b);
drv2sb.put(pkt);
#1;
endtask
endclass
`endif


