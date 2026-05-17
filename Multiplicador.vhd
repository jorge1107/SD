library ieee;
use ieee.std_logic_1164.all;

entity Multiplicador is
    port(
        a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0 : in bit;
        s5, s4, s3, s2, s1, s0 : out bit
    );
end Multiplicador;

architecture Behavioral of Multiplicador is
    signal c05, c04, c03, c02, c01, c00 : bit;
    signal c15, c14, c13, c12, c11, c10 : bit;
    signal c25, c24, c23, c22, c21, c20 : bit;
    signal c35, c34, c33, c32, c31, c30 : bit;
    signal c45, c44, c43, c42, c41, c40 : bit;
    signal c55, c54, c53, c52, c51, c50 : bit;
begin
    c05 <= a5 and b0;
    c04 <= a4 and b0;
    c03 <= a3 and b0;
    c02 <= a2 and b0;
    c01 <= a1 and b0;
    c00 <= a0 and b0;
    c15 <= a5 and b1;
    c14 <= a4 and b1;
    c13 <= a3 and b1;
    c12 <= a2 and b1;
    c11 <= a1 and b1;
    c10 <= a0 and b1;
    c25 <= a5 and b2;
    c24 <= a4 and b2;
    c23 <= a3 and b2;
    c22 <= a2 and b2;
    c21 <= a1 and b2;
    c20 <= a0 and b2;
    c35 <= a5 and b3;
    c34 <= a4 and b3;
    c33 <= a3 and b3;
    c32 <= a2 and b3;
    c31 <= a1 and b3;
    c30 <= a0 and b3;
    c45 <= a5 and b4;
    c44 <= a4 and b4;
    c43 <= a3 and b4;
    c42 <= a2 and b4;
    c41 <= a1 and b4;
    c40 <= a0 and b4;
    c55 <= a5 and b5;
    c54 <= a4 and b5;
    c53 <= a3 and b5;
    c52 <= a2 and b5;
    c51 <= a1 and b5;
    c50 <= a0 and b5;

    
end architecture Behavioral;