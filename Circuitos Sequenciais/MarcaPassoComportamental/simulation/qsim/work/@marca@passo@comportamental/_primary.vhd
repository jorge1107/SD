library verilog;
use verilog.vl_types.all;
entity MarcaPassoComportamental is
    port(
        clk             : in     vl_logic;
        s               : in     vl_logic;
        z               : in     vl_logic;
        rst             : in     vl_logic;
        t               : out    vl_logic;
        p               : out    vl_logic;
        e1              : out    vl_logic;
        e0              : out    vl_logic
    );
end MarcaPassoComportamental;
