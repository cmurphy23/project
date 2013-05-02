library verilog;
use verilog.vl_types.all;
entity ml505top is
    port(
        GPIO_DIP        : in     vl_logic_vector(5 downto 0);
        GPIO_COMPSW_C   : in     vl_logic;
        USER_CLK        : in     vl_logic;
        AUDIO_SDATA_IN  : in     vl_logic;
        AUDIO_BIT_CLK   : in     vl_logic;
        AUDIO_SDATA_OUT : out    vl_logic;
        AUDIO_SYNC      : out    vl_logic;
        FLASH_AUDIO_RESET_B: out    vl_logic;
        GPIO_LED        : out    vl_logic_vector(7 downto 0);
        GPIO_COMPLED_C  : out    vl_logic
    );
end ml505top;
