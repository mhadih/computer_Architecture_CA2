library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        ri              : in     vl_logic_vector(15 downto 0);
        rj              : in     vl_logic_vector(15 downto 0);
        func            : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        zero            : out    vl_logic
    );
end ALU;
