`timescale 1ns/1ns 
module extend(input [7:0] imm,input [15:0] inpc,output [15:0] outpc);
  assign outpc = {inpc[15:8]};
endmodule 