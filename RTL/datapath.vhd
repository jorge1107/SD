entity datapath is
    port(
        clk, rst: in bit;
        pc_ld, pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: in bit;
        alu_x, alu_y, alu_z: in bit;
        wb_sel1, wb_sel0: in bit; 
        
        -- Memória de instrução desmembrada (16 bits)
        instr_in15, instr_in14, instr_in13, instr_in12, instr_in11, instr_in10, instr_in9, instr_in8,
        instr_in7, instr_in6, instr_in5, instr_in4, instr_in3, instr_in2, instr_in1, instr_in0: in bit;
        
        -- Dados de entrada desmembrados (16 bits)
        data_in15, data_in14, data_in13, data_in12, data_in11, data_in10, data_in9, data_in8,
        data_in7, data_in6, data_in5, data_in4, data_in3, data_in2, data_in1, data_in0: in bit;
        
        -- Saídas de Endereço PC (8 bits)
        pc_out7, pc_out6, pc_out5, pc_out4, pc_out3, pc_out2, pc_out1, pc_out0: out bit;
        
        -- Saídas de instrução (16 bits)
        instr_out15, instr_out14, instr_out13, instr_out12, instr_out11, instr_out10, instr_out9, instr_out8,
        instr_out7, instr_out6, instr_out5, instr_out4, instr_out3, instr_out2, instr_out1, instr_out0: out bit;
        
        -- Saídas de endereço de memória (8 bits)
        addr_out7, addr_out6, addr_out5, addr_out4, addr_out3, addr_out2, addr_out1, addr_out0: out bit;
        
        -- Saídas de dados de memória (16 bits)
        data_out15, data_out14, data_out13, data_out12, data_out11, data_out10, data_out9, data_out8,
        data_out7, data_out6, data_out5, data_out4, data_out3, data_out2, data_out1, data_out0: out bit
    );
end;

architecture structural of datapath is
    signal ir15, ir14, ir13, ir12, ir11, ir10, ir9, ir8, ir7, ir6, ir5, ir4, ir3, ir2, ir1, ir0: bit;
    signal rf_rd3, rf_rd2, rf_rd1, rf_rd0: bit;
    signal rf_ra3, rf_ra2, rf_ra1, rf_ra0: bit;
    signal rf_rb3, rf_rb2, rf_rb1, rf_rb0: bit;
    
    signal rf_rdata_a15, rf_rdata_a14, rf_rdata_a13, rf_rdata_a12, rf_rdata_a11, rf_rdata_a10, rf_rdata_a9, rf_rdata_a8,
           rf_rdata_a7, rf_rdata_a6, rf_rdata_a5, rf_rdata_a4, rf_rdata_a3, rf_rdata_a2, rf_rdata_a1, rf_rdata_a0: bit;
           
    signal rf_rdata_b15, rf_rdata_b14, rf_rdata_b13, rf_rdata_b12, rf_rdata_b11, rf_rdata_b10, rf_rdata_b9, rf_rdata_b8,
           rf_rdata_b7, rf_rdata_b6, rf_rdata_b5, rf_rdata_b4, rf_rdata_b3, rf_rdata_b2, rf_rdata_b1, rf_rdata_b0: bit;

    signal alu_s15, alu_s14, alu_s13, alu_s12, alu_s11, alu_s10, alu_s9, alu_s8,
           alu_s7, alu_s6, alu_s5, alu_s4, alu_s3, alu_s2, alu_s1, alu_s0: bit;
           
    signal cmp_gt, cmp_eq, cmp_lt: bit;
    
    component Reg16Bits is 
        port(
            clk, rst, ld: in bit;
            d15, d14, d13, d12, d11, d10, d9, d8, d7, d6, d5, d4, d3, d2, d1, d0: in bit;
            q15, q14, q13, q12, q11, q10, q9, q8, q7, q6, q5, q4, q3, q2, q1, q0: buffer bit
        ); 
    end component;
    
    component alu16 is 
        port(
            a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
            b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
            x, y, z: in bit;
            s15, s14, s13, s12, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, s1, s0: out bit
        ); 
    end component;
    
    component Comparador16Bits is 
        port(
            a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0: in bit;
            b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0: in bit;
            AgtB, AeqB, AltB: out bit
        ); 
    end component;
begin
    u_ir: Reg16Bits port map(
        clk=>clk, rst=>rst, ld=>ir_ld, 
        d15=>instr_in15, d14=>instr_in14, d13=>instr_in13, d12=>instr_in12, d11=>instr_in11, d10=>instr_in10, d9=>instr_in9, d8=>instr_in8,
        d7=>instr_in7, d6=>instr_in6, d5=>instr_in5, d4=>instr_in4, d3=>instr_in3, d2=>instr_in2, d1=>instr_in1, d0=>instr_in0,
        q15=>ir15, q14=>ir14, q13=>ir13, q12=>ir12, q11=>ir11, q10=>ir10, q9=>ir9, q8=>ir8,
        q7=>ir7, q6=>ir6, q5=>ir5, q4=>ir4, q3=>ir3, q2=>ir2, q1=>ir1, q0=>ir0
    );

    rf_rd3 <= ir11; rf_rd2 <= ir10; rf_rd1 <= ir9; rf_rd0 <= ir8;
    rf_ra3 <= ir7;  rf_ra2 <= ir6;  rf_ra1 <= ir5; rf_ra0 <= ir4;
    rf_rb3 <= ir3;  rf_rb2 <= ir2;  rf_rb1 <= ir1; rf_rb0 <= ir0;
    
    u_alu: alu16 port map(
        a15=>rf_rdata_a15, a14=>rf_rdata_a14, a13=>rf_rdata_a13, a12=>rf_rdata_a12, a11=>rf_rdata_a11, a10=>rf_rdata_a10, a9=>rf_rdata_a9, a8=>rf_rdata_a8,
        a7=>rf_rdata_a7, a6=>rf_rdata_a6, a5=>rf_rdata_a5, a4=>rf_rdata_a4, a3=>rf_rdata_a3, a2=>rf_rdata_a2, a1=>rf_rdata_a1, a0=>rf_rdata_a0,
        b15=>rf_rdata_b15, b14=>rf_rdata_b14, b13=>rf_rdata_b13, b12=>rf_rdata_b12, b11=>rf_rdata_b11, b10=>rf_rdata_b10, b9=>rf_rdata_b9, b8=>rf_rdata_b8,
        b7=>rf_rdata_b7, b6=>rf_rdata_b6, b5=>rf_rdata_b5, b4=>rf_rdata_b4, b3=>rf_rdata_b3, b2=>rf_rdata_b2, b1=>rf_rdata_b1, b0=>rf_rdata_b0,
        x=>alu_x, y=>alu_y, z=>alu_z,
        s15=>alu_s15, s14=>alu_s14, s13=>alu_s13, s12=>alu_s12, s11=>alu_s11, s10=>alu_s10, s9=>alu_s9, s8=>alu_s8,
        s7=>alu_s7, s6=>alu_s6, s5=>alu_s5, s4=>alu_s4, s3=>alu_s3, s2=>alu_s2, s1=>alu_s1, s0=>alu_s0
    );

    u_cmp: Comparador16Bits port map(
        a15=>rf_rdata_a15, a14=>rf_rdata_a14, a13=>rf_rdata_a13, a12=>rf_rdata_a12, a11=>rf_rdata_a11, a10=>rf_rdata_a10, a9=>rf_rdata_a9, a8=>rf_rdata_a8,
        a7=>rf_rdata_a7, a6=>rf_rdata_a6, a5=>rf_rdata_a5, a4=>rf_rdata_a4, a3=>rf_rdata_a3, a2=>rf_rdata_a2, a1=>rf_rdata_a1, a0=>rf_rdata_a0,
        b15=>rf_rdata_b15, b14=>rf_rdata_b14, b13=>rf_rdata_b13, b12=>rf_rdata_b12, b11=>rf_rdata_b11, b10=>rf_rdata_b10, b9=>rf_rdata_b9, b8=>rf_rdata_b8,
        b7=>rf_rdata_b7, b6=>rf_rdata_b6, b5=>rf_rdata_b5, b4=>rf_rdata_b4, b3=>rf_rdata_b3, b2=>rf_rdata_b2, b1=>rf_rdata_b1, b0=>rf_rdata_b0,
        AgtB=>cmp_gt, AeqB=>cmp_eq, AltB=>cmp_lt
    );

    addr_out7 <= rf_rdata_a7; addr_out6 <= rf_rdata_a6; addr_out5 <= rf_rdata_a5; addr_out4 <= rf_rdata_a4;
    addr_out3 <= rf_rdata_a3; addr_out2 <= rf_rdata_a2; addr_out1 <= rf_rdata_a1; addr_out0 <= rf_rdata_a0;

    data_out15 <= rf_rdata_b15; data_out14 <= rf_rdata_b14; data_out13 <= rf_rdata_b13; data_out12 <= rf_rdata_b12;
    data_out11 <= rf_rdata_b11; data_out10 <= rf_rdata_b10; data_out9  <= rf_rdata_b9;  data_out8  <= rf_rdata_b8;
    data_out7  <= rf_rdata_b7;  data_out6  <= rf_rdata_b6;  data_out5  <= rf_rdata_b5;  data_out4  <= rf_rdata_b4;
    data_out3  <= rf_rdata_b3;  data_out2  <= rf_rdata_b2;  data_out1  <= rf_rdata_b1;  data_out0  <= rf_rdata_b0;
    
    instr_out15 <= ir15; instr_out14 <= ir14; instr_out13 <= ir13; instr_out12 <= ir12;
    instr_out11 <= ir11; instr_out10 <= ir10; instr_out9  <= ir9;  instr_out8  <= ir8;
    instr_out7  <= ir7;  instr_out6  <= ir6;  instr_out5  <= ir5;  instr_out4  <= ir4;
    instr_out3  <= ir3;  instr_out2  <= ir2;  instr_out1  <= ir1;  instr_out0  <= ir0;
end;