library verilog;
use verilog.vl_types.all;
entity Mux4x1_vlg_sample_tst is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        select0         : in     vl_logic;
        select1         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Mux4x1_vlg_sample_tst;
