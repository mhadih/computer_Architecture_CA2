library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        pc              : in     vl_logic_vector(9 downto 0);
        init            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        w               : out    vl_logic_vector(9 downto 0)
    );
end PC;
