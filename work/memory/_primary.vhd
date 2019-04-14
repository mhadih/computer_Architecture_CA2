library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        adr             : in     vl_logic_vector(9 downto 0);
        data            : in     vl_logic_vector(15 downto 0);
        memwen          : in     vl_logic;
        clk             : in     vl_logic;
        resMem          : out    vl_logic
    );
end memory;
