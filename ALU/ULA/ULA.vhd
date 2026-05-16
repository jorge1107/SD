library ieee;
use  ieee.std_logic_1164.all;

entity ULA is
	port(
		a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, x, y, z, e, clk : in bit;
		s5, s4, s3, s2, s1, s0 : out bit
	);
end entity;

architecture main of ULA is
	component FullAdder1Bit
		port(in1, in2, Cin : in bit; S, Cout : out bit);
	end component;
	component ExtensorLA
		port(a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, x, y, z : in bit; ia5, ia4, ia3, ia2, ia1, ia0, ib5, ib4, ib3, ib2, ib1, ib0, q : out bit);
	end component;
	component Registrador6Bits
		port(clk, e, n5, n4, n3, n2, n1, n0 : in bit; s5, s4, s3, s2, s1, s0 : out bit);
	end component;
	
	signal ia5, ia4, ia3, ia2, ia1, ia0 : bit;
	signal ib5, ib4, ib3, ib2, ib1, ib0 : bit;	
	signal c6, c5, c4, c3, c2, c1, c0 : bit;
	signal p5, p4, p3, p2, p1, p0 : bit;
	signal q : bit;

	begin
	
	t1 : ExtensorLA port map(a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, x, y, z, ia5, ia4, ia3, ia2, ia1, ia0, ib5, ib4, ib3, ib2, ib1, ib0, q);

	u1 : FullAdder1Bit port map(ia0, ib0,  q, p0, c1);
	u2 : FullAdder1Bit port map(ia1, ib1, c1, p1, c2);
	u3 : FullAdder1Bit port map(ia2, ib2, c2, p2, c3);
	u4 : FullAdder1Bit port map(ia3, ib3, c3, p3, c4);
	u5 : FullAdder1Bit port map(ia4, ib4, c4, p4, c5);
	u6 : FullAdder1Bit port map(ia5, ib5, c5, p5, c6);

	r1 : Registrador6Bits port map(clk, e, p5, p4, p3, p2, p1, p0, s5, s4, s3, s2, s1, s0);
end architecture main;