`timescale 1ns/1ns
module controller(input [3:0] opcode,input [7:0] fun,input zero,output reg [2:0] resfun
                , output reg selmem,memwen,selimm,seldata,seljump,selz,wen,ldwnd);

  always @* begin
    {selmem,memwen,selimm,seldata,seljump,selz,wen,ldwnd} = 8'b0;
   case(opcode [3:2])
     2'b00: begin
          if(opcode[1:0] == 2'b00) selmem = 1;wen = 1;
          if(opcode[1:0] == 2'b01) memwen = 1;
          if(opcode[1:0] == 2'b10) seljump=1;
      end
     2'b01: begin 
          if(opcode[1:0] == 2'b00) begin 
            if(zero==1'b0) selz=1;
          end
      end
     2'b10: begin
       
       if(opcode[1:0] == 2'b0) begin 
        if(fun[7:0]==8'b1) wen = 1; 
        if(fun[7:0]==8'b10) begin
           resfun = 1; seldata=1; wen = 1;
        end
        if(fun[7:0]==8'b100) begin 
          resfun = 2; seldata=1; wen = 1;
        end
        if(fun[7:0]==8'b1000) begin 
          resfun = 3; seldata=1; wen = 1;
        end
        if(fun[7:0]==8'b10000) begin 
          resfun = 4; seldata=1; wen = 1;
        end
        if(fun[7:0]==8'b100000) begin
          resfun = 5; seldata=1; wen = 1;
        end
        if(fun[7:0]==8'b1000000)  resfun = 6;
        if(fun[7:0]==8'b10000000) ldwnd = 1;
        if(fun[7:0]==8'b10000001) ldwnd = 1;
        if(fun[7:0]==8'b10000010) ldwnd = 1;
        if(fun[7:0]==8'b10000011) ldwnd = 1;
       end
      end
     2'b11: begin
      if(opcode[1:0] == 2'b00) begin
       resfun=1; selimm=1; wen=1;
     end
      if(opcode[1:0] == 2'b01) begin
        resfun=2; selimm=1; wen=1;
      end
      if(opcode[1:0] == 2'b10) begin
        resfun=3; selimm=1; wen=1;
      end
      if(opcode[1:0] == 2'b0) begin
        resfun=4; selimm=1; wen=1;
      end
    end
      
   endcase
  end
     
    
endmodule 

