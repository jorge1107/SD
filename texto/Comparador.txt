library ieee;
use ieee.std_logic_1164.all;

entity Comparador is
    port(a,b, in_gt, in_eq, in_lt: in bit;
         out_gt, out_eq, out_lt: out bit);
end;
architecture behav of Comparador is
    signal eq_bit: bit;
begin
    eq_bit <= a xnor b;
    out_eq <= in_eq and eq_bit;
    out_gt <= in_gt or (in_eq and a and not b);
    out_lt <= in_lt or (in_eq and not a and b);
end architecture;

