library ieee;
use ieee.std_logic_1164.all;

entity Processador is
    port(
        clk, rst: in bit;
        instr_mem_data15, instr_mem_data14, instr_mem_data13, instr_mem_data12, instr_mem_data11, instr_mem_data10, instr_mem_data9, instr_mem_data8, instr_mem_data7, instr_mem_data6, instr_mem_data5, instr_mem_data4, instr_mem_data3, instr_mem_data2, instr_mem_data1, instr_mem_data0: in bit;
        
        data_mem_data_in15, data_mem_data_in14, data_mem_data_in13, data_mem_data_in12, data_mem_data_in11, data_mem_data_in10, data_mem_data_in9, data_mem_data_in8, data_mem_data_in7, data_mem_data_in6, data_mem_data_in5, data_mem_data_in4, data_mem_data_in3, data_mem_data_in2, data_mem_data_in1, data_mem_data_in0: in bit;
        
        instr_addr7, instr_addr6, instr_addr5, instr_addr4, instr_addr3, instr_addr2, instr_addr1, instr_addr0: out bit;
        data_addr7, data_addr6, data_addr5, data_addr4, data_addr3, data_addr2, data_addr1, data_addr0: out bit;
        
        data_mem_data_out15, data_mem_data_out14, data_mem_data_out13, data_mem_data_out12, data_mem_data_out11, data_mem_data_out10, data_mem_data_out9, data_mem_data_out8, data_mem_data_out7, data_mem_data_out6, data_mem_data_out5, data_mem_data_out4, data_mem_data_out3, data_mem_data_out2, data_mem_data_out1, data_mem_data_out0: out bit;
        
        mem_rd, mem_wr: out bit
    );
end;

architecture behav of Processador is
    signal pc_inc, ir_ld, rf_wr, ctrl_mem_rd, ctrl_mem_wr: bit;
    signal alu_x, alu_y, alu_z: bit;
    signal wb_sel1, wb_sel0: bit;
    signal shl_sig, shr_sig, ula_w_sig: bit;
    
    signal ir_out15, ir_out14, ir_out13, ir_out12, ir_out11, ir_out10, ir_out9, ir_out8, ir_out7, ir_out6, ir_out5, ir_out4, ir_out3, ir_out2, ir_out1, ir_out0: bit;
    
    component datapath is
        port(
            clk, rst: in bit;
            pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: in bit;
            ula_w, ula_x, ula_y, ula_z: in bit;
            shl, shr: in bit;
            wb_sel1, wb_sel0: in bit;
            instr_in15, instr_in14, instr_in13, instr_in12, instr_in11, instr_in10, instr_in9, instr_in8, instr_in7, instr_in6, instr_in5, instr_in4, instr_in3, instr_in2, instr_in1, instr_in0: in bit;
            data_in15, data_in14, data_in13, data_in12, data_in11, data_in10, data_in9, data_in8, data_in7, data_in6, data_in5, data_in4, data_in3, data_in2, data_in1, data_in0: in bit;
            pc_out7, pc_out6, pc_out5, pc_out4, pc_out3, pc_out2, pc_out1, pc_out0: out bit;
            instr_out15, instr_out14, instr_out13, instr_out12, instr_out11, instr_out10, instr_out9, instr_out8, instr_out7, instr_out6, instr_out5, instr_out4, instr_out3, instr_out2, instr_out1, instr_out0: out bit;
            addr_out7, addr_out6, addr_out5, addr_out4, addr_out3, addr_out2, addr_out1, addr_out0: out bit;
            data_out15, data_out14, data_out13, data_out12, data_out11, data_out10, data_out9, data_out8, data_out7, data_out6, data_out5, data_out4, data_out3, data_out2, data_out1, data_out0: out bit
        );
    end component;

    component ControlUnit is
        port(
            clk, rst: in bit;
            opcode3, opcode2, opcode1, opcode0: in bit;
            pc_inc, ir_ld, rf_wr, mem_rd, mem_wr: out bit;
            ula_w, ula_x, ula_y, ula_z: out bit;
            shl, shr: out bit;
            wb_sel1, wb_sel0: out bit
        );
    end component;
begin
    u_dp: datapath port map(clk=>clk, rst=>rst, pc_inc=>pc_inc, ir_ld=>ir_ld, rf_wr=>rf_wr, mem_rd=>ctrl_mem_rd, mem_wr=>ctrl_mem_wr, ula_w=>ula_w_sig, ula_x=>alu_x, ula_y=>alu_y, ula_z=>alu_z, shl=>shl_sig, shr=>shr_sig, wb_sel1=>wb_sel1, wb_sel0=>wb_sel0, instr_in15=>instr_mem_data15, instr_in14=>instr_mem_data14, instr_in13=>instr_mem_data13, instr_in12=>instr_mem_data12, instr_in11=>instr_mem_data11, instr_in10=>instr_mem_data10, instr_in9=>instr_mem_data9, instr_in8=>instr_mem_data8, instr_in7=>instr_mem_data7, instr_in6=>instr_mem_data6, instr_in5=>instr_mem_data5, instr_in4=>instr_mem_data4, instr_in3=>instr_mem_data3, instr_in2=>instr_mem_data2, instr_in1=>instr_mem_data1, instr_in0=>instr_mem_data0, data_in15=>data_mem_data_in15, data_in14=>data_mem_data_in14, data_in13=>data_mem_data_in13, data_in12=>data_mem_data_in12, data_in11=>data_mem_data_in11, data_in10=>data_mem_data_in10, data_in9=>data_mem_data_in9, data_in8=>data_mem_data_in8, data_in7=>data_mem_data_in7, data_in6=>data_mem_data_in6, data_in5=>data_mem_data_in5, data_in4=>data_mem_data_in4, data_in3=>data_mem_data_in3, data_in2=>data_mem_data_in2, data_in1=>data_mem_data_in1, data_in0=>data_mem_data_in0, pc_out7=>instr_addr7, pc_out6=>instr_addr6, pc_out5=>instr_addr5, pc_out4=>instr_addr4, pc_out3=>instr_addr3, pc_out2=>instr_addr2, pc_out1=>instr_addr1, pc_out0=>instr_addr0, instr_out15=>ir_out15, instr_out14=>ir_out14, instr_out13=>ir_out13, instr_out12=>ir_out12, instr_out11=>ir_out11, instr_out10=>ir_out10, instr_out9=>ir_out9, instr_out8=>ir_out8, instr_out7=>ir_out7, instr_out6=>ir_out6, instr_out5=>ir_out5, instr_out4=>ir_out4, instr_out3=>ir_out3, instr_out2=>ir_out2, instr_out1=>ir_out1, instr_out0=>ir_out0, addr_out7=>data_addr7, addr_out6=>data_addr6, addr_out5=>data_addr5, addr_out4=>data_addr4, addr_out3=>data_addr3, addr_out2=>data_addr2, addr_out1=>data_addr1, addr_out0=>data_addr0, data_out15=>data_mem_data_out15, data_out14=>data_mem_data_out14, data_out13=>data_mem_data_out13, data_out12=>data_mem_data_out12, data_out11=>data_mem_data_out11, data_out10=>data_mem_data_out10, data_out9=>data_mem_data_out9, data_out8=>data_mem_data_out8, data_out7=>data_mem_data_out7, data_out6=>data_mem_data_out6, data_out5=>data_mem_data_out5, data_out4=>data_mem_data_out4, data_out3=>data_mem_data_out3, data_out2=>data_mem_data_out2, data_out1=>data_mem_data_out1, data_out0=>data_mem_data_out0);

    u_ctrl: ControlUnit port map(clk=>clk, rst=>rst, opcode3=>ir_out15, opcode2=>ir_out14, opcode1=>ir_out13, opcode0=>ir_out12, pc_inc=>pc_inc, ir_ld=>ir_ld, rf_wr=>rf_wr, mem_rd=>ctrl_mem_rd, mem_wr=>ctrl_mem_wr, ula_w=>ula_w_sig, ula_x=>alu_x, ula_y=>alu_y, ula_z=>alu_z, shl=>shl_sig, shr=>shr_sig, wb_sel1=>wb_sel1, wb_sel0=>wb_sel0);
    
    mem_rd <= ctrl_mem_rd;
    mem_wr <= ctrl_mem_wr;
end;