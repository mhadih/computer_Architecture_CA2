`timescale 1ns/1ns
module IM( input [9:0] pc,output [15:0] insOut);
  reg [15:0] m [0:1023];
  assign insOut = m[pc];
endmodule 
