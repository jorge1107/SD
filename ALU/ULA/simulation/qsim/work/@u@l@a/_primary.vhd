library verilog;
use verilog.vl_types.all;
entity ULA is
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
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        e               : in     vl_logic;
        clk             : in     vl_logic;
        s5              : out    vl_logic;
        s4              : out    vl_logic;
        s3              : out    vl_logic;
        s2              : out    vl_logic;
        s1              : out    vl_logic;
        s0              : out    vl_logic
    );
end ULA;
