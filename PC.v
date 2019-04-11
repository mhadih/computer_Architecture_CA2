
`timescale 1ns/1ns
module PC(input [9:0] pc,input init,clk,rst,output reg [9:0] w);
  always @(posedge clk , posedge rst) begin
    if(rst) w <= 10'b0;
  else begin
    if(init) w<= 10'b 0;
    else w <= pc;
    end
  end
endmodule
    
     

