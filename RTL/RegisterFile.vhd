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
    u_reg_0: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(0), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(0)(15), q14=>q_reg(0)(14), q13=>q_reg(0)(13), q12=>q_reg(0)(12), q11=>q_reg(0)(11), q10=>q_reg(0)(10), q9=>q_reg(0)(9), q8=>q_reg(0)(8), q7=>q_reg(0)(7), q6=>q_reg(0)(6), q5=>q_reg(0)(5), q4=>q_reg(0)(4), q3=>q_reg(0)(3), q2=>q_reg(0)(2), q1=>q_reg(0)(1), q0=>q_reg(0)(0));
    u_reg_1: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(1), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(1)(15), q14=>q_reg(1)(14), q13=>q_reg(1)(13), q12=>q_reg(1)(12), q11=>q_reg(1)(11), q10=>q_reg(1)(10), q9=>q_reg(1)(9), q8=>q_reg(1)(8), q7=>q_reg(1)(7), q6=>q_reg(1)(6), q5=>q_reg(1)(5), q4=>q_reg(1)(4), q3=>q_reg(1)(3), q2=>q_reg(1)(2), q1=>q_reg(1)(1), q0=>q_reg(1)(0));
    u_reg_2: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(2), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(2)(15), q14=>q_reg(2)(14), q13=>q_reg(2)(13), q12=>q_reg(2)(12), q11=>q_reg(2)(11), q10=>q_reg(2)(10), q9=>q_reg(2)(9), q8=>q_reg(2)(8), q7=>q_reg(2)(7), q6=>q_reg(2)(6), q5=>q_reg(2)(5), q4=>q_reg(2)(4), q3=>q_reg(2)(3), q2=>q_reg(2)(2), q1=>q_reg(2)(1), q0=>q_reg(2)(0));
    u_reg_3: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(3), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(3)(15), q14=>q_reg(3)(14), q13=>q_reg(3)(13), q12=>q_reg(3)(12), q11=>q_reg(3)(11), q10=>q_reg(3)(10), q9=>q_reg(3)(9), q8=>q_reg(3)(8), q7=>q_reg(3)(7), q6=>q_reg(3)(6), q5=>q_reg(3)(5), q4=>q_reg(3)(4), q3=>q_reg(3)(3), q2=>q_reg(3)(2), q1=>q_reg(3)(1), q0=>q_reg(3)(0));
    u_reg_4: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(4), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(4)(15), q14=>q_reg(4)(14), q13=>q_reg(4)(13), q12=>q_reg(4)(12), q11=>q_reg(4)(11), q10=>q_reg(4)(10), q9=>q_reg(4)(9), q8=>q_reg(4)(8), q7=>q_reg(4)(7), q6=>q_reg(4)(6), q5=>q_reg(4)(5), q4=>q_reg(4)(4), q3=>q_reg(4)(3), q2=>q_reg(4)(2), q1=>q_reg(4)(1), q0=>q_reg(4)(0));
    u_reg_5: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(5), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(5)(15), q14=>q_reg(5)(14), q13=>q_reg(5)(13), q12=>q_reg(5)(12), q11=>q_reg(5)(11), q10=>q_reg(5)(10), q9=>q_reg(5)(9), q8=>q_reg(5)(8), q7=>q_reg(5)(7), q6=>q_reg(5)(6), q5=>q_reg(5)(5), q4=>q_reg(5)(4), q3=>q_reg(5)(3), q2=>q_reg(5)(2), q1=>q_reg(5)(1), q0=>q_reg(5)(0));
    u_reg_6: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(6), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(6)(15), q14=>q_reg(6)(14), q13=>q_reg(6)(13), q12=>q_reg(6)(12), q11=>q_reg(6)(11), q10=>q_reg(6)(10), q9=>q_reg(6)(9), q8=>q_reg(6)(8), q7=>q_reg(6)(7), q6=>q_reg(6)(6), q5=>q_reg(6)(5), q4=>q_reg(6)(4), q3=>q_reg(6)(3), q2=>q_reg(6)(2), q1=>q_reg(6)(1), q0=>q_reg(6)(0));
    u_reg_7: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(7), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(7)(15), q14=>q_reg(7)(14), q13=>q_reg(7)(13), q12=>q_reg(7)(12), q11=>q_reg(7)(11), q10=>q_reg(7)(10), q9=>q_reg(7)(9), q8=>q_reg(7)(8), q7=>q_reg(7)(7), q6=>q_reg(7)(6), q5=>q_reg(7)(5), q4=>q_reg(7)(4), q3=>q_reg(7)(3), q2=>q_reg(7)(2), q1=>q_reg(7)(1), q0=>q_reg(7)(0));
    u_reg_8: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(8), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(8)(15), q14=>q_reg(8)(14), q13=>q_reg(8)(13), q12=>q_reg(8)(12), q11=>q_reg(8)(11), q10=>q_reg(8)(10), q9=>q_reg(8)(9), q8=>q_reg(8)(8), q7=>q_reg(8)(7), q6=>q_reg(8)(6), q5=>q_reg(8)(5), q4=>q_reg(8)(4), q3=>q_reg(8)(3), q2=>q_reg(8)(2), q1=>q_reg(8)(1), q0=>q_reg(8)(0));
    u_reg_9: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(9), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(9)(15), q14=>q_reg(9)(14), q13=>q_reg(9)(13), q12=>q_reg(9)(12), q11=>q_reg(9)(11), q10=>q_reg(9)(10), q9=>q_reg(9)(9), q8=>q_reg(9)(8), q7=>q_reg(9)(7), q6=>q_reg(9)(6), q5=>q_reg(9)(5), q4=>q_reg(9)(4), q3=>q_reg(9)(3), q2=>q_reg(9)(2), q1=>q_reg(9)(1), q0=>q_reg(9)(0));
    u_reg_10: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(10), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(10)(15), q14=>q_reg(10)(14), q13=>q_reg(10)(13), q12=>q_reg(10)(12), q11=>q_reg(10)(11), q10=>q_reg(10)(10), q9=>q_reg(10)(9), q8=>q_reg(10)(8), q7=>q_reg(10)(7), q6=>q_reg(10)(6), q5=>q_reg(10)(5), q4=>q_reg(10)(4), q3=>q_reg(10)(3), q2=>q_reg(10)(2), q1=>q_reg(10)(1), q0=>q_reg(10)(0));
    u_reg_11: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(11), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(11)(15), q14=>q_reg(11)(14), q13=>q_reg(11)(13), q12=>q_reg(11)(12), q11=>q_reg(11)(11), q10=>q_reg(11)(10), q9=>q_reg(11)(9), q8=>q_reg(11)(8), q7=>q_reg(11)(7), q6=>q_reg(11)(6), q5=>q_reg(11)(5), q4=>q_reg(11)(4), q3=>q_reg(11)(3), q2=>q_reg(11)(2), q1=>q_reg(11)(1), q0=>q_reg(11)(0));
    u_reg_12: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(12), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(12)(15), q14=>q_reg(12)(14), q13=>q_reg(12)(13), q12=>q_reg(12)(12), q11=>q_reg(12)(11), q10=>q_reg(12)(10), q9=>q_reg(12)(9), q8=>q_reg(12)(8), q7=>q_reg(12)(7), q6=>q_reg(12)(6), q5=>q_reg(12)(5), q4=>q_reg(12)(4), q3=>q_reg(12)(3), q2=>q_reg(12)(2), q1=>q_reg(12)(1), q0=>q_reg(12)(0));
    u_reg_13: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(13), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(13)(15), q14=>q_reg(13)(14), q13=>q_reg(13)(13), q12=>q_reg(13)(12), q11=>q_reg(13)(11), q10=>q_reg(13)(10), q9=>q_reg(13)(9), q8=>q_reg(13)(8), q7=>q_reg(13)(7), q6=>q_reg(13)(6), q5=>q_reg(13)(5), q4=>q_reg(13)(4), q3=>q_reg(13)(3), q2=>q_reg(13)(2), q1=>q_reg(13)(1), q0=>q_reg(13)(0));
    u_reg_14: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(14), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(14)(15), q14=>q_reg(14)(14), q13=>q_reg(14)(13), q12=>q_reg(14)(12), q11=>q_reg(14)(11), q10=>q_reg(14)(10), q9=>q_reg(14)(9), q8=>q_reg(14)(8), q7=>q_reg(14)(7), q6=>q_reg(14)(6), q5=>q_reg(14)(5), q4=>q_reg(14)(4), q3=>q_reg(14)(3), q2=>q_reg(14)(2), q1=>q_reg(14)(1), q0=>q_reg(14)(0));
    u_reg_15: Reg16Bits port map(clk=>clk, rst=>rst, ld=>we_dec(15), d15=>wd15, d14=>wd14, d13=>wd13, d12=>wd12, d11=>wd11, d10=>wd10, d9=>wd9, d8=>wd8, d7=>wd7, d6=>wd6, d5=>wd5, d4=>wd4, d3=>wd3, d2=>wd2, d1=>wd1, d0=>wd0, q15=>q_reg(15)(15), q14=>q_reg(15)(14), q13=>q_reg(15)(13), q12=>q_reg(15)(12), q11=>q_reg(15)(11), q10=>q_reg(15)(10), q9=>q_reg(15)(9), q8=>q_reg(15)(8), q7=>q_reg(15)(7), q6=>q_reg(15)(6), q5=>q_reg(15)(5), q4=>q_reg(15)(4), q3=>q_reg(15)(3), q2=>q_reg(15)(2), q1=>q_reg(15)(1), q0=>q_reg(15)(0));

    -- Leitura Porta A: 16 Mux16x1 (1 por bit)
    u_mux_a_15: Mux16x1 port map(q_reg(0)(15), q_reg(1)(15), q_reg(2)(15), q_reg(3)(15), q_reg(4)(15), q_reg(5)(15), q_reg(6)(15), q_reg(7)(15), q_reg(8)(15), q_reg(9)(15), q_reg(10)(15), q_reg(11)(15), q_reg(12)(15), q_reg(13)(15), q_reg(14)(15), q_reg(15)(15), ra3, ra2, ra1, ra0, rd_a_vec(15));
    u_mux_a_14: Mux16x1 port map(q_reg(0)(14), q_reg(1)(14), q_reg(2)(14), q_reg(3)(14), q_reg(4)(14), q_reg(5)(14), q_reg(6)(14), q_reg(7)(14), q_reg(8)(14), q_reg(9)(14), q_reg(10)(14), q_reg(11)(14), q_reg(12)(14), q_reg(13)(14), q_reg(14)(14), q_reg(15)(14), ra3, ra2, ra1, ra0, rd_a_vec(14));
    u_mux_a_13: Mux16x1 port map(q_reg(0)(13), q_reg(1)(13), q_reg(2)(13), q_reg(3)(13), q_reg(4)(13), q_reg(5)(13), q_reg(6)(13), q_reg(7)(13), q_reg(8)(13), q_reg(9)(13), q_reg(10)(13), q_reg(11)(13), q_reg(12)(13), q_reg(13)(13), q_reg(14)(13), q_reg(15)(13), ra3, ra2, ra1, ra0, rd_a_vec(13));
    u_mux_a_12: Mux16x1 port map(q_reg(0)(12), q_reg(1)(12), q_reg(2)(12), q_reg(3)(12), q_reg(4)(12), q_reg(5)(12), q_reg(6)(12), q_reg(7)(12), q_reg(8)(12), q_reg(9)(12), q_reg(10)(12), q_reg(11)(12), q_reg(12)(12), q_reg(13)(12), q_reg(14)(12), q_reg(15)(12), ra3, ra2, ra1, ra0, rd_a_vec(12));
    u_mux_a_11: Mux16x1 port map(q_reg(0)(11), q_reg(1)(11), q_reg(2)(11), q_reg(3)(11), q_reg(4)(11), q_reg(5)(11), q_reg(6)(11), q_reg(7)(11), q_reg(8)(11), q_reg(9)(11), q_reg(10)(11), q_reg(11)(11), q_reg(12)(11), q_reg(13)(11), q_reg(14)(11), q_reg(15)(11), ra3, ra2, ra1, ra0, rd_a_vec(11));
    u_mux_a_10: Mux16x1 port map(q_reg(0)(10), q_reg(1)(10), q_reg(2)(10), q_reg(3)(10), q_reg(4)(10), q_reg(5)(10), q_reg(6)(10), q_reg(7)(10), q_reg(8)(10), q_reg(9)(10), q_reg(10)(10), q_reg(11)(10), q_reg(12)(10), q_reg(13)(10), q_reg(14)(10), q_reg(15)(10), ra3, ra2, ra1, ra0, rd_a_vec(10));
    u_mux_a_9: Mux16x1 port map(q_reg(0)(9), q_reg(1)(9), q_reg(2)(9), q_reg(3)(9), q_reg(4)(9), q_reg(5)(9), q_reg(6)(9), q_reg(7)(9), q_reg(8)(9), q_reg(9)(9), q_reg(10)(9), q_reg(11)(9), q_reg(12)(9), q_reg(13)(9), q_reg(14)(9), q_reg(15)(9), ra3, ra2, ra1, ra0, rd_a_vec(9));
    u_mux_a_8: Mux16x1 port map(q_reg(0)(8), q_reg(1)(8), q_reg(2)(8), q_reg(3)(8), q_reg(4)(8), q_reg(5)(8), q_reg(6)(8), q_reg(7)(8), q_reg(8)(8), q_reg(9)(8), q_reg(10)(8), q_reg(11)(8), q_reg(12)(8), q_reg(13)(8), q_reg(14)(8), q_reg(15)(8), ra3, ra2, ra1, ra0, rd_a_vec(8));
    u_mux_a_7: Mux16x1 port map(q_reg(0)(7), q_reg(1)(7), q_reg(2)(7), q_reg(3)(7), q_reg(4)(7), q_reg(5)(7), q_reg(6)(7), q_reg(7)(7), q_reg(8)(7), q_reg(9)(7), q_reg(10)(7), q_reg(11)(7), q_reg(12)(7), q_reg(13)(7), q_reg(14)(7), q_reg(15)(7), ra3, ra2, ra1, ra0, rd_a_vec(7));
    u_mux_a_6: Mux16x1 port map(q_reg(0)(6), q_reg(1)(6), q_reg(2)(6), q_reg(3)(6), q_reg(4)(6), q_reg(5)(6), q_reg(6)(6), q_reg(7)(6), q_reg(8)(6), q_reg(9)(6), q_reg(10)(6), q_reg(11)(6), q_reg(12)(6), q_reg(13)(6), q_reg(14)(6), q_reg(15)(6), ra3, ra2, ra1, ra0, rd_a_vec(6));
    u_mux_a_5: Mux16x1 port map(q_reg(0)(5), q_reg(1)(5), q_reg(2)(5), q_reg(3)(5), q_reg(4)(5), q_reg(5)(5), q_reg(6)(5), q_reg(7)(5), q_reg(8)(5), q_reg(9)(5), q_reg(10)(5), q_reg(11)(5), q_reg(12)(5), q_reg(13)(5), q_reg(14)(5), q_reg(15)(5), ra3, ra2, ra1, ra0, rd_a_vec(5));
    u_mux_a_4: Mux16x1 port map(q_reg(0)(4), q_reg(1)(4), q_reg(2)(4), q_reg(3)(4), q_reg(4)(4), q_reg(5)(4), q_reg(6)(4), q_reg(7)(4), q_reg(8)(4), q_reg(9)(4), q_reg(10)(4), q_reg(11)(4), q_reg(12)(4), q_reg(13)(4), q_reg(14)(4), q_reg(15)(4), ra3, ra2, ra1, ra0, rd_a_vec(4));
    u_mux_a_3: Mux16x1 port map(q_reg(0)(3), q_reg(1)(3), q_reg(2)(3), q_reg(3)(3), q_reg(4)(3), q_reg(5)(3), q_reg(6)(3), q_reg(7)(3), q_reg(8)(3), q_reg(9)(3), q_reg(10)(3), q_reg(11)(3), q_reg(12)(3), q_reg(13)(3), q_reg(14)(3), q_reg(15)(3), ra3, ra2, ra1, ra0, rd_a_vec(3));
    u_mux_a_2: Mux16x1 port map(q_reg(0)(2), q_reg(1)(2), q_reg(2)(2), q_reg(3)(2), q_reg(4)(2), q_reg(5)(2), q_reg(6)(2), q_reg(7)(2), q_reg(8)(2), q_reg(9)(2), q_reg(10)(2), q_reg(11)(2), q_reg(12)(2), q_reg(13)(2), q_reg(14)(2), q_reg(15)(2), ra3, ra2, ra1, ra0, rd_a_vec(2));
    u_mux_a_1: Mux16x1 port map(q_reg(0)(1), q_reg(1)(1), q_reg(2)(1), q_reg(3)(1), q_reg(4)(1), q_reg(5)(1), q_reg(6)(1), q_reg(7)(1), q_reg(8)(1), q_reg(9)(1), q_reg(10)(1), q_reg(11)(1), q_reg(12)(1), q_reg(13)(1), q_reg(14)(1), q_reg(15)(1), ra3, ra2, ra1, ra0, rd_a_vec(1));
    u_mux_a_0: Mux16x1 port map(q_reg(0)(0), q_reg(1)(0), q_reg(2)(0), q_reg(3)(0), q_reg(4)(0), q_reg(5)(0), q_reg(6)(0), q_reg(7)(0), q_reg(8)(0), q_reg(9)(0), q_reg(10)(0), q_reg(11)(0), q_reg(12)(0), q_reg(13)(0), q_reg(14)(0), q_reg(15)(0), ra3, ra2, ra1, ra0, rd_a_vec(0));

    -- Leitura Porta B: 16 Mux16x1 (1 por bit)
    u_mux_b_15: Mux16x1 port map(q_reg(0)(15), q_reg(1)(15), q_reg(2)(15), q_reg(3)(15), q_reg(4)(15), q_reg(5)(15), q_reg(6)(15), q_reg(7)(15), q_reg(8)(15), q_reg(9)(15), q_reg(10)(15), q_reg(11)(15), q_reg(12)(15), q_reg(13)(15), q_reg(14)(15), q_reg(15)(15), rb3, rb2, rb1, rb0, rd_b_vec(15));
    u_mux_b_14: Mux16x1 port map(q_reg(0)(14), q_reg(1)(14), q_reg(2)(14), q_reg(3)(14), q_reg(4)(14), q_reg(5)(14), q_reg(6)(14), q_reg(7)(14), q_reg(8)(14), q_reg(9)(14), q_reg(10)(14), q_reg(11)(14), q_reg(12)(14), q_reg(13)(14), q_reg(14)(14), q_reg(15)(14), rb3, rb2, rb1, rb0, rd_b_vec(14));
    u_mux_b_13: Mux16x1 port map(q_reg(0)(13), q_reg(1)(13), q_reg(2)(13), q_reg(3)(13), q_reg(4)(13), q_reg(5)(13), q_reg(6)(13), q_reg(7)(13), q_reg(8)(13), q_reg(9)(13), q_reg(10)(13), q_reg(11)(13), q_reg(12)(13), q_reg(13)(13), q_reg(14)(13), q_reg(15)(13), rb3, rb2, rb1, rb0, rd_b_vec(13));
    u_mux_b_12: Mux16x1 port map(q_reg(0)(12), q_reg(1)(12), q_reg(2)(12), q_reg(3)(12), q_reg(4)(12), q_reg(5)(12), q_reg(6)(12), q_reg(7)(12), q_reg(8)(12), q_reg(9)(12), q_reg(10)(12), q_reg(11)(12), q_reg(12)(12), q_reg(13)(12), q_reg(14)(12), q_reg(15)(12), rb3, rb2, rb1, rb0, rd_b_vec(12));
    u_mux_b_11: Mux16x1 port map(q_reg(0)(11), q_reg(1)(11), q_reg(2)(11), q_reg(3)(11), q_reg(4)(11), q_reg(5)(11), q_reg(6)(11), q_reg(7)(11), q_reg(8)(11), q_reg(9)(11), q_reg(10)(11), q_reg(11)(11), q_reg(12)(11), q_reg(13)(11), q_reg(14)(11), q_reg(15)(11), rb3, rb2, rb1, rb0, rd_b_vec(11));
    u_mux_b_10: Mux16x1 port map(q_reg(0)(10), q_reg(1)(10), q_reg(2)(10), q_reg(3)(10), q_reg(4)(10), q_reg(5)(10), q_reg(6)(10), q_reg(7)(10), q_reg(8)(10), q_reg(9)(10), q_reg(10)(10), q_reg(11)(10), q_reg(12)(10), q_reg(13)(10), q_reg(14)(10), q_reg(15)(10), rb3, rb2, rb1, rb0, rd_b_vec(10));
    u_mux_b_9: Mux16x1 port map(q_reg(0)(9), q_reg(1)(9), q_reg(2)(9), q_reg(3)(9), q_reg(4)(9), q_reg(5)(9), q_reg(6)(9), q_reg(7)(9), q_reg(8)(9), q_reg(9)(9), q_reg(10)(9), q_reg(11)(9), q_reg(12)(9), q_reg(13)(9), q_reg(14)(9), q_reg(15)(9), rb3, rb2, rb1, rb0, rd_b_vec(9));
    u_mux_b_8: Mux16x1 port map(q_reg(0)(8), q_reg(1)(8), q_reg(2)(8), q_reg(3)(8), q_reg(4)(8), q_reg(5)(8), q_reg(6)(8), q_reg(7)(8), q_reg(8)(8), q_reg(9)(8), q_reg(10)(8), q_reg(11)(8), q_reg(12)(8), q_reg(13)(8), q_reg(14)(8), q_reg(15)(8), rb3, rb2, rb1, rb0, rd_b_vec(8));
    u_mux_b_7: Mux16x1 port map(q_reg(0)(7), q_reg(1)(7), q_reg(2)(7), q_reg(3)(7), q_reg(4)(7), q_reg(5)(7), q_reg(6)(7), q_reg(7)(7), q_reg(8)(7), q_reg(9)(7), q_reg(10)(7), q_reg(11)(7), q_reg(12)(7), q_reg(13)(7), q_reg(14)(7), q_reg(15)(7), rb3, rb2, rb1, rb0, rd_b_vec(7));
    u_mux_b_6: Mux16x1 port map(q_reg(0)(6), q_reg(1)(6), q_reg(2)(6), q_reg(3)(6), q_reg(4)(6), q_reg(5)(6), q_reg(6)(6), q_reg(7)(6), q_reg(8)(6), q_reg(9)(6), q_reg(10)(6), q_reg(11)(6), q_reg(12)(6), q_reg(13)(6), q_reg(14)(6), q_reg(15)(6), rb3, rb2, rb1, rb0, rd_b_vec(6));
    u_mux_b_5: Mux16x1 port map(q_reg(0)(5), q_reg(1)(5), q_reg(2)(5), q_reg(3)(5), q_reg(4)(5), q_reg(5)(5), q_reg(6)(5), q_reg(7)(5), q_reg(8)(5), q_reg(9)(5), q_reg(10)(5), q_reg(11)(5), q_reg(12)(5), q_reg(13)(5), q_reg(14)(5), q_reg(15)(5), rb3, rb2, rb1, rb0, rd_b_vec(5));
    u_mux_b_4: Mux16x1 port map(q_reg(0)(4), q_reg(1)(4), q_reg(2)(4), q_reg(3)(4), q_reg(4)(4), q_reg(5)(4), q_reg(6)(4), q_reg(7)(4), q_reg(8)(4), q_reg(9)(4), q_reg(10)(4), q_reg(11)(4), q_reg(12)(4), q_reg(13)(4), q_reg(14)(4), q_reg(15)(4), rb3, rb2, rb1, rb0, rd_b_vec(4));
    u_mux_b_3: Mux16x1 port map(q_reg(0)(3), q_reg(1)(3), q_reg(2)(3), q_reg(3)(3), q_reg(4)(3), q_reg(5)(3), q_reg(6)(3), q_reg(7)(3), q_reg(8)(3), q_reg(9)(3), q_reg(10)(3), q_reg(11)(3), q_reg(12)(3), q_reg(13)(3), q_reg(14)(3), q_reg(15)(3), rb3, rb2, rb1, rb0, rd_b_vec(3));
    u_mux_b_2: Mux16x1 port map(q_reg(0)(2), q_reg(1)(2), q_reg(2)(2), q_reg(3)(2), q_reg(4)(2), q_reg(5)(2), q_reg(6)(2), q_reg(7)(2), q_reg(8)(2), q_reg(9)(2), q_reg(10)(2), q_reg(11)(2), q_reg(12)(2), q_reg(13)(2), q_reg(14)(2), q_reg(15)(2), rb3, rb2, rb1, rb0, rd_b_vec(2));
    u_mux_b_1: Mux16x1 port map(q_reg(0)(1), q_reg(1)(1), q_reg(2)(1), q_reg(3)(1), q_reg(4)(1), q_reg(5)(1), q_reg(6)(1), q_reg(7)(1), q_reg(8)(1), q_reg(9)(1), q_reg(10)(1), q_reg(11)(1), q_reg(12)(1), q_reg(13)(1), q_reg(14)(1), q_reg(15)(1), rb3, rb2, rb1, rb0, rd_b_vec(1));
    u_mux_b_0: Mux16x1 port map(q_reg(0)(0), q_reg(1)(0), q_reg(2)(0), q_reg(3)(0), q_reg(4)(0), q_reg(5)(0), q_reg(6)(0), q_reg(7)(0), q_reg(8)(0), q_reg(9)(0), q_reg(10)(0), q_reg(11)(0), q_reg(12)(0), q_reg(13)(0), q_reg(14)(0), q_reg(15)(0), rb3, rb2, rb1, rb0, rd_b_vec(0));

    -- Mapeamento vetor -> portas bit-a-bit
    rd_a15 <= rd_a_vec(15); 
    rd_a14 <= rd_a_vec(14); 
    rd_a13 <= rd_a_vec(13); 
    rd_a12 <= rd_a_vec(12);
    rd_a11 <= rd_a_vec(11); 
    rd_a10 <= rd_a_vec(10); 
    rd_a9 <= rd_a_vec(9);  
    rd_a8 <= rd_a_vec(8);
    rd_a7 <= rd_a_vec(7);  
    rd_a6 <= rd_a_vec(6);  
    rd_a5 <= rd_a_vec(5);  
    rd_a4 <= rd_a_vec(4);
    rd_a3 <= rd_a_vec(3);  
    rd_a2 <= rd_a_vec(2);  
    rd_a1 <= rd_a_vec(1);  
    rd_a0 <= rd_a_vec(0);

    rd_b15 <= rd_b_vec(15); 
    rd_b14 <= rd_b_vec(14); 
    rd_b13 <= rd_b_vec(13); 
    rd_b12 <= rd_b_vec(12);
    rd_b11 <= rd_b_vec(11); 
    rd_b10 <= rd_b_vec(10); 
    rd_b9 <= rd_b_vec(9);  
    rd_b8 <= rd_b_vec(8);
    rd_b7 <= rd_b_vec(7);  
    rd_b6 <= rd_b_vec(6);  
    rd_b5 <= rd_b_vec(5);  
    rd_b4 <= rd_b_vec(4);
    rd_b3 <= rd_b_vec(3);  
    rd_b2 <= rd_b_vec(2);  
    rd_b1 <= rd_b_vec(1);  
    rd_b0 <= rd_b_vec(0);
end;