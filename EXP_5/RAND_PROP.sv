`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 09:55:50 AM
// Design Name: 
// Module Name: RAND_PROP
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

class const_rand;
randc bit[7:0]address;
rand int data;
int z;
constraint range{address>25;address<30;}
constraint limit{data>50;data<250;}
function void print();
$display("ADDRESS=%d,DATA=%d,Z=%d",address,data,z);
endfunction
endclass
module RAND_PROP();
const_rand obj;
initial begin
obj=new();
repeat(10)begin
assert(obj.randomize());
obj.print();
end
end
endmodule
