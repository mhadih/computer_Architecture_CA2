`timescale 1ns/1ns
module RegFile(input [1:0] R1,R2,wReg,wnd, input clk,wen,ldwnd,input [15:0] data,output [15:0] resR1,resR2);
  reg [1:0] window;
  reg [7:0] R [15:0];
  always @(posedge clk) begin 
    if(wen)
      R[((R1 + (wnd *2))%8)] <= data;
    if(ldwnd)
      window <= wnd;
  end
  initial begin
    window = 0;
  end
  
  assign resR1 = R[((R1 + (wnd *2))%8)];
  assign resR2 = R[((R2 + (wnd *2))%8)];

endmodule     
