library verilog;
use verilog.vl_types.all;
entity MarcaPasso_Comportamental_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        s               : in     vl_logic;
        z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MarcaPasso_Comportamental_vlg_sample_tst;
