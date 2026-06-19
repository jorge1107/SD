library ieee;
use ieee.std_logic_1164.all;

entity ULA is
    port(
        a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0: in bit;
        b15,b14,b13,b12,b11,b10,b9,b8,b7,b6,b5,b4,b3,b2,b1,b0: in bit;
        w,x,y,z: in bit;
        s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0: out bit;
        cout: out bit
    );
end entity;

architecture structural of ULA is
    signal ia15,ia14,ia13,ia12,ia11,ia10,ia9,ia8,ia7,ia6,ia5,ia4,ia3,ia2,ia1,ia0: bit;
    signal ib15,ib14,ib13,ib12,ib11,ib10,ib9,ib8,ib7,ib6,ib5,ib4,ib3,ib2,ib1,ib0: bit;
    signal cin: bit;
    component ELA
        port (
            w,x,y,z: in bit;
            a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0: in bit;
            b15,b14,b13,b12,b11,b10,b9,b8,b7,b6,b5,b4,b3,b2,b1,b0: in bit;
            ia15,ia14,ia13,ia12,ia11,ia10,ia9,ia8,ia7,ia6,ia5,ia4,ia3,ia2,ia1,ia0: out bit;
            ib15,ib14,ib13,ib12,ib11,ib10,ib9,ib8,ib7,ib6,ib5,ib4,ib3,ib2,ib1,ib0: out bit;
            cin: out bit
        );
    end component;
    component Adder16Bit
        port (A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0: in bit;
            B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0: in bit;
            Op: in bit;S15,S14,S13,S12,S11,S10,S9,S8,S7,S6,S5,S4,S3,S2,S1,S0: out bit;
            Cout: out bit
        );
    end component;
begin
    u_ela: ELA port map (w=>w, x=>x, y=>y, z=>z, a15=>a15, a14=>a14, a13=>a13, a12=>a12, a11=>a11, a10=>a10, a9=>a9, a8=>a8, a7=>a7, a6=>a6, a5=>a5, a4=>a4, a3=>a3, a2=>a2, a1=>a1, a0=>a0, b15=>b15, b14=>b14, b13=>b13, b12=>b12, b11=>b11, b10=>b10, b9=>b9, b8=>b8, b7=>b7, b6=>b6, b5=>b5, b4=>b4, b3=>b3, b2=>b2, b1=>b1, b0=>b0, ia15=>ia15, ia14=>ia14, ia13=>ia13, ia12=>ia12, ia11=>ia11, ia10=>ia10, ia9=>ia9, ia8=>ia8, ia7=>ia7, ia6=>ia6, ia5=>ia5, ia4=>ia4, ia3=>ia3, ia2=>ia2, ia1=>ia1, ia0=>ia0, ib15=>ib15, ib14=>ib14, ib13=>ib13, ib12=>ib12, ib11=>ib11, ib10=>ib10, ib9=>ib9, ib8=>ib8, ib7=>ib7, ib6=>ib6, ib5=>ib5, ib4=>ib4, ib3=>ib3, ib2=>ib2, ib1=>ib1, ib0=>ib0, cin=>cin);

    u_add: Adder16Bit port map(A15=>ia15, A14=>ia14, A13=>ia13, A12=>ia12, A11=>ia11, A10=>ia10, A9=>ia9, A8=>ia8, A7=>ia7, A6=>ia6, A5=>ia5, A4=>ia4, A3=>ia3, A2=>ia2, A1=>ia1, A0=>ia0, B15=>ib15, B14=>ib14, B13=>ib13, B12=>ib12, B11=>ib11, B10=>ib10, B9=>ib9, B8=>ib8, B7=>ib7, B6=>ib6, B5=>ib5, B4=>ib4, B3=>ib3, B2=>ib2, B1=>ib1, B0=>ib0, Op=>cin, S15=>s15, S14=>s14, S13=>s13, S12=>s12, S11=>s11, S10=>s10, S9=>s9, S8=>s8, S7=>s7, S6=>s6, S5=>s5, S4=>s4, S3=>s3, S2=>s2, S1=>s1, S0=>s0, Cout=>cout);
end architecture;