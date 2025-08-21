`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 10:18:13 AM
// Design Name: 
// Module Name: INHERITANCE_2
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
class parent_class;
bit [31:0]addr;
function display();
$display("Addr = %0d",addr);
endfunction
endclass
class child_class extends parent_class;
bit [31:0]data;
function display();
super.display();
$display("Data = %0d",data);
endfunction
endclass
module INHERITANCE_2();
initial begin
parent_class p;
child_class c=new();
child_class c1;
c.addr=10;
c.data=30;
p=c;
if ($cast(c1, p)) begin
c1.display();  
end else begin
$display("Cast failed!");
end
end
endmodule
