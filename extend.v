`timescale 1ns/1ns 
module signExtend(input [7:0] imm,output [15:0] outimm);
  assign outimm = (imm[7])? {8'b11111111,imm}: {8'b0,imm};
endmodule 