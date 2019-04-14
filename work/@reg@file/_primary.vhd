library verilog;
use verilog.vl_types.all;
entity RegFile is
    port(
        R1              : in     vl_logic_vector(1 downto 0);
        R2              : in     vl_logic_vector(1 downto 0);
        wReg            : in     vl_logic_vector(1 downto 0);
        wnd             : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        wen             : in     vl_logic;
        ldwnd           : in     vl_logic;
        data            : in     vl_logic_vector(15 downto 0);
        resR1           : out    vl_logic_vector(15 downto 0);
        resR2           : out    vl_logic_vector(15 downto 0)
    );
end RegFile;
