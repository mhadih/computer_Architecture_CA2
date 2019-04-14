library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        opcode          : in     vl_logic_vector(3 downto 0);
        funcType        : in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        func            : out    vl_logic_vector(2 downto 0);
        selmem          : out    vl_logic;
        memwEn          : out    vl_logic;
        selimm          : out    vl_logic;
        selALU          : out    vl_logic;
        seljump         : out    vl_logic;
        selbr           : out    vl_logic;
        wEn             : out    vl_logic;
        ldwnd           : out    vl_logic
    );
end controller;
