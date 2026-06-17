library ieee;
use ieee.std_logic_1164.all;

entity Shifter16Bits is
    port(
        a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
        shl, shr: in bit;
        s15, s14, s13, s12, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, s1, s0: out bit
    );
end;

architecture behav of Shifter16Bits is
begin
    s0  <= (a1 and shr)  or (a0 and not shl and not shr);
    s1  <= (a0 and shl)  or (a2 and shr)  or (a1 and not shl and not shr);
    s2  <= (a1 and shl)  or (a3 and shr)  or (a2 and not shl and not shr);
    s3  <= (a2 and shl)  or (a4 and shr)  or (a3 and not shl and not shr);
    s4  <= (a3 and shl)  or (a5 and shr)  or (a4 and not shl and not shr);
    s5  <= (a4 and shl)  or (a6 and shr)  or (a5 and not shl and not shr);
    s6  <= (a5 and shl)  or (a7 and shr)  or (a6 and not shl and not shr);
    s7  <= (a6 and shl)  or (a8 and shr)  or (a7 and not shl and not shr);
    s8  <= (a7 and shl)  or (a9 and shr)  or (a8 and not shl and not shr);
    s9  <= (a8 and shl)  or (a10 and shr) or (a9 and not shl and not shr);
    s10 <= (a9 and shl)  or (a11 and shr) or (a10 and not shl and not shr);
    s11 <= (a10 and shl) or (a12 and shr) or (a11 and not shl and not shr);
    s12 <= (a11 and shl) or (a13 and shr) or (a12 and not shl and not shr);
    s13 <= (a12 and shl) or (a14 and shr) or (a13 and not shl and not shr);
    s14 <= (a13 and shl) or (a15 and shr) or (a14 and not shl and not shr);
    s15 <= (a14 and shl) or (a15 and not shl and not shr);
end architecture;