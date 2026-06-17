library ieee;
use ieee.std_logic_1164.all;

entity Mux2x1 is
   port(
		i0, i1, s0: in bit;
      d : out bit
   );
end Mux2x1;

architecture behav of Mux2x1 is
	begin
		d <= (((not s0) and (i0)) or ((s0) and (i1)));
end architecture behav;