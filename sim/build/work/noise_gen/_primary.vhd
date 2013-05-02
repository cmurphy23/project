library verilog;
use verilog.vl_types.all;
entity noise_gen is
    port(
        clk             : in     vl_logic;
        noise           : out    vl_logic_vector(16 downto 0)
    );
end noise_gen;
