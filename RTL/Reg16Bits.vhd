library ieee;
use ieee.std_logic_1164.all;

entity Reg16Bits is
    port(
        clk, rst, ld: in bit;
        d15, d14, d13, d12, d11, d10, d9, d8, d7, d6, d5, d4, d3, d2, d1, d0: in bit;
        q15, q14, q13, q12, q11, q10, q9, q8, q7, q6, q5, q4, q3, q2, q1, q0: buffer bit -- buffer permite escrita interna, enquanto in é read only
    );
end;

architecture behav of Reg16Bits is
    signal m15, m14, m13, m12, m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, m0: bit;
    
    component Mux2x1 is port(i0, i1, s0: in bit; d: out bit); end component;
    component FlipFlopD is port(d, clk, rst: in bit; q: out bit); end component;
begin
    mu0:  Mux2x1 port map(i0=>q0,  i1=>d0,  s0=>ld, d=>m0);
    ff0:  FlipFlopD port map(d=>m0,  clk=>clk, rst=>rst, q=>q0);
    
    mu1:  Mux2x1 port map(i0=>q1,  i1=>d1,  s0=>ld, d=>m1);
    ff1:  FlipFlopD port map(d=>m1,  clk=>clk, rst=>rst, q=>q1);
    
    mu2:  Mux2x1 port map(i0=>q2,  i1=>d2,  s0=>ld, d=>m2);
    ff2:  FlipFlopD port map(d=>m2,  clk=>clk, rst=>rst, q=>q2);
    
    mu3:  Mux2x1 port map(i0=>q3,  i1=>d3,  s0=>ld, d=>m3);
    ff3:  FlipFlopD port map(d=>m3,  clk=>clk, rst=>rst, q=>q3);
    
    mu4:  Mux2x1 port map(i0=>q4,  i1=>d4,  s0=>ld, d=>m4);
    ff4:  FlipFlopD port map(d=>m4,  clk=>clk, rst=>rst, q=>q4);
    
    mu5:  Mux2x1 port map(i0=>q5,  i1=>d5,  s0=>ld, d=>m5);
    ff5:  FlipFlopD port map(d=>m5,  clk=>clk, rst=>rst, q=>q5);
    
    mu6:  Mux2x1 port map(i0=>q6,  i1=>d6,  s0=>ld, d=>m6);
    ff6:  FlipFlopD port map(d=>m6,  clk=>clk, rst=>rst, q=>q6);
    
    mu7:  Mux2x1 port map(i0=>q7,  i1=>d7,  s0=>ld, d=>m7);
    ff7:  FlipFlopD port map(d=>m7,  clk=>clk, rst=>rst, q=>q7);
    
    mu8:  Mux2x1 port map(i0=>q8,  i1=>d8,  s0=>ld, d=>m8);
    ff8:  FlipFlopD port map(d=>m8,  clk=>clk, rst=>rst, q=>q8);
    
    mu9:  Mux2x1 port map(i0=>q9,  i1=>d9,  s0=>ld, d=>m9);
    ff9:  FlipFlopD port map(d=>m9,  clk=>clk, rst=>rst, q=>q9);
    
    mu10: Mux2x1 port map(i0=>q10, i1=>d10, s0=>ld, d=>m10);
    ff10: FlipFlopD port map(d=>m10, clk=>clk, rst=>rst, q=>q10);
    
    mu11: Mux2x1 port map(i0=>q11, i1=>d11, s0=>ld, d=>m11);
    ff11: FlipFlopD port map(d=>m11, clk=>clk, rst=>rst, q=>q11);
    
    mu12: Mux2x1 port map(i0=>q12, i1=>d12, s0=>ld, d=>m12);
    ff12: FlipFlopD port map(d=>m12, clk=>clk, rst=>rst, q=>q12);
    
    mu13: Mux2x1 port map(i0=>q13, i1=>d13, s0=>ld, d=>m13);
    ff13: FlipFlopD port map(d=>m13, clk=>clk, rst=>rst, q=>q13);
    
    mu14: Mux2x1 port map(i0=>q14, i1=>d14, s0=>ld, d=>m14);
    ff14: FlipFlopD port map(d=>m14, clk=>clk, rst=>rst, q=>q14);
    
    mu15: Mux2x1 port map(i0=>q15, i1=>d15, s0=>ld, d=>m15);
    ff15: FlipFlopD port map(d=>m15, clk=>clk, rst=>rst, q=>q15);
end architecture;