library verilog;
use verilog.vl_types.all;
entity AudioBuffer is
    port(
        ready           : in     vl_logic;
        received        : out    vl_logic;
        ack             : in     vl_logic;
        valid           : out    vl_logic;
        dataIn          : in     vl_logic_vector(17 downto 0);
        dataOut         : out    vl_logic_vector(17 downto 0);
        full            : out    vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic
    );
end AudioBuffer;
