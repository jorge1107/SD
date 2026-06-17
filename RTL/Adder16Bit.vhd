library ieee;
use ieee.std_logic_1164.all;

entity Adder16Bit is
    port (
        A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0 : in bit;
        B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0 : in bit;
        Op : in bit;
        S15, S14, S13, S12, S11, S10, S9, S8, S7, S6, S5, S4, S3, S2, S1, S0 : out bit;
        Cout : out bit
    );
end entity;

architecture structural of Adder16Bit is
    component FullAdder is
        port (A,B,Cin: in bit; Sum,Cout: out bit);
    end component;
    signal C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15 : bit;
begin
    C0 <= Op;
    U0:  FullAdder port map(A0,  B0,  C0,  S0,  C1);
    U1:  FullAdder port map(A1,  B1,  C1,  S1,  C2);
    U2:  FullAdder port map(A2,  B2,  C2,  S2,  C3);
    U3:  FullAdder port map(A3,  B3,  C3,  S3,  C4);
    U4:  FullAdder port map(A4,  B4,  C4,  S4,  C5);
    U5:  FullAdder port map(A5,  B5,  C5,  S5,  C6);
    U6:  FullAdder port map(A6,  B6,  C6,  S6,  C7);
    U7:  FullAdder port map(A7,  B7,  C7,  S7,  C8);
    U8:  FullAdder port map(A8,  B8,  C8,  S8,  C9);
    U9:  FullAdder port map(A9,  B9,  C9,  S9,  C10);
    U10: FullAdder port map(A10, B10, C10, S10, C11);
    U11: FullAdder port map(A11, B11, C11, S11, C12);
    U12: FullAdder port map(A12, B12, C12, S12, C13);
    U13: FullAdder port map(A13, B13, C13, S13, C14);
    U14: FullAdder port map(A14, B14, C14, S14, C15);
    U15: FullAdder port map(A15, B15, C15, S15, Cout);
end architecture;