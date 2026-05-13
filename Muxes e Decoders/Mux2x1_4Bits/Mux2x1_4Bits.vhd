-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity Mux2x1_4Bits is
	port(
		in0a, in1a, in2a, in3a, in0b, in1b, in2b, in3b, select0 : in bit;
		display0, display1, display2, display3 : out bit
	);
end Mux2x1_4bits;

-- Arquitetura
architecture main of Mux2x1_4Bits is
	component Mux2x1LogicGates is
		port(i0, i1, s0: in bit; d : out bit);
	end component;
	begin
		u1 : Mux2x1LogicGates port map(i0 => in0a, i1 => in0b, s0 => select0, d => display0);
		u2 : Mux2x1LogicGates port map(i0 => in1a, i1 => in1b, s0 => select0, d => display1);
		u3 : Mux2x1LogicGates port map(i0 => in2a, i1 => in2b, s0 => select0, d => display2);
		u4 : Mux2x1LogicGates port map(i0 => in3a, i1 => in3b, s0 => select0, d => display3);
end architecture main;