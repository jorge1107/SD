library ieee;
use ieee.std_logic_1164.all;

entity MarcaPassoComportamental is
	port(
		clk, s, z, rst : in std_logic;
		t, p, e1, e0: out std_logic
	);
end entity;

architecture main of MarcaPassoComportamental is
	type statetype is
		(S_Reset, S_Wait, S_Pulse);
		signal currentstate, nextstate : statetype;
	begin
		statereg : process(clk, rst)
		begin
			if(rst = '1') then	
				currentstate <= S_reset;
			elsif(clk ' event and clk = '1')then
				currentstate <= nextstate;
			end if;
		end process;
		
		comblogic : process(currentstate, s, z)
		begin 
			case currentstate is 
				when S_reset =>
					t <= '1';
					p <= '0';
					e1 <= '0';
					e0 <= '0';
					nextstate <= S_wait;
				when S_wait =>
					t <= '0';
					p <= '0';
					e1 <= '0';
					e0 <= '1';
						if(s = '0' and z = '1') then
							nextstate <= S_pulse;
						elsif (s = '1') then
							nextstate <= S_reset;
						elsif (s = '0' and z = '0') then
							nextstate <= S_wait;
						end if;
				when S_pulse =>
					t <= '0';
					p <= '1';
					e1 <= '1';
					e0 <= '0';
					nextstate <= S_reset;
			end case;
		end process;
end architecture main;