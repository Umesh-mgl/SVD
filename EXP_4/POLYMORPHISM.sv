`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 10:32:08 AM
// Design Name: 
// Module Name: POLYMORPHISM
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

class base_class;
virtual function void display();
$display("Inside Base Class");
endfunction
endclass
class ext_class_1 extends base_class;
function void display();
$display("Inside Extend Class 1");
endfunction
endclass
class ext_class_2 extends base_class;
function void display();
$display("Inside Extend Class 2");
endfunction
endclass
class ext_class_3 extends base_class;
function void display();
$display("Inside Extend Class 3");
endfunction
endclass
module POLYMORPHISM();
initial begin
ext_class_1 ec_1=new();
ext_class_2 ec_2=new();
ext_class_3 ec_3=new();
base_class b_c[3];
b_c[0]=ec_1;
b_c[1]=ec_2;
b_c[2]=ec_3;
b_c[0].display();
b_c[1].display();
b_c[2].display();
end
endmodule
