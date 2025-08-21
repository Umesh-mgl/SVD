`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:48:47 AM
// Design Name: 
// Module Name: test
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


`ifndef _tb_
`define _tb_

`include "base_pkt.sv"
`include "base_pkt1.sv"

`include "trans.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

program test(and2_intf.tb intf);
base pkt;
base_mon pkt1;
mailbox drv2sb;
mailbox mon2sb;
trans trans1;
driver drv;
monitor mon;
scoreboard sb;

initial begin
pkt=new();
pkt1=new();
drv2sb=new();
mon2sb=new();
end

initial begin
drv=new(intf,pkt,drv2sb);
trans1=new(intf,pkt,drv);
mon=new(intf,pkt1,mon2sb);
sb=new(drv2sb,mon2sb,pkt,pkt1);
end

initial begin
repeat (5) begin
fork
trans1.run();
mon.run();
sb.run();
join
end
end
endprogram
`endif