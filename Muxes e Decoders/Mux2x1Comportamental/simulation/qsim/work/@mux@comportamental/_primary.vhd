library verilog;
use verilog.vl_types.all;
entity MuxComportamental is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        select0         : in     vl_logic;
        display         : out    vl_logic
    );
end MuxComportamental;
