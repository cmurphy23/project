library verilog;
use verilog.vl_types.all;
entity RAMB16_S18_S18 is
    generic(
        DATA_WIDTH      : integer := 16;
        PAR_WIDTH       : integer := 2;
        ADDR_WIDTH      : integer := 10;
        NUM_WORDS       : integer := 1024;
        INITVALUE       : integer := 0
    );
    port(
        WEA             : in     vl_logic;
        ENA             : in     vl_logic;
        SSRA            : in     vl_logic;
        CLKA            : in     vl_logic;
        ADDRA           : in     vl_logic_vector;
        DIPA            : in     vl_logic_vector;
        DIA             : in     vl_logic_vector;
        DOPA            : out    vl_logic_vector;
        DOA             : out    vl_logic_vector;
        WEB             : in     vl_logic;
        ENB             : in     vl_logic;
        SSRB            : in     vl_logic;
        CLKB            : in     vl_logic;
        ADDRB           : in     vl_logic_vector;
        DIPB            : in     vl_logic_vector;
        DIB             : in     vl_logic_vector;
        DOPB            : out    vl_logic_vector;
        DOB             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PAR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_WORDS : constant is 1;
    attribute mti_svvh_generic_type of INITVALUE : constant is 1;
end RAMB16_S18_S18;
