`timescale 1ns/1ns
module readFile(input [1:0] r1,r2,wnd, input clk,wen,ldwnd,input [15:0] data,output [15:0] resr1,resr2);
  reg [1:0] window;
  reg [7:0] R [15:0] ;
  always @(posedge clk) begin 
    if(wen)
      R[((r1 + (wnd *2))%8)] <= data;
    if(ldwnd)
      window <= wnd;
  end
  initial begin
    window =0;
  end
  
  assign resr1 = R[((r1 + (wnd *2))%8)];
  assign resr2 = R[((r2 + (wnd *2))%8)];

endmodule     
