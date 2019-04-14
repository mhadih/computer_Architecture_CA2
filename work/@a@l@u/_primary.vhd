library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        n               : vl_notype
    );
    port(
        ri              : in     vl_logic_vector;
        rj              : in     vl_logic_vector;
        func            : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector;
        zero            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 5;
end ALU;
