library ieee;
use ieee.std_logic_1164.all;

entity CircuitoCombinacional is
	port(
		s1, s0, s, z : in bit;
		t, p, n1, n0 : out bit
	);
end CircuitoCombinacional;

architecture behav of CircuitoCombinacional is
	begin
		t <= not(s1) and not(s0);
		p <= s1 and not(s0);
		n1 <= not(s1) and s0 and not(s) and z;
		n0 <= ((not s1) and (not s0)) or ((not s1) and (s0) and (not s) and (not z));
end architecture behav;