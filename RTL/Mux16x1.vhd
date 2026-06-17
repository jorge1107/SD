library ieee;
use ieee.std_logic_1164.all;

entity Mux16x1 is
    port(
        i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15: in bit;
        s3,s2,s1,s0: in bit;
        d: out bit
    );
end;

architecture structural of Mux16x1 is
    signal l0_0,l0_1,l0_2,l0_3,l0_4,l0_5,l0_6,l0_7: bit;
    signal l1_0,l1_1,l1_2,l1_3: bit;
    signal l2_0,l2_1: bit;
    component Mux2x1 is port(i0,i1,s0: in bit; d: out bit); end component;
begin
    -- Nível 0 (seleção s0)
    m00: Mux2x1 port map(i0,  i1,  s0, l0_0);
    m01: Mux2x1 port map(i2,  i3,  s0, l0_1);
    m02: Mux2x1 port map(i4,  i5,  s0, l0_2);
    m03: Mux2x1 port map(i6,  i7,  s0, l0_3);
    m04: Mux2x1 port map(i8,  i9,  s0, l0_4);
    m05: Mux2x1 port map(i10, i11, s0, l0_5);
    m06: Mux2x1 port map(i12, i13, s0, l0_6);
    m07: Mux2x1 port map(i14, i15, s0, l0_7);
    -- Nível 1 (seleção s1)
    m10: Mux2x1 port map(l0_0, l0_1, s1, l1_0);
    m11: Mux2x1 port map(l0_2, l0_3, s1, l1_1);
    m12: Mux2x1 port map(l0_4, l0_5, s1, l1_2);
    m13: Mux2x1 port map(l0_6, l0_7, s1, l1_3);
    -- Nível 2 (seleção s2)
    m20: Mux2x1 port map(l1_0, l1_1, s2, l2_0);
    m21: Mux2x1 port map(l1_2, l1_3, s2, l2_1);
    -- Nível 3 (seleção s3)
    m30: Mux2x1 port map(l2_0, l2_1, s3, d);
end;