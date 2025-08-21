`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:34:36 AM
// Design Name: 
// Module Name: ans_intf
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


interface and2_intf;
logic a;
logic b;
logic y;
modport dut (input a,input b,output y);
modport tb (output a,output b,input y);
endinterface