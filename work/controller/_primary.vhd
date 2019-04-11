library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        opcode          : in     vl_logic_vector(3 downto 0);
        fun             : in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        resfun          : out    vl_logic_vector(2 downto 0);
        selmem          : out    vl_logic;
        memwen          : out    vl_logic;
        selimm          : out    vl_logic;
        seldata         : out    vl_logic;
        seljump         : out    vl_logic;
        selz            : out    vl_logic;
        wen             : out    vl_logic;
        ldwnd           : out    vl_logic
    );
end controller;
