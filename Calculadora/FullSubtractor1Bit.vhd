library ieee;
use ieee.std_logic_1164.all;

entity FullSubtractor1Bit is
    port(
        in1, in2, Win : in bit;
        S, Wout : out bit
    );
end FullSubtractor1Bit;

architecture behav of FullSubtractor1Bit is
    begin
        s <= in1 xor in2 xor Win;
        Wout <= (not in1 and in2) or (not in1 and Win) or (in2 and Win);
end architecture behav;