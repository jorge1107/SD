library ieee;
use ieee.std_logic_1164.all;

entity ULA is
    port(
        a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
        b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
        x, y, z: in bit;
        s15, s14, s13, s12, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, s1, s0: out bit;
        cout: out bit
    );
end;

architecture behav of ULA is
    signal ia15, ia14, ia13, ia12, ia11, ia10, ia9, ia8, ia7, ia6, ia5, ia4, ia4_internal, ia3, ia2, ia1, ia0: bit;
    signal ib15, ib14, ib13, ib12, ib11, ib10, ib9, ib8, ib7, ib6, ib5, ib4, ib4_internal, ib3, ib2, ib1, ib0: bit;
    signal cin: bit;

    component abext is port(a, b, a_prev, a_next, x, y, z: in bit; ia, ib: out bit); end component;
    component cinext is port(x, y, z: in bit; cin: out bit); end component;
    component adder_subtractor16 is 
        port(
            a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
            b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
            sub: in bit; 
            s15, s14, s13, s12, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, s1, s0: out bit; 
            cout: out bit
        );
    end component;
begin
    u_cin: cinext port map(x=>x, y=>y, z=>z, cin=>cin);

    u_ab0:  abext port map(a=>a0,  b=>b0,  a_prev=>'0', a_next=>a1,  x=>x, y=>y, z=>z, ia=>ia0,  ib=>ib0);
    u_ab1:  abext port map(a=>a1,  b=>b1,  a_prev=>a0,  a_next=>a2,  x=>x, y=>y, z=>z, ia=>ia1,  ib=>ib1);
    u_ab2:  abext port map(a=>a2,  b=>b2,  a_prev=>a1,  a_next=>a3,  x=>x, y=>y, z=>z, ia=>ia2,  ib=>ib2);
    u_ab3:  abext port map(a=>a3,  b=>b3,  a_prev=>a2,  a_next=>a4,  x=>x, y=>y, z=>z, ia=>ia3,  ib=>ib3);
    u_ab4:  abext port map(a=>a4,  b=>b4,  a_prev=>a3,  a_next=>a5,  x=>x, y=>y, z=>z, ia=>ia4,  ib=>ib4);
    u_ab5:  abext port map(a=>a5,  b=>b5,  a_prev=>a4,  a_next=>a6,  x=>x, y=>y, z=>z, ia=>ia5,  ib=>ib5);
    u_ab6:  abext port map(a=>a6,  b=>b6,  a_prev=>a5,  a_next=>a7,  x=>x, y=>y, z=>z, ia=>ia6,  ib=>ib6);
    u_ab7:  abext port map(a=>a7,  b=>b7,  a_prev=>a6,  a_next=>a8,  x=>x, y=>y, z=>z, ia=>ia7,  ib=>ib7);
    u_ab8:  abext port map(a=>a8,  b=>b8,  a_prev=>a7,  a_next=>a9,  x=>x, y=>y, z=>z, ia=>ia8,  ib=>ib8);
    u_ab9:  abext port map(a=>a9,  b=>b9,  a_prev=>a8,  a_next=>a10, x=>x, y=>y, z=>z, ia=>ia9,  ib=>ib9);
    u_ab10: abext port map(a=>a10, b=>b10, a_prev=>a9,  a_next=>a11, x=>x, y=>y, z=>z, ia=>ia10, ib=>ib10);
    u_ab11: abext port map(a=>a11, b=>b11, a_prev=>a10, a_next=>a12, x=>x, y=>y, z=>z, ia=>ia11, ib=>ib11);
    u_ab12: abext port map(a=>a12, b=>b12, a_prev=>a11, a_next=>a13, x=>x, y=>y, z=>z, ia=>ia12, ib=>ib12);
    u_ab13: abext port map(a=>a13, b=>b13, a_prev=>a12, a_next=>a14, x=>x, y=>y, z=>z, ia=>ia13, ib=>ib13);
    u_ab14: abext port map(a=>a14, b=>b14, a_prev=>a13, a_next=>a15, x=>x, y=>y, z=>z, ia=>ia14, ib=>ib14);
    u_ab15: abext port map(a=>a15, b=>b15, a_prev=>a14, a_next=>'0', x=>x, y=>y, z=>z, ia=>ia15, ib=>ib15);

    u_add: adder_subtractor16 port map(
        a15=>ia15, a14=>ia14, a13=>ia13, a12=>ia12, a11=>ia11, a10=>ia10, a9=>ia9, a8=>ia8, a7=>ia7, a6=>ia6, a5=>ia5, a4=>ia4, a3=>ia3, a2=>ia2, a1=>ia1, a0=>ia0,
        b15=>ib15, b14=>ib14, b13=>ib13, b12=>ib12, b11=>ib11, b10=>ib10, b9=>ib9, b8=>ib8, b7=>ib7, b6=>ib6, b5=>ib5, b4=>ib4, b3=>ib3, b2=>ib2, b1=>ib1, b0=>ib0,
        sub=>cin, 
        s15=>s15, s14=>s14, s13=>s13, s12=>s12, s11=>s11, s10=>s10, s9=>s9, s8=>s8, s7=>s7, s6=>s6, s5=>s5, s4=>s4, s3=>s3, s2=>s2, s1=>s1, s0=>s0,
        cout=>cout
    );
end;