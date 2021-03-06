`timescale 1ns/1ns

module ALU(ri, rj, func, out, zero);
  parameter n;
  input [n-1:0] ri,rj;
  input [2:0] func;
  output [n-1:0] out;
  output zero;
  assign out = (func == 3'b000)? ri:
             (func == 3'b 001)? ri + rj:
             (func == 3'b 010)? ri - rj:
             (func == 3'b 011)? ri & rj:
             (func == 3'b 100)? ri | rj:
             (func == 3'b 101)? ~rj:
             (func == 3'b 110)? ri:
             3'bz;
              
  assign zero = (ri - rj == 16'b0)? 0:1; 
   
endmodule

