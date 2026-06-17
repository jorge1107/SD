library ieee;
use ieee.std_logic_1164.all;

entity ULA is
    port(
        a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
        b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
        w, x, y, z: in bit;
        s15, s14, s13, s12, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, s1, s0: out bit;
        cout: out bit
    );
end;

architecture behav of ULA is
    signal ia15, ia14, ia13, ia12, ia11, ia10, ia9, ia8, ia7, ia6, ia5, ia4, ia4_internal, ia3, ia2, ia1, ia0: bit;
    signal ib15, ib14, ib13, ib12, ib11, ib10, ib9, ib8, ib7, ib6, ib5, ib4, ib4_internal, ib3, ib2, ib1, ib0: bit;
    signal cin: bit;

    component ELA port (
        w, x, y, z  : in bit;
        a15, a14, a13, a12, a11, a10, a9, a8,a7, a6, a5, a4, a3, a2, a1, a0 : in bit;
        b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0 : in bit;
        ia15, ia14, ia13, ia12, ia11, ia10, ia9, ia8,ia7, ia6, ia5, ia4, ia3, ia2, ia1, ia0 : out bit;
        ib15, ib14, ib13, ib12, ib11, ib10, ib9, ib8,ib7, ib6, ib5, ib4, ib3, ib2, ib1, ib0 : out bit;
        cin : out bit
    );
    end component;
    component Adder16Bit is 
        port(
            a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
            b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
            sub: in bit; 
            s15, s14, s13, s12, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, s1, s0: out bit; 
            cout: out bit
        );
    end component;
begin
    
    u_signal: ELA port map (w, x, y, z,
                            a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0,
                            b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
                            ia15, ia14, ia13, ia12, ia11, ia10, ia9, ia8, ia7, ia6, ia5, ia4, ia3, ia2, ia1, ia0,
                            ib15, ib14, ib13, ib12, ib11, ib10, ib9, ib8, ib7, ib6, ib5, ib4, ib3, ib2, ib1, ib0,
                            cin);

    u_add: Adder16Bit port map(
        a15=>ia15, a14=>ia14, a13=>ia13, a12=>ia12, a11=>ia11, a10=>ia10, a9=>ia9, a8=>ia8, a7=>ia7, a6=>ia6, a5=>ia5, a4=>ia4, a3=>ia3, a2=>ia2, a1=>ia1, a0=>ia0,
        b15=>ib15, b14=>ib14, b13=>ib13, b12=>ib12, b11=>ib11, b10=>ib10, b9=>ib9, b8=>ib8, b7=>ib7, b6=>ib6, b5=>ib5, b4=>ib4, b3=>ib3, b2=>ib2, b1=>ib1, b0=>ib0,
        sub=>cin, 
        s15=>s15, s14=>s14, s13=>s13, s12=>s12, s11=>s11, s10=>s10, s9=>s9, s8=>s8, s7=>s7, s6=>s6, s5=>s5, s4=>s4, s3=>s3, s2=>s2, s1=>s1, s0=>s0,
        cout=>cout
    );
end;