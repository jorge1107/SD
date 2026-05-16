library ieee;
use ieee.std_logic_1164.all;

entity calculadora is
	port(
		a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, f, e, clk : in bit;
		s5, s4, s3, s2, s1, s0 : out bit
	);
end entity;

architecture main of calculadora is
	component FullAdder1Bit
		port(in1, in2, Cin : in bit; S, Cout : out bit);
	end component;
	component Mux2x1LogicGates
		port(i0, i1, s0: in bit; d : out bit);
	end component;
	component Registrador6Bits
		port(clk, e, n5, n4, n3, n2, n1, n0 : in bit; s5, s4, s3, s2, s1, s0 : out bit);
	end component;
	
	signal c6, c5, c4, c3, c2, c1, c0 : bit;
	signal r5, r4, r3, r2, r1, r0 : bit;
	signal i5, i4, i3, i2, i1, i0 : bit;
	
	begin
	
	u1 : Mux2x1LogicGates port map(b0, (not b0), f, i0);
	u2 : Mux2x1LogicGates port map(b1, (not b1), f, i1);
	u3 : Mux2x1LogicGates port map(b2, (not b2), f, i2);
	u4 : Mux2x1LogicGates port map(b3, (not b3), f, i3);
	u5 : Mux2x1LogicGates port map(b4, (not b4), f, i4);
	u6 : Mux2x1LogicGates port map(b5, (not b5), f, i5);
	
	v1 : FullAdder1Bit port map(a0, i0,  f, r0, c1);
	v2 : FullAdder1Bit port map(a1, i1, c1, r1, c2);
	v3 : FullAdder1Bit port map(a2, i2, c2, r2, c3);
	v4 : FullAdder1Bit port map(a3, i3, c3, r3, c4);
	v5 : FullAdder1Bit port map(a4, i4, c4, r4, c5);
	v6 : FullAdder1Bit port map(a5, i5, c5, r5, c6);
	
	y1 : Registrador6Bits port map(clk, e, r5, r4, r3, r2, r1, r0, s5, s4, s3, s2, s1, s0);

end architecture;