library verilog;
use verilog.vl_types.all;
entity Example is
    port(
        clock           : in     vl_logic;
        audio_reset_b   : out    vl_logic;
        ac97_sdata_out  : out    vl_logic;
        ac97_sdata_in   : in     vl_logic;
        ac97_synch      : out    vl_logic;
        ac97_bit_clock  : in     vl_logic;
        reset           : in     vl_logic;
        bit_count       : out    vl_logic_vector(7 downto 0);
        frame_count     : out    vl_logic_vector(3 downto 0);
        audio_in        : in     vl_logic_vector(17 downto 0);
        audio_valid     : in     vl_logic;
        ack             : out    vl_logic
    );
end Example;
