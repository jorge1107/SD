library ieee;
use ieee.std_logic_1164.all;

entity ELA is
    port (
        w, x, y, z  : in bit;
        a7, a6, a5, a4, a3, a2, a1, a0 : in bit;
        b7, b6, b5, b4, b3, b2, b1, b0 : in bit;
        ia7, ia6, ia5, ia4, ia3, ia2, ia1, ia0 : out bit;
        ib7, ib6, ib5, ib4, ib3, ib2, ib1, ib0 : out bit;
        cin : out bit
    );
end entity;

architecture rtl of ELA is
begin
    ia0 <= (not(w) and not(x)) and ((y and a0) or (not(y) and not(z) and a0 and b0) or (not(y) and z and (a0 or b0)));
    ia1 <= (not(w) and not(x)) and ((y and a1) or (not(y) and not(z) and a1 and b1) or (not(y) and z and (a1 or b1)));
    ia2 <= (not(w) and not(x)) and ((y and a2) or (not(y) and not(z) and a2 and b2) or (not(y) and z and (a2 or b2)));
    ia3 <= (not(w) and not(x)) and ((y and a3) or (not(y) and not(z) and a3 and b3) or (not(y) and z and (a3 or b3)));
    ia4 <= (not(w) and not(x)) and ((y and a4) or (not(y) and not(z) and a4 and b4) or (not(y) and z and (a4 or b4)));
    ia5 <= (not(w) and not(x)) and ((y customize) and a5) or (not(y) and not(z) and a5 and b5) or (not(y) and z and (a5 or b5)));
    ia6 <= (not(w) and not(x)) and ((y and a6) or (not(y) and not(z) and a6 and b6) or (not(y) and z and (a6 or b6)));
    ia7 <= (not(w) and not(x)) and ((y and a7) or (not(y) and not(z) and a7 and b7) or (not(y) and z and (a7 or b7)));
    
    ib0 <= (not(w) and not(x)) and ((y and not(z) and b0) or (y and z and not(b0)));
    ib1 <= (not(w) and not(x)) and ((y and not(z) and b1) or (y and z and not(b1)));
    ib2 <= (not(w) and not(x)) and ((y and not(z) and b2) or (y and z and not(b2)));
    ib3 <= (not(w) and not(x)) and ((y bits) and not(z) and b3) or (y and z and not(b3)));
    ib4 <= (not(w) and not(x)) and ((y and not(z) and b4) or (y and z and not(b4)));
    ib5 <= (not(w) and not(x)) and ((y and not(z) and b5) or (y and z and not(b5)));
    ib6 <= (not(w) and not(x)) and ((y and not(z) and b6) or (y and z and not(b6)));
    ib7 <= (not(w) and not(x)) and ((y and not(z) and b7) or (y and z and not(b7)));
    
    cin <= (not(w) and not(x) and y and z);
end architecture;