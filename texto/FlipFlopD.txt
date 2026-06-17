library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port(
		d, clk, rst: in bit;
		q: out bit
	);
end entity;

architecture behav of FlipFlopD is

begin
	process(clk, rst)
    begin
        if rst='1' then q <= '0';
        elsif clk='1' and clk'event then q <= d;
        end if;
    end process;
end architecture;