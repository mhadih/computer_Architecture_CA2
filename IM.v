`timescale 1ns/1ns
module IM( input [9:0] pc,output [15:0] insOut);
  reg [15:0] im [0:1023];
  initial begin
    
    im[0] = 16'b1000000010000000;//win0
    im[1] = 16'b1000010100000100;//sub R1 R1
    im[2] = 16'b0000100000001010;//load to R2
    im[3] = 16'b1000011000000010;//add R1 to R2
    im[4] = 16'b0000100000001011;//load to R2
    im[5] = 16'b1000011000000010;//add R1 to R2
    im[6] = 16'b0000100000001100;//load to R2
    im[7] = 16'b1000011000000010;//add R1 to R2
    im[8] = 16'b0000100000001101;//load to R2
    im[9] = 16'b1000011000000010;//add R1 to R2
    im[10] = 16'b0000100000001110;//load to R2
    im[11] = 16'b1000011000000010;//add R1 to R2
    im[12] = 16'b0000100000001111;//load to R2
    im[13] = 16'b1000011000000010;//add R1 to R2
    im[14] = 16'b0000100000010000;//load to R2
    im[15] = 16'b1000011000000010;//add R1 to R2
    im[16] = 16'b0000100000010001;//load to R2
    im[17] = 16'b1000011000000010;//add R1 to R2
    im[18] = 16'b0000100000010010;//load to R2
    im[19] = 16'b1000011000000010;//add R1 to R2
    im[20] = 16'b0000100000010011;//load to R2
    im[21] = 16'b1000011000000010;//add R1 to R2
    im[22] = 16'b0001100000010100;//mem[20] = r2
  end
   assign insOut = im[pc];
endmodule 
