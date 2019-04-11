library verilog;
use verilog.vl_types.all;
entity extend is
    port(
        imm             : in     vl_logic_vector(7 downto 0);
        inpc            : in     vl_logic_vector(15 downto 0);
        outpc           : out    vl_logic_vector(15 downto 0)
    );
end extend;
