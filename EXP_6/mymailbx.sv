`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 09:35:38 AM
// Design Name: 
// Module Name: mymailbx
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


module mymailbx();
mailbox my_mailbox;
initial
begin
my_mailbox = new();
fork
put_packets();
get_packets(); 
join_any
#1000;
$display("END of Program");
end
task put_packets();
integer i;
begin
for (i=0; i<10; i++)
begin
#10;
my_mailbox.put(i);
$display("Done putting packet %d @time %0t",i, $time);
end
end
endtask
task get_packets();
integer i,packet;
begin
for (int i=0; i<10; i++)
begin
my_mailbox.get(packet);
$display("Got packet %d @time %0t", packet, $time); end
end
endtask
endmodule



        
  
 