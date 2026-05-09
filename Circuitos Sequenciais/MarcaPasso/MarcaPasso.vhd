-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity MarcaPasso is
	port(
		c, D : in bit;
		Q : out bit
	);
end MarcaPasso;

-- Arquitetura
architecture behavior of MarcaPasso is
	signal n1, n0 : bit; -- Próximo estado
	signal s1, s0 : bit; -- Estado atual
	component FlipFlopD is
		port(D, clk : in bit; Q : out bit);
	end component;
	begin
end architecture behavior;