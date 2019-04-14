`timescale 1ns/1ns
module CA(input clk,rst);
  wire zero,selmem,memwEn,selimm,selALU,seljump,selbr,wEn,ldwnd;
  wire [3:0] opcode;
  wire [7:0] funcType;
  wire [2:0] func;
   
  controller contr(opcode, funcType, zero, func
                , selmem,memwEn,selimm,selALU,seljump,selbr,wEn,ldwnd);
                
  datapath DP(clk,rst,
                selimm,selALU,selmem,selbr,seljump,
                wEn,memwEn,func,ldwnd,
                zero,funcType,opcode);
endmodule