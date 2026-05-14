library ieee;
use ieee.std_logic_1164.all;

entity FullAdder1Bit is
	port(
		in1, in2, Cin : in std_logic;
		S, Cout : out std_logic
	);
end FullAdder1Bit;

architecture behav of FullAdder1Bit is
	begin
		S <= in1 xor in2 xor Cin;
		Cout <= (in1 and in2) or (in2 and Cin) or (in1 and Cin);
end architecture behav;