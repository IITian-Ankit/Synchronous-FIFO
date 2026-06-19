`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2026 03:51:43 PM
// Design Name: 
// Module Name: mod_a
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


module mod_a(input clk,rst, input [7:0] data_in, output reg [7:0] data_out, output reg wr_en);

always @(posedge clk or posedge rst) begin
       if(rst) begin
         data_out <= 0;
         wr_en <= 0;
         end
       else begin
       data_out <= data_in;
       wr_en <=1;
       end
end
endmodule
