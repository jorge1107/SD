library verilog;
use verilog.vl_types.all;
entity MarcaPasso_Comportamental is
    port(
        s               : in     vl_logic;
        z               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        t               : out    vl_logic;
        p               : out    vl_logic
    );
end MarcaPasso_Comportamental;
