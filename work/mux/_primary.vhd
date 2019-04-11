library verilog;
use verilog.vl_types.all;
entity mux is
    generic(
        n               : vl_notype
    );
    port(
        in0             : in     vl_logic_vector;
        in1             : in     vl_logic_vector;
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 5;
end mux;
