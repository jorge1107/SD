library ieee;
use ieee.std_logic_1164.all;

entity LatchD is
	port(
		D, clk : in bit;
		Q : out bit
	);
end LatchD;

architecture behav of LatchD is
	begin
		process(D, clk)
			begin
				if (clk = '1' and D = '1') then
					Q <= '1';
				elsif (clk = '1' and D = '0') then
					Q <= '0';
				end if;
		end process;
end architecture behav;