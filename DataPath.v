`timescale 1ns/1ns
module datapath(input clk,rst,
                  selimm,selALU,selmem,selbr,seljump,
                  wEn,memwEn,func,ldwnd,
                output zero,funcType,opcode);

wire[15:0] resR1,resR2;
wire[9:0] resPC,pcALU,pcJmp,pcIn;
wire tmp;
wire [15:0] ins;
wire [15:0] Reg1,Reg2;
wire [15:0] immExt;
wire [15:0] AIn,resAlu;
wire [15:0] afterAlu;
wire [15:0] resMem;
wire [15:0] dataReg;

PC pc(.pc(pcIn),.init(initPC),.clk(clk),.rst(rst),.w(resPC));

ALU #(10) pcAlu(.ri(resPC), .rj(10'b1), .func(3'b1), .out(pcALU), .zero(tmp));

MUX #(.n(10)) jumpMux(.in0(pcALU),.in1(ins[9:0]),.sel(seljump),.out(pcJmp));

MUX #(.n(10)) branchMux(.in0(pcJmp), .in1({pcJmp[9:8],ins[7:0]}) , .sel(selbr), .out(pcIn));

IM instructionMemory(.pc(resPC),.insOut(ins));

RegFile registerFile(.R1(ins[11:10]), .wReg(ins[11:10]), .R2(ins[9:8]), .wnd(ins[1:0]), .data(dataIn),
                    .wen(wEn), .ldwnd(ldwnd), .resR1(Reg1), .resR2(Reg2));

signExtend extend(.imm(ins[7:0]), .outimm(immExt));
                   
MUX #(.n(16)) immediateMUX(.in0(Reg1), .in1(immExt), .sel(selimm), .out(AIn));

ALU #(16) Alu(.ri(Ain), .rj(Reg2), .func(func), .out(resAlu), .zero(zero));

MUX #(.n(16)) useAlu(.in0(Reg2), .in1(resAlu), .sel(selALU), .out(afterAlu));

memory mem(.adr(ins[9:0]), .data(Reg1), .memwen(memwEn), .clk(clk), .resMem(resMem));

MUX #(.n(16)) memoryMUX(.in0(afterAlu), .in1(resMem), .sel(selmem), .out(dataReg));

assign funcType = ins[7:0];
assign opcode = ins[15:12];

endmodule