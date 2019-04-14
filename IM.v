`timescale 1ns/1ns
module IM( input [9:0] pc,output [15:0] insOut);
  reg [15:0] im [0:1023];
  initial begin
  assign im = ims[address[10:1]];
  assign ims[0] = 16'b1000000010000000;//win0
  assign ims[1] = 16'b1000010100000100;//sub R1 R1
  assign ims[2] = 16'b0000100011111010;//load to R2
  assign ims[3] = 16'b1000011000000010;//add R1 to R2
  assign ims[4] = 16'b0000100011111011;//load to R2
  assign ims[5] = 16'b1000011000000010;//add R1 to R2
  assign ims[6] = 16'b0000100011111100;//load to R2
  assign ims[7] = 16'b1000011000000010;//add R1 to R2
  assign ims[8] = 16'b0000100011111101;//load to R2
  assign ims[9] = 16'b1000011000000010;//add R1 to R2
  assign ims[10] = 16'b0000100011111110;//load to R2
  assign ims[11] = 16'b1000011000000010;//add R1 to R2
  assign ims[12] = 16'b0000100011111111;//load to R2
  assign ims[13] = 16'b1000011000000010;//add R1 to R2
  assign ims[14] = 16'b0000100100000000;//load to R2
  assign ims[15] = 16'b1000011000000010;//add R1 to R2
  assign ims[16] = 16'b0000100100000001;//load to R2
  assign ims[17] = 16'b1000011000000010;//add R1 to R2
  assign ims[18] = 16'b0000100100000010;//load to R2
  assign ims[19] = 16'b1000011000000010;//add R1 to R2
  assign ims[20] = 16'b0000100100000011;//load to R2
  assign ims[21] = 16'b1000011000000010;//add R1 to R2
  end
  assign insOut = im[pc];
endmodule 
