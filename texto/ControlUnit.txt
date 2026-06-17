library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
    port(
        clk, rst: in bit;
        opcode3, opcode2, opcode1, opcode0: in bit;
        pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: out bit;
        ula_w, ula_x, ula_y, ula_z: out bit;
        shl, shr: out bit;
        wb_sel1, wb_sel0: out bit
    );
end;

architecture dataflow of ControlUnit is
    signal s2,s1,s0,n2,n1,n0: bit;
    signal op3,op2,op1,op0: bit;
    signal is_alu, is_load, is_store, is_immed: bit;
    signal is_exec, is_mem: bit;
    signal f,d,e,m,w: bit; -- FETCH, DECODE, EXEC, MEM, WB
    
    component FlipFlopD is port(d,clk,rst: in bit; q: out bit); end component;
begin
    -- Registrador de Estado (3 FFDs)
    u0: FlipFlopD port map(d=>n0, clk=>clk, rst=>rst, q=>s0);
    u1: FlipFlopD port map(d=>n1, clk=>clk, rst=>rst, q=>s1);
    u2: FlipFlopD port map(d=>n2, clk=>clk, rst=>rst, q=>s2);
    
    -- Decodificação do opcode (fios)
    op3 <= opcode3; op2 <= opcode2; op1 <= opcode1; op0 <= opcode0;
    
    -- Sinais de condição (equações booleanas)
    is_alu   <= not op3;
    is_load  <= op3 and not op2 and not op1 and not op0;
    is_store <= op3 and not op2 and not op1 and op0;
    is_immed <= op3 and not op2 and op1;
    is_exec  <= is_alu or is_immed;   -- vai para estado EXEC
    is_mem   <= is_load or is_store;  -- vai para estado MEM
    
    -- Estados atuais (one-hot decodificado para facilitar leitura)
    f <= not s2 and not s1 and not s0; -- FETCH
    d <= not s2 and not s1 and s0;     -- DECODE
    e <= not s2 and s1 and not s0;     -- EXEC
    m <= not s2 and s1 and s0;         -- MEM
    w <= s2 and not s1 and not s0;     -- WRITEBACK
    
    -- Lógica de próximo estado (equações booleanas por portas)
    -- FETCH(000) -> DECODE(001): n2=0,n1=0,n0=1
    -- DECODE(001) -> EXEC(010) se is_exec; -> MEM(011) se is_mem
    -- EXEC(010)   -> WB(100)
    -- MEM(011)    -> WB(100) se is_load; -> FETCH(000) se is_store
    -- WB(100)     -> FETCH(000)
    
    n2 <= (not s2 and s1 and not s0) or 
          (not s2 and s1 and s0 and is_load);
          
    n1 <= (not s2 and not s1 and not s0) or 
          (not s2 and not s1 and s0 and (is_exec or is_mem));
          
    n0 <= (not s2 and not s1 and not s0) or 
          (not s2 and not s1 and s0 and is_mem);
    
    -- Sinais de controle
    pc_inc  <= not s2 and not s1 and not s0; -- ativo em FETCH
    ir_ld   <= not s2 and not s1 and not s0; -- ativo em FETCH
    rf_wr   <= s2 and not s1 and not s0;     -- ativo em WB
    mem_rd  <= not s2 and s1 and s0 and is_load;  -- MEM e LOAD
    mem_wr  <= not s2 and s1 and s0 and is_store; -- MEM e STORE
    
    -- ULA control: força ADD (0000) para ADDI (1010), senão passa opcode
    -- LOADI (1011) nao usa ULA (resultado vem do imediato direto)
    ula_w <= '0';
    ula_x <= op2 and not is_immed; -- força 0 para ADDI
    ula_y <= op1 and not is_immed; -- força 0 para ADDI
    ula_z <= op0 and not is_immed; -- força 0 para ADDI
    
    -- Shifter control (MUL2=0100, DIV2=0101)
    shl <= not op3 and op2 and not op1 and not op0;
    shr <= not op3 and op2 and not op1 and op0;
    
    -- Write-Back seletor (apenas ativo em WB, senão 00 por default)
    -- wb_sel1 wb_sel0:
    -- 00 = ALU/Shifter, 01 = MEM, 10 = IMM (LOADI/ADDI)
    wb_sel1 <= s2 and not s1 and not s0 and is_immed;
    wb_sel0 <= s2 and not s1 and not s0 and is_load;
end;