library verilog;
use verilog.vl_types.all;
entity MuxComportamental_vlg_sample_tst is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        select0         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MuxComportamental_vlg_sample_tst;
