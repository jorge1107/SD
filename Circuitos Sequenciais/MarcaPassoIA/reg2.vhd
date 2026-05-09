library ieee;
use ieee.std_logic_1164.all;

-- COMPONENTE 1: REGISTADOR DE ESTADO
entity reg2 is
    port(clk, rst, i1, i0 : in std_logic;
         q1, q0 : out std_logic);
end reg2;

architecture behav of reg2 is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            q1 <= '0';
            q0 <= '0';
        elsif rising_edge(clk) then
            q1 <= i1;
            q0 <= i0;
        end if;
    end process;
end behav;

library ieee;
use ieee.std_logic_1164.all;

-- COMPONENTE 2: CIRCUITO COMBINACIONAL
entity comb_circ is
    port(s, z, q1, q0 : in std_logic;
         n1, n0, t, p : out std_logic);
end comb_circ;

architecture behav of comb_circ is
begin
    n1 <= (not q1) and q0 and (not s) and z;
    n0 <= ((not q1) and (not q0)) or ((not q1) and q0 and (not s) and (not z));
    t  <= (not q1) and (not q0);
    p  <= q1 and (not q0);
end behav;

library ieee;
use ieee.std_logic_1164.all;

-- ENTIDADE PRINCIPAL (MARCA-PASSO)
entity MarcaPasso_Logica is
    port(s, z, clk, rst : in std_logic;
         t, p : out std_logic);
end MarcaPasso_Logica;

architecture structural of MarcaPasso_Logica is
    signal n1, n0, q1, q0 : std_logic;
    
    component reg2 is
        port(clk, rst, i1, i0 : in std_logic; q1, q0 : out std_logic);
    end component;
    
    component comb_circ is
        port(s, z, q1, q0 : in std_logic; n1, n0, t, p : out std_logic);
    end component;
begin
    -- Mapeamento dos componentes
    U_REG: reg2 port map(clk => clk, rst => rst, i1 => n1, i0 => n0, q1 => q1, q0 => q0);
    U_COMB: comb_circ port map(s => s, z => z, q1 => q1, q0 => q0, n1 => n1, n0 => n0, t => t, p => p);
end structural;