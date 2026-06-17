library ieee;
use ieee.std_logic_1164.all;

entity ELA is
    port (
        w, x, y, z  : in bit;
        a15, a14, a13, a12, a11, a10, a9, a8,a7, a6, a5, a4, a3, a2, a1, a0 : in bit;
        b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0 : in bit;
        ia15, ia14, ia13, ia12, ia11, ia10, ia9, ia8,ia7, ia6, ia5, ia4, ia3, ia2, ia1, ia0 : out bit;
        ib15, ib14, ib13, ib12, ib11, ib10, ib9, ib8,ib7, ib6, ib5, ib4, ib3, ib2, ib1, ib0 : out bit;
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
    ia5 <= (not(w) and not(x)) and ((y and a5) or (not(y) and not(z) and a5 and b5) or (not(y) and z and (a5 or b5)));
    ia6 <= (not(w) and not(x)) and ((y and a6) or (not(y) and not(z) and a6 and b6) or (not(y) and z and (a6 or b6)));
    ia7 <= (not(w) and not(x)) and ((y and a7) or (not(y) and not(z) and a7 and b7) or (not(y) and z and (a7 or b7)));
    ia8 <= (not(w) and not(x)) and ((y and a8) or (not(y) and not(z) and a8 and b8) or (not(y) and z and (a8 or b8)));
    ia9 <= (not(w) and not(x)) and ((y and a9) or (not(y) and not(z) and a9 and b9) or (not(y) and z and (a9 or b9)));
    ia10 <= (not(w) and not(x)) and ((y and a10) or (not(y) and not(z) and a10 and b10) or (not(y) and z and (a10 or b10)));
    ia11 <= (not(w) and not(x)) and ((y and a11) or (not(y) and not(z) and a11 and b11) or (not(y) and z and (a11 or b11)));
    ia12 <= (not(w) and not(x)) and ((y and a12) or (not(y) and not(z) and a12 and b12) or (not(y) and z and (a12 or b12)));
    ia13 <= (not(w) and not(x)) and ((y and a13) or (not(y) and not(z) and a13 and b13) or (not(y) and z and (a13 or b13)));
    ia14 <= (not(w) and not(x)) and ((y and a14) or (not(y) and not(z) and a14 and b14) or (not(y) and z and (a14 or b14)));
    ia15 <= (not(w) and not(x)) and ((y and a15) or (not(y) and not(z) and a15 and b15) or (not(y) and z and (a15 or b15)));

    ib0 <= (not(w) and not(x)) and ((y and not(z) and b0) or (y and z and not(b0)));
    ib1 <= (not(w) and not(x)) and ((y and not(z) and b1) or (y and z and not(b1)));
    ib2 <= (not(w) and not(x)) and ((y and not(z) and b2) or (y and z and not(b2)));
    ib3 <= (not(w) and not(x)) and ((y and not(z) and b3) or (y and z and not(b3)));
    ib4 <= (not(w) and not(x)) and ((y and not(z) and b4) or (y and z and not(b4)));
    ib5 <= (not(w) and not(x)) and ((y and not(z) and b5) or (y and z and not(b5)));
    ib6 <= (not(w) and not(x)) and ((y and not(z) and b6) or (y and z and not(b6)));
    ib7 <= (not(w) and not(x)) and ((y and not(z) and b7) or (y and z and not(b7)));
    ib8 <= (not(w) and not(x)) and ((y and not(z) and b8) or (y and z and not(b8)));
    ib9 <= (not(w) and not(x)) and ((y and not(z) and b9) or (y and z and not(b9)));
    ib10 <= (not(w) and not(x)) and ((y and not(z) and b10) or (y and z and not(b10)));
    ib11 <= (not(w) and not(x)) and ((y and not(z) and b11) or (y and z and not(b11)));
    ib12 <= (not(w) and not(x)) and ((y and not(z) and b12) or (y and z and not(b12)));
    ib13 <= (not(w) and not(x)) and ((y and not(z) and b12) or (y and z and not(b13)));
    ib14 <= (not(w) and not(x)) and ((y and not(z) and b14) or (y and z and not(b14)));
    ib15 <= (not(w) and not(x)) and ((y and not(z) and b15) or (y and z and not(b15)));
    
    cin <= (not(w) and not(x) and y and z);

end architecture;