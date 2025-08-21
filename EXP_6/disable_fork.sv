`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 09:27:42 AM
// Design Name: 
// Module Name: disable_fork
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


module disable_fork();
initial begin
$display("////////////////////////////////////////////////////////////////////////");
fork
begin
$display($time,"\t Process-1 Of Fork-1 Started");
#5;
$display($time,"\t Process-1 Of Fork-1 Finished");
end
begin
$display($time,"\t Process-2 Of Fork-1 Started");
#20;
$display($time,"\t Process-2 Of Fork-1 Finished");
end
join_any
fork
begin
$display($time,"\t Process-1 Of Fork-2 Started");
#20;
$display($time,"\t Process-1 Of Fork-2 Finished");
end
begin
$display($time,"\t Process-2 Of Fork-2 Started");
#20;
$display($time,"\t Process-2 Of Fork-2 Finished");
end
join_none
disable fork;
$display("////////////////////////////////////////////////////////////////////////");
$display($time,"\t After Disable Fork");
$display("////////////////////////////////////////////////////////////////////////");
end
endmodule
