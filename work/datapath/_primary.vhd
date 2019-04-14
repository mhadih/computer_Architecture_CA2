library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        selimm          : in     vl_logic;
        selALU          : in     vl_logic;
        selmem          : in     vl_logic;
        selbr           : in     vl_logic;
        seljump         : in     vl_logic;
        wEn             : in     vl_logic;
        memwEn          : in     vl_logic;
        func            : in     vl_logic;
        ldwnd           : in     vl_logic;
        zero            : out    vl_logic;
        funcType        : out    vl_logic;
        opcode          : out    vl_logic
    );
end datapath;
