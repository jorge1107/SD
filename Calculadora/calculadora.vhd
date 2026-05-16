library ieee;
use ieee.std_logic_1164.all;

entity calculadora is
	port(
		a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, f, e, clk : in bit;
		o5, o4, o3, o2, o1, o0 : out bit
	);
end entity;

architecture main of calculadora is
	component FullAdder1Bit
		port(in1, in2, Cin : in bit; S, Cout : out bit);
	end component;
	component FullSubtractor1Bit
		port(in1, in2, Win : in bit; S, Wout : out bit);
	end component;
	component Mux2x1LogicGates
		port(i0, i1, s0: in bit; d : out bit);
	end component;
	component Registrador6Bits
		port(clk, e, n5, n4, n3, n2, n1, n0 : in bit; s5, s4, s3, s2, s1, s0 : out bit);
	end component;
	
	signal c6, c5, c4, c3, c2, c1, c0 : bit;
	signal w6, w5, w4, w3, w2, w1, w0 : bit;
	signal p5, p4, p3, p2, p1, p0 : bit;
	signal s5, s4, s3, s2, s1, s0 : bit;
	signal r5, r4, r3, r2, r1, r0 : bit;

	begin

	u1 : FullAdder1Bit port map(a0, b0, '0', p0, c1);
	u2 : FullAdder1Bit port map(a1, b1, c1, p1, c2);
	u3 : FullAdder1Bit port map(a2, b2, c2, p2, c3);
	u4 : FullAdder1Bit port map(a3, b3, c3, p3, c4);
	u5 : FullAdder1Bit port map(a4, b4, c4, p4, c5);
	u6 : FullAdder1Bit port map(a5, b5, c5, p5, c6);

	v1 : FullSubtractor1Bit port map(a0, b0, '0', s0, w1);
	v2 : FullSubtractor1Bit port map(a1, b1, w1, s1, w2);
	v3 : FullSubtractor1Bit port map(a2, b2, w2, s2, w3);
	v4 : FullSubtractor1Bit port map(a3, b3, w3, s3, w4);
	v5 : FullSubtractor1Bit port map(a4, b4, w4, s4, w5);
	v6 : FullSubtractor1Bit port map(a5, b5, w5, s5, w6);

	x1 : Mux2x1LogicGates port map(p0, s0, f, r0);
	x2 : Mux2x1LogicGates port map(p1, s1, f, r1);
	x3 : Mux2x1LogicGates port map(p2, s2, f, r2);
	x4 : Mux2x1LogicGates port map(p3, s3, f, r3);
	x5 : Mux2x1LogicGates port map(p4, s4, f, r4);
	x6 : Mux2x1LogicGates port map(p5, s5, f, r5);
	
	y1 : Registrador6Bits port map(clk, e, r5, r4, r3, r2, r1, r0, o5, o4, o3, o2, o1, o0);

end architecture main;