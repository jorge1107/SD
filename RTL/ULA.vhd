library ieee;
use ieee.std_logic_1164.all;

entity ULA is
    port(a,b: in bit_vector(15 downto 0); x,y,z: in bit;
         s: out bit_vector(15 downto 0); cout: out bit);
end;
architecture behav of ULA is
    signal ia, ib: bit_vector(15 downto 0);
    signal cin: bit;
    component abext is port(a,b,a_prev,a_next,x,y,z: in bit; ia,ib: out bit); end component;
    component cinext is port(x,y,z: in bit; cin: out bit); end component;
    component adder_subtractor16 is port(a,b: in bit_vector(15 downto 0); sub: in bit; s: out bit_vector(15 downto 0); cout: out bit); end component;
begin
    u_cin: cinext port map(x=>x,y=>y,z=>z,cin=>cin);
    gen_alu: for i in 0 to 15 generate
        u_ab: abext port map(
            a=>a(i), b=>b(i),
            a_prev=> a(i-1) when i>0 else '0',
            a_next=> a(i+1) when i<<15 else '0',
            x=>x,y=>y,z=>z, ia=>ia(i), ib=>ib(i));
    end generate;
    -- O adder interno opera sempre como soma (IA+IB+cin)
    -- pois o extensor já preparou IB e cin para subtração/CMP
    u_add: adder_subtractor16 port map(a=>ia, b=>ib, sub=>cin, s=>s, cout=>cout);
end;