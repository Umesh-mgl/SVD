`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 10:16:55 AM
// Design Name: 
// Module Name: INHERITANCE_1
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
module INHERITANCE_1();
initial begin
child_class c=new();c.addr=10;
c.data=20;c.display();
end
endmodule
