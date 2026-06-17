entity Processador is
    port(clk, rst: in bit;
         instr_mem_data: in bit_vector(15 downto 0);
         data_mem_data_in: in bit_vector(15 downto 0);
         instr_addr: out bit_vector(7 downto 0);
         data_addr: out bit_vector(7 downto 0);
         data_mem_data_out: out bit_vector(15 downto 0);
         mem_rd, mem_wr: out bit);
end;

architecture structural of Processador is
    signal pc_inc, ir_ld, rf_wr, ctrl_mem_rd, ctrl_mem_wr: bit;
    signal alu_x, alu_y, alu_z: bit;
    signal wb_sel: bit_vector(1 downto 0);
    signal ir_reg: bit_vector(15 downto 0);
begin
    u_dp: datapath port map(...);
    u_ctrl: ctrl_unit port map(...);
end;