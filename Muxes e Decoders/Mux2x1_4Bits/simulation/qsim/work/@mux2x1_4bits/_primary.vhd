library verilog;
use verilog.vl_types.all;
entity Mux2x1_4bits is
    port(
        in0a            : in     vl_logic;
        in1a            : in     vl_logic;
        in2a            : in     vl_logic;
        in3a            : in     vl_logic;
        in0b            : in     vl_logic;
        in1b            : in     vl_logic;
        in2b            : in     vl_logic;
        in3b            : in     vl_logic;
        select0         : in     vl_logic;
        display0        : out    vl_logic;
        display1        : out    vl_logic;
        display2        : out    vl_logic;
        display3        : out    vl_logic
    );
end Mux2x1_4bits;
