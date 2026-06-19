`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2026 04:43:31 PM
// Design Name: 
// Module Name: top_fifo
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


module top_fifo(input clk,rst, input [7:0]data_in, output [7:0] data_out);

wire [7:0] data_out_temp;
wire [7:0] data_out_temp2;
wire wr_enb,rd_enb;
wire full,empty;
mod_a dut1(.clk(clk),.rst(rst),.data_in(data_in),.data_out(data_out_temp),.wr_en(wr_enb));
fifo_8x8 dut2(.clk(clk),.rst(rst),.data_in(data_out_temp),.data_out(data_out_temp2),.wr_en(wr_enb),.rd_en(rd_enb),.full(full),.empty(empty));
mod_b dut3(.clk(clk),.rst(rst),.data_in(data_out_temp2),.data_out(data_out),.rd_en(rd_enb));
endmodule
