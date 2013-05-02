library verilog;
use verilog.vl_types.all;
entity v_rams_11 is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        a               : in     vl_logic_vector(5 downto 0);
        dpra            : in     vl_logic_vector(5 downto 0);
        di              : in     vl_logic_vector(17 downto 0);
        spo             : out    vl_logic_vector(17 downto 0);
        dpo             : out    vl_logic_vector(17 downto 0)
    );
end v_rams_11;
