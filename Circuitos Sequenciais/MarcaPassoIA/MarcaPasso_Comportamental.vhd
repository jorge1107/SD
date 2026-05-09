library ieee;
use ieee.std_logic_1164.all;

entity MarcaPasso_Comportamental is
    port(
            s, z, clk, rst : in std_logic;
            t, p : out std_logic
        );
end MarcaPasso_Comportamental;

architecture behavior of MarcaPasso_Comportamental is
    -- Definição dos Estados
    type statetype is (ResetTem, Espera, Dispara);
    signal currentstate, nextstate: statetype;
begin
    -- PROCESSO 1: Registador de Estados Sequencial
    process(clk, rst)
    begin
        if rst = '1' then
            currentstate <= ResetTem;
        elsif rising_edge(clk) then
            currentstate <= nextstate;
        end if;
    end process;

    -- PROCESSO 2: Lógica Combinacional das Transições e Saídas
    process(currentstate, s, z)
    begin
        -- Valores por defeito para prevenir a inferência de Latches
        t <= '0';
        p <= '0';
        
        case currentstate is
            when ResetTem =>
                t <= '1';
                p <= '0';
                nextstate <= Espera;
                
            when Espera =>
                if s = '1' then
                    nextstate <= ResetTem;
                elsif s = '0' and z = '1' then
                    nextstate <= Dispara;
                else
                    nextstate <= Espera;
                end if;
                
            when Dispara =>
                t <= '0';
                p <= '1';
                nextstate <= ResetTem;
                
            when others =>
                nextstate <= ResetTem;
        end case;
    end process;
end behavior;