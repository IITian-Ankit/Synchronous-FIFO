`timescale 1ns / 1ps
// 
// Design Name: Synchronus FIFO
// Module Name:    fifo_8x8
// Project Name: FIFO Design
// Target Devices: None
//
//////////////////////////////////////////////////////////////////////////////////

module fifo_8x8(input clk,rst,wr_en,rd_en,
                input [7:0] data_in, output reg [7:0] data_out,
                output full,empty);

reg [3:0] wr_ptr,rd_ptr; // we use 4 bits to clearly distinguish full and empty condition

reg [7:0] mem [7:0];

assign full = ((wr_ptr[2:0] == rd_ptr[2:0]) && wr_ptr[3] != rd_ptr[3]) ? 1'b1 : 1'b0;
assign empty = (wr_ptr == rd_ptr)?1'b1: 1'b0;

integer i;

always @(posedge clk or posedge rst) begin
     if(rst) begin
      rd_ptr <=4'd0;
      wr_ptr <=4'd0;
      data_out <=8'd0;
      for(i=0; i<8;i=i+1) begin
           mem[i] <=0;
           end
     end
     else begin
     if (wr_en && full==0) begin
         mem[wr_ptr[2:0]] <= data_in;
         wr_ptr <= wr_ptr + 1'b1;
         end
     if(rd_en && empty==0) begin 
         data_out <= mem[rd_ptr[2:0]];
         rd_ptr <= rd_ptr +1'b1;
        end
     end
     end
endmodule