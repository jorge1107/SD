library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port(
		D, clk : in bit;
		Q : out bit
	);
end FlipFlopD;

architecture behav of FlipFlopD is
	begin
		process(D, clk)
			begin
				if (clk 'event and clk = '1' and D = '1') then
					Q <= '1';
				elsif (clk 'event and clk = '1' and D = '0') then
					Q <= '0';
				end if;
		end process;
end architecture behav;