-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity Mux4x1 is
	port(
		in0, in1, in2, in3, select0, select1 : in bit;
		display : out bit
	);
end Mux4x1;

-- Arquitetura
architecture main of Mux4x1 is
	signal exitAB : bit;
	signal exitCD : bit;
	component Mux2x1LogicGates is
		port(i0, i1, s0 : in bit; d : out bit);
	end component;
	begin
		u1 : Mux2x1LogicGates port map(i0 => in0, i1 => in2, s0 => select1, d => exitAB);
		u2 : Mux2x1LogicGates port map(i0 => in1, i1 => in3, s0 => select1, d => exitCD);
		u3 : Mux2x1LogicGates port map(i0 => exitAB, i1 => exitCD, s0 => select0, d => display);
end architecture main;