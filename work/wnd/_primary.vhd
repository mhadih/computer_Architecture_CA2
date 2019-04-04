library verilog;
use verilog.vl_types.all;
entity wnd is
    port(
        wnd             : in     vl_logic_vector(1 downto 0);
        init            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        w               : out    vl_logic_vector(1 downto 0)
    );
end wnd;
