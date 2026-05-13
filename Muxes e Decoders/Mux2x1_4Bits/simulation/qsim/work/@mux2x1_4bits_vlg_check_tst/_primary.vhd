library verilog;
use verilog.vl_types.all;
entity Mux2x1_4bits_vlg_check_tst is
    port(
        display0        : in     vl_logic;
        display1        : in     vl_logic;
        display2        : in     vl_logic;
        display3        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Mux2x1_4bits_vlg_check_tst;
