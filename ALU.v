
`timescale 1ns/1ns
module ALU(input [15:0] ri,rj,input [2:0] func,output [15:0] out,output zero);
  assign out = (func == 3'b 000) ? rj:
             (func == 3'b 001)? ri + rj:
             (func == 3'b 010)? ri - rj:
             (func == 3'b 011)? ri & rj:
             (func == 3'b 100)? ri | rj:
             (func == 3'b 101)? ~rj:
              3'bz;
  assign zero = (ri - rj == 16'b0)? 0:1; 
   
endmodule

