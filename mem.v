`timescale 1ns/1ns
module memory(input [9:0] adr,input [15:0] data,input memwen,clk,output resMem);
  reg [15:0] m [0:1023];
<<<<<<< Updated upstream
  
  initial begin
    
    m[10] = 1;
    m[11] = 2;
    m[12] = 3;
    m[13] = 4;
    m[14] = 5;
    m[15] = 6;
    m[16] = 7;
    m[17] = 8;
    m[18] = 9;
    m[19] = 10;
  end

=======
  initial begin
    m[100] = 1;
    m[101] = 2;
    m[102] = 3;
    m[103] = 4;
    m[104] = 5;
    m[105] = 6;
    m[106] = 7;
    m[107] = 8;
    m[108] = 9;
    m[109] = 10;
  end
>>>>>>> Stashed changes
  always @(posedge clk) begin
    if(memwen) begin
      m[adr] <= data;
    end
  end
  assign resMem = m[adr];
endmodule