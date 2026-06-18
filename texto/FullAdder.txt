library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
    port (
        A : in bit;
        B : in bit;
        Cin : in bit;
        Sum : out bit;
        Cout : out bit
    );
end entity;

architecture behav of FullAdder is

begin
    sum <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end architecture;