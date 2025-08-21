`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 09:30:49 AM
// Design Name: 
// Module Name: DEEP_COPY
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

class A;
int i;
endclass
class B;
A a;
task copy(A a);
this.a=new a;
endtask
endclass
module DEEP_COPY();
initial begin
B b1;
B b2;
b1=new();
b1.a=new();
b1.a.i=123;
b2=new b1;
b2.copy(b1.a);
$display(b1.a.i);
$display(b2.a.i);
b1.a.i=321;
$display(b1.a.i);
$display(b2.a.i);
end
endmodule
