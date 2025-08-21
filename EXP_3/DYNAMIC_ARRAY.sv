
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 10:47:16 AM
// Design Name: 
// Module Name: DYNAMIC_ARRAY
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


module DYNAMIC_ARRAY();
int array[];
int id[];
initial begin
array=new[5];
array={1,2,3,4,5};
$display("The Elements Of Array = %p",array); id=array;
$display("The Size Of id =%0d",id.size());id=new[id.size()+1](id);
id[id.size()-1]=6;display(id);
$display("The Size Of id =%0d",id.size());id.delete();
$display("The Size Of id =%0d",id.size());end
function display(int arr[]);
$display("    ");
foreach(arr[i])
$display("arr[%0d]=%0d",i,arr[i]);
endfunction
endmodule
