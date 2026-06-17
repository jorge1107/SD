library ieee;
use ieee.std_logic_1164.all;

entity Comparador16Bits is
    port(
        a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
        b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
        AgtB, AeqB, AltB: out bit
    );
end;

architecture behav of Comparador16Bits is
    signal gt15, gt14, gt13, gt12, gt11, gt10, gt9, gt8, gt7, gt6, gt5, gt4, gt3, gt2, gt1, gt0: bit;
    signal eq15, eq14, eq13, eq12, eq11, eq10, eq9, eq8, eq7, eq6, eq5, eq4, eq3, eq2, eq1, eq0: bit;
    signal lt15, lt14, lt13, lt12, lt11, lt10, lt9, lt8, lt7, lt6, lt5, lt4, lt3, lt2, lt1, lt0: bit;

    component Comparador is 
        port(a, b, in_gt, in_eq, in_lt: in bit; out_gt, out_eq, out_lt: out bit); 
    end component;
begin
    st15: Comparador port map(a=>a15, b=>b15, in_gt=>'0', in_eq=>'1', in_lt=>'0', out_gt=>gt15, out_eq=>eq15, out_lt=>lt15); --(0,1,0)
    st14: Comparador port map(a=>a14, b=>b14, in_gt=>gt15, in_eq=>eq15, in_lt=>lt15, out_gt=>gt14, out_eq=>eq14, out_lt=>lt14);
    st13: Comparador port map(a=>a13, b=>b13, in_gt=>gt14, in_eq=>eq14, in_lt=>lt14, out_gt=>gt13, out_eq=>eq13, out_lt=>lt13);
    st12: Comparador port map(a=>a12, b=>b12, in_gt=>gt13, in_eq=>eq13, in_lt=>lt13, out_gt=>gt12, out_eq=>eq12, out_lt=>lt12);
    st11: Comparador port map(a=>a11, b=>b11, in_gt=>gt12, in_eq=>eq12, in_lt=>lt12, out_gt=>gt11, out_eq=>eq11, out_lt=>lt11);
    st10: Comparador port map(a=>a10, b=>b10, in_gt=>gt11, in_eq=>eq11, in_lt=>lt11, out_gt=>gt10, out_eq=>eq10, out_lt=>lt10);
    st9:  Comparador port map(a=>a9,  b=>b9,  in_gt=>gt10, in_eq=>eq10, in_lt=>lt10, out_gt=>gt9,  out_eq=>eq9,  out_lt=>lt9);
    st8:  Comparador port map(a=>a8,  b=>b8,  in_gt=>gt9,  in_eq=>eq9,  in_lt=>lt9,  out_gt=>gt8,  out_eq=>eq8,  out_lt=>lt8);
    st7:  Comparador port map(a=>a7,  b=>b7,  in_gt=>gt8,  in_eq=>eq8,  in_lt=>lt8,  out_gt=>gt7,  out_eq=>eq7,  out_lt=>lt7);
    st6:  Comparador port map(a=>a6,  b=>b6,  in_gt=>gt7,  in_eq=>eq7,  in_lt=>lt7,  out_gt=>gt6,  out_eq=>eq6,  out_lt=>lt6);
    st5:  Comparador port map(a=>a5,  b=>b5,  in_gt=>gt6,  in_eq=>eq6,  in_lt=>lt6,  out_gt=>gt5,  out_eq=>eq5,  out_lt=>lt5);
    st4:  Comparador port map(a=>a4,  b=>b4,  in_gt=>gt5,  in_eq=>eq5,  in_lt=>lt5,  out_gt=>gt4,  out_eq=>eq4,  out_lt=>lt4);
    st3:  Comparador port map(a=>a3,  b=>b3,  in_gt=>gt4,  in_eq=>eq4,  in_lt=>lt4,  out_gt=>gt3,  out_eq=>eq3,  out_lt=>lt3);
    st2:  Comparador port map(a=>a2,  b=>b2,  in_gt=>gt3,  in_eq=>eq3,  in_lt=>lt3,  out_gt=>gt2,  out_eq=>eq2,  out_lt=>lt2);
    st1:  Comparador port map(a=>a1,  b=>b1,  in_gt=>gt2,  in_eq=>eq2,  in_lt=>lt2,  out_gt=>gt1,  out_eq=>eq1,  out_lt=>lt1);
    st0:  Comparador port map(a=>a0,  b=>b0,  in_gt=>gt1,  in_eq=>eq1,  in_lt=>lt1,  out_gt=>gt0,  out_eq=>eq0,  out_lt=>lt0);

    AgtB <= gt0; 
    AeqB <= eq0; 
    AltB <= lt0;
end architecture;