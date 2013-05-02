library verilog;
use verilog.vl_types.all;
entity WaveGen is
    port(
        clk             : in     vl_logic;
        ready           : out    vl_logic;
        received        : in     vl_logic;
        dataOut         : out    vl_logic_vector(17 downto 0);
        full            : in     vl_logic;
        delay           : in     vl_logic_vector(9 downto 0);
        reset           : in     vl_logic
    );
end WaveGen;
