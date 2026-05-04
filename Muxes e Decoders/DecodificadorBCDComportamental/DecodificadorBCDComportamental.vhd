-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity DecodificadorBCDComportamental is
	port(
		A4, A3, A2, A1 : in bit;
		S6, S5, S4, S3, S2, S1, S0 : out bit
	);
end DecodificadorBCDComportamental;

-- Arquitetura
architecture main of DecodificadorBCDComportamental is
	signal out_aux : bit_vector(6 downto 0);
	signal in_aux : bit_vector(3 downto 0);
	begin
	in_aux <= A4 & A3 & A2 & A1;
	with in_aux select
	out_aux <= "1000000" when "0000",
				  "1111001" when "0001",
				  "0100100" when "0010",
				  "0110000" when "0011",
				  "0011001" when "0100",
				  "0010010" when "0101",
				  "0000010" when "0110",
				  "1111000" when "0111",
				  "0000000" when "1000",
				  "0010000" when "1001",
				  "1111111" when others;
	S6 <= out_aux(0);
	S5 <= out_aux(1);
	S4 <= out_aux(2);
	S3 <= out_aux(3);
	S2 <= out_aux(4);
	S1 <= out_aux(5);
	S0 <= out_aux(6);
end architecture main;