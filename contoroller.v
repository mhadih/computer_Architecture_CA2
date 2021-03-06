`timescale 1ns/1ns
module controller(input [3:0] opcode,input [7:0] funcType,input zero,output reg [2:0] func
                , output reg selmem,memwEn,selimm,selALU,seljump,selbr,wEn,ldwnd);

  always @* begin
    {selmem,memwEn,selimm,selALU,seljump,selbr,wEn,ldwnd} = 8'b0;
    case(opcode [3:2])
      2'b00: begin
        if(opcode[1:0] == 2'b00) begin selmem = 1; wEn = 1; end
        if(opcode[1:0] == 2'b01) memwEn = 1;
        if(opcode[1:0] == 2'b10) seljump=1;
      end
      2'b01: begin 
        if(opcode[1:0] == 2'b00) begin 
          if(zero==1'b0) selbr=1;
        end
      end
      2'b10: begin
        if(opcode[1:0] == 2'b0) begin 
          if(funcType[7:0]==8'b1)
          begin 
            func = 0; selALU = 0; selmem = 0; wEn = 1;
          end 
          if(funcType[7:0]==8'b10) begin
            func = 1; selALU = 1; selmem = 0; wEn = 1;
          end
          if(funcType[7:0]==8'b100) begin 
            func = 2; selALU = 1; selmem = 0; wEn = 1;
          end
          if(funcType[7:0]==8'b1000) begin 
            func = 3; selALU=1; selmem = 0; wEn = 1;
          end
          if(funcType[7:0]==8'b10000) begin 
            func = 4; selALU=1; selmem = 0; wEn = 1;
          end
          if(funcType[7:0]==8'b100000) begin
            func = 5; selALU=1; selmem = 0; wEn = 1;
          end
          if(funcType[7:0]==8'b1000000)  func = 6;
          if(funcType[7:0]==8'b10000000) ldwnd = 1;
          if(funcType[7:0]==8'b10000001) ldwnd = 1;
          if(funcType[7:0]==8'b10000010) ldwnd = 1;
          if(funcType[7:0]==8'b10000011) ldwnd = 1;
        end
      end
      2'b11: begin
        if(opcode[1:0] == 2'b00) begin
          func=1; selimm=1; wEn=1;
        end
        if(opcode[1:0] == 2'b01) begin
          func=2; selimm=1; wEn=1;
        end
        if(opcode[1:0] == 2'b10) begin
          func=3; selimm=1; wEn=1;
        end
        if(opcode[1:0] == 2'b0) begin
          func=4; selimm=1; wEn=1;
        end
      end   
    endcase
  end 
endmodule 

