library ieee;
use ieee.std_logic_1164.all;

entity Reg16Bits is
    port(
		clk, rst, ld: in bit;
		d: in bit_vector(15 downto 0);
      q: out bit_vector(15 downto 0));
end;

architecture behav of Reg16Bits is
    signal mux_out: bit_vector(15 downto 0);
    component Mux2x1 is port(i0,i1,s0: in bit; d: out bit); end component;
    component FlipFlopD is port(d,clk,rst: in bit; q: out bit); end component;
begin
    gen_reg: for i in 0 to 15 generate
        ux: mux2x1_1bit port map(i0=>q(i), i1=>d(i), s0=>ld, d=>mux_out(i));
        uf: ffd port map(d=>mux_out(i), clk=>clk, rst=>rst, q=>q(i));
    end generate;
end architecture;