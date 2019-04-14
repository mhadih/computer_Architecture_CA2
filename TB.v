`timescale 1ns/1ns
module TB();
  reg rst,clk=0;
  CA g(clk,rst);
  always #100 clk=~clk;
  initial begin
    rst=0;
    #200
    rst=1;
    #200
    rst=0;
    #2500;
  end
endmodule 
