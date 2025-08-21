`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 10:00:17 AM
// Design Name: 
// Module Name: coverage1
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


module coverage1;
bit [0:2] y;
bit [0:2] values[$]= '{3,5,6};
covergroup cg;
cover_point_y : coverpoint y;
endgroup
cg cg_inst = new();
initial
foreach(values[i])
begin
y = values[i];
cg_inst.sample();
end
endmodule
