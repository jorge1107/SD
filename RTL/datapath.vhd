entity datapath is
    port(clk, rst: in bit;
         -- Controle da FSM
         pc_ld, pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: in bit;
         alu_x, alu_y, alu_z: in bit;
         wb_sel: in bit_vector(1 downto 0); -- 00=ALU, 01=MEM, 10=IMM, 11=CMP
         -- Dados externos
         instr_in: in bit_vector(15 downto 0);
         data_in: in bit_vector(15 downto 0);
         -- Saídas
         pc_out: out bit_vector(7 downto 0);
         instr_out: out bit_vector(15 downto 0);
         addr_out: out bit_vector(7 downto 0);
         data_out: out bit_vector(15 downto 0));
end;

architecture structural of datapath is
    signal pc_reg, pc_next: bit_vector(7 downto 0);
    signal ir_reg: bit_vector(15 downto 0);
    signal rf_ra, rf_rb, rf_rd: bit_vector(3 downto 0);
    signal rf_wdata, rf_rdata_a, rf_rdata_b: bit_vector(15 downto 0);
    signal alu_a, alu_b, alu_s: bit_vector(15 downto 0);
    signal shifter_s: bit_vector(15 downto 0);
    signal cmp_gt, cmp_eq, cmp_lt: bit;
    signal cmp_result: bit_vector(15 downto 0);
    signal imm4, imm8: bit_vector(15 downto 0);
    signal zero16: bit_vector(15 downto 0);
    
    component reg16 is port(clk,rst,ld: in bit; d: in bit_vector(15 downto 0); q: out bit_vector(15 downto 0)); end component;
    -- ... (demais componentes declarados)
begin
    -- PC (8 bits, com incremento via adder8 - não mostrado por brevidade)
    -- IR
    u_ir: reg16 port map(clk=>clk, rst=>rst, ld=>ir_ld, d=>instr_in, q=>ir_reg);
    
    -- Decodificação de campos (fios, sem lógica extra)
    rf_rd <= ir_reg(11 downto 8);
    rf_ra <= ir_reg(7 downto 4);
    rf_rb <= ir_reg(3 downto 0);
    
    -- Register File (16 regs de 16 bits) - modelo simplificado
    -- Leitura de A e B é combinacional; escrita em Rd ocorre em borda de subida quando rf_wr=1
    -- (implementação via 16 regs + decoder 4x16 + muxes 16x1, conforme Ch04)
    
    -- ALU
    u_alu: alu16 port map(a=>rf_rdata_a, b=>rf_rdata_b, x=>alu_x, y=>alu_y, z=>alu_z, s=>alu_s);
    
    -- Comparador (para CMP)
    u_cmp: cmp16 port map(a=>rf_rdata_a, b=>rf_rdata_b, AgtB=>cmp_gt, AeqB=>cmp_eq, AltB=>cmp_lt);
    cmp_result <= "0000000000000" & cmp_gt & cmp_eq & cmp_lt;
    
    -- MUX Write-Back (4×1 de 16 bits) via portas lógicas para selecionar:
    -- wb_sel=00: ALU, 01: Data Memory, 10: Imediato, 11: CMP
    -- Implementado por equações booleanas bit a bit (soma de produtos)
    
    -- Memória de Dados
    addr_out <= rf_rdata_a(7 downto 0); -- endereço via reg A
    data_out <= rf_rdata_b; -- dado via reg B
end;