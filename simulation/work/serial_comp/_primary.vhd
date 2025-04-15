library verilog;
use verilog.vl_types.all;
entity serial_comp is
    port(
        L               : out    vl_logic;
        E               : out    vl_logic;
        G               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end serial_comp;
