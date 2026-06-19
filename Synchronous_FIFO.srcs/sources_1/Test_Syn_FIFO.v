`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Design Name:   Test Synchronus FIFO
// Project Name:  Synchronus_FIFO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo
//
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Syn_FIFO();

reg clk,rst;
reg [7:0] data_in;

wire [7:0] data_out;


top_fifo dut(.clk(clk),.rst(rst),.data_in(data_in),.data_out(data_out));

initial begin
         {clk,rst,data_in} =0;
        end

always begin
 #5; 
 clk =~clk;
 end

initial 
   begin
     rst =1;
     #10;
     rst =0;
     data_in=8'd12;
     #10
     data_in = 8'd10;
     #10;
     data_in = 8'd100;
     #10;
     $finish;
   end
endmodule





