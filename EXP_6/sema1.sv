`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 09:32:20 AM
// Design Name: 
// Module Name: sema1
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


module sema1();
semaphore sema;
typedef enum {red, green, yellow} light;
initial
begin
sema = new(1);
fork
display(red);
display(green);
display(yellow);
join_none
end
task automatic display(light traffic);
sema.get(1);
$display($time, "\tCurrent Simulation task Time, Got %s", traffic);
#10;
sema.put(1);
endtask
endmodule
