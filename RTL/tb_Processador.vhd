library ieee;
use ieee.std_logic_1164.all;

-- Testbench do Processador: modela as duas memorias externas (Harvard).
-- A memoria de instrucoes e' uma ROM combinacional indexada por instr_addr (=PC).
-- A memoria de dados e' uma RAM: leitura combinacional (LOAD) e escrita na
-- borda de subida quando mem_wr='1' (STORE).
entity tb_Processador is
end entity;

architecture sim of tb_Processador is

    -- converte bit_vector -> integer (nao ha conversao padrao para 'bit')
    function bv2int(v: bit_vector) return integer is
        variable r  : integer := 0;
        variable vv : bit_vector(v'length-1 downto 0) := v;
    begin
        for i in vv'range loop
            if vv(i) = '1' then
                r := r + 2**i;
            end if;
        end loop;
        return r;
    end function;

    signal clk, rst        : bit := '0';
    signal mem_rd, mem_wr  : bit;
    signal instr_data      : bit_vector(15 downto 0) := (others=>'0');
    signal ddata_in        : bit_vector(15 downto 0) := (others=>'0');
    signal ddata_out       : bit_vector(15 downto 0);
    signal iaddr           : bit_vector(7 downto 0);
    signal daddr           : bit_vector(7 downto 0);

    -- Memoria de instrucoes (programa de teste)
    type rom_t is array (0 to 15) of bit_vector(15 downto 0);
    constant ROM : rom_t := (
        0 => "1011000100000101",  -- LOADI R1,5
        1 => "1011001000000011",  -- LOADI R2,3
        2 => "0000001100010010",  -- ADD R3,R1,R2
        3 => "1001000000000011",  -- STORE m[R0]=R3
        4 => "0001010000010010",  -- SUB R4,R1,R2
        5 => "1001000000000100",  -- STORE m[R0]=R4
        6 => "0100010100010000",  -- MUL2 R5,R1
        7 => "1001000000000101",  -- STORE m[R0]=R5
        8 => "1010011000010100",  -- ADDI R6,R1,4
        9 => "1001000000000110",  -- STORE m[R0]=R6
        10 => "0110011100010010",  -- CMP R7,R1,R2
        11 => "1001000000000111",  -- STORE m[R0]=R7
        12 => "1000100000000000",  -- LOAD R8,m[R0]
        13 => "1001000000001000",  -- STORE m[R0]=R8
        14 => "0000000000000000",  -- NOP
        15 => "0000000000000000"   -- NOP
    );

    -- Memoria de dados
    type ram_t is array (0 to 15) of bit_vector(15 downto 0);
    signal RAM : ram_t := (others => (others=>'0'));

    component Processador is
        port(
            clk, rst: in bit;
            instr_mem_data15, instr_mem_data14, instr_mem_data13, instr_mem_data12, instr_mem_data11, instr_mem_data10, instr_mem_data9, instr_mem_data8, instr_mem_data7, instr_mem_data6, instr_mem_data5, instr_mem_data4, instr_mem_data3, instr_mem_data2, instr_mem_data1, instr_mem_data0: in bit;
            data_mem_data_in15, data_mem_data_in14, data_mem_data_in13, data_mem_data_in12, data_mem_data_in11, data_mem_data_in10, data_mem_data_in9, data_mem_data_in8, data_mem_data_in7, data_mem_data_in6, data_mem_data_in5, data_mem_data_in4, data_mem_data_in3, data_mem_data_in2, data_mem_data_in1, data_mem_data_in0: in bit;
            instr_addr7, instr_addr6, instr_addr5, instr_addr4, instr_addr3, instr_addr2, instr_addr1, instr_addr0: out bit;
            data_addr7, data_addr6, data_addr5, data_addr4, data_addr3, data_addr2, data_addr1, data_addr0: out bit;
            data_mem_data_out15, data_mem_data_out14, data_mem_data_out13, data_mem_data_out12, data_mem_data_out11, data_mem_data_out10, data_mem_data_out9, data_mem_data_out8, data_mem_data_out7, data_mem_data_out6, data_mem_data_out5, data_mem_data_out4, data_mem_data_out3, data_mem_data_out2, data_mem_data_out1, data_mem_data_out0: out bit;
            mem_rd, mem_wr: out bit
        );
    end component;

begin

    dut: Processador port map(
        clk=>clk, rst=>rst, 
        instr_mem_data15=>instr_data(15), instr_mem_data14=>instr_data(14), instr_mem_data13=>instr_data(13), instr_mem_data12=>instr_data(12), instr_mem_data11=>instr_data(11), instr_mem_data10=>instr_data(10), instr_mem_data9=>instr_data(9), instr_mem_data8=>instr_data(8), instr_mem_data7=>instr_data(7), instr_mem_data6=>instr_data(6), instr_mem_data5=>instr_data(5), instr_mem_data4=>instr_data(4), instr_mem_data3=>instr_data(3), instr_mem_data2=>instr_data(2), instr_mem_data1=>instr_data(1), instr_mem_data0=>instr_data(0),
        data_mem_data_in15=>ddata_in(15), data_mem_data_in14=>ddata_in(14), data_mem_data_in13=>ddata_in(13), data_mem_data_in12=>ddata_in(12), data_mem_data_in11=>ddata_in(11), data_mem_data_in10=>ddata_in(10), data_mem_data_in9=>ddata_in(9), data_mem_data_in8=>ddata_in(8), data_mem_data_in7=>ddata_in(7), data_mem_data_in6=>ddata_in(6), data_mem_data_in5=>ddata_in(5), data_mem_data_in4=>ddata_in(4), data_mem_data_in3=>ddata_in(3), data_mem_data_in2=>ddata_in(2), data_mem_data_in1=>ddata_in(1), data_mem_data_in0=>ddata_in(0),
        instr_addr7=>iaddr(7), instr_addr6=>iaddr(6), instr_addr5=>iaddr(5), instr_addr4=>iaddr(4), instr_addr3=>iaddr(3), instr_addr2=>iaddr(2), instr_addr1=>iaddr(1), instr_addr0=>iaddr(0), data_addr7=>daddr(7), data_addr6=>daddr(6), data_addr5=>daddr(5), data_addr4=>daddr(4), data_addr3=>daddr(3), data_addr2=>daddr(2), data_addr1=>daddr(1), data_addr0=>daddr(0),
        data_mem_data_out15=>ddata_out(15), data_mem_data_out14=>ddata_out(14), data_mem_data_out13=>ddata_out(13), data_mem_data_out12=>ddata_out(12), data_mem_data_out11=>ddata_out(11), data_mem_data_out10=>ddata_out(10), data_mem_data_out9=>ddata_out(9), data_mem_data_out8=>ddata_out(8), data_mem_data_out7=>ddata_out(7), data_mem_data_out6=>ddata_out(6), data_mem_data_out5=>ddata_out(5), data_mem_data_out4=>ddata_out(4), data_mem_data_out3=>ddata_out(3), data_mem_data_out2=>ddata_out(2), data_mem_data_out1=>ddata_out(1), data_mem_data_out0=>ddata_out(0),
        mem_rd=>mem_rd, mem_wr=>mem_wr
    );

    -- Clock 10 ns, para apos 800 ns
    clk_proc: process
    begin
        while now < 800 ns loop
            clk <= '0'; wait for 5 ns;
            clk <= '1'; wait for 5 ns;
        end loop;
        wait;
    end process;

    -- Reset
    rst <= '1', '0' after 12 ns;

    -- Memoria de instrucoes (ROM combinacional)
    instr_data <= ROM(bv2int(iaddr)) when bv2int(iaddr) <= 15 else (others=>'0');

    -- Memoria de dados: leitura combinacional (LOAD)
    ddata_in <= RAM(bv2int(daddr)) when bv2int(daddr) <= 15 else (others=>'0');

    -- Memoria de dados: escrita sincrona (STORE)
    ram_wr: process(clk)
    begin
        if clk'event and clk='1' then
            if mem_wr='1' and bv2int(daddr) <= 15 then
                RAM(bv2int(daddr)) <= ddata_out;
            end if;
        end if;
    end process;

end architecture;
