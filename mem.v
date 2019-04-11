`timescale 1ns/1ns
module memory(input [9:0] adr,input [15:0] data,input memwen,clk,output memdata);
  reg [15:0] m [0:1023];
  always @(posedge clk) begin
    if(memwen) begin
      m[adr] <= data;
    end
  end
  assign memdata = m[adr];
endmodule