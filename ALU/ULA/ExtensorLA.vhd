library ieee;
use ieee.std_logic_1164.all;

entity ExtensorLA is
    port(
        a5, a4, a3, a2, a1, a0, b5, b4, b3, b2, b1, b0, x, y, z : in bit;
        ia5, ia4, ia3, ia2, ia1, ia0, ib5, ib4, ib3, ib2, ib1, ib0, q : out bit
    );
end entity;

architecture behav of ExtensorLA is

    begin
    process (x, y, z)
    begin
        if (x = '1' or y = '1') then
            ib5 <= '0';
            ib4 <= '0';
            ib3 <= '0';
            ib2 <= '0';
            ib1 <= '0';
            ib0 <= '0';
        elsif (z = '0') then
            ib5 <= b5;
            ib4 <= b4;
            ib3 <= b3;
            ib2 <= b2;
            ib1 <= b1;
            ib0 <= b0;
        else
            ib5 <= not b5;
            ib4 <= not b4;
            ib3 <= not b3;
            ib2 <= not b2;
            ib1 <= not b1;
            ib0 <= not b0;
        end if;
        if (x = '0') then
            ia5 <= a5;
            ia4 <= a4;
            ia3 <= a3;
            ia2 <= a2;
            ia1 <= a1;
            ia0 <= a0;
        elsif (y = '0' and z = '0') then
            ia5 <= a5 and b5;
            ia4 <= a4 and b4;
            ia3 <= a3 and b3;
            ia2 <= a2 and b2;
            ia1 <= a1 and b1;
            ia0 <= a0 and b0;
        elsif (y = '0' and z = '1') then
            ia5 <= a5 or b5;
            ia4 <= a4 or b4;
            ia3 <= a3 or b3;
            ia2 <= a2 or b2;
            ia1 <= a1 or b1;
            ia0 <= a0 or b0;
        elsif (y = '1' and z = '0') then
            ia5 <= a5 xor b5;
            ia4 <= a4 xor b4;
            ia3 <= a3 xor b3;
            ia2 <= a2 xor b2;
            ia1 <= a1 xor b1;
            ia0 <= a0 xor b0;
        else
            ia5 <= not a5;
            ia4 <= not a4;
            ia3 <= not a3;
            ia2 <= not a2;
            ia1 <= not a1;
            ia0 <= not a0;
        end if;
        if (x = '1' or (y = '1' xnor z = '1')) then
            q <= '0';
        else
            q <= '1';
        end if;
    end process;
end architecture behav;