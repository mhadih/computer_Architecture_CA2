library verilog;
use verilog.vl_types.all;
entity IM is
    port(
        pc              : in     vl_logic_vector(9 downto 0);
        insOut          : out    vl_logic_vector(15 downto 0)
    );
end IM;
