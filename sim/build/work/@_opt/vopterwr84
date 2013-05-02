library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        Halfcycle       : integer := 5;
        Halfcycle2      : integer := 41
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Halfcycle : constant is 1;
    attribute mti_svvh_generic_type of Halfcycle2 : constant is 1;
end testbench;
