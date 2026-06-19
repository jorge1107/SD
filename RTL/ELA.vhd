library ieee;
use ieee.std_logic_1164.all;

entity ELA is
    port (
        w,x,y,z: in bit;
        a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0: in bit;
        b15,b14,b13,b12,b11,b10,b9,b8,b7,b6,b5,b4,b3,b2,b1,b0: in bit;
        ia15,ia14,ia13,ia12,ia11,ia10,ia9,ia8,ia7,ia6,ia5,ia4,ia3,ia2,ia1,ia0: out bit;
        ib15,ib14,ib13,ib12,ib11,ib10,ib9,ib8,ib7,ib6,ib5,ib4,ib3,ib2,ib1,ib0: out bit;
        cin: out bit
    );
end entity;

architecture dataflow of ELA is
    signal nw,nx,ny,nz: bit;
begin
    nw <= not w; nx <= not x; ny <= not y; nz <= not z;

    -- Soma de produtos para cada bit de IA
    ia0 <= (nw and nx and ny and nz and a0) or         -- ADD
           (nw and nx and ny and z  and a0) or         -- SUB
           (nw and nx and y  and nz and a0 and b0) or  -- AND
           (nw and nx and y  and z  and (a0 or b0)) or -- OR
           (nw and x  and ny and nz and a0) or         -- MUL2
           (nw and x  and ny and z  and a0) or         -- DIV2
           (nw and x  and y  and nz and a0) or         -- CMP
           (nw and x  and y  and z  and '0');          -- CLR

    ia1 <= (nw and nx and ny and nz and a1) or (nw and nx and ny and z  and a1) or (nw and nx and y  and nz and a1 and b1) or (nw and nx and y  and z  and (a1 or b1)) or (nw and x  and ny and nz and a1) or (nw and x  and ny and z  and a1) or (nw and x  and y  and nz and a1) or (nw and x  and y  and z  and '0');
    ia2 <= (nw and nx and ny and nz and a2) or (nw and nx and ny and z  and a2) or (nw and nx and y  and nz and a2 and b2) or (nw and nx and y  and z  and (a2 or b2)) or (nw and x  and ny and nz and a2) or (nw and x  and ny and z  and a2) or (nw and x  and y  and nz and a2) or (nw and x  and y  and z  and '0');
    ia3 <= (nw and nx and ny and nz and a3) or (nw and nx and ny and z  and a3) or (nw and nx and y  and nz and a3 and b3) or (nw and nx and y  and z  and (a3 or b3)) or (nw and x  and ny and nz and a3) or (nw and x  and ny and z  and a3) or (nw and x  and y  and nz and a3) or (nw and x  and y  and z  and '0');
    ia4 <= (nw and nx and ny and nz and a4) or (nw and nx and ny and z  and a4) or (nw and nx and y  and nz and a4 and b4) or (nw and nx and y  and z  and (a4 or b4)) or (nw and x  and ny and nz and a4) or (nw and x  and ny and z  and a4) or (nw and x  and y  and nz and a4) or (nw and x  and y  and z  and '0');
    ia5 <= (nw and nx and ny and nz and a5) or (nw and nx and ny and z  and a5) or (nw and nx and y  and nz and a5 and b5) or (nw and nx and y  and z  and (a5 or b5)) or (nw and x  and ny and nz and a5) or (nw and x  and ny and z  and a5) or (nw and x  and y  and nz and a5) or (nw and x  and y  and z  and '0');
    ia6 <= (nw and nx and ny and nz and a6) or (nw and nx and ny and z  and a6) or (nw and nx and y  and nz and a6 and b6) or (nw and nx and y  and z  and (a6 or b6)) or (nw and x  and ny and nz and a6) or (nw and x  and ny and z  and a6) or (nw and x  and y  and nz and a6) or (nw and x  and y  and z  and '0');
    ia7 <= (nw and nx and ny and nz and a7) or (nw and nx and ny and z  and a7) or (nw and nx and y  and nz and a7 and b7) or (nw and nx and y  and z  and (a7 or b7)) or (nw and x  and ny and nz and a7) or (nw and x  and ny and z  and a7) or (nw and x  and y  and nz and a7) or (nw and x  and y  and z  and '0');
    ia8 <= (nw and nx and ny and nz and a8) or (nw and nx and ny and z  and a8) or (nw and nx and y  and nz and a8 and b8) or (nw and nx and y  and z  and (a8 or b8)) or (nw and x  and ny and nz and a8) or (nw and x  and ny and z  and a8) or (nw and x  and y  and nz and a8) or (nw and x  and y  and z  and '0');
    ia9 <= (nw and nx and ny and nz and a9) or (nw and nx and ny and z  and a9) or (nw and nx and y  and nz and a9 and b9) or (nw and nx and y  and z  and (a9 or b9)) or (nw and x  and ny and nz and a9) or (nw and x  and ny and z  and a9) or (nw and x  and y  and nz and a9) or (nw and x  and y  and z  and '0');
    ia10 <= (nw and nx and ny and nz and a10) or (nw and nx and ny and z  and a10) or (nw and nx and y  and nz and a10 and b10) or (nw and nx and y  and z  and (a10 or b10)) or (nw and x  and ny and nz and a10) or (nw and x  and ny and z  and a10) or (nw and x  and y  and nz and a10) or (nw and x  and y  and z  and '0');
    ia11 <= (nw and nx and ny and nz and a11) or (nw and nx and ny and z  and a11) or (nw and nx and y  and nz and a11 and b11) or (nw and nx and y  and z  and (a11 or b11)) or (nw and x  and ny and nz and a11) or (nw and x  and ny and z  and a11) or (nw and x  and y  and nz and a11) or (nw and x  and y  and z  and '0');
    ia12 <= (nw and nx and ny and nz and a12) or (nw and nx and ny and z  and a12) or (nw and nx and y  and nz and a12 and b12) or (nw and nx and y  and z  and (a12 or b12)) or (nw and x  and ny and nz and a12) or (nw and x  and ny and z  and a12) or (nw and x  and y  and nz and a12) or (nw and x  and y  and z  and '0');
    ia13 <= (nw and nx and ny and nz and a13) or (nw and nx and ny and z  and a13) or (nw and nx and y  and nz and a13 and b13) or (nw and nx and y  and z  and (a13 or b13)) or (nw and x  and ny and nz and a13) or (nw and x  and ny and z  and a13) or (nw and x  and y  and nz and a13) or (nw and x  and y  and z  and '0');
    ia14 <= (nw and nx and ny and nz and a14) or (nw and nx and ny and z  and a14) or (nw and nx and y  and nz and a14 and b14) or (nw and nx and y  and z  and (a14 or b14)) or (nw and x  and ny and nz and a14) or (nw and x  and ny and z  and a14) or (nw and x  and y  and nz and a14) or (nw and x  and y  and z  and '0');
    ia15 <= (nw and nx and ny and nz and a15) or (nw and nx and ny and z  and a15) or (nw and nx and y  and nz and a15 and b15) or (nw and nx and y  and z  and (a15 or b15)) or (nw and x  and ny and nz and a15) or (nw and x  and ny and z  and a15) or (nw and x  and y  and nz and a15) or (nw and x  and y  and z  and '0');

    -- IB
    ib0 <= (nw and nx and ny and nz and b0) or      -- ADD
           (nw and nx and ny and z  and not b0) or  -- SUB
           (nw and nx and y  and nz and '0') or     -- AND
           (nw and nx and y  and z  and '0') or     -- OR
           (nw and x  and ny and nz and '0') or     -- MUL2
           (nw and x  and ny and z  and '0') or     -- DIV2
           (nw and x  and y  and nz and not b0) or  -- CMP
           (nw and x  and y  and z  and '0');       -- CLR

    ib1 <= (nw and nx and ny and nz and b1) or (nw and nx and ny and z and not b1) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b1) or (nw and x and y and z and '0');
    ib2 <= (nw and nx and ny and nz and b2) or (nw and nx and ny and z and not b2) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b2) or (nw and x and y and z and '0');
    ib3 <= (nw and nx and ny and nz and b3) or (nw and nx and ny and z and not b3) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b3) or (nw and x and y and z and '0');
    ib4 <= (nw and nx and ny and nz and b4) or (nw and nx and ny and z and not b4) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b4) or (nw and x and y and z and '0');
    ib5 <= (nw and nx and ny and nz and b5) or (nw and nx and ny and z and not b5) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b5) or (nw and x and y and z and '0');
    ib6 <= (nw and nx and ny and nz and b6) or (nw and nx and ny and z and not b6) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b6) or (nw and x and y and z and '0');
    ib7 <= (nw and nx and ny and nz and b7) or (nw and nx and ny and z and not b7) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b7) or (nw and x and y and z and '0');
    ib8 <= (nw and nx and ny and nz and b8) or (nw and nx and ny and z and not b8) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b8) or (nw and x and y and z and '0');
    ib9 <= (nw and nx and ny and nz and b9) or (nw and nx and ny and z and not b9) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b9) or (nw and x and y and z and '0');
    ib10 <= (nw and nx and ny and nz and b10) or (nw and nx and ny and z and not b10) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b10) or (nw and x and y and z and '0');
    ib11 <= (nw and nx and ny and nz and b11) or (nw and nx and ny and z and not b11) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b11) or (nw and x and y and z and '0');
    ib12 <= (nw and nx and ny and nz and b12) or (nw and nx and ny and z and not b12) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b12) or (nw and x and y and z and '0');
    ib13 <= (nw and nx and ny and nz and b13) or (nw and nx and ny and z and not b13) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b13) or (nw and x and y and z and '0');
    ib14 <= (nw and nx and ny and nz and b14) or (nw and nx and ny and z and not b14) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b14) or (nw and x and y and z and '0');
    ib15 <= (nw and nx and ny and nz and b15) or (nw and nx and ny and z and not b15) or (nw and nx and y and nz and '0') or (nw and nx and y and z and '0') or (nw and x and ny and nz and '0') or (nw and x and ny and z and '0') or (nw and x and y and nz and not b15) or (nw and x and y and z and '0');
    
    cin <= (nw and nx and ny and z) or (nw and x and y and nz); --SUB(0001) e CMP(0110)

end architecture;