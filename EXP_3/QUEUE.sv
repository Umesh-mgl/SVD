`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 10:35:29 AM
// Design Name: 
// Module Name: QUEUE
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


module QUEUE();
string devices[$]={"laptop","tablet","phone","camerea"};
initial begin
$display("Number of Devices = %0d Devices = %p ",devices.size(),devices);
devices.insert(1,"SmartWatch");
$display("Insert SmartWatch , size=%0d Devices=%p",devices.size(),devices);
devices.delete(3);
$display("Delete Phone , size=%0d Devices=%p",devices.size(),devices);
$display("Pop %s size=%0d Devices=%p",devices.pop_front(),devices.size(),devices);
devices.push_front("desktop");
$display("Pop %s size=%0d Devices=%p",devices.pop_back(),devices.size(),devices);
devices.push_back("monitor");
$display("Push Monitor, size=%0d Devices=%p",devices.size(),devices);
end
endmodule
