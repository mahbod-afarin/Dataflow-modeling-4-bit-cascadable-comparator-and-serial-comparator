library verilog;
use verilog.vl_types.all;
entity comp_1bit is
    port(
        L               : out    vl_logic;
        E               : out    vl_logic;
        G               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        L_in            : in     vl_logic;
        E_in            : in     vl_logic;
        G_in            : in     vl_logic
    );
end comp_1bit;
