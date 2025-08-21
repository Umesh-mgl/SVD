`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 09:22:35 AM
// Design Name: 
// Module Name: wait_fork
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


module wait_fork();
initial begin
$display("--------------------------------------------------------------------------------------------");
fork
begin
$display($time, "\tProcess-1 Started");
#5;
$display($time, "\tProcess-1 Finished");
end
begin
$display($time, "\tProcess-2 Started");
#20;
$display($time, "\tProcess-2 Finished");
end
join_any
wait fork;
$display("------------------------------------------------------------------------------------------");
$finish; 
end
endmodule
