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
	 ia5 <= ((not x) and a5) or (x and (not y) and (not z) and a5 and b5) or (x and (not y) and z and (a5 or b5)) or (x and y and (not z) and (a5 xor b5)) or (x and y and z and (not a5));
	 ia4 <= ((not x) and a4) or (x and (not y) and (not z) and a4 and b4) or (x and (not y) and z and (a4 or b4)) or (x and y and (not z) and (a4 xor b4)) or (x and y and z and (not a4));
	 ia3 <= ((not x) and a3) or (x and (not y) and (not z) and a3 and b3) or (x and (not y) and z and (a3 or b3)) or (x and y and (not z) and (a3 xor b3)) or (x and y and z and (not a3));
	 ia2 <= ((not x) and a2) or (x and (not y) and (not z) and a2 and b2) or (x and (not y) and z and (a2 or b2)) or (x and y and (not z) and (a2 xor b2)) or (x and y and z and (not a2));
	 ia1 <= ((not x) and a1) or (x and (not y) and (not z) and a1 and b1) or (x and (not y) and z and (a1 or b1)) or (x and y and (not z) and (a1 xor b1)) or (x and y and z and (not a1));
	 ia0 <= ((not x) and a0) or (x and (not y) and (not z) and a0 and b0) or (x and (not y) and z and (a0 or b0)) or (x and y and (not z) and (a0 xor b0)) or (x and y and z and (not a0));
	 
	 ib5 <= (not x) and (not y) and (z xor b5);
	 ib4 <= (not x) and (not y) and (z xor b4);
	 ib3 <= (not x) and (not y) and (z xor b3);
	 ib2 <= (not x) and (not y) and (z xor b2);
	 ib1 <= (not x) and (not y) and (z xor b1);
	 ib0 <= (not x) and (not y) and (z xor b0);
	 
	 q <= (not x) and (y xor z);
end architecture behav;