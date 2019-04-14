library verilog;
use verilog.vl_types.all;
entity signExtend is
    port(
        imm             : in     vl_logic_vector(7 downto 0);
        outimm          : out    vl_logic_vector(15 downto 0)
    );
end signExtend;
