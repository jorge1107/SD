-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity MuxLogicGates is
	port(
		in0, in1, select0 : in bit;
		display : out bit
	);
end MuxLogicGates;

-- Arquitetura
architecture main of MuxLogicGates is
	component Mux2x1LogicGates is
		port(i0, i1, s0 : in bit; d : out bit);
	end component;
	begin
		u1 : Mux2x1LogicGates port map(i0 => in0, i1 => in1, s0 => select0, d => display);
end architecture main;