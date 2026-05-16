library ieee;
use ieee.std_logic_1164.all;

entity calculadora is
	port(
		a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, f, e, clk : in std_logic;
		s5, s4, s3, s2, s1, s0 : out std_logic
	);
end entity;

architecture main of calculadora is
	component FullAdder1Bit
		port(in1, in2, Cin : in std_logic; S, Cout : out std_logic);
	end component;
	signal c6, c5, c4, c3, c2, c1, c0 : std_logic;
	signal p6, p5, p4, p3, p2, p1, p0 : std_logic;
	
	
	begin

	u1 : FullAdder1Bit port map(a0, b0, '0', p0, c1);
	u2 : FullAdder1Bit port map(a1, b1, c1, p1, c2);
	u3 : FullAdder1Bit port map(a2, b2, c2, p2, c3);
	u4 : FullAdder1Bit port map(a3, b3, c3, p3, c4);
	u5 : FullAdder1Bit port map(a4, b4, c4, p4, c5);
	u6 : FullAdder1Bit port map(a5, b5, c5, p5, c6);

end architecture main;