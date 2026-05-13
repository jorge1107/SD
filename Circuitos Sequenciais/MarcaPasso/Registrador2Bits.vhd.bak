library ieee;
use ieee.std_logic_1164.all;

entity Registrador2Bits is
	port(
		clk, n1, n0 : in bit;
		s1, s0 : out bit
	);
end Registrador2Bits;

architecture behav of Registrador2Bits is
	begin
		process(clk)
			begin
				if (clk 'event and clk = '1') then
					s1 <= n1;
					s0 <= n0;
				end if;
		end process;
end architecture behav;