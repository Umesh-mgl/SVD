`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:57:21 AM
// Design Name: 
// Module Name: trans
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


`ifndef _trans_
`define _trans_
`include "base_pkt.sv"
`include "driver.sv"
class trans;
virtual and2_intf intf;
base pkt;
driver drv;
function new(virtual and2_intf intf,base pkt,driver drv);
this.intf=intf;
this.pkt = pkt;
this.drv=drv;
endfunction
task run();
pkt.randomize();
drv.run();
endtask
endclass
`endif