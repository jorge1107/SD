entity ctrl_unit is
    port(clk, rst: in bit;
         opcode: in bit_vector(3 downto 0);
         pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: out bit;
         alu_x, alu_y, alu_z: out bit;
         wb_sel: out bit_vector(1 downto 0));
end;

architecture structural of ctrl_unit is
    signal s,n: bit_vector(2 downto 0); -- estado atual / próximo
    signal s2,s1,s0,n2,n1,n0: bit;
    signal op3,op2,op1,op0: bit;
    signal is_alu, is_load, is_store, is_immed: bit;
    component ffd is port(d,clk,rst: in bit; q: out bit); end component;
    component porta_and2 is port(a,b: in bit; s: out bit); end component;
    component porta_or2 is port(a,b: in bit; s: out bit); end component;
    component porta_not is port(a: in bit; s: out bit); end component;
begin
    -- Registrador de Estado (3 FFDs)
    u_s0: ffd port map(d=>n0, clk=>clk, rst=>rst, q=>s0);
    u_s1: ffd port map(d=>n1, clk=>clk, rst=>rst, q=>s1);
    u_s2: ffd port map(d=>n2, clk=>clk, rst=>rst, q=>s2);
    s <= s2 & s1 & s0;
    
    -- Decodificação do opcode (fios)
    op3<=opcode(3); op2<=opcode(2); op1<=opcode(1); op0<=opcode(0);
    
    -- Sinais de condição
    is_alu   <= not op3; -- opcodes 0000~0111
    is_load  <= op3 and not op2 and not op1 and not op0; -- 1000
    is_store <= op3 and not op2 and not op1 and op0;     -- 1001
    is_immed <= op3 and not op2 and op1;                 -- 1010~1011
    
    -- Lógica Combinacional para próximo estado (equações acima)
    -- n2 = s1·s0 + s1·s0'·is_load
    -- n1 = s2'·s1'·s0 + s2'·s1·s0'·(not is_store)
    -- n0 = s2'·s1'·s0' + s2'·s1·s0'·(not is_load)
    
    -- (Implementação via portas omitida por brevidade, mas segue o padrão do Lab 3)
    
    -- Sinais de controle (equações booleanas)
    pc_inc  <= not s2 and not s1 and not s0; -- S_FETCH
    ir_ld   <= not s2 and not s1 and not s0; -- S_FETCH
    rf_wr   <= s2 and not s1 and not s0;     -- S_WRITEBACK
    mem_rd  <= not s2 and s1 and s0 and is_load;   -- S_EXEC_MEM e LOAD
    mem_wr  <= not s2 and s1 and s0 and is_store;  -- S_EXEC_MEM e STORE
    alu_x   <= op3; alu_y <= op2; alu_z <= op1; -- mapeamento direto para ALU
    wb_sel  <= "00" when (s2='1' and is_alu='1') else
               "01" when (s2='1' and is_load='1') else
               "10" when (s2='1' and is_immed='1') else
               "11"; -- CMP
end;