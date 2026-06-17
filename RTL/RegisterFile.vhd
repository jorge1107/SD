library ieee;
use ieee.std_logic_1164.all;

entity RegisterFile is
    port(
        clk, rst, we: in bit;
        wa3,wa2,wa1,wa0: in bit;
        ra3,ra2,ra1,ra0: in bit;
        rb3,rb2,rb1,rb0: in bit;
        wd15,wd14,wd13,wd12,wd11,wd10,wd9,wd8,wd7,wd6,wd5,wd4,wd3,wd2,wd1,wd0: in bit;
        rd_a15,rd_a14,rd_a13,rd_a12,rd_a11,rd_a10,rd_a9,rd_a8,rd_a7,rd_a6,rd_a5,rd_a4,rd_a3,rd_a2,rd_a1,rd_a0: out bit;
        rd_b15,rd_b14,rd_b13,rd_b12,rd_b11,rd_b10,rd_b9,rd_b8,rd_b7,rd_b6,rd_b5,rd_b4,rd_b3,rd_b2,rd_b1,rd_b0: out bit
    );
end;

architecture structural of RegisterFile is
    signal we_dec: bit_vector(15 downto 0);
    type reg_array is array (0 to 15) of bit_vector(15 downto 0);
    signal q_reg: reg_array;
    signal rd_a_vec, rd_b_vec: bit_vector(15 downto 0);
    
    component Reg16Bits is
        port(clk,rst,ld: in bit;
             d15,d14,d13,d12,d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0: in bit;
             q15,q14,q13,q12,q11,q10,q9,q8,q7,q6,q5,q4,q3,q2,q1,q0: buffer bit);
    end component;
    
    component Mux16x1 is
        port(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15: in bit;
             s3,s2,s1,s0: in bit; d: out bit);
    end component;
begin
    -- Decoder 4x16 (write enable)
    we_dec(0)  <= we and not wa3 and not wa2 and not wa1 and not wa0;
    we_dec(1)  <= we and not wa3 and not wa2 and not wa1 and wa0;
    we_dec(2)  <= we and not wa3 and not wa2 and wa1 and not wa0;
    we_dec(3)  <= we and not wa3 and not wa2 and wa1 and wa0;
    we_dec(4)  <= we and not wa3 and wa2 and not wa1 and not wa0;
    we_dec(5)  <= we and not wa3 and wa2 and not wa1 and wa0;
    we_dec(6)  <= we and not wa3 and wa2 and wa1 and not wa0;
    we_dec(7)  <= we and not wa3 and wa2 and wa1 and wa0;
    we_dec(8)  <= we and wa3 and not wa2 and not wa1 and not wa0;
    we_dec(9)  <= we and wa3 and not wa2 and not wa1 and wa0;
    we_dec(10) <= we and wa3 and not wa2 and wa1 and not wa0;
    we_dec(11) <= we and wa3 and not wa2 and wa1 and wa0;
    we_dec(12) <= we and wa3 and wa2 and not wa1 and not wa0;
    we_dec(13) <= we and wa3 and wa2 and not wa1 and wa0;
    we_dec(14) <= we and wa3 and wa2 and wa1 and not wa0;
    we_dec(15) <= we and wa3 and wa2 and wa1 and wa0;

    -- 16 registradores
    gen_regs: for i in 0 to 15 generate
        u_reg: Reg16Bits port map(
            clk=>clk, rst=>rst, ld=>we_dec(i),
            d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8,
            d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0,
            q15=>q_reg(i)(15), q14=>q_reg(i)(14), q13=>q_reg(i)(13), q12=>q_reg(i)(12),
            q11=>q_reg(i)(11), q10=>q_reg(i)(10), q9=>q_reg(i)(9), q8=>q_reg(i)(8),
            q7=>q_reg(i)(7), q6=>q_reg(i)(6), q5=>q_reg(i)(5), q4=>q_reg(i)(4),
            q3=>q_reg(i)(3), q2=>q_reg(i)(2), q1=>q_reg(i)(1), q0=>q_reg(i)(0)
        );
    end generate;

    -- Leitura Porta A: 16 Mux16x1 (1 por bit)
    gen_rda: for i in 0 to 15 generate
        u_mux_a: Mux16x1 port map(
            q_reg(0)(i), q_reg(1)(i), q_reg(2)(i), q_reg(3)(i),
            q_reg(4)(i), q_reg(5)(i), q_reg(6)(i), q_reg(7)(i),
            q_reg(8)(i), q_reg(9)(i), q_reg(10)(i), q_reg(11)(i),
            q_reg(12)(i), q_reg(13)(i), q_reg(14)(i), q_reg(15)(i),
            ra3, ra2, ra1, ra0, rd_a_vec(i)
        );
    end generate;

    -- Leitura Porta B: 16 Mux16x1 (1 por bit)
    gen_rdb: for i in 0 to 15 generate
        u_mux_b: Mux16x1 port map(
            q_reg(0)(i), q_reg(1)(i), q_reg(2)(i), q_reg(3)(i),
            q_reg(4)(i), q_reg(5)(i), q_reg(6)(i), q_reg(7)(i),
            q_reg(8)(i), q_reg(9)(i), q_reg(10)(i), q_reg(11)(i),
            q_reg(12)(i), q_reg(13)(i), q_reg(14)(i), q_reg(15)(i),
            rb3, rb2, rb1, rb0, rd_b_vec(i)
        );
    end generate;

    -- Mapeamento vetor -> portas bit-a-bit
    rd_a15 <= rd_a_vec(15); rd_a14 <= rd_a_vec(14); rd_a13 <= rd_a_vec(13); rd_a12 <= rd_a_vec(12);
    rd_a11 <= rd_a_vec(11); rd_a10 <= rd_a_vec(10); rd_a9  <= rd_a_vec(9);  rd_a8  <= rd_a_vec(8);
    rd_a7  <= rd_a_vec(7);  rd_a6  <= rd_a_vec(6);  rd_a5  <= rd_a_vec(5);  rd_a4  <= rd_a_vec(4);
    rd_a3  <= rd_a_vec(3);  rd_a2  <= rd_a_vec(2);  rd_a1  <= rd_a_vec(1);  rd_a0  <= rd_a_vec(0);

    rd_b15 <= rd_b_vec(15); rd_b14 <= rd_b_vec(14); rd_b13 <= rd_b_vec(13); rd_b12 <= rd_b_vec(12);
    rd_b11 <= rd_b_vec(11); rd_b10 <= rd_b_vec(10); rd_b9  <= rd_b_vec(9);  rd_b8  <= rd_b_vec(8);
    rd_b7  <= rd_b_vec(7);  rd_b6  <= rd_b_vec(6);  rd_b5  <= rd_b_vec(5);  rd_b4  <= rd_b_vec(4);
    rd_b3  <= rd_b_vec(3);  rd_b2  <= rd_b_vec(2);  rd_b1  <= rd_b_vec(1);  rd_b0  <= rd_b_vec(0);
end;