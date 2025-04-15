library verilog;
use verilog.vl_types.all;
entity comp_6bit is
    port(
        L               : out    vl_logic;
        E               : out    vl_logic;
        G               : out    vl_logic;
        a               : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(5 downto 0)
    );
end comp_6bit;
