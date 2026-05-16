library verilog;
use verilog.vl_types.all;
entity calculadora is
    port(
        a5              : in     vl_logic;
        a4              : in     vl_logic;
        a3              : in     vl_logic;
        a2              : in     vl_logic;
        a1              : in     vl_logic;
        a0              : in     vl_logic;
        b5              : in     vl_logic;
        b4              : in     vl_logic;
        b3              : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        f               : in     vl_logic;
        e               : in     vl_logic;
        clk             : in     vl_logic;
        o5              : out    vl_logic;
        o4              : out    vl_logic;
        o3              : out    vl_logic;
        o2              : out    vl_logic;
        o1              : out    vl_logic;
        o0              : out    vl_logic
    );
end calculadora;
