`timescale 1ns/1ns
module ALU(input [15:0] ri,rj,input [2:0] f,output [15:0] w,output zero);
  assign w = (f == 3'b 000)? ri + rj:
             (f == 3'b 001)? ri - rj:
             (f == 3'b 010)? ri & rj:
             (f == 3'b 011)? ri | rj:
             (f == 3'b 100)? ~rj:
              3'bz;
  assign zero = (ri - rj == 16'b0)? 0:1; 
   
endmodule