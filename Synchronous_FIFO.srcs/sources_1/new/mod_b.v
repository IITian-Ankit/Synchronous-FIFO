`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2026 03:51:43 PM
// Design Name: 
// Module Name: mod_b
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


module mod_b(input clk,rst,input [7:0] data_in, output reg [7:0] data_out, output reg rd_en);

localparam idle = 2'b00;
localparam s1 = 2'b01;
localparam data_state = 2'b10;

reg[1:0] ps,ns;

always @(posedge clk or posedge rst)begin
  if(rst) begin
   ps<=idle;
  end
  else 
  ps <= ns;
end

always @(*) begin
   case(ps)
      idle: begin
          ns=s1;
          rd_en =0;
          end
      s1: begin 
         ns= data_state;
         rd_en =0;
         end
      data_state: begin
       ns= idle;
       rd_en = 1;
       data_out = data_in;
       end
    endcase
end
endmodule
