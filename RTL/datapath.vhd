library ieee;
use ieee.std_logic_1164.all;

entity datapath is
    port(
        clk, rst: in bit;
        pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: in bit;
        ula_w, ula_x, ula_y, ula_z: in bit;
        shl, shr: in bit;
        wb_sel1, wb_sel0: in bit;
        
        -- Instrução (16 bits)
        instr_in15, instr_in14, instr_in13, instr_in12, instr_in11, instr_in10, instr_in9, instr_in8, instr_in7, instr_in6, instr_in5, instr_in4, instr_in3, instr_in2, instr_in1, instr_in0: in bit;
        
        -- Dados de entrada da memória (16 bits)
        data_in15, data_in14, data_in13, data_in12, data_in11, data_in10, data_in9, data_in8, data_in7, data_in6, data_in5, data_in4, data_in3, data_in2, data_in1, data_in0: in bit;
        
        -- Saídas PC (8 bits)
        pc_out7, pc_out6, pc_out5, pc_out4, pc_out3, pc_out2, pc_out1, pc_out0: out bit;
        
        -- Instrução atual (16 bits)
        instr_out15, instr_out14, instr_out13, instr_out12, instr_out11, instr_out10, instr_out9, instr_out8, instr_out7, instr_out6, instr_out5, instr_out4, instr_out3, instr_out2, instr_out1, instr_out0: out bit;
        
        -- Endereço dados (8 bits)
        addr_out7, addr_out6, addr_out5, addr_out4, addr_out3, addr_out2, addr_out1, addr_out0: out bit;
        
        -- Dados de saída para memória (16 bits)
        data_out15, data_out14, data_out13, data_out12, data_out11, data_out10, data_out9, data_out8, data_out7, data_out6, data_out5, data_out4, data_out3, data_out2, data_out1, data_out0: out bit
    );
end;

architecture structural of datapath is
    -- Vetores internos para facilitar interconexão
    signal instr_in_vec, data_in_vec: bit_vector(15 downto 0);
    signal pc_vec, pc_next_vec: bit_vector(15 downto 0);
    signal ir_vec : bit_vector(15 downto 0);
    signal rf_rd_vec, rf_ra_vec, rf_rb_vec: bit_vector(3 downto 0);
    signal rf_ra_data, rf_rb_data, rf_wd_data: bit_vector(15 downto 0);
    signal ula_a_vec, ula_b_vec, ula_s_vec: bit_vector(15 downto 0);
    signal shifter_s_vec, ula_shifter_res: bit_vector(15 downto 0);
    signal cmp_res_vec : bit_vector(15 downto 0);
    signal imm4_vec, imm8_vec: bit_vector(15 downto 0);
    signal use_shifter, is_addi, cmp_gt, cmp_eq, cmp_lt: bit;
    
    component Reg16Bits is
        port(clk,rst,ld: in bit;
             d15,d14,d13,d12,d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0: in bit;
             q15,q14,q13,q12,q11,q10,q9,q8,q7,q6,q5,q4,q3,q2,q1,q0: buffer bit);
    end component;
    
    component RegisterFile is
        port(clk,rst,we: in bit;
             wa3,wa2,wa1,wa0: in bit;
             ra3,ra2,ra1,ra0: in bit;
             rb3,rb2,rb1,rb0: in bit;
             wd15,wd14,wd13,wd12,wd11,wd10,wd9,wd8,wd7,wd6,wd5,wd4,wd3,wd2,wd1,wd0: in bit;
             rd_a15,rd_a14,rd_a13,rd_a12,rd_a11,rd_a10,rd_a9,rd_a8,rd_a7,rd_a6,rd_a5,rd_a4,rd_a3,rd_a2,rd_a1,rd_a0: out bit;
             rd_b15,rd_b14,rd_b13,rd_b12,rd_b11,rd_b10,rd_b9,rd_b8,rd_b7,rd_b6,rd_b5,rd_b4,rd_b3,rd_b2,rd_b1,rd_b0: out bit);
    end component;
    
    component ULA is
        port(a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0: in bit;
             b15,b14,b13,b12,b11,b10,b9,b8,b7,b6,b5,b4,b3,b2,b1,b0: in bit;
             w,x,y,z: in bit;
             s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0: out bit;
             cout: out bit);
    end component;
    
    component Shifter16Bits is
        port(a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0: in bit;
             shl,shr: in bit;
             s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0: out bit);
    end component;
    
    component Comparador16Bits is
        port(a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0: in bit;
             b15,b14,b13,b12,b11,b10,b9,b8,b7,b6,b5,b4,b3,b2,b1,b0: in bit;
             AgtB,AeqB,AltB: out bit);
    end component;
    
    component Adder16Bit is
        port(A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0: in bit;
             B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0: in bit;
             Op: in bit;
             S15,S14,S13,S12,S11,S10,S9,S8,S7,S6,S5,S4,S3,S2,S1,S0: out bit;
             Cout: out bit);
    end component;
begin
    -- Conversão portas -> vetores
    instr_in_vec <= instr_in15 & instr_in14 & instr_in13 & instr_in12 & instr_in11 & instr_in10 & instr_in9 & instr_in8 & instr_in7 & instr_in6 & instr_in5 & instr_in4 & instr_in3 & instr_in2 & instr_in1 & instr_in0;
    data_in_vec <= data_in15 & data_in14 & data_in13 & data_in12 & data_in11 & data_in10 & data_in9 & data_in8 & data_in7 & data_in6 & data_in5 & data_in4 & data_in3 & data_in2 & data_in1 & data_in0;

    -- Decodificação de campos do IR
    rf_rd_vec <= ir_vec(11 downto 8);
    rf_ra_vec <= ir_vec(7  downto 4);
    rf_rb_vec <= ir_vec(3  downto 0);
    
    -- Imediatos
    imm4_vec <= x"000" & ir_vec(3 downto 0);  -- 4 bits zero-extended
    imm8_vec <= x"00"  & ir_vec(7 downto 0);  -- 8 bits zero-extended
    
    -- Detecção ADDI (opcode 1010)
    is_addi <= ir_vec(15) and not ir_vec(14) and ir_vec(13) and not ir_vec(12);

    -- PC (16 bits, usamos apenas 8 LSB)
    u_pc: Reg16Bits port map(clk=>clk, rst=>rst, ld=>pc_inc, d15=>pc_next_vec(15), d14=>pc_next_vec(14), d13=>pc_next_vec(13), d12=>pc_next_vec(12), d11=>pc_next_vec(11), d10=>pc_next_vec(10), d9=>pc_next_vec(9), d8=>pc_next_vec(8), d7=>pc_next_vec(7), d6=>pc_next_vec(6), d5=>pc_next_vec(5), d4=>pc_next_vec(4), d3=>pc_next_vec(3), d2=>pc_next_vec(2), d1=>pc_next_vec(1), d0=>pc_next_vec(0), q15=>pc_vec(15), q14=>pc_vec(14), q13=>pc_vec(13), q12=>pc_vec(12), q11=>pc_vec(11), q10=>pc_vec(10), q9=>pc_vec(9), q8=>pc_vec(8), q7=>pc_vec(7), q6=>pc_vec(6), q5=>pc_vec(5), q4=>pc_vec(4), q3=>pc_vec(3), q2=>pc_vec(2), q1=>pc_vec(1), q0=>pc_vec(0));
    
    -- Incrementador PC (PC + 1)
    u_pc_add: Adder16Bit port map(A15=>pc_vec(15), A14=>pc_vec(14), A13=>pc_vec(13), A12=>pc_vec(12), A11=>pc_vec(11), A10=>pc_vec(10), A9=>pc_vec(9), A8=>pc_vec(8), A7=>pc_vec(7), A6=>pc_vec(6), A5=>pc_vec(5), A4=>pc_vec(4), A3=>pc_vec(3), A2=>pc_vec(2), A1=>pc_vec(1), A0=>pc_vec(0), B15=>'0', B14=>'0', B13=>'0', B12=>'0', B11=>'0', B10=>'0', B9=>'0', B8=>'0', B7=>'0', B6=>'0', B5=>'0', B4=>'0', B3=>'0', B2=>'0', B1=>'0', B0=>'1', Op=>'0', S15=>pc_next_vec(15), S14=>pc_next_vec(14), S13=>pc_next_vec(13), S12=>pc_next_vec(12), S11=>pc_next_vec(11), S10=>pc_next_vec(10), S9=>pc_next_vec(9), S8=>pc_next_vec(8), S7=>pc_next_vec(7), S6=>pc_next_vec(6), S5=>pc_next_vec(5), S4=>pc_next_vec(4), S3=>pc_next_vec(3), S2=>pc_next_vec(2), S1=>pc_next_vec(1), S0=>pc_next_vec(0),Cout=>open);

    -- Instruction Register
    u_ir: Reg16Bits port map(clk=>clk, rst=>rst, ld=>ir_ld, d15=>instr_in_vec(15), d14=>instr_in_vec(14), d13=>instr_in_vec(13), d12=>instr_in_vec(12), d11=>instr_in_vec(11), d10=>instr_in_vec(10), d9=>instr_in_vec(9), d8=>instr_in_vec(8), d7=>instr_in_vec(7), d6=>instr_in_vec(6), d5=>instr_in_vec(5), d4=>instr_in_vec(4), d3=>instr_in_vec(3), d2=>instr_in_vec(2), d1=>instr_in_vec(1), d0=>instr_in_vec(0), q15=>ir_vec(15), q14=>ir_vec(14), q13=>ir_vec(13), q12=>ir_vec(12), q11=>ir_vec(11), q10=>ir_vec(10), q9=>ir_vec(9), q8=>ir_vec(8), q7=>ir_vec(7), q6=>ir_vec(6), q5=>ir_vec(5), q4=>ir_vec(4), q3=>ir_vec(3), q2=>ir_vec(2), q1=>ir_vec(1), q0=>ir_vec(0));

    -- Register File
    u_rf: RegisterFile port map(clk=>clk, rst=>rst, we=>rf_wr, wa3=>rf_rd_vec(3), wa2=>rf_rd_vec(2), wa1=>rf_rd_vec(1), wa0=>rf_rd_vec(0), ra3=>rf_ra_vec(3), ra2=>rf_ra_vec(2), ra1=>rf_ra_vec(1), ra0=>rf_ra_vec(0), rb3=>rf_rb_vec(3), rb2=>rf_rb_vec(2), rb1=>rf_rb_vec(1), rb0=>rf_rb_vec(0), wd15=>rf_wd_data(15), wd14=>rf_wd_data(14), wd13=>rf_wd_data(13), wd12=>rf_wd_data(12), wd11=>rf_wd_data(11), wd10=>rf_wd_data(10), wd9=>rf_wd_data(9), wd8=>rf_wd_data(8), wd7=>rf_wd_data(7), wd6=>rf_wd_data(6), wd5=>rf_wd_data(5), wd4=>rf_wd_data(4), wd3=>rf_wd_data(3), wd2=>rf_wd_data(2), wd1=>rf_wd_data(1), wd0=>rf_wd_data(0), rd_a15=>rf_ra_data(15), rd_a14=>rf_ra_data(14), rd_a13=>rf_ra_data(13), rd_a12=>rf_ra_data(12), rd_a11=>rf_ra_data(11), rd_a10=>rf_ra_data(10), rd_a9=>rf_ra_data(9), rd_a8=>rf_ra_data(8), rd_a7=>rf_ra_data(7), rd_a6=>rf_ra_data(6), rd_a5=>rf_ra_data(5), rd_a4=>rf_ra_data(4), rd_a3=>rf_ra_data(3), rd_a2=>rf_ra_data(2), rd_a1=>rf_ra_data(1), rd_a0=>rf_ra_data(0), rd_b15=>rf_rb_data(15), rd_b14=>rf_rb_data(14), rd_b13=>rf_rb_data(13), rd_b12=>rf_rb_data(12), rd_b11=>rf_rb_data(11), rd_b10=>rf_rb_data(10), rd_b9=>rf_rb_data(9), rd_b8=>rf_rb_data(8), rd_b7=>rf_rb_data(7), rd_b6=>rf_rb_data(6), rd_b5=>rf_rb_data(5), rd_b4=>rf_rb_data(4), rd_b3=>rf_rb_data(3), rd_b2=>rf_rb_data(2), rd_b1=>rf_rb_data(1), rd_b0=>rf_rb_data(0));

    -- MUX na entrada B da ULA: rf_rb_data quando normal, imm4 quando ADDI
    ula_b_vec(15) <= (rf_rb_data(15) and not is_addi) or (imm4_vec(15) and is_addi);
    ula_b_vec(14) <= (rf_rb_data(14) and not is_addi) or (imm4_vec(14) and is_addi);
    ula_b_vec(13) <= (rf_rb_data(13) and not is_addi) or (imm4_vec(13) and is_addi);
    ula_b_vec(12) <= (rf_rb_data(12) and not is_addi) or (imm4_vec(12) and is_addi);
    ula_b_vec(11) <= (rf_rb_data(11) and not is_addi) or (imm4_vec(11) and is_addi);
    ula_b_vec(10) <= (rf_rb_data(10) and not is_addi) or (imm4_vec(10) and is_addi);
    ula_b_vec(9) <= (rf_rb_data(9) and not is_addi) or (imm4_vec(9) and is_addi);
    ula_b_vec(8) <= (rf_rb_data(8) and not is_addi) or (imm4_vec(8) and is_addi);
    ula_b_vec(7) <= (rf_rb_data(7) and not is_addi) or (imm4_vec(7) and is_addi);
    ula_b_vec(6) <= (rf_rb_data(6) and not is_addi) or (imm4_vec(6) and is_addi);
    ula_b_vec(5) <= (rf_rb_data(5) and not is_addi) or (imm4_vec(5) and is_addi);
    ula_b_vec(4) <= (rf_rb_data(4) and not is_addi) or (imm4_vec(4) and is_addi);
    ula_b_vec(3) <= (rf_rb_data(3) and not is_addi) or (imm4_vec(3) and is_addi);
    ula_b_vec(2) <= (rf_rb_data(2) and not is_addi) or (imm4_vec(2) and is_addi);
    ula_b_vec(1) <= (rf_rb_data(1) and not is_addi) or (imm4_vec(1) and is_addi);
    ula_b_vec(0) <= (rf_rb_data(0) and not is_addi) or (imm4_vec(0) and is_addi);
    ula_a_vec <= rf_ra_data;

    -- ULA
    u_ula: ULA port map(a15=>ula_a_vec(15), a14=>ula_a_vec(14), a13=>ula_a_vec(13), a12=>ula_a_vec(12), a11=>ula_a_vec(11), a10=>ula_a_vec(10), a9=>ula_a_vec(9), a8=>ula_a_vec(8), a7=>ula_a_vec(7), a6=>ula_a_vec(6), a5=>ula_a_vec(5), a4=>ula_a_vec(4), a3=>ula_a_vec(3), a2=>ula_a_vec(2), a1=>ula_a_vec(1), a0=>ula_a_vec(0), b15=>ula_b_vec(15), b14=>ula_b_vec(14), b13=>ula_b_vec(13), b12=>ula_b_vec(12), b11=>ula_b_vec(11), b10=>ula_b_vec(10), b9=>ula_b_vec(9), b8=>ula_b_vec(8), b7=>ula_b_vec(7), b6=>ula_b_vec(6), b5=>ula_b_vec(5), b4=>ula_b_vec(4), b3=>ula_b_vec(3), b2=>ula_b_vec(2), b1=>ula_b_vec(1), b0=>ula_b_vec(0), w=>ula_w, x=>ula_x, y=>ula_y, z=>ula_z, s15=>ula_s_vec(15), s14=>ula_s_vec(14), s13=>ula_s_vec(13), s12=>ula_s_vec(12), s11=>ula_s_vec(11), s10=>ula_s_vec(10), s9=>ula_s_vec(9), s8=>ula_s_vec(8), s7=>ula_s_vec(7), s6=>ula_s_vec(6), s5=>ula_s_vec(5), s4=>ula_s_vec(4), s3=>ula_s_vec(3), s2=>ula_s_vec(2), s1=>ula_s_vec(1), s0=>ula_s_vec(0), cout=>open);

    -- Shifter
    u_shifter: Shifter16Bits port map(a15=>rf_ra_data(15), a14=>rf_ra_data(14), a13=>rf_ra_data(13), a12=>rf_ra_data(12), a11=>rf_ra_data(11), a10=>rf_ra_data(10), a9=>rf_ra_data(9), a8=>rf_ra_data(8), a7=>rf_ra_data(7), a6=>rf_ra_data(6), a5=>rf_ra_data(5), a4=>rf_ra_data(4), a3=>rf_ra_data(3), a2=>rf_ra_data(2), a1=>rf_ra_data(1), a0=>rf_ra_data(0), shl=>shl, shr=>shr, s15=>shifter_s_vec(15), s14=>shifter_s_vec(14), s13=>shifter_s_vec(13), s12=>shifter_s_vec(12), s11=>shifter_s_vec(11), s10=>shifter_s_vec(10), s9=>shifter_s_vec(9), s8=>shifter_s_vec(8), s7=>shifter_s_vec(7), s6=>shifter_s_vec(6), s5=>shifter_s_vec(5), s4=>shifter_s_vec(4), s3=>shifter_s_vec(3), s2=>shifter_s_vec(2), s1=>shifter_s_vec(1), s0=>shifter_s_vec(0));

    -- MUX ULA vs Shifter
    use_shifter <= shl or shr;
    
        ula_shifter_res(15) <= (ula_s_vec(15) and not use_shifter) or (shifter_s_vec(15) and use_shifter);
        ula_shifter_res(14) <= (ula_s_vec(14) and not use_shifter) or (shifter_s_vec(14) and use_shifter);
        ula_shifter_res(13) <= (ula_s_vec(13) and not use_shifter) or (shifter_s_vec(13) and use_shifter);
        ula_shifter_res(12) <= (ula_s_vec(12) and not use_shifter) or (shifter_s_vec(12) and use_shifter);
        ula_shifter_res(11) <= (ula_s_vec(11) and not use_shifter) or (shifter_s_vec(11) and use_shifter);
        ula_shifter_res(10) <= (ula_s_vec(10) and not use_shifter) or (shifter_s_vec(10) and use_shifter);
        ula_shifter_res(9) <= (ula_s_vec(9) and not use_shifter) or (shifter_s_vec(9) and use_shifter);
        ula_shifter_res(8) <= (ula_s_vec(8) and not use_shifter) or (shifter_s_vec(8) and use_shifter);
        ula_shifter_res(7) <= (ula_s_vec(7) and not use_shifter) or (shifter_s_vec(7) and use_shifter);
        ula_shifter_res(6) <= (ula_s_vec(6) and not use_shifter) or (shifter_s_vec(6) and use_shifter);
        ula_shifter_res(5) <= (ula_s_vec(5) and not use_shifter) or (shifter_s_vec(5) and use_shifter);
        ula_shifter_res(4) <= (ula_s_vec(4) and not use_shifter) or (shifter_s_vec(4) and use_shifter);
        ula_shifter_res(3) <= (ula_s_vec(3) and not use_shifter) or (shifter_s_vec(3) and use_shifter);
        ula_shifter_res(2) <= (ula_s_vec(2) and not use_shifter) or (shifter_s_vec(2) and use_shifter);
        ula_shifter_res(1) <= (ula_s_vec(1) and not use_shifter) or (shifter_s_vec(1) and use_shifter);
        ula_shifter_res(0) <= (ula_s_vec(0) and not use_shifter) or (shifter_s_vec(0) and use_shifter);

    -- Comparador
    u_cmp: Comparador16Bits port map(a15=>rf_ra_data(15), a14=>rf_ra_data(14), a13=>rf_ra_data(13), a12=>rf_ra_data(12), a11=>rf_ra_data(11), a10=>rf_ra_data(10), a9=>rf_ra_data(9), a8=>rf_ra_data(8), a7=>rf_ra_data(7), a6=>rf_ra_data(6), a5=>rf_ra_data(5), a4=>rf_ra_data(4), a3=>rf_ra_data(3), a2=>rf_ra_data(2), a1=>rf_ra_data(1), a0=>rf_ra_data(0), b15=>rf_rb_data(15), b14=>rf_rb_data(14), b13=>rf_rb_data(13), b12=>rf_rb_data(12), b11=>rf_rb_data(11), b10=>rf_rb_data(10), b9=>rf_rb_data(9), b8=>rf_rb_data(8), b7=>rf_rb_data(7), b6=>rf_rb_data(6), b5=>rf_rb_data(5), b4=>rf_rb_data(4), b3=>rf_rb_data(3), b2=>rf_rb_data(2), b1=>rf_rb_data(1), b0=>rf_rb_data(0), AgtB=>cmp_gt, AeqB=>cmp_eq, AltB=>cmp_lt);
    cmp_res_vec <= "0000000000000" & cmp_gt & cmp_eq & cmp_lt;

    -- Write-Back MUX 4x1 por bit (equações booleanas / portas lógicas)
    -- wb_sel1 wb_sel0
    --   0 0    = ULA/Shifter
    --   0 1    = data_in (MEM)
    --   1 0    = imm8 (LOADI)
    --   1 1    = cmp_res_vec (CMP)
    
        rf_wd_data(15) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(15)) or (not wb_sel1 and wb_sel0 and data_in_vec(15)) or (wb_sel1 and not wb_sel0 and imm8_vec(15)) or (wb_sel1 and wb_sel0 and cmp_res_vec(15));
        rf_wd_data(14) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(14)) or (not wb_sel1 and wb_sel0 and data_in_vec(14)) or (wb_sel1 and not wb_sel0 and imm8_vec(14)) or (wb_sel1 and wb_sel0 and cmp_res_vec(14));
        rf_wd_data(13) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(13)) or (not wb_sel1 and wb_sel0 and data_in_vec(13)) or (wb_sel1 and not wb_sel0 and imm8_vec(13)) or (wb_sel1 and wb_sel0 and cmp_res_vec(13));
        rf_wd_data(12) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(12)) or (not wb_sel1 and wb_sel0 and data_in_vec(12)) or (wb_sel1 and not wb_sel0 and imm8_vec(12)) or (wb_sel1 and wb_sel0 and cmp_res_vec(12));
        rf_wd_data(11) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(11)) or (not wb_sel1 and wb_sel0 and data_in_vec(11)) or (wb_sel1 and not wb_sel0 and imm8_vec(11)) or (wb_sel1 and wb_sel0 and cmp_res_vec(11));
        rf_wd_data(10) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(10)) or (not wb_sel1 and wb_sel0 and data_in_vec(10)) or (wb_sel1 and not wb_sel0 and imm8_vec(10)) or (wb_sel1 and wb_sel0 and cmp_res_vec(10));
        rf_wd_data(9) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(9)) or (not wb_sel1 and wb_sel0 and data_in_vec(9)) or (wb_sel1 and not wb_sel0 and imm8_vec(9)) or (wb_sel1 and wb_sel0 and cmp_res_vec(9));
        rf_wd_data(8) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(8)) or (not wb_sel1 and wb_sel0 and data_in_vec(8)) or (wb_sel1 and not wb_sel0 and imm8_vec(8)) or (wb_sel1 and wb_sel0 and cmp_res_vec(8));
        rf_wd_data(7) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(7)) or (not wb_sel1 and wb_sel0 and data_in_vec(7)) or (wb_sel1 and not wb_sel0 and imm8_vec(7)) or (wb_sel1 and wb_sel0 and cmp_res_vec(7));
        rf_wd_data(6) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(6)) or (not wb_sel1 and wb_sel0 and data_in_vec(6)) or (wb_sel1 and not wb_sel0 and imm8_vec(6)) or (wb_sel1 and wb_sel0 and cmp_res_vec(6));
        rf_wd_data(5) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(5)) or (not wb_sel1 and wb_sel0 and data_in_vec(5)) or (wb_sel1 and not wb_sel0 and imm8_vec(5)) or (wb_sel1 and wb_sel0 and cmp_res_vec(5));
        rf_wd_data(4) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(4)) or (not wb_sel1 and wb_sel0 and data_in_vec(4)) or (wb_sel1 and not wb_sel0 and imm8_vec(4)) or (wb_sel1 and wb_sel0 and cmp_res_vec(4));
        rf_wd_data(3) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(3)) or (not wb_sel1 and wb_sel0 and data_in_vec(3)) or (wb_sel1 and not wb_sel0 and imm8_vec(3)) or (wb_sel1 and wb_sel0 and cmp_res_vec(3));
        rf_wd_data(2) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(2)) or (not wb_sel1 and wb_sel0 and data_in_vec(2)) or (wb_sel1 and not wb_sel0 and imm8_vec(2)) or (wb_sel1 and wb_sel0 and cmp_res_vec(2));
        rf_wd_data(1) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(1)) or (not wb_sel1 and wb_sel0 and data_in_vec(1)) or (wb_sel1 and not wb_sel0 and imm8_vec(1)) or (wb_sel1 and wb_sel0 and cmp_res_vec(1));
        rf_wd_data(0) <= (not wb_sel1 and not wb_sel0 and ula_shifter_res(0)) or (not wb_sel1 and wb_sel0 and data_in_vec(0)) or (wb_sel1 and not wb_sel0 and imm8_vec(0)) or (wb_sel1 and wb_sel0 and cmp_res_vec(0));

    -- Saídas PC (8 bits)
    pc_out7 <= pc_vec(7); 
    pc_out6 <= pc_vec(6); 
    pc_out5 <= pc_vec(5); 
    pc_out4 <= pc_vec(4);
    pc_out3 <= pc_vec(3); 
    pc_out2 <= pc_vec(2); 
    pc_out1 <= pc_vec(1); 
    pc_out0 <= pc_vec(0);

    -- Saída instrução
    instr_out15 <= ir_vec(15);
    instr_out14 <= ir_vec(14);
    instr_out13 <= ir_vec(13);
    instr_out12 <= ir_vec(12);
    instr_out11 <= ir_vec(11);
    instr_out10 <= ir_vec(10);
    instr_out9  <= ir_vec(9);
    instr_out8  <= ir_vec(8);
    instr_out7  <= ir_vec(7);
    instr_out6  <= ir_vec(6);  
    instr_out5  <= ir_vec(5);
    instr_out4  <= ir_vec(4);
    instr_out3  <= ir_vec(3);  
    instr_out2  <= ir_vec(2);  
    instr_out1  <= ir_vec(1);  
    instr_out0  <= ir_vec(0);

    -- Endereço de dados (via reg A)
    addr_out7 <= rf_ra_data(7);
    addr_out6 <= rf_ra_data(6); 
    addr_out5 <= rf_ra_data(5); 
    addr_out4 <= rf_ra_data(4);
    addr_out3 <= rf_ra_data(3); 
    addr_out2 <= rf_ra_data(2); 
    addr_out1 <= rf_ra_data(1); 
    addr_out0 <= rf_ra_data(0);

    -- Dados de saída (via reg B)
    data_out15 <= rf_rb_data(15); 
    data_out14 <= rf_rb_data(14); 
    data_out13 <= rf_rb_data(13); 
    data_out12 <= rf_rb_data(12);
    data_out11 <= rf_rb_data(11); 
    data_out10 <= rf_rb_data(10); 
    data_out9  <= rf_rb_data(9);  
    data_out8  <= rf_rb_data(8);
    data_out7  <= rf_rb_data(7);  
    data_out6  <= rf_rb_data(6);  
    data_out5  <= rf_rb_data(5);  
    data_out4  <= rf_rb_data(4);
    data_out3  <= rf_rb_data(3);  
    data_out2  <= rf_rb_data(2);  
    data_out1  <= rf_rb_data(1);  
    data_out0  <= rf_rb_data(0);
end;