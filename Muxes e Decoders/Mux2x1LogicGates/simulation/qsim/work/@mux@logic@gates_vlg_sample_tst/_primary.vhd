library verilog;
use verilog.vl_types.all;
entity MuxLogicGates_vlg_sample_tst is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        select0         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MuxLogicGates_vlg_sample_tst;
