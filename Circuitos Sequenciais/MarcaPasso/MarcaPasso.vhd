-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity MarcaPasso is
	port(
		clk, s, z : in bit;
		t, p, e1, e0: out bit
	);
end MarcaPasso;

-- Arquitetura
architecture behavior of MarcaPasso is
	signal n1, n0 : bit; -- Próximo estado
	signal s1, s0 : bit; -- Estado atual
	component Registrador2Bits is
		port(clk, n1, n0 : in bit; s1, s0 : out bit);
	end component;
	component CircuitoCombinacional is
		port(s1, s0, s, z : in bit; t, p, n1, n0 : out bit);
	end component;
	begin
	u1 : Registrador2Bits port map(clk => clk, n1 => n1, n0 => n0, s1 => s1, s0 => s0);
	u2 : CircuitoCombinacional port map(s1 => s1, s0 => s0, s => s, z => z, t => t, p => p, n1 => n1, n0 => n0);
	e1 <= s1;
	e0 <= s0;
end architecture behavior;