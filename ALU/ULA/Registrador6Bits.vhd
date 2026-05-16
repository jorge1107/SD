library ieee;
use ieee.std_logic_1164.all;

entity Registrador6Bits is
	port(
		clk, e, n5, n4, n3, n2, n1, n0 : in bit;
		s5, s4, s3, s2, s1, s0 : out bit
	);
end Registrador6Bits;

architecture behav of Registrador6Bits is
	begin
		process(clk)
			begin
				if (clk'event and clk = '1' and e = '1') then
					s5 <= n5;
					s4 <= n4;
					s3 <= n3;
					s2 <= n2;
					s1 <= n1;
					s0 <= n0;
				end if;
		end process;
end architecture behav;