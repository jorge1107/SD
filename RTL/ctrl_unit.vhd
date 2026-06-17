entity ctrl_unit is
    port(
        clk, rst: in bit;
        opcode3, opcode2, opcode1, opcode0: in bit;
        pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: out bit;
        alu_x, alu_y, alu_z: out bit;
        wb_sel1, wb_sel0: out bit
    );
end;

architecture structural of ctrl_unit is
    signal s2, s1, s0, n2, n1, n0: bit;
    signal op3, op2, op1, op0: bit;
    signal is_alu, is_load, is_store, is_immed: bit;
    component FlipFlopD is port(d, clk, rst: in bit; q: out bit); end component;
begin
    u_s0: FlipFlopD port map(d=>n0, clk=>clk, rst=>rst, q=>s0);
    u_s1: FlipFlopD port map(d=>n1, clk=>clk, rst=>rst, q=>s1);
    u_s2: FlipFlopD port map(d=>n2, clk=>clk, rst=>rst, q=>s2);
    
    op3 <= opcode3; op2 <= opcode2; op1 <= opcode1; op0 <= opcode0;
    
    is_alu   <= not op3;
    is_load  <= op3 and not op2 and not op1 and not op0;
    is_store <= op3 and not op2 and not op1 and op0;
    is_immed <= op3 and not op2 and op1;
    
    pc_inc  <= not s2 and not s1 and not s0;
    ir_ld   <= not s2 and not s1 and not s0;
    rf_wr   <= s2 and not s1 and not s0;
    mem_rd  <= not s2 and s1 and s0 and is_load;
    mem_wr  <= not s2 and s1 and s0 and is_store;
    alu_x   <= op3; alu_y <= op2; alu_z <= op1;
    
    wb_sel1 <= '0' when (s2='1' and is_alu='1') else
               '0' when (s2='1' and is_load='1') else
               '1' when (s2='1' and is_immed='1') else
               '1';
               
    wb_sel0 <= '0' when (s2='1' and is_alu='1') else
               '1' when (s2='1' and is_load='1') else
               '0' when (s2='1' and is_immed='1') else
               '1';
end;