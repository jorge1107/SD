-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/17/2026 20:49:43"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Processador IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	instr_mem_data15 : IN std_logic;
	instr_mem_data14 : IN std_logic;
	instr_mem_data13 : IN std_logic;
	instr_mem_data12 : IN std_logic;
	instr_mem_data11 : IN std_logic;
	instr_mem_data10 : IN std_logic;
	instr_mem_data9 : IN std_logic;
	instr_mem_data8 : IN std_logic;
	instr_mem_data7 : IN std_logic;
	instr_mem_data6 : IN std_logic;
	instr_mem_data5 : IN std_logic;
	instr_mem_data4 : IN std_logic;
	instr_mem_data3 : IN std_logic;
	instr_mem_data2 : IN std_logic;
	instr_mem_data1 : IN std_logic;
	instr_mem_data0 : IN std_logic;
	data_mem_data_in15 : IN std_logic;
	data_mem_data_in14 : IN std_logic;
	data_mem_data_in13 : IN std_logic;
	data_mem_data_in12 : IN std_logic;
	data_mem_data_in11 : IN std_logic;
	data_mem_data_in10 : IN std_logic;
	data_mem_data_in9 : IN std_logic;
	data_mem_data_in8 : IN std_logic;
	data_mem_data_in7 : IN std_logic;
	data_mem_data_in6 : IN std_logic;
	data_mem_data_in5 : IN std_logic;
	data_mem_data_in4 : IN std_logic;
	data_mem_data_in3 : IN std_logic;
	data_mem_data_in2 : IN std_logic;
	data_mem_data_in1 : IN std_logic;
	data_mem_data_in0 : IN std_logic;
	instr_addr7 : OUT STD.STANDARD.bit;
	instr_addr6 : OUT STD.STANDARD.bit;
	instr_addr5 : OUT STD.STANDARD.bit;
	instr_addr4 : OUT STD.STANDARD.bit;
	instr_addr3 : OUT STD.STANDARD.bit;
	instr_addr2 : OUT STD.STANDARD.bit;
	instr_addr1 : OUT STD.STANDARD.bit;
	instr_addr0 : OUT STD.STANDARD.bit;
	data_addr7 : OUT STD.STANDARD.bit;
	data_addr6 : OUT STD.STANDARD.bit;
	data_addr5 : OUT STD.STANDARD.bit;
	data_addr4 : OUT STD.STANDARD.bit;
	data_addr3 : OUT STD.STANDARD.bit;
	data_addr2 : OUT STD.STANDARD.bit;
	data_addr1 : OUT STD.STANDARD.bit;
	data_addr0 : OUT STD.STANDARD.bit;
	data_mem_data_out15 : OUT STD.STANDARD.bit;
	data_mem_data_out14 : OUT STD.STANDARD.bit;
	data_mem_data_out13 : OUT STD.STANDARD.bit;
	data_mem_data_out12 : OUT STD.STANDARD.bit;
	data_mem_data_out11 : OUT STD.STANDARD.bit;
	data_mem_data_out10 : OUT STD.STANDARD.bit;
	data_mem_data_out9 : OUT STD.STANDARD.bit;
	data_mem_data_out8 : OUT STD.STANDARD.bit;
	data_mem_data_out7 : OUT STD.STANDARD.bit;
	data_mem_data_out6 : OUT STD.STANDARD.bit;
	data_mem_data_out5 : OUT STD.STANDARD.bit;
	data_mem_data_out4 : OUT STD.STANDARD.bit;
	data_mem_data_out3 : OUT STD.STANDARD.bit;
	data_mem_data_out2 : OUT STD.STANDARD.bit;
	data_mem_data_out1 : OUT STD.STANDARD.bit;
	data_mem_data_out0 : OUT STD.STANDARD.bit;
	mem_rd : OUT STD.STANDARD.bit;
	mem_wr : OUT STD.STANDARD.bit
	);
END Processador;

-- Design Ports Information
-- instr_addr7	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr6	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr5	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr4	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr3	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr2	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr1	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr_addr0	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr7	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr6	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr5	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr4	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr3	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr2	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr1	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_addr0	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out15	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out14	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out13	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out12	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out11	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out10	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out9	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out8	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out7	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out6	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out5	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out4	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out3	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out2	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out1	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_data_out0	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_rd	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_wr	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in7	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data5	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data4	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data7	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data6	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in6	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in5	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in4	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in3	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in2	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in1	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in0	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in15	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data1	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data0	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data3	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data2	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in14	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in13	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in12	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in11	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in10	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in9	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_mem_data_in8	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data15	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data12	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data13	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data14	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data9	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data11	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data10	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- instr_mem_data8	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_instr_mem_data15 : std_logic;
SIGNAL ww_instr_mem_data14 : std_logic;
SIGNAL ww_instr_mem_data13 : std_logic;
SIGNAL ww_instr_mem_data12 : std_logic;
SIGNAL ww_instr_mem_data11 : std_logic;
SIGNAL ww_instr_mem_data10 : std_logic;
SIGNAL ww_instr_mem_data9 : std_logic;
SIGNAL ww_instr_mem_data8 : std_logic;
SIGNAL ww_instr_mem_data7 : std_logic;
SIGNAL ww_instr_mem_data6 : std_logic;
SIGNAL ww_instr_mem_data5 : std_logic;
SIGNAL ww_instr_mem_data4 : std_logic;
SIGNAL ww_instr_mem_data3 : std_logic;
SIGNAL ww_instr_mem_data2 : std_logic;
SIGNAL ww_instr_mem_data1 : std_logic;
SIGNAL ww_instr_mem_data0 : std_logic;
SIGNAL ww_data_mem_data_in15 : std_logic;
SIGNAL ww_data_mem_data_in14 : std_logic;
SIGNAL ww_data_mem_data_in13 : std_logic;
SIGNAL ww_data_mem_data_in12 : std_logic;
SIGNAL ww_data_mem_data_in11 : std_logic;
SIGNAL ww_data_mem_data_in10 : std_logic;
SIGNAL ww_data_mem_data_in9 : std_logic;
SIGNAL ww_data_mem_data_in8 : std_logic;
SIGNAL ww_data_mem_data_in7 : std_logic;
SIGNAL ww_data_mem_data_in6 : std_logic;
SIGNAL ww_data_mem_data_in5 : std_logic;
SIGNAL ww_data_mem_data_in4 : std_logic;
SIGNAL ww_data_mem_data_in3 : std_logic;
SIGNAL ww_data_mem_data_in2 : std_logic;
SIGNAL ww_data_mem_data_in1 : std_logic;
SIGNAL ww_data_mem_data_in0 : std_logic;
SIGNAL ww_instr_addr7 : std_logic;
SIGNAL ww_instr_addr6 : std_logic;
SIGNAL ww_instr_addr5 : std_logic;
SIGNAL ww_instr_addr4 : std_logic;
SIGNAL ww_instr_addr3 : std_logic;
SIGNAL ww_instr_addr2 : std_logic;
SIGNAL ww_instr_addr1 : std_logic;
SIGNAL ww_instr_addr0 : std_logic;
SIGNAL ww_data_addr7 : std_logic;
SIGNAL ww_data_addr6 : std_logic;
SIGNAL ww_data_addr5 : std_logic;
SIGNAL ww_data_addr4 : std_logic;
SIGNAL ww_data_addr3 : std_logic;
SIGNAL ww_data_addr2 : std_logic;
SIGNAL ww_data_addr1 : std_logic;
SIGNAL ww_data_addr0 : std_logic;
SIGNAL ww_data_mem_data_out15 : std_logic;
SIGNAL ww_data_mem_data_out14 : std_logic;
SIGNAL ww_data_mem_data_out13 : std_logic;
SIGNAL ww_data_mem_data_out12 : std_logic;
SIGNAL ww_data_mem_data_out11 : std_logic;
SIGNAL ww_data_mem_data_out10 : std_logic;
SIGNAL ww_data_mem_data_out9 : std_logic;
SIGNAL ww_data_mem_data_out8 : std_logic;
SIGNAL ww_data_mem_data_out7 : std_logic;
SIGNAL ww_data_mem_data_out6 : std_logic;
SIGNAL ww_data_mem_data_out5 : std_logic;
SIGNAL ww_data_mem_data_out4 : std_logic;
SIGNAL ww_data_mem_data_out3 : std_logic;
SIGNAL ww_data_mem_data_out2 : std_logic;
SIGNAL ww_data_mem_data_out1 : std_logic;
SIGNAL ww_data_mem_data_out0 : std_logic;
SIGNAL ww_mem_rd : std_logic;
SIGNAL ww_mem_wr : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib6~2_combout\ : std_logic;
SIGNAL \u_dp|ula_b_vec[2]~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib2~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib1~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia7~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia7~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U7|Sum~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[2]~18_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~2_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U1|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~29_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~31_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~32_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~33_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~45_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~47_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~48_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~50_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia13~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia13~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib11~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib15~0_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[14]~6_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[13]~7_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[12]~8_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[10]~10_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib4~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib12~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib9~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib8~3_combout\ : std_logic;
SIGNAL \data_mem_data_in4~combout\ : std_logic;
SIGNAL \data_mem_data_in2~combout\ : std_logic;
SIGNAL \data_mem_data_in15~combout\ : std_logic;
SIGNAL \data_mem_data_in11~combout\ : std_logic;
SIGNAL \data_mem_data_in9~combout\ : std_logic;
SIGNAL \instr_mem_data10~combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff10|q~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_dp|u_pc|ff3|q~1_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \u_dp|u_pc|ff3|q~regout\ : std_logic;
SIGNAL \instr_mem_data14~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff14|q~regout\ : std_logic;
SIGNAL \instr_mem_data15~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff15|q~regout\ : std_logic;
SIGNAL \u_ctrl|n0~3_combout\ : std_logic;
SIGNAL \u_ctrl|n0~4_combout\ : std_logic;
SIGNAL \u_ctrl|u0|q~regout\ : std_logic;
SIGNAL \u_ctrl|n2~0_combout\ : std_logic;
SIGNAL \u_ctrl|u2|q~regout\ : std_logic;
SIGNAL \u_ctrl|n0~2_combout\ : std_logic;
SIGNAL \u_ctrl|n1~0_combout\ : std_logic;
SIGNAL \u_ctrl|u1|q~regout\ : std_logic;
SIGNAL \u_ctrl|pc_inc~combout\ : std_logic;
SIGNAL \u_dp|u_pc|mu0|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_pc|ff2|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_pc|ff3|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff4|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_pc|ff6|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff6|q~1_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_pc|ff7|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_pc|ff5|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_pc|ff1|q~0_combout\ : std_logic;
SIGNAL \u_dp|u_pc|ff1|q~regout\ : std_logic;
SIGNAL \instr_mem_data7~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff7|q~regout\ : std_logic;
SIGNAL \instr_mem_data13~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff13|q~regout\ : std_logic;
SIGNAL \u_ctrl|wb_sel1~0_combout\ : std_logic;
SIGNAL \data_mem_data_in7~combout\ : std_logic;
SIGNAL \u_ctrl|wb_sel0~0_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~2_combout\ : std_logic;
SIGNAL \u_ctrl|rf_wr~0_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~0_combout\ : std_logic;
SIGNAL \u_ctrl|shl~0_combout\ : std_logic;
SIGNAL \instr_mem_data4~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff4|q~regout\ : std_logic;
SIGNAL \data_mem_data_in8~combout\ : std_logic;
SIGNAL \instr_mem_data12~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff12|q~regout\ : std_logic;
SIGNAL \instr_mem_data5~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~56_combout\ : std_logic;
SIGNAL \u_dp|is_addi~0_combout\ : std_logic;
SIGNAL \instr_mem_data2~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~feeder_combout\ : std_logic;
SIGNAL \instr_mem_data8~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff8|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff8|q~regout\ : std_logic;
SIGNAL \instr_mem_data11~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff11|q~regout\ : std_logic;
SIGNAL \instr_mem_data9~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff9|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|we_dec[15]~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|we_dec[13]~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \instr_mem_data0~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|we_dec[7]~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|we_dec[5]~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia15~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia9~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia9~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia15~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib9~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia15~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia4~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \instr_mem_data3~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \instr_mem_data1~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia8~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia8~1_combout\ : std_logic;
SIGNAL \u_ctrl|mem_wr~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib8~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib7~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib7~3_combout\ : std_logic;
SIGNAL \data_mem_data_in6~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~5_combout\ : std_logic;
SIGNAL \instr_mem_data6~combout\ : std_logic;
SIGNAL \u_dp|u_ir|ff6|q~regout\ : std_logic;
SIGNAL \data_mem_data_in5~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib5~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib5~2_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~11_combout\ : std_logic;
SIGNAL \data_mem_data_in3~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~14_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia15~0_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[2]~16_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia2~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia2~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia2~2_combout\ : std_logic;
SIGNAL \data_mem_data_in1~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~24_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_b_vec[0]~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia0~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia0~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib0~2_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~44_combout\ : std_logic;
SIGNAL \data_mem_data_in0~combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st3|out_eq~0_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st7|out_eq~0_combout\ : std_logic;
SIGNAL \data_mem_data_in12~combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib12~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia12~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia12~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib11~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia11~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia11~1_combout\ : std_logic;
SIGNAL \data_mem_data_in10~combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib10~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U9|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U10|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~62_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~63_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib10~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff10|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia10~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia10~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U10|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U11|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U12|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~58_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~59_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[11]~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U11|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~60_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~61_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff11|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \data_mem_data_in13~combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib13~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib13~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U12|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U13|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~55_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~57_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st11|out_eq~1_combout\ : std_logic;
SIGNAL \data_mem_data_in14~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~53_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib14~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib14~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib14~combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U13|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[14]~5_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~54_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff14|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia15~4_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia15~5_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia14~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia14~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U14|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~51_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~49_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~52_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st11|out_eq~0_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st11|out_eq~2_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st7|out_eq~1_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st7|out_eq~combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:15:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st3|out_eq~1_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st3|out_eq~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~30_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~34_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~35_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~36_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~37_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~38_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~39_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~40_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~41_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~42_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~43_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[0]~46_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff0|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~25_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~26_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~27_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~22_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~23_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[1]~28_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:12:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib1~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib0~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib0~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U0|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_b_vec[1]~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia1~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia1~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U1|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U2|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[2]~17_combout\ : std_logic;
SIGNAL \u_ctrl|wb_sel1~1_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~4_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~0_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~1_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~8_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~9_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~10_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~5_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~6_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~7_combout\ : std_logic;
SIGNAL \u_dp|u_cmp|st0|out_gt~11_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[2]~19_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[2]~20_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data[2]~21_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff2|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib2~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U2|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib3~0_combout\ : std_logic;
SIGNAL \u_dp|ula_b_vec[3]~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia3~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia3~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U3|Sum~combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[3]~4_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~13_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~15_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:3:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[4]~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia4~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia4~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib3~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U3|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U4|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~10_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~12_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:7:u_reg|ff4|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib4~2_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U4|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U5|Sum~combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[5]~2_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~7_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~9_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff5|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[6]~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia5~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia5~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U5|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ib6~3_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U6|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~4_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff6|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia6~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_ela|ia6~1_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U6|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U7|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U8|Cout~0_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U9|Sum~combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[9]~11_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~64_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~65_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:10:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:8:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:1:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff9|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[8]~12_combout\ : std_logic;
SIGNAL \u_dp|u_ula|u_add|U8|Sum~combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~66_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~67_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:5:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:0:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~5_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff8|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_dp|ula_shifter_res[7]~0_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~1_combout\ : std_logic;
SIGNAL \u_dp|rf_wd_data~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:9:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~1_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:6:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~3_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_regs:14:u_reg|ff7|q~regout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~8_combout\ : std_logic;
SIGNAL \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ : std_logic;
SIGNAL \u_ctrl|mem_rd~2_combout\ : std_logic;
SIGNAL \u_ctrl|mem_rd~3_combout\ : std_logic;
SIGNAL \u_ctrl|mem_wr~0_combout\ : std_logic;
SIGNAL \u_ctrl|mem_wr~2_combout\ : std_logic;
SIGNAL \u_dp|u_rf|we_dec\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_instr_mem_data15 <= instr_mem_data15;
ww_instr_mem_data14 <= instr_mem_data14;
ww_instr_mem_data13 <= instr_mem_data13;
ww_instr_mem_data12 <= instr_mem_data12;
ww_instr_mem_data11 <= instr_mem_data11;
ww_instr_mem_data10 <= instr_mem_data10;
ww_instr_mem_data9 <= instr_mem_data9;
ww_instr_mem_data8 <= instr_mem_data8;
ww_instr_mem_data7 <= instr_mem_data7;
ww_instr_mem_data6 <= instr_mem_data6;
ww_instr_mem_data5 <= instr_mem_data5;
ww_instr_mem_data4 <= instr_mem_data4;
ww_instr_mem_data3 <= instr_mem_data3;
ww_instr_mem_data2 <= instr_mem_data2;
ww_instr_mem_data1 <= instr_mem_data1;
ww_instr_mem_data0 <= instr_mem_data0;
ww_data_mem_data_in15 <= data_mem_data_in15;
ww_data_mem_data_in14 <= data_mem_data_in14;
ww_data_mem_data_in13 <= data_mem_data_in13;
ww_data_mem_data_in12 <= data_mem_data_in12;
ww_data_mem_data_in11 <= data_mem_data_in11;
ww_data_mem_data_in10 <= data_mem_data_in10;
ww_data_mem_data_in9 <= data_mem_data_in9;
ww_data_mem_data_in8 <= data_mem_data_in8;
ww_data_mem_data_in7 <= data_mem_data_in7;
ww_data_mem_data_in6 <= data_mem_data_in6;
ww_data_mem_data_in5 <= data_mem_data_in5;
ww_data_mem_data_in4 <= data_mem_data_in4;
ww_data_mem_data_in3 <= data_mem_data_in3;
ww_data_mem_data_in2 <= data_mem_data_in2;
ww_data_mem_data_in1 <= data_mem_data_in1;
ww_data_mem_data_in0 <= data_mem_data_in0;
instr_addr7 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr7);
instr_addr6 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr6);
instr_addr5 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr5);
instr_addr4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr4);
instr_addr3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr3);
instr_addr2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr2);
instr_addr1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr1);
instr_addr0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_instr_addr0);
data_addr7 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr7);
data_addr6 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr6);
data_addr5 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr5);
data_addr4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr4);
data_addr3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr3);
data_addr2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr2);
data_addr1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr1);
data_addr0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_addr0);
data_mem_data_out15 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out15);
data_mem_data_out14 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out14);
data_mem_data_out13 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out13);
data_mem_data_out12 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out12);
data_mem_data_out11 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out11);
data_mem_data_out10 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out10);
data_mem_data_out9 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out9);
data_mem_data_out8 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out8);
data_mem_data_out7 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out7);
data_mem_data_out6 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out6);
data_mem_data_out5 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out5);
data_mem_data_out4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out4);
data_mem_data_out3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out3);
data_mem_data_out2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out2);
data_mem_data_out1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out1);
data_mem_data_out0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_data_mem_data_out0);
mem_rd <= IEEE.STD_LOGIC_1164.TO_BIT(ww_mem_rd);
mem_wr <= IEEE.STD_LOGIC_1164.TO_BIT(ww_mem_wr);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: LCFF_X43_Y34_N25
\u_dp|u_rf|gen_regs:1:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X40_Y32_N26
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\) # (\u_dp|u_rf|gen_regs:1:u_reg|ff7|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:0:u_reg|ff7|q~regout\ & 
-- (!\u_dp|u_ir|ff5|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:0:u_reg|ff7|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:1:u_reg|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y32_N8
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff7|q~regout\)) # (!\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff7|q~regout\))))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff7|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:2:u_reg|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~5_combout\);

-- Location: LCFF_X42_Y33_N21
\u_dp|u_rf|gen_regs:10:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X43_Y33_N12
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_rf|gen_regs:10:u_reg|ff6|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff6|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff6|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0_combout\);

-- Location: LCFF_X40_Y30_N21
\u_dp|u_rf|gen_regs:8:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~regout\);

-- Location: LCFF_X41_Y32_N5
\u_dp|u_rf|gen_regs:7:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff6|q~regout\);

-- Location: LCFF_X40_Y32_N21
\u_dp|u_rf|gen_regs:3:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X40_Y32_N30
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff6|q~regout\) # ((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_regs:3:u_reg|ff6|q~regout\ & 
-- !\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff6|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7_combout\);

-- Location: LCFF_X43_Y33_N31
\u_dp|u_rf|gen_regs:6:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~regout\);

-- Location: LCFF_X41_Y30_N19
\u_dp|u_rf|gen_regs:4:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X41_Y30_N0
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff5|q~regout\))) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:4:u_reg|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X43_Y33_N20
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:7:u_reg|ff5|q~regout\)) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:6:u_reg|ff5|q~regout\))))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff5|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~0_combout\,
	datad => \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X41_Y29_N3
\u_dp|u_rf|gen_regs:8:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff5|q~regout\);

-- Location: LCFF_X43_Y32_N5
\u_dp|u_rf|gen_regs:2:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X43_Y32_N10
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:2:u_reg|ff5|q~regout\))) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:0:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4_combout\);

-- Location: LCFF_X43_Y32_N17
\u_dp|u_rf|gen_regs:2:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~regout\);

-- Location: LCFF_X41_Y27_N25
\u_dp|u_rf|gen_regs:4:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~regout\);

-- Location: LCFF_X40_Y27_N1
\u_dp|u_rf|gen_regs:12:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~regout\);

-- Location: LCFF_X41_Y29_N17
\u_dp|u_rf|gen_regs:9:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff3|q~regout\);

-- Location: LCFF_X42_Y29_N9
\u_dp|u_rf|gen_regs:6:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff3|q~regout\);

-- Location: LCFF_X44_Y29_N17
\u_dp|u_rf|gen_regs:1:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff3|q~regout\);

-- Location: LCFF_X42_Y28_N25
\u_dp|u_rf|gen_regs:13:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~regout\);

-- Location: LCFF_X45_Y28_N13
\u_dp|u_rf|gen_regs:12:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X43_Y29_N18
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff3|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:12:u_reg|ff3|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y29_N6
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff3|q~regout\))) # (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:13:u_reg|ff3|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X45_Y31_N13
\u_dp|u_rf|gen_regs:10:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X45_Y31_N28
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff2|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff2|q~regout\ & 
-- !\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X42_Y29_N10
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff2|q~regout\))) # (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff2|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff2|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X43_Y28_N15
\u_dp|u_rf|gen_regs:5:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X42_Y29_N30
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\) # ((\u_dp|u_rf|gen_regs:7:u_reg|ff2|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (!\u_dp|u_ir|ff7|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:3:u_reg|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7_combout\);

-- Location: LCFF_X44_Y28_N13
\u_dp|u_rf|gen_regs:3:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~regout\);

-- Location: LCFF_X44_Y33_N5
\u_dp|u_rf|gen_regs:13:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y31_N26
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_ir|ff4|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff1|q~regout\))) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:12:u_reg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_regs:13:u_reg|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\);

-- Location: LCFF_X43_Y29_N13
\u_dp|u_rf|gen_regs:15:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X43_Y29_N26
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff1|q~regout\)) # (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:14:u_reg|ff1|q~regout\))))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:15:u_reg|ff1|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X44_Y34_N7
\u_dp|u_rf|gen_regs:10:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~regout\);

-- Location: LCFF_X43_Y34_N13
\u_dp|u_rf|gen_regs:1:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff15|q~regout\);

-- Location: LCFF_X42_Y34_N13
\u_dp|u_rf|gen_regs:13:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff15|q~regout\);

-- Location: LCFF_X43_Y29_N29
\u_dp|u_rf|gen_regs:14:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff14|q~regout\);

-- Location: LCFF_X44_Y33_N25
\u_dp|u_rf|gen_regs:13:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~regout\);

-- Location: LCFF_X43_Y27_N19
\u_dp|u_rf|gen_regs:4:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff14|q~regout\);

-- Location: LCFF_X43_Y27_N17
\u_dp|u_rf|gen_regs:8:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X44_Y30_N2
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff14|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:3:u_reg|ff14|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y29_N2
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff14|q~regout\))) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:11:u_reg|ff14|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff14|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X44_Y30_N17
\u_dp|u_rf|gen_regs:6:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~regout\);

-- Location: LCFF_X45_Y29_N1
\u_dp|u_rf|gen_regs:2:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff13|q~regout\);

-- Location: LCFF_X44_Y29_N13
\u_dp|u_rf|gen_regs:1:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff12|q~regout\);

-- Location: LCFF_X45_Y31_N27
\u_dp|u_rf|gen_regs:10:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff12|q~regout\);

-- Location: LCFF_X44_Y30_N29
\u_dp|u_rf|gen_regs:6:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X45_Y31_N22
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff12|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\);

-- Location: LCFF_X46_Y31_N17
\u_dp|u_rf|gen_regs:14:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X45_Y31_N26
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff12|q~regout\)) # (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff12|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~3_combout\);

-- Location: LCFF_X44_Y27_N23
\u_dp|u_rf|gen_regs:11:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X44_Y27_N16
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\) # (\u_dp|u_rf|gen_regs:11:u_reg|ff12|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff12|q~regout\ & 
-- (!\u_dp|u_ir|ff2|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\);

-- Location: LCFF_X44_Y29_N11
\u_dp|u_rf|gen_regs:15:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X44_Y30_N30
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff12|q~regout\)) # (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:7:u_reg|ff12|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X46_Y30_N15
\u_dp|u_rf|gen_regs:1:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff11|q~regout\);

-- Location: LCFF_X46_Y32_N11
\u_dp|u_rf|gen_regs:3:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~regout\);

-- Location: LCFF_X45_Y32_N25
\u_dp|u_rf|gen_regs:11:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X46_Y29_N30
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff9|q~regout\) # ((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((!\u_dp|u_ir|ff0|q~regout\ & 
-- \u_dp|u_rf|gen_regs:8:u_reg|ff9|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff9|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff9|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2_combout\);

-- Location: LCFF_X47_Y32_N21
\u_dp|u_rf|gen_regs:11:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X46_Y29_N12
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~3_combout\ = (\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2_combout\ & (((\u_dp|u_rf|gen_regs:11:u_reg|ff9|q~regout\) # (!\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff9|q~regout\ & (\u_dp|u_ir|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff9|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~2_combout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X45_Y29_N4
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_regs:2:u_reg|ff9|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff9|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff9|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4_combout\);

-- Location: LCFF_X46_Y32_N5
\u_dp|u_rf|gen_regs:3:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y29_N26
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~5_combout\ = (\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff9|q~regout\) # ((!\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4_combout\ & 
-- (((\u_dp|u_rf|gen_regs:1:u_reg|ff9|q~regout\ & \u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff9|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~4_combout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff9|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X45_Y29_N16
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~3_combout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~5_combout\,
	datac => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6_combout\);

-- Location: LCFF_X45_Y29_N21
\u_dp|u_rf|gen_regs:2:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~regout\);

-- Location: LCFF_X47_Y30_N25
\u_dp|u_rf|gen_regs:8:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X46_Y29_N22
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:4:u_reg|ff8|q~regout\) # ((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((!\u_dp|u_ir|ff3|q~regout\ & 
-- \u_dp|u_rf|gen_regs:0:u_reg|ff8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4_combout\);

-- Location: LCFF_X47_Y29_N15
\u_dp|u_rf|gen_regs:12:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X46_Y29_N24
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~5_combout\ = (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:12:u_reg|ff8|q~regout\) # ((!\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4_combout\ & 
-- (((\u_dp|u_ir|ff3|q~regout\ & \u_dp|u_rf|gen_regs:8:u_reg|ff8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~4_combout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~5_combout\);

-- Location: LCFF_X46_Y32_N7
\u_dp|u_rf|gen_regs:7:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X44_Y32_N12
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_regs:7:u_reg|ff6|q~regout\) # (\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff6|q~regout\ & 
-- ((!\u_dp|u_ir|ff3|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff6|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X44_Y32_N6
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff6|q~regout\)) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:11:u_reg|ff6|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X43_Y28_N28
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff4|q~regout\) # ((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_regs:1:u_reg|ff4|q~regout\ & 
-- !\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff4|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X42_Y28_N16
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff4|q~regout\))) # (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff4|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X47_Y30_N0
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff8|q~regout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_regs:8:u_reg|ff8|q~regout\ & 
-- !\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff8|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X46_Y32_N2
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff8|q~regout\))) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:10:u_reg|ff8|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~0_combout\,
	datad => \u_dp|u_rf|gen_regs:11:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X41_Y32_N16
\u_dp|u_ula|u_ela|ib6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib6~2_combout\ = (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\ & ((!\u_dp|is_addi~0_combout\)))) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib6~2_combout\);

-- Location: LCCOMB_X42_Y29_N0
\u_dp|ula_b_vec[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_b_vec[2]~1_combout\ = (\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|ula_b_vec[2]~1_combout\);

-- Location: LCCOMB_X41_Y31_N14
\u_dp|u_ula|u_ela|ib2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib2~1_combout\ = (\u_dp|ula_b_vec[2]~1_combout\ & ((!\u_dp|u_ula|u_ela|ia15~1_combout\))) # (!\u_dp|ula_b_vec[2]~1_combout\ & (\u_ctrl|mem_wr~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datad => \u_dp|ula_b_vec[2]~1_combout\,
	combout => \u_dp|u_ula|u_ela|ib2~1_combout\);

-- Location: LCCOMB_X42_Y31_N10
\u_dp|u_ula|u_ela|ib1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib1~1_combout\ = (\u_dp|ula_b_vec[1]~2_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\)) # (!\u_dp|ula_b_vec[1]~2_combout\ & ((\u_ctrl|mem_wr~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|ula_b_vec[1]~2_combout\,
	combout => \u_dp|u_ula|u_ela|ib1~1_combout\);

-- Location: LCCOMB_X41_Y31_N30
\u_dp|u_ula|u_ela|ia7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia7~0_combout\ = (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & \u_dp|u_ula|u_ela|ia15~3_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datac => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_ula|u_ela|ia15~3_combout\,
	combout => \u_dp|u_ula|u_ela|ia7~0_combout\);

-- Location: LCCOMB_X41_Y31_N12
\u_dp|u_ula|u_ela|ia7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia7~1_combout\ = (\u_dp|u_ula|u_ela|ia7~0_combout\) # ((\u_dp|u_ula|u_ela|ia15~2_combout\ & (!\u_dp|is_addi~0_combout\ & \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_ula|u_ela|ia7~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia7~1_combout\);

-- Location: LCCOMB_X43_Y34_N10
\u_dp|u_ula|u_add|U7|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U7|Sum~combout\ = \u_dp|u_ula|u_add|U6|Cout~0_combout\ $ (\u_dp|u_ula|u_ela|ia7~1_combout\ $ (((\u_dp|u_ula|u_ela|ib7~2_combout\) # (\u_dp|u_ula|u_ela|ib7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_add|U6|Cout~0_combout\,
	datab => \u_dp|u_ula|u_ela|ib7~2_combout\,
	datac => \u_dp|u_ula|u_ela|ib7~3_combout\,
	datad => \u_dp|u_ula|u_ela|ia7~1_combout\,
	combout => \u_dp|u_ula|u_add|U7|Sum~combout\);

-- Location: LCFF_X46_Y33_N3
\u_dp|u_ir|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_ir|ff10|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff10|q~regout\);

-- Location: LCCOMB_X40_Y30_N4
\u_dp|rf_wd_data[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[2]~18_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (\u_dp|u_ir|ff2|q~regout\ & ((!\u_ctrl|wb_sel0~0_combout\) # (!\u_ctrl|rf_wr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|rf_wr~0_combout\,
	datab => \u_ctrl|wb_sel1~0_combout\,
	datac => \u_ctrl|wb_sel0~0_combout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|rf_wd_data[2]~18_combout\);

-- Location: LCCOMB_X43_Y34_N20
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff15|q~regout\) # ((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_regs:1:u_reg|ff15|q~regout\ & 
-- !\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff15|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff15|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X42_Y34_N12
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff15|q~regout\))) # (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff15|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X42_Y32_N16
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\) # ((\u_dp|u_rf|gen_regs:10:u_reg|ff14|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (!\u_dp|u_ir|ff4|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff14|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff14|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X45_Y29_N14
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff13|q~regout\) # ((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff13|q~regout\ & 
-- !\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff13|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X46_Y29_N16
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff13|q~regout\)) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff13|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y27_N6
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_regs:9:u_reg|ff12|q~regout\) # (\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:8:u_reg|ff12|q~regout\ & 
-- ((!\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y27_N20
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~1_combout\ = (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff12|q~regout\) # ((!\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0_combout\ & 
-- (((\u_dp|u_rf|gen_regs:10:u_reg|ff12|q~regout\ & \u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~0_combout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff12|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X41_Y30_N24
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff12|q~regout\) # ((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_regs:4:u_reg|ff12|q~regout\ & 
-- !\u_dp|u_ir|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff12|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X45_Y31_N14
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff11|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff11|q~regout\ & 
-- !\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff11|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:2:u_reg|ff11|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X46_Y32_N30
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff9|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:3:u_reg|ff9|q~regout\ & 
-- !\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff9|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X46_Y32_N14
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff9|q~regout\)) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:7:u_reg|ff9|q~regout\))))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff9|q~regout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X42_Y33_N8
\u_dp|u_cmp|st0|out_gt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~2_combout\ = (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\) # ((!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~2_combout\);

-- Location: LCCOMB_X42_Y33_N2
\u_dp|u_cmp|st0|out_gt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~3_combout\ = (\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_cmp|st0|out_gt~2_combout\) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\))) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\ & 
-- (\u_dp|u_cmp|st0|out_gt~2_combout\ & !\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_cmp|st0|out_gt~2_combout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~3_combout\);

-- Location: LCCOMB_X42_Y35_N16
\u_dp|u_ula|u_add|U1|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U1|Sum~combout\ = \u_dp|u_ula|u_add|U0|Cout~0_combout\ $ (\u_dp|u_ula|u_ela|ia1~1_combout\ $ (((\u_dp|u_ula|u_ela|ib1~0_combout\) # (\u_dp|u_ula|u_ela|ib1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_add|U0|Cout~0_combout\,
	datab => \u_dp|u_ula|u_ela|ib1~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia1~1_combout\,
	datad => \u_dp|u_ula|u_ela|ib1~1_combout\,
	combout => \u_dp|u_ula|u_add|U1|Sum~combout\);

-- Location: LCCOMB_X42_Y33_N4
\u_dp|rf_wd_data[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~29_combout\ = (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\ & !\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\) # ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\ & !\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[0]~29_combout\);

-- Location: LCCOMB_X42_Y33_N10
\u_dp|rf_wd_data[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~31_combout\ = (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\) # ((!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ & \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[0]~31_combout\);

-- Location: LCCOMB_X42_Y33_N28
\u_dp|rf_wd_data[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~32_combout\ = (\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & ((\u_dp|rf_wd_data[0]~31_combout\) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & 
-- (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\ & \u_dp|rf_wd_data[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|rf_wd_data[0]~31_combout\,
	combout => \u_dp|rf_wd_data[0]~32_combout\);

-- Location: LCCOMB_X41_Y33_N10
\u_dp|rf_wd_data[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~33_combout\ = (!\u_dp|u_cmp|st7|out_eq~combout\ & ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ & ((\u_dp|rf_wd_data[0]~32_combout\) # (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\ & \u_dp|rf_wd_data[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_cmp|st7|out_eq~combout\,
	datad => \u_dp|rf_wd_data[0]~32_combout\,
	combout => \u_dp|rf_wd_data[0]~33_combout\);

-- Location: LCCOMB_X41_Y28_N6
\u_dp|rf_wd_data[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~45_combout\ = (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & (\u_dp|u_ir|ff12|q~regout\ & \u_ctrl|shl~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data[0]~45_combout\);

-- Location: LCCOMB_X40_Y31_N2
\u_dp|rf_wd_data~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~47_combout\ = (!\u_ctrl|wb_sel1~0_combout\ & (\u_ctrl|rf_wr~0_combout\ & (\data_mem_data_in15~combout\ & \u_ctrl|wb_sel0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_ctrl|rf_wr~0_combout\,
	datac => \data_mem_data_in15~combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~47_combout\);

-- Location: LCCOMB_X40_Y31_N16
\u_dp|rf_wd_data~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~48_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ & \u_ctrl|shl~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data~48_combout\);

-- Location: LCCOMB_X40_Y31_N18
\u_dp|rf_wd_data~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~50_combout\ = (\u_dp|rf_wd_data~47_combout\) # ((\u_dp|rf_wd_data~48_combout\ & ((\u_dp|rf_wd_data~49_combout\) # (!\u_ctrl|rf_wr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|rf_wr~0_combout\,
	datab => \u_dp|rf_wd_data~48_combout\,
	datac => \u_dp|rf_wd_data~49_combout\,
	datad => \u_dp|rf_wd_data~47_combout\,
	combout => \u_dp|rf_wd_data~50_combout\);

-- Location: LCCOMB_X40_Y29_N14
\u_dp|u_ula|u_ela|ia13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia13~0_combout\ = (\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia13~0_combout\);

-- Location: LCCOMB_X40_Y29_N8
\u_dp|u_ula|u_ela|ia13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia13~1_combout\ = (\u_dp|u_ula|u_ela|ia13~0_combout\) # ((!\u_dp|is_addi~0_combout\ & (\u_dp|u_ula|u_ela|ia15~2_combout\ & \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia13~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia13~1_combout\);

-- Location: LCCOMB_X41_Y30_N4
\u_dp|u_ula|u_ela|ib11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib11~2_combout\ = (\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\ & ((!\u_dp|is_addi~0_combout\)))) # (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib11~2_combout\);

-- Location: LCCOMB_X41_Y30_N10
\u_dp|u_ula|u_ela|ib15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib15~0_combout\ = (\u_dp|is_addi~0_combout\ & (((!\u_dp|u_ula|u_ela|ib0~2_combout\)))) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\)) # 
-- (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & ((!\u_dp|u_ula|u_ela|ib0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ula|u_ela|ib0~2_combout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib15~0_combout\);

-- Location: LCCOMB_X40_Y29_N10
\u_dp|ula_shifter_res[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[14]~6_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|ula_shifter_res[14]~6_combout\);

-- Location: LCCOMB_X44_Y30_N12
\u_dp|ula_shifter_res[13]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[13]~7_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[13]~7_combout\);

-- Location: LCCOMB_X42_Y30_N10
\u_dp|ula_shifter_res[12]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[12]~8_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_ctrl|shl~0_combout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[12]~8_combout\);

-- Location: LCCOMB_X42_Y30_N16
\u_dp|ula_shifter_res[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[10]~10_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[10]~10_combout\);

-- Location: LCCOMB_X41_Y31_N20
\u_dp|u_ula|u_ela|ib4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib4~3_combout\ = (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & \u_dp|u_ir|ff14|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ib4~3_combout\);

-- Location: LCCOMB_X42_Y30_N14
\u_dp|u_ula|u_ela|ib12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib12~3_combout\ = (\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & !\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib12~3_combout\);

-- Location: LCCOMB_X43_Y33_N28
\u_dp|u_ula|u_ela|ib9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib9~3_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & !\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib9~3_combout\);

-- Location: LCCOMB_X43_Y33_N6
\u_dp|u_ula|u_ela|ib8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib8~3_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & !\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib8~3_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in4,
	combout => \data_mem_data_in4~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in2,
	combout => \data_mem_data_in2~combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in15~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in15,
	combout => \data_mem_data_in15~combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in11,
	combout => \data_mem_data_in11~combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in9~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in9,
	combout => \data_mem_data_in9~combout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data10,
	combout => \instr_mem_data10~combout\);

-- Location: LCCOMB_X40_Y30_N20
\u_dp|u_rf|gen_regs:8:u_reg|ff6|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~feeder_combout\ = \u_dp|rf_wd_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~6_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~feeder_combout\);

-- Location: LCCOMB_X40_Y32_N20
\u_dp|u_rf|gen_regs:3:u_reg|ff6|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~feeder_combout\ = \u_dp|rf_wd_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~6_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff6|q~feeder_combout\);

-- Location: LCCOMB_X41_Y30_N18
\u_dp|u_rf|gen_regs:4:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~feeder_combout\);

-- Location: LCCOMB_X43_Y33_N30
\u_dp|u_rf|gen_regs:6:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~feeder_combout\);

-- Location: LCCOMB_X43_Y32_N4
\u_dp|u_rf|gen_regs:2:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~feeder_combout\);

-- Location: LCCOMB_X43_Y32_N16
\u_dp|u_rf|gen_regs:2:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~feeder_combout\);

-- Location: LCCOMB_X40_Y27_N0
\u_dp|u_rf|gen_regs:12:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N24
\u_dp|u_rf|gen_regs:4:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~feeder_combout\);

-- Location: LCCOMB_X42_Y28_N24
\u_dp|u_rf|gen_regs:13:u_reg|ff3|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~feeder_combout\ = \u_dp|rf_wd_data~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~15_combout\,
	combout => \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~feeder_combout\);

-- Location: LCCOMB_X45_Y28_N12
\u_dp|u_rf|gen_regs:12:u_reg|ff3|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~feeder_combout\ = \u_dp|rf_wd_data~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~15_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~feeder_combout\);

-- Location: LCCOMB_X44_Y28_N12
\u_dp|u_rf|gen_regs:3:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~feeder_combout\);

-- Location: LCCOMB_X44_Y34_N6
\u_dp|u_rf|gen_regs:10:u_reg|ff15|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~feeder_combout\ = \u_dp|rf_wd_data~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~52_combout\,
	combout => \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~feeder_combout\);

-- Location: LCCOMB_X44_Y33_N24
\u_dp|u_rf|gen_regs:13:u_reg|ff14|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~feeder_combout\ = \u_dp|rf_wd_data~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~54_combout\,
	combout => \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~feeder_combout\);

-- Location: LCCOMB_X44_Y30_N16
\u_dp|u_rf|gen_regs:6:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~feeder_combout\);

-- Location: LCCOMB_X46_Y31_N16
\u_dp|u_rf|gen_regs:14:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~feeder_combout\);

-- Location: LCCOMB_X44_Y27_N22
\u_dp|u_rf|gen_regs:11:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff12|q~feeder_combout\);

-- Location: LCCOMB_X44_Y30_N28
\u_dp|u_rf|gen_regs:6:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff12|q~feeder_combout\);

-- Location: LCCOMB_X46_Y32_N10
\u_dp|u_rf|gen_regs:3:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~feeder_combout\);

-- Location: LCCOMB_X45_Y32_N24
\u_dp|u_rf|gen_regs:11:u_reg|ff10|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~feeder_combout\ = \u_dp|rf_wd_data~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~63_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~feeder_combout\);

-- Location: LCCOMB_X47_Y32_N20
\u_dp|u_rf|gen_regs:11:u_reg|ff9|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~feeder_combout\ = \u_dp|rf_wd_data~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~65_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff9|q~feeder_combout\);

-- Location: LCCOMB_X47_Y29_N14
\u_dp|u_rf|gen_regs:12:u_reg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~feeder_combout\ = \u_dp|rf_wd_data~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~67_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~feeder_combout\);

-- Location: LCCOMB_X45_Y29_N20
\u_dp|u_rf|gen_regs:2:u_reg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~feeder_combout\ = \u_dp|rf_wd_data~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~67_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~feeder_combout\);

-- Location: LCCOMB_X46_Y33_N2
\u_dp|u_ir|ff10|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ir|ff10|q~feeder_combout\ = \instr_mem_data10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_mem_data10~combout\,
	combout => \u_dp|u_ir|ff10|q~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y33_N28
\u_dp|u_pc|ff3|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff3|q~1_combout\ = \u_dp|u_pc|ff3|q~0_combout\ $ (\u_dp|u_pc|ff3|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_pc|ff3|q~0_combout\,
	datac => \u_dp|u_pc|ff3|q~regout\,
	combout => \u_dp|u_pc|ff3|q~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X64_Y33_N29
\u_dp|u_pc|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff3|q~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff3|q~regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data14~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data14,
	combout => \instr_mem_data14~combout\);

-- Location: LCFF_X40_Y31_N23
\u_dp|u_ir|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data14~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff14|q~regout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data15~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data15,
	combout => \instr_mem_data15~combout\);

-- Location: LCFF_X41_Y31_N9
\u_dp|u_ir|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data15~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff15|q~regout\);

-- Location: LCCOMB_X40_Y34_N20
\u_ctrl|n0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|n0~3_combout\ = ((!\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff14|q~regout\ & \u_dp|u_ir|ff15|q~regout\))) # (!\u_ctrl|u0|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff15|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|n0~3_combout\);

-- Location: LCCOMB_X40_Y34_N22
\u_ctrl|n0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|n0~4_combout\ = (!\u_ctrl|u2|q~regout\ & (\u_ctrl|n0~3_combout\ & !\u_ctrl|u1|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|u2|q~regout\,
	datac => \u_ctrl|n0~3_combout\,
	datad => \u_ctrl|u1|q~regout\,
	combout => \u_ctrl|n0~4_combout\);

-- Location: LCFF_X40_Y34_N23
\u_ctrl|u0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_ctrl|n0~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ctrl|u0|q~regout\);

-- Location: LCCOMB_X40_Y34_N14
\u_ctrl|n2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|n2~0_combout\ = (\u_ctrl|u1|q~regout\ & (!\u_ctrl|u2|q~regout\ & ((\u_ctrl|mem_rd~2_combout\) # (!\u_ctrl|u0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|mem_rd~2_combout\,
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|n2~0_combout\);

-- Location: LCFF_X40_Y34_N15
\u_ctrl|u2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_ctrl|n2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ctrl|u2|q~regout\);

-- Location: LCCOMB_X40_Y34_N6
\u_ctrl|n0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|n0~2_combout\ = (!\u_ctrl|u2|q~regout\ & !\u_ctrl|u1|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u1|q~regout\,
	combout => \u_ctrl|n0~2_combout\);

-- Location: LCCOMB_X40_Y34_N28
\u_ctrl|n1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|n1~0_combout\ = (\u_ctrl|n0~2_combout\ & (\u_ctrl|u0|q~regout\ & ((!\u_dp|u_ir|ff14|q~regout\) # (!\u_dp|u_ir|ff15|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff15|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_ctrl|n0~2_combout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|n1~0_combout\);

-- Location: LCFF_X40_Y34_N29
\u_ctrl|u1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_ctrl|n1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ctrl|u1|q~regout\);

-- Location: LCCOMB_X40_Y34_N2
\u_ctrl|pc_inc\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|pc_inc~combout\ = (!\u_ctrl|u1|q~regout\ & (!\u_ctrl|u2|q~regout\ & !\u_ctrl|u0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|pc_inc~combout\);

-- Location: LCCOMB_X40_Y34_N0
\u_dp|u_pc|mu0|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|mu0|d~0_combout\ = \u_dp|u_pc|ff0|q~regout\ $ (((!\u_ctrl|u2|q~regout\ & (!\u_ctrl|u1|q~regout\ & !\u_ctrl|u0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|u2|q~regout\,
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_dp|u_pc|ff0|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_dp|u_pc|mu0|d~0_combout\);

-- Location: LCFF_X40_Y34_N1
\u_dp|u_pc|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|mu0|d~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff0|q~regout\);

-- Location: LCCOMB_X40_Y34_N4
\u_dp|u_pc|ff2|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff2|q~0_combout\ = \u_dp|u_pc|ff2|q~regout\ $ (((\u_dp|u_pc|ff1|q~regout\ & (\u_ctrl|pc_inc~combout\ & \u_dp|u_pc|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_pc|ff1|q~regout\,
	datab => \u_ctrl|pc_inc~combout\,
	datac => \u_dp|u_pc|ff2|q~regout\,
	datad => \u_dp|u_pc|ff0|q~regout\,
	combout => \u_dp|u_pc|ff2|q~0_combout\);

-- Location: LCFF_X40_Y34_N5
\u_dp|u_pc|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff2|q~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff2|q~regout\);

-- Location: LCCOMB_X40_Y34_N16
\u_dp|u_pc|ff3|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff3|q~0_combout\ = (\u_dp|u_pc|ff1|q~regout\ & (\u_ctrl|pc_inc~combout\ & (\u_dp|u_pc|ff2|q~regout\ & \u_dp|u_pc|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_pc|ff1|q~regout\,
	datab => \u_ctrl|pc_inc~combout\,
	datac => \u_dp|u_pc|ff2|q~regout\,
	datad => \u_dp|u_pc|ff0|q~regout\,
	combout => \u_dp|u_pc|ff3|q~0_combout\);

-- Location: LCCOMB_X64_Y33_N6
\u_dp|u_pc|ff4|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff4|q~0_combout\ = \u_dp|u_pc|ff4|q~regout\ $ (((\u_dp|u_pc|ff3|q~0_combout\ & \u_dp|u_pc|ff3|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_pc|ff3|q~0_combout\,
	datac => \u_dp|u_pc|ff4|q~regout\,
	datad => \u_dp|u_pc|ff3|q~regout\,
	combout => \u_dp|u_pc|ff4|q~0_combout\);

-- Location: LCFF_X64_Y33_N7
\u_dp|u_pc|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff4|q~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff4|q~regout\);

-- Location: LCCOMB_X64_Y33_N2
\u_dp|u_pc|ff6|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff6|q~0_combout\ = (\u_dp|u_pc|ff5|q~regout\ & (\u_dp|u_pc|ff3|q~regout\ & (\u_dp|u_pc|ff3|q~0_combout\ & \u_dp|u_pc|ff4|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_pc|ff5|q~regout\,
	datab => \u_dp|u_pc|ff3|q~regout\,
	datac => \u_dp|u_pc|ff3|q~0_combout\,
	datad => \u_dp|u_pc|ff4|q~regout\,
	combout => \u_dp|u_pc|ff6|q~0_combout\);

-- Location: LCCOMB_X64_Y33_N30
\u_dp|u_pc|ff6|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff6|q~1_combout\ = \u_dp|u_pc|ff6|q~regout\ $ (\u_dp|u_pc|ff6|q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|u_pc|ff6|q~regout\,
	datad => \u_dp|u_pc|ff6|q~0_combout\,
	combout => \u_dp|u_pc|ff6|q~1_combout\);

-- Location: LCFF_X64_Y33_N31
\u_dp|u_pc|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff6|q~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff6|q~regout\);

-- Location: LCCOMB_X64_Y33_N0
\u_dp|u_pc|ff7|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff7|q~0_combout\ = \u_dp|u_pc|ff7|q~regout\ $ (((\u_dp|u_pc|ff6|q~0_combout\ & \u_dp|u_pc|ff6|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_pc|ff6|q~0_combout\,
	datac => \u_dp|u_pc|ff7|q~regout\,
	datad => \u_dp|u_pc|ff6|q~regout\,
	combout => \u_dp|u_pc|ff7|q~0_combout\);

-- Location: LCFF_X64_Y33_N1
\u_dp|u_pc|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff7|q~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff7|q~regout\);

-- Location: LCCOMB_X64_Y33_N16
\u_dp|u_pc|ff5|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff5|q~0_combout\ = \u_dp|u_pc|ff5|q~regout\ $ (((\u_dp|u_pc|ff3|q~0_combout\ & (\u_dp|u_pc|ff3|q~regout\ & \u_dp|u_pc|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_pc|ff3|q~0_combout\,
	datab => \u_dp|u_pc|ff3|q~regout\,
	datac => \u_dp|u_pc|ff5|q~regout\,
	datad => \u_dp|u_pc|ff4|q~regout\,
	combout => \u_dp|u_pc|ff5|q~0_combout\);

-- Location: LCFF_X64_Y33_N17
\u_dp|u_pc|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff5|q~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff5|q~regout\);

-- Location: LCCOMB_X40_Y34_N30
\u_dp|u_pc|ff1|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_pc|ff1|q~0_combout\ = \u_dp|u_pc|ff1|q~regout\ $ (((\u_ctrl|pc_inc~combout\ & \u_dp|u_pc|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|pc_inc~combout\,
	datac => \u_dp|u_pc|ff1|q~regout\,
	datad => \u_dp|u_pc|ff0|q~regout\,
	combout => \u_dp|u_pc|ff1|q~0_combout\);

-- Location: LCFF_X40_Y34_N31
\u_dp|u_pc|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_pc|ff1|q~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_pc|ff1|q~regout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data7,
	combout => \instr_mem_data7~combout\);

-- Location: LCFF_X42_Y27_N13
\u_dp|u_ir|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data7~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff7|q~regout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data13~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data13,
	combout => \instr_mem_data13~combout\);

-- Location: LCFF_X40_Y31_N5
\u_dp|u_ir|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data13~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff13|q~regout\);

-- Location: LCCOMB_X40_Y31_N4
\u_ctrl|wb_sel1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|wb_sel1~0_combout\ = (\u_dp|u_ir|ff13|q~regout\ & ((\u_dp|u_ir|ff12|q~regout\ & (!\u_dp|u_ir|ff14|q~regout\ & \u_dp|u_ir|ff15|q~regout\)) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & !\u_dp|u_ir|ff15|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	datad => \u_dp|u_ir|ff15|q~regout\,
	combout => \u_ctrl|wb_sel1~0_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in7,
	combout => \data_mem_data_in7~combout\);

-- Location: LCCOMB_X40_Y31_N22
\u_ctrl|wb_sel0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|wb_sel0~0_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & !\u_dp|u_ir|ff15|q~regout\)) # (!\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff14|q~regout\ & \u_dp|u_ir|ff15|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff14|q~regout\,
	datad => \u_dp|u_ir|ff15|q~regout\,
	combout => \u_ctrl|wb_sel0~0_combout\);

-- Location: LCCOMB_X43_Y34_N22
\u_dp|rf_wd_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~2_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (\u_dp|u_ir|ff7|q~regout\ & ((!\u_ctrl|wb_sel0~0_combout\)))) # (!\u_ctrl|wb_sel1~0_combout\ & (((\data_mem_data_in7~combout\ & \u_ctrl|wb_sel0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_ctrl|wb_sel1~0_combout\,
	datac => \data_mem_data_in7~combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~2_combout\);

-- Location: LCCOMB_X40_Y34_N26
\u_ctrl|rf_wr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|rf_wr~0_combout\ = (!\u_ctrl|u1|q~regout\ & (\u_ctrl|u2|q~regout\ & !\u_ctrl|u0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|rf_wr~0_combout\);

-- Location: LCCOMB_X43_Y34_N2
\u_dp|rf_wd_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~0_combout\ = ((!\u_ctrl|wb_sel0~0_combout\ & !\u_ctrl|wb_sel1~0_combout\)) # (!\u_ctrl|rf_wr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|rf_wr~0_combout\,
	datab => \u_ctrl|wb_sel0~0_combout\,
	datad => \u_ctrl|wb_sel1~0_combout\,
	combout => \u_dp|rf_wd_data~0_combout\);

-- Location: LCCOMB_X41_Y34_N16
\u_ctrl|shl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|shl~0_combout\ = (\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff15|q~regout\ & !\u_dp|u_ir|ff13|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff14|q~regout\,
	datab => \u_dp|u_ir|ff15|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	combout => \u_ctrl|shl~0_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data4,
	combout => \instr_mem_data4~combout\);

-- Location: LCFF_X44_Y31_N23
\u_dp|u_ir|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data4~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff4|q~regout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in8~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in8,
	combout => \data_mem_data_in8~combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data12,
	combout => \instr_mem_data12~combout\);

-- Location: LCFF_X41_Y31_N3
\u_dp|u_ir|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data12~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff12|q~regout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data5,
	combout => \instr_mem_data5~combout\);

-- Location: LCFF_X44_Y31_N17
\u_dp|u_ir|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data5~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff5|q~regout\);

-- Location: LCCOMB_X40_Y32_N28
\u_dp|rf_wd_data~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~56_combout\ = (!\u_ctrl|wb_sel1~0_combout\ & (\u_ctrl|rf_wr~0_combout\ & \u_ctrl|wb_sel0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_ctrl|rf_wr~0_combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~56_combout\);

-- Location: LCCOMB_X41_Y31_N24
\u_dp|is_addi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|is_addi~0_combout\ = (\u_dp|u_ir|ff15|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & !\u_dp|u_ir|ff14|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff15|q~regout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|is_addi~0_combout\);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data2,
	combout => \instr_mem_data2~combout\);

-- Location: LCFF_X44_Y31_N13
\u_dp|u_ir|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data2~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff2|q~regout\);

-- Location: LCCOMB_X45_Y32_N4
\u_dp|u_rf|gen_regs:15:u_reg|ff9|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~feeder_combout\ = \u_dp|rf_wd_data~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~65_combout\,
	combout => \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~feeder_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data8~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data8,
	combout => \instr_mem_data8~combout\);

-- Location: LCCOMB_X46_Y33_N0
\u_dp|u_ir|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ir|ff8|q~feeder_combout\ = \instr_mem_data8~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_mem_data8~combout\,
	combout => \u_dp|u_ir|ff8|q~feeder_combout\);

-- Location: LCFF_X46_Y33_N1
\u_dp|u_ir|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_ir|ff8|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff8|q~regout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data11,
	combout => \instr_mem_data11~combout\);

-- Location: LCCOMB_X46_Y33_N22
\u_dp|u_ir|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ir|ff11|q~feeder_combout\ = \instr_mem_data11~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_mem_data11~combout\,
	combout => \u_dp|u_ir|ff11|q~feeder_combout\);

-- Location: LCFF_X46_Y33_N23
\u_dp|u_ir|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_ir|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff11|q~regout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data9~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data9,
	combout => \instr_mem_data9~combout\);

-- Location: LCCOMB_X46_Y33_N12
\u_dp|u_ir|ff9|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ir|ff9|q~feeder_combout\ = \instr_mem_data9~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_mem_data9~combout\,
	combout => \u_dp|u_ir|ff9|q~feeder_combout\);

-- Location: LCFF_X46_Y33_N13
\u_dp|u_ir|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_ir|ff9|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff9|q~regout\);

-- Location: LCCOMB_X46_Y33_N4
\u_dp|u_rf|we_dec[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec[15]~0_combout\ = (\u_dp|u_ir|ff11|q~regout\ & \u_dp|u_ir|ff9|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_ir|ff11|q~regout\,
	datad => \u_dp|u_ir|ff9|q~regout\,
	combout => \u_dp|u_rf|we_dec[15]~0_combout\);

-- Location: LCCOMB_X45_Y33_N18
\u_dp|u_rf|we_dec[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(15) = (\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[15]~0_combout\,
	combout => \u_dp|u_rf|we_dec\(15));

-- Location: LCFF_X45_Y32_N5
\u_dp|u_rf|gen_regs:15:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X46_Y33_N30
\u_dp|u_rf|we_dec[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec[13]~1_combout\ = (\u_dp|u_ir|ff11|q~regout\ & !\u_dp|u_ir|ff9|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_ir|ff11|q~regout\,
	datad => \u_dp|u_ir|ff9|q~regout\,
	combout => \u_dp|u_rf|we_dec[13]~1_combout\);

-- Location: LCCOMB_X45_Y33_N24
\u_dp|u_rf|we_dec[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(12) = (\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[13]~1_combout\,
	combout => \u_dp|u_rf|we_dec\(12));

-- Location: LCFF_X45_Y30_N1
\u_dp|u_rf|gen_regs:12:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y33_N0
\u_dp|u_rf|we_dec[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(13) = (\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[13]~1_combout\,
	combout => \u_dp|u_rf|we_dec\(13));

-- Location: LCFF_X45_Y30_N11
\u_dp|u_rf|gen_regs:13:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff9|q~regout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data0,
	combout => \instr_mem_data0~combout\);

-- Location: LCCOMB_X44_Y31_N4
\u_dp|u_ir|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ir|ff0|q~feeder_combout\ = \instr_mem_data0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_mem_data0~combout\,
	combout => \u_dp|u_ir|ff0|q~feeder_combout\);

-- Location: LCFF_X44_Y31_N5
\u_dp|u_ir|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_ir|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff0|q~regout\);

-- Location: LCCOMB_X45_Y30_N10
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff9|q~regout\))) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:12:u_reg|ff9|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff9|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X45_Y33_N6
\u_dp|u_rf|we_dec[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(14) = (\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[15]~0_combout\,
	combout => \u_dp|u_rf|we_dec\(14));

-- Location: LCFF_X46_Y29_N3
\u_dp|u_rf|gen_regs:14:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y32_N2
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff9|q~regout\)) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:14:u_reg|ff9|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~7_combout\,
	datad => \u_dp|u_rf|gen_regs:14:u_reg|ff9|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X46_Y33_N6
\u_dp|u_rf|we_dec[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec[7]~3_combout\ = (!\u_dp|u_ir|ff11|q~regout\ & \u_dp|u_ir|ff9|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_ir|ff11|q~regout\,
	datad => \u_dp|u_ir|ff9|q~regout\,
	combout => \u_dp|u_rf|we_dec[7]~3_combout\);

-- Location: LCCOMB_X45_Y33_N10
\u_dp|u_rf|we_dec[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(7) = (\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[7]~3_combout\,
	combout => \u_dp|u_rf|we_dec\(7));

-- Location: LCFF_X46_Y32_N15
\u_dp|u_rf|gen_regs:7:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y29_N8
\u_dp|u_rf|gen_regs:6:u_reg|ff9|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~feeder_combout\ = \u_dp|rf_wd_data~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~65_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~feeder_combout\);

-- Location: LCCOMB_X45_Y33_N14
\u_dp|u_rf|we_dec[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(6) = (\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[7]~3_combout\,
	combout => \u_dp|u_rf|we_dec\(6));

-- Location: LCFF_X45_Y29_N9
\u_dp|u_rf|gen_regs:6:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X46_Y33_N24
\u_dp|u_rf|we_dec[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec[5]~2_combout\ = (!\u_dp|u_ir|ff11|q~regout\ & !\u_dp|u_ir|ff9|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_ir|ff11|q~regout\,
	datad => \u_dp|u_ir|ff9|q~regout\,
	combout => \u_dp|u_rf|we_dec[5]~2_combout\);

-- Location: LCCOMB_X45_Y33_N8
\u_dp|u_rf|we_dec[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(5) = (\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[5]~2_combout\,
	combout => \u_dp|u_rf|we_dec\(5));

-- Location: LCFF_X41_Y30_N29
\u_dp|u_rf|gen_regs:5:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y33_N12
\u_dp|u_rf|we_dec[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(4) = (\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[5]~2_combout\,
	combout => \u_dp|u_rf|we_dec\(4));

-- Location: LCFF_X41_Y30_N23
\u_dp|u_rf|gen_regs:4:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X41_Y30_N22
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:5:u_reg|ff9|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff9|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff9|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X45_Y32_N22
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:7:u_reg|ff9|q~regout\)) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:6:u_reg|ff9|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:7:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X44_Y33_N18
\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\ = (\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6_combout\ & (((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_ir|ff2|q~regout\))) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~6_combout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y31_N10
\u_dp|u_ula|u_ela|ia15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia15~3_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff15|q~regout\ & !\u_dp|u_ir|ff14|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff15|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ia15~3_combout\);

-- Location: LCCOMB_X40_Y33_N24
\u_dp|u_ula|u_ela|ia9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia9~0_combout\ = (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\ & \u_dp|u_ula|u_ela|ia15~3_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia9~0_combout\);

-- Location: LCCOMB_X40_Y33_N14
\u_dp|u_ula|u_ela|ia9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia9~1_combout\ = (\u_dp|u_ula|u_ela|ia9~0_combout\) # ((\u_dp|u_ula|u_ela|ia15~2_combout\ & (!\u_dp|is_addi~0_combout\ & \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia9~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia9~1_combout\);

-- Location: LCCOMB_X41_Y31_N8
\u_dp|u_ula|u_ela|ia15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia15~1_combout\ = (\u_dp|u_ir|ff14|q~regout\) # ((\u_dp|u_ir|ff13|q~regout\ & ((!\u_dp|u_ir|ff15|q~regout\))) # (!\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff12|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_ir|ff15|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ia15~1_combout\);

-- Location: LCCOMB_X41_Y33_N2
\u_dp|u_ula|u_ela|ib9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib9~2_combout\ = (\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\ & (((!\u_dp|is_addi~0_combout\ & !\u_dp|u_ula|u_ela|ia15~1_combout\)))) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\ & (\u_ctrl|mem_wr~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|mem_wr~1_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_ula|u_ela|ia15~1_combout\,
	combout => \u_dp|u_ula|u_ela|ib9~2_combout\);

-- Location: LCCOMB_X40_Y31_N12
\u_dp|u_ula|u_ela|ia15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia15~2_combout\ = (\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff15|q~regout\ & !\u_dp|u_ir|ff14|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff15|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ia15~2_combout\);

-- Location: LCCOMB_X43_Y31_N6
\u_dp|u_ula|u_ela|ia4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia4~0_combout\ = (\u_dp|u_ir|ff13|q~regout\ & ((\u_dp|u_ir|ff14|q~regout\ & ((\u_dp|u_ir|ff12|q~regout\))) # (!\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff15|q~regout\ & !\u_dp|u_ir|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff15|q~regout\,
	datac => \u_dp|u_ir|ff14|q~regout\,
	datad => \u_dp|u_ir|ff12|q~regout\,
	combout => \u_dp|u_ula|u_ela|ia4~0_combout\);

-- Location: LCCOMB_X45_Y33_N30
\u_dp|u_rf|we_dec[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(11) = (!\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[15]~0_combout\,
	combout => \u_dp|u_rf|we_dec\(11));

-- Location: LCFF_X45_Y32_N29
\u_dp|u_rf|gen_regs:11:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff8|q~regout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data3,
	combout => \instr_mem_data3~combout\);

-- Location: LCFF_X44_Y31_N7
\u_dp|u_ir|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data3~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff3|q~regout\);

-- Location: LCCOMB_X45_Y33_N26
\u_dp|u_rf|we_dec[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(3) = (!\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[7]~3_combout\,
	combout => \u_dp|u_rf|we_dec\(3));

-- Location: LCFF_X46_Y32_N25
\u_dp|u_rf|gen_regs:3:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y32_N26
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_regs:11:u_reg|ff8|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:3:u_reg|ff8|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff8|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_regs:3:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7_combout\);

-- Location: LCFF_X45_Y32_N21
\u_dp|u_rf|gen_regs:15:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y32_N14
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~8_combout\ = (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7_combout\ & (((\u_dp|u_rf|gen_regs:15:u_reg|ff8|q~regout\) # (!\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:7:u_reg|ff8|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff8|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~7_combout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff8|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~8_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data1,
	combout => \instr_mem_data1~combout\);

-- Location: LCCOMB_X44_Y31_N18
\u_dp|u_ir|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ir|ff1|q~feeder_combout\ = \instr_mem_data1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_mem_data1~combout\,
	combout => \u_dp|u_ir|ff1|q~feeder_combout\);

-- Location: LCFF_X44_Y31_N19
\u_dp|u_ir|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_ir|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff1|q~regout\);

-- Location: LCCOMB_X45_Y33_N20
\u_dp|u_rf|we_dec[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(10) = (!\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[15]~0_combout\,
	combout => \u_dp|u_rf|we_dec\(10));

-- Location: LCFF_X46_Y29_N5
\u_dp|u_rf|gen_regs:10:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y29_N10
\u_dp|u_rf|gen_regs:6:u_reg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~feeder_combout\ = \u_dp|rf_wd_data~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~67_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~feeder_combout\);

-- Location: LCFF_X45_Y29_N11
\u_dp|u_rf|gen_regs:6:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y29_N18
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff8|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X46_Y29_N28
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff8|q~regout\)) # (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff8|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff8|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X46_Y29_N26
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\) # (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~5_combout\ & 
-- (!\u_dp|u_ir|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~5_combout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X45_Y30_N6
\u_dp|u_rf|gen_regs:13:u_reg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~feeder_combout\ = \u_dp|rf_wd_data~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~67_combout\,
	combout => \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~feeder_combout\);

-- Location: LCFF_X45_Y30_N7
\u_dp|u_rf|gen_regs:13:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y33_N22
\u_dp|u_rf|we_dec[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(1) = (!\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[5]~2_combout\,
	combout => \u_dp|u_rf|we_dec\(1));

-- Location: LCFF_X46_Y30_N27
\u_dp|u_rf|gen_regs:1:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y33_N2
\u_dp|u_rf|we_dec[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(9) = (!\u_dp|u_ir|ff10|q~regout\ & (\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[13]~1_combout\,
	combout => \u_dp|u_rf|we_dec\(9));

-- Location: LCFF_X46_Y30_N21
\u_dp|u_rf|gen_regs:9:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X44_Y32_N26
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_ir|ff3|q~regout\)) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff8|q~regout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff8|q~regout\,
	datad => \u_dp|u_rf|gen_regs:9:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y32_N28
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff8|q~regout\)) # (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff8|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff8|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X45_Y32_N12
\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X46_Y32_N12
\u_dp|u_ula|u_ela|ia8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia8~0_combout\ = (\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datab => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia8~0_combout\);

-- Location: LCCOMB_X46_Y32_N18
\u_dp|u_ula|u_ela|ia8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia8~1_combout\ = (\u_dp|u_ula|u_ela|ia8~0_combout\) # ((\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & (\u_dp|u_ula|u_ela|ia15~2_combout\ & !\u_dp|is_addi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_ula|u_ela|ia8~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia8~1_combout\);

-- Location: LCCOMB_X41_Y31_N0
\u_ctrl|mem_wr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|mem_wr~1_combout\ = (!\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff12|q~regout\ & !\u_dp|u_ir|ff14|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_ctrl|mem_wr~1_combout\);

-- Location: LCCOMB_X41_Y32_N26
\u_dp|u_ula|u_ela|ib8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib8~2_combout\ = (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\ & ((!\u_dp|is_addi~0_combout\)))) # (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib8~2_combout\);

-- Location: LCFF_X43_Y34_N3
\u_dp|u_rf|gen_regs:12:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X42_Y32_N8
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff7|q~regout\) # ((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_regs:12:u_reg|ff7|q~regout\ & 
-- !\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff7|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff7|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\);

-- Location: LCFF_X41_Y32_N15
\u_dp|u_rf|gen_regs:15:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff7|q~regout\);

-- Location: LCFF_X42_Y34_N27
\u_dp|u_rf|gen_regs:13:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X41_Y32_N14
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff7|q~regout\)) # (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:13:u_reg|ff7|q~regout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~7_combout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_regs:13:u_reg|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X44_Y34_N8
\u_dp|u_rf|gen_regs:11:u_reg|ff7|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~feeder_combout\ = \u_dp|rf_wd_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~3_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~feeder_combout\);

-- Location: LCFF_X44_Y34_N9
\u_dp|u_rf|gen_regs:11:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X41_Y34_N20
\u_dp|u_rf|gen_regs:10:u_reg|ff7|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~feeder_combout\ = \u_dp|rf_wd_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~3_combout\,
	combout => \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~feeder_combout\);

-- Location: LCFF_X41_Y34_N21
\u_dp|u_rf|gen_regs:10:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X45_Y34_N8
\u_dp|u_rf|gen_regs:8:u_reg|ff7|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~feeder_combout\ = \u_dp|rf_wd_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~3_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~feeder_combout\);

-- Location: LCCOMB_X45_Y33_N28
\u_dp|u_rf|we_dec[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(8) = (!\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[13]~1_combout\,
	combout => \u_dp|u_rf|we_dec\(8));

-- Location: LCFF_X45_Y34_N9
\u_dp|u_rf|gen_regs:8:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X41_Y34_N12
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff7|q~regout\) # ((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((!\u_dp|u_ir|ff1|q~regout\ & 
-- \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff7|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X41_Y34_N26
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:11:u_reg|ff7|q~regout\)) # (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff7|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X41_Y34_N4
\u_dp|u_rf|gen_regs:5:u_reg|ff7|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~feeder_combout\ = \u_dp|rf_wd_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~3_combout\,
	combout => \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~feeder_combout\);

-- Location: LCFF_X41_Y34_N5
\u_dp|u_rf|gen_regs:5:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~regout\);

-- Location: LCFF_X41_Y32_N9
\u_dp|u_rf|gen_regs:7:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff7|q~regout\);

-- Location: LCFF_X40_Y33_N3
\u_dp|u_rf|gen_regs:4:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X40_Y33_N4
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_regs:6:u_reg|ff7|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff7|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff7|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X41_Y32_N8
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff7|q~regout\))) # (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff7|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X45_Y33_N16
\u_dp|u_rf|we_dec[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(2) = (!\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[7]~3_combout\,
	combout => \u_dp|u_rf|we_dec\(2));

-- Location: LCFF_X43_Y32_N9
\u_dp|u_rf|gen_regs:2:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff7|q~regout\);

-- Location: LCFF_X43_Y32_N27
\u_dp|u_rf|gen_regs:3:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X45_Y33_N4
\u_dp|u_rf|we_dec[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|we_dec\(0) = (!\u_dp|u_ir|ff10|q~regout\ & (!\u_dp|u_ir|ff8|q~regout\ & (\u_ctrl|rf_wr~0_combout\ & \u_dp|u_rf|we_dec[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff10|q~regout\,
	datab => \u_dp|u_ir|ff8|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|u_rf|we_dec[5]~2_combout\,
	combout => \u_dp|u_rf|we_dec\(0));

-- Location: LCFF_X40_Y32_N13
\u_dp|u_rf|gen_regs:0:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X43_Y34_N18
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:1:u_reg|ff7|q~regout\) # ((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_regs:0:u_reg|ff7|q~regout\ & 
-- !\u_dp|u_ir|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff7|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y32_N26
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff7|q~regout\))) # (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff7|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X41_Y32_N28
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~3_combout\)) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X41_Y32_N18
\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y32_N10
\u_dp|u_ula|u_ela|ib7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib7~2_combout\ = (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\ & ((!\u_dp|is_addi~0_combout\)))) # (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib7~2_combout\);

-- Location: LCCOMB_X41_Y31_N6
\u_dp|u_ula|u_ela|ib7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib7~3_combout\ = (\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & \u_dp|u_ir|ff14|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ib7~3_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in6,
	combout => \data_mem_data_in6~combout\);

-- Location: LCCOMB_X43_Y34_N14
\u_dp|rf_wd_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~5_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (\u_dp|u_ir|ff6|q~regout\ & ((!\u_ctrl|wb_sel0~0_combout\)))) # (!\u_ctrl|wb_sel1~0_combout\ & (((\data_mem_data_in6~combout\ & \u_ctrl|wb_sel0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_ctrl|wb_sel1~0_combout\,
	datac => \data_mem_data_in6~combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~5_combout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\instr_mem_data6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_instr_mem_data6,
	combout => \instr_mem_data6~combout\);

-- Location: LCFF_X42_Y27_N31
\u_dp|u_ir|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_mem_data6~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_ctrl|pc_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_ir|ff6|q~regout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in5,
	combout => \data_mem_data_in5~combout\);

-- Location: LCCOMB_X40_Y32_N18
\u_dp|rf_wd_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~8_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (\u_dp|u_ir|ff5|q~regout\ & ((!\u_ctrl|wb_sel0~0_combout\)))) # (!\u_ctrl|wb_sel1~0_combout\ & (((\data_mem_data_in5~combout\ & \u_ctrl|wb_sel0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \data_mem_data_in5~combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~8_combout\);

-- Location: LCCOMB_X43_Y33_N16
\u_dp|u_rf|gen_regs:14:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~feeder_combout\);

-- Location: LCFF_X43_Y33_N17
\u_dp|u_rf|gen_regs:14:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~regout\);

-- Location: LCFF_X41_Y32_N23
\u_dp|u_rf|gen_regs:15:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X45_Y28_N28
\u_dp|u_rf|gen_regs:12:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~feeder_combout\);

-- Location: LCFF_X45_Y28_N29
\u_dp|u_rf|gen_regs:12:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~regout\);

-- Location: LCFF_X42_Y28_N5
\u_dp|u_rf|gen_regs:13:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X42_Y28_N30
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_regs:13:u_reg|ff5|q~regout\) # (\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff5|q~regout\ & 
-- ((!\u_dp|u_ir|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff5|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X41_Y32_N22
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff5|q~regout\))) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:14:u_reg|ff5|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X38_Y32_N8
\u_dp|u_rf|gen_regs:1:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~feeder_combout\);

-- Location: LCFF_X38_Y32_N9
\u_dp|u_rf|gen_regs:1:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X43_Y32_N28
\u_dp|u_rf|gen_regs:3:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~feeder_combout\);

-- Location: LCFF_X43_Y32_N29
\u_dp|u_rf|gen_regs:3:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~regout\);

-- Location: LCFF_X40_Y32_N29
\u_dp|u_rf|gen_regs:0:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X38_Y32_N2
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:2:u_reg|ff5|q~regout\) # ((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_regs:0:u_reg|ff5|q~regout\ & 
-- !\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X38_Y32_N0
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff5|q~regout\))) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff5|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~5_combout\);

-- Location: LCFF_X42_Y32_N15
\u_dp|u_rf|gen_regs:10:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X42_Y32_N14
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_regs:10:u_reg|ff5|q~regout\) # (\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_regs:8:u_reg|ff5|q~regout\ & 
-- ((!\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff5|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff5|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2_combout\);

-- Location: LCFF_X42_Y32_N1
\u_dp|u_rf|gen_regs:11:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X42_Y32_N0
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~3_combout\ = (\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2_combout\ & (((\u_dp|u_rf|gen_regs:11:u_reg|ff5|q~regout\) # (!\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff5|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~2_combout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff5|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X42_Y33_N16
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_ir|ff3|q~regout\)) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~3_combout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\);

-- Location: LCFF_X41_Y32_N21
\u_dp|u_rf|gen_regs:7:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X41_Y30_N8
\u_dp|u_rf|gen_regs:5:u_reg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~feeder_combout\ = \u_dp|rf_wd_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~9_combout\,
	combout => \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~feeder_combout\);

-- Location: LCFF_X41_Y30_N9
\u_dp|u_rf|gen_regs:5:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X41_Y30_N12
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff5|q~regout\))) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:4:u_reg|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X41_Y32_N20
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff5|q~regout\))) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff5|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff5|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X42_Y33_N6
\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X42_Y33_N22
\u_dp|u_ula|u_ela|ib5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib5~3_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & !\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib5~3_combout\);

-- Location: LCCOMB_X41_Y31_N18
\u_dp|u_ula|u_ela|ib5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib5~2_combout\ = (\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & (!\u_dp|is_addi~0_combout\ & ((!\u_dp|u_ula|u_ela|ia15~1_combout\)))) # (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib5~2_combout\);

-- Location: LCCOMB_X40_Y30_N30
\u_dp|rf_wd_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~11_combout\ = (\u_ctrl|wb_sel0~0_combout\ & (\data_mem_data_in4~combout\ & ((!\u_ctrl|wb_sel1~0_combout\)))) # (!\u_ctrl|wb_sel0~0_combout\ & (((\u_dp|u_ir|ff4|q~regout\ & \u_ctrl|wb_sel1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem_data_in4~combout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_ctrl|wb_sel0~0_combout\,
	datad => \u_ctrl|wb_sel1~0_combout\,
	combout => \u_dp|rf_wd_data~11_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in3,
	combout => \data_mem_data_in3~combout\);

-- Location: LCCOMB_X40_Y32_N10
\u_dp|rf_wd_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~14_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (\u_dp|u_ir|ff3|q~regout\ & ((!\u_ctrl|wb_sel0~0_combout\)))) # (!\u_ctrl|wb_sel1~0_combout\ & (((\data_mem_data_in3~combout\ & \u_ctrl|wb_sel0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \data_mem_data_in3~combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~14_combout\);

-- Location: LCCOMB_X41_Y31_N2
\u_dp|u_ula|u_ela|ia15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia15~0_combout\ = (\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & \u_dp|u_ir|ff14|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ia15~0_combout\);

-- Location: LCCOMB_X41_Y28_N24
\u_dp|rf_wd_data[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[2]~16_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data[2]~16_combout\);

-- Location: LCCOMB_X42_Y29_N4
\u_dp|u_ula|u_ela|ia2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia2~1_combout\ = (\u_dp|u_ula|u_ela|ia15~3_combout\ & ((\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia2~1_combout\);

-- Location: LCCOMB_X42_Y29_N22
\u_dp|u_ula|u_ela|ia2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia2~0_combout\ = (\u_dp|u_ula|u_ela|ia15~2_combout\ & ((\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia2~0_combout\);

-- Location: LCCOMB_X42_Y29_N2
\u_dp|u_ula|u_ela|ia2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia2~2_combout\ = (\u_dp|u_ula|u_ela|ia2~0_combout\) # ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_ula|u_ela|ia2~1_combout\) # (!\u_dp|u_ula|u_ela|ia4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia2~1_combout\,
	datad => \u_dp|u_ula|u_ela|ia2~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia2~2_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in1,
	combout => \data_mem_data_in1~combout\);

-- Location: LCCOMB_X44_Y34_N26
\u_dp|rf_wd_data[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~24_combout\ = (\u_ctrl|wb_sel0~0_combout\ & (\data_mem_data_in1~combout\ & ((!\u_ctrl|wb_sel1~0_combout\)))) # (!\u_ctrl|wb_sel0~0_combout\ & (((\u_dp|u_ir|ff1|q~regout\ & \u_ctrl|wb_sel1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel0~0_combout\,
	datab => \data_mem_data_in1~combout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_ctrl|wb_sel1~0_combout\,
	combout => \u_dp|rf_wd_data[1]~24_combout\);

-- Location: LCFF_X43_Y28_N27
\u_dp|u_rf|gen_regs:5:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X42_Y28_N10
\u_dp|u_rf|gen_regs:9:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X42_Y28_N11
\u_dp|u_rf|gen_regs:9:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X43_Y28_N10
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff0|q~regout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X43_Y28_N26
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff0|q~regout\)) # (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff0|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~1_combout\);

-- Location: LCFF_X41_Y31_N1
\u_dp|u_rf|gen_regs:15:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X42_Y29_N28
\u_dp|u_rf|gen_regs:7:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X42_Y29_N29
\u_dp|u_rf|gen_regs:7:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~regout\);

-- Location: LCFF_X41_Y28_N7
\u_dp|u_rf|gen_regs:11:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X40_Y31_N14
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff0|q~regout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:3:u_reg|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff0|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff0|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X41_Y31_N10
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff0|q~regout\)) # (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:7:u_reg|ff0|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X42_Y27_N20
\u_dp|u_rf|gen_regs:8:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X42_Y27_N21
\u_dp|u_rf|gen_regs:8:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X44_Y28_N24
\u_dp|u_rf|gen_regs:0:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X44_Y28_N25
\u_dp|u_rf|gen_regs:0:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X43_Y27_N12
\u_dp|u_rf|gen_regs:4:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X43_Y27_N13
\u_dp|u_rf|gen_regs:4:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X44_Y31_N12
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:4:u_reg|ff0|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y31_N14
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff0|q~regout\)) # (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff0|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff0|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~5_combout\);

-- Location: LCFF_X43_Y31_N3
\u_dp|u_rf|gen_regs:14:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff0|q~regout\);

-- Location: LCFF_X43_Y31_N17
\u_dp|u_rf|gen_regs:10:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X45_Y31_N18
\u_dp|u_rf|gen_regs:2:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X45_Y31_N19
\u_dp|u_rf|gen_regs:2:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X42_Y29_N14
\u_dp|u_rf|gen_regs:6:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X42_Y29_N15
\u_dp|u_rf|gen_regs:6:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X44_Y31_N28
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff0|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X43_Y31_N16
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff0|q~regout\)) # (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff0|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:14:u_reg|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y31_N0
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_ir|ff1|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~3_combout\))) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y31_N30
\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X43_Y31_N24
\u_dp|ula_b_vec[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_b_vec[0]~3_combout\ = (\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff0|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|ula_b_vec[0]~3_combout\);

-- Location: LCCOMB_X43_Y31_N10
\u_dp|u_ula|u_ela|ia0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia0~0_combout\ = (\u_dp|u_ula|u_ela|ia15~2_combout\) # ((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia0~0_combout\);

-- Location: LCCOMB_X43_Y31_N8
\u_dp|u_ula|u_ela|ia0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia0~1_combout\ = (\u_dp|u_ula|u_ela|ia4~0_combout\ & (((\u_dp|ula_b_vec[0]~3_combout\ & \u_dp|u_ula|u_ela|ia0~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia4~0_combout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\) # 
-- ((\u_dp|ula_b_vec[0]~3_combout\ & \u_dp|u_ula|u_ela|ia0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|ula_b_vec[0]~3_combout\,
	datad => \u_dp|u_ula|u_ela|ia0~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia0~1_combout\);

-- Location: LCCOMB_X42_Y30_N4
\u_dp|u_ula|u_ela|ib0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib0~2_combout\ = (\u_dp|u_ir|ff13|q~regout\ & ((\u_dp|u_ir|ff12|q~regout\) # (!\u_dp|u_ir|ff14|q~regout\))) # (!\u_dp|u_ir|ff13|q~regout\ & ((\u_dp|u_ir|ff14|q~regout\) # (!\u_dp|u_ir|ff12|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|u_ula|u_ela|ib0~2_combout\);

-- Location: LCCOMB_X42_Y28_N18
\u_dp|rf_wd_data[0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~44_combout\ = (!\u_ctrl|shl~0_combout\ & (\u_dp|u_ula|u_ela|ib0~1_combout\ $ (\u_dp|u_ula|u_ela|ia0~1_combout\ $ (!\u_dp|u_ula|u_ela|ib0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib0~1_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia0~1_combout\,
	datad => \u_dp|u_ula|u_ela|ib0~2_combout\,
	combout => \u_dp|rf_wd_data[0]~44_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in0,
	combout => \data_mem_data_in0~combout\);

-- Location: LCFF_X43_Y29_N9
\u_dp|u_rf|gen_regs:15:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X42_Y32_N12
\u_dp|u_rf|gen_regs:11:u_reg|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~feeder_combout\ = \u_dp|rf_wd_data[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[2]~21_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~feeder_combout\);

-- Location: LCFF_X42_Y32_N13
\u_dp|u_rf|gen_regs:11:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X42_Y32_N10
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~8_combout\ = (\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff2|q~regout\) # ((!\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7_combout\ & 
-- (((\u_dp|u_ir|ff7|q~regout\ & \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~7_combout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X42_Y28_N23
\u_dp|u_rf|gen_regs:13:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X45_Y28_N22
\u_dp|u_rf|gen_regs:9:u_reg|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~feeder_combout\ = \u_dp|rf_wd_data[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[2]~21_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~feeder_combout\);

-- Location: LCFF_X45_Y28_N23
\u_dp|u_rf|gen_regs:9:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~regout\);

-- Location: LCFF_X43_Y28_N1
\u_dp|u_rf|gen_regs:1:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X43_Y28_N6
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:5:u_reg|ff2|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff2|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X42_Y28_N0
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff2|q~regout\)) # (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:9:u_reg|ff2|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:13:u_reg|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~3_combout\);

-- Location: LCFF_X43_Y27_N1
\u_dp|u_rf|gen_regs:4:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff2|q~regout\);

-- Location: LCFF_X43_Y27_N15
\u_dp|u_rf|gen_regs:8:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X44_Y28_N2
\u_dp|u_rf|gen_regs:0:u_reg|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~feeder_combout\ = \u_dp|rf_wd_data[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[2]~21_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~feeder_combout\);

-- Location: LCFF_X44_Y28_N3
\u_dp|u_rf|gen_regs:0:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X43_Y27_N24
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:8:u_reg|ff2|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((!\u_dp|u_ir|ff6|q~regout\ & 
-- \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:8:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X45_Y28_N20
\u_dp|u_rf|gen_regs:12:u_reg|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~feeder_combout\ = \u_dp|rf_wd_data[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[2]~21_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~feeder_combout\);

-- Location: LCFF_X45_Y28_N21
\u_dp|u_rf|gen_regs:12:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X43_Y27_N2
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:12:u_reg|ff2|q~regout\))) # (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:4:u_reg|ff2|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~4_combout\,
	datad => \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X42_Y29_N12
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~3_combout\)) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~3_combout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X42_Y29_N24
\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~1_combout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\);

-- Location: LCFF_X43_Y33_N11
\u_dp|u_rf|gen_regs:14:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff6|q~regout\);

-- Location: LCFF_X43_Y33_N27
\u_dp|u_rf|gen_regs:6:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X43_Y33_N10
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~1_combout\ = (\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0_combout\ & (((\u_dp|u_rf|gen_regs:14:u_reg|ff6|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\))) # (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0_combout\ & (\u_dp|u_ir|ff6|q~regout\ 
-- & ((\u_dp|u_rf|gen_regs:6:u_reg|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~0_combout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_regs:6:u_reg|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X40_Y29_N29
\u_dp|u_rf|gen_regs:12:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff6|q~regout\);

-- Location: LCFF_X41_Y30_N17
\u_dp|u_rf|gen_regs:4:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X40_Y30_N2
\u_dp|u_rf|gen_regs:0:u_reg|ff6|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~feeder_combout\ = \u_dp|rf_wd_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~6_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~feeder_combout\);

-- Location: LCFF_X40_Y30_N3
\u_dp|u_rf|gen_regs:0:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X40_Y30_N8
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:8:u_reg|ff6|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:0:u_reg|ff6|q~regout\ & 
-- !\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X41_Y30_N26
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff6|q~regout\)) # (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff6|q~regout\))))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X42_Y34_N22
\u_dp|u_rf|gen_regs:9:u_reg|ff6|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~feeder_combout\ = \u_dp|rf_wd_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~6_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~feeder_combout\);

-- Location: LCFF_X42_Y34_N23
\u_dp|u_rf|gen_regs:9:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X42_Y34_N8
\u_dp|u_rf|gen_regs:13:u_reg|ff6|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~feeder_combout\ = \u_dp|rf_wd_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~6_combout\,
	combout => \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~feeder_combout\);

-- Location: LCFF_X42_Y34_N9
\u_dp|u_rf|gen_regs:13:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~regout\);

-- Location: LCFF_X43_Y28_N19
\u_dp|u_rf|gen_regs:1:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X43_Y28_N18
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:5:u_reg|ff6|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff6|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff6|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff6|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X42_Y34_N18
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff6|q~regout\))) # (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X42_Y33_N24
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_ir|ff4|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~3_combout\))) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\);

-- Location: LCFF_X41_Y32_N7
\u_dp|u_rf|gen_regs:15:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff6|q~regout\);

-- Location: LCFF_X42_Y32_N21
\u_dp|u_rf|gen_regs:11:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X43_Y33_N4
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~8_combout\ = (\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff6|q~regout\) # ((!\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7_combout\ & 
-- (((\u_dp|u_rf|gen_regs:11:u_reg|ff6|q~regout\ & \u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~7_combout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X42_Y33_N18
\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y33_N26
\u_dp|u_cmp|st3|out_eq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st3|out_eq~0_combout\ = (\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\) # (\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st3|out_eq~0_combout\);

-- Location: LCCOMB_X41_Y32_N0
\u_dp|u_cmp|st7|out_eq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st7|out_eq~0_combout\ = (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\) # (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st7|out_eq~0_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in12,
	combout => \data_mem_data_in12~combout\);

-- Location: LCCOMB_X47_Y30_N8
\u_dp|u_rf|gen_regs:8:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~feeder_combout\);

-- Location: LCFF_X47_Y30_N9
\u_dp|u_rf|gen_regs:8:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~regout\);

-- Location: LCFF_X41_Y30_N25
\u_dp|u_rf|gen_regs:4:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X47_Y30_N12
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:4:u_reg|ff12|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff12|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X47_Y30_N2
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff12|q~regout\)) # (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff12|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_regs:8:u_reg|ff12|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y29_N14
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~3_combout\) # ((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((!\u_dp|u_ir|ff0|q~regout\ & 
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~3_combout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\);

-- Location: LCFF_X41_Y30_N31
\u_dp|u_rf|gen_regs:5:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X44_Y27_N18
\u_dp|u_rf|gen_regs:9:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~feeder_combout\);

-- Location: LCFF_X44_Y27_N19
\u_dp|u_rf|gen_regs:9:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X44_Y27_N24
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff12|q~regout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff12|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X45_Y30_N2
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff12|q~regout\))) # (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff12|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X45_Y29_N2
\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~8_combout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y30_N6
\u_dp|u_ula|u_ela|ib12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib12~2_combout\ = (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\ & ((!\u_dp|is_addi~0_combout\)))) # (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|is_addi~0_combout\,
	combout => \u_dp|u_ula|u_ela|ib12~2_combout\);

-- Location: LCCOMB_X40_Y29_N6
\u_dp|u_ula|u_ela|ia12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia12~0_combout\ = (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia12~0_combout\);

-- Location: LCCOMB_X40_Y29_N24
\u_dp|u_ula|u_ela|ia12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia12~1_combout\ = (\u_dp|u_ula|u_ela|ia12~0_combout\) # ((!\u_dp|is_addi~0_combout\ & (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & \u_dp|u_ula|u_ela|ia15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datad => \u_dp|u_ula|u_ela|ia12~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia12~1_combout\);

-- Location: LCFF_X45_Y30_N23
\u_dp|u_rf|gen_regs:13:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff11|q~regout\);

-- Location: LCFF_X45_Y32_N19
\u_dp|u_rf|gen_regs:15:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X45_Y30_N12
\u_dp|u_rf|gen_regs:12:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X45_Y30_N13
\u_dp|u_rf|gen_regs:12:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y31_N28
\u_dp|u_rf|gen_regs:14:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X46_Y31_N29
\u_dp|u_rf|gen_regs:14:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y31_N6
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\) # ((\u_dp|u_rf|gen_regs:14:u_reg|ff11|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (!\u_dp|u_ir|ff0|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:12:u_reg|ff11|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X45_Y32_N18
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff11|q~regout\))) # (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:13:u_reg|ff11|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:13:u_reg|ff11|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X45_Y31_N25
\u_dp|u_rf|gen_regs:10:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff11|q~regout\);

-- Location: LCFF_X46_Y30_N5
\u_dp|u_rf|gen_regs:9:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y27_N28
\u_dp|u_rf|gen_regs:8:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X46_Y27_N29
\u_dp|u_rf|gen_regs:8:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y30_N4
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\) # ((\u_dp|u_rf|gen_regs:9:u_reg|ff11|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff11|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:9:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X45_Y31_N24
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:11:u_reg|ff11|q~regout\)) # (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff11|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:11:u_reg|ff11|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X47_Y30_N28
\u_dp|u_rf|gen_regs:0:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X47_Y30_N29
\u_dp|u_rf|gen_regs:0:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X47_Y30_N30
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:1:u_reg|ff11|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff11|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff11|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\);

-- Location: LCFF_X45_Y31_N15
\u_dp|u_rf|gen_regs:2:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y32_N16
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff11|q~regout\)) # (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff11|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~4_combout\,
	datad => \u_dp|u_rf|gen_regs:2:u_reg|ff11|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y31_N14
\u_dp|u_rf|gen_regs:6:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X46_Y31_N15
\u_dp|u_rf|gen_regs:6:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X45_Y27_N24
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff11|q~regout\))) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:4:u_reg|ff11|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~regout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\);

-- Location: LCFF_X41_Y30_N3
\u_dp|u_rf|gen_regs:5:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y32_N28
\u_dp|u_rf|gen_regs:7:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X46_Y32_N29
\u_dp|u_rf|gen_regs:7:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X41_Y30_N2
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff11|q~regout\))) # (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff11|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~2_combout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X40_Y31_N30
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~3_combout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X40_Y31_N28
\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X42_Y30_N28
\u_dp|u_ula|u_ela|ib11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib11~3_combout\ = (\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & !\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib11~3_combout\);

-- Location: LCCOMB_X42_Y30_N6
\u_dp|u_ula|u_ela|ia11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia11~0_combout\ = (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia11~0_combout\);

-- Location: LCCOMB_X42_Y30_N20
\u_dp|u_ula|u_ela|ia11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia11~1_combout\ = (\u_dp|u_ula|u_ela|ia11~0_combout\) # ((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & (\u_dp|u_ula|u_ela|ia15~2_combout\ & !\u_dp|is_addi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_ula|u_ela|ia11~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia11~1_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in10,
	combout => \data_mem_data_in10~combout\);

-- Location: LCCOMB_X42_Y30_N30
\u_dp|u_ula|u_ela|ib10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib10~3_combout\ = (\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & !\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib10~3_combout\);

-- Location: LCCOMB_X43_Y30_N28
\u_dp|u_ula|u_add|U9|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U9|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia9~1_combout\ & ((\u_dp|u_ula|u_ela|ib9~3_combout\) # ((\u_dp|u_ula|u_ela|ib9~2_combout\) # (\u_dp|u_ula|u_add|U8|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia9~1_combout\ & 
-- (\u_dp|u_ula|u_add|U8|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib9~3_combout\) # (\u_dp|u_ula|u_ela|ib9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib9~3_combout\,
	datab => \u_dp|u_ula|u_ela|ib9~2_combout\,
	datac => \u_dp|u_ula|u_ela|ia9~1_combout\,
	datad => \u_dp|u_ula|u_add|U8|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U9|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N6
\u_dp|u_ula|u_add|U10|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U10|Sum~combout\ = \u_dp|u_ula|u_ela|ia10~1_combout\ $ (\u_dp|u_ula|u_add|U9|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib10~2_combout\) # (\u_dp|u_ula|u_ela|ib10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia10~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib10~2_combout\,
	datac => \u_dp|u_ula|u_ela|ib10~3_combout\,
	datad => \u_dp|u_ula|u_add|U9|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U10|Sum~combout\);

-- Location: LCCOMB_X42_Y30_N18
\u_dp|rf_wd_data~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~62_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[10]~10_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U10|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|ula_shifter_res[10]~10_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|rf_wd_data~0_combout\,
	datad => \u_dp|u_ula|u_add|U10|Sum~combout\,
	combout => \u_dp|rf_wd_data~62_combout\);

-- Location: LCCOMB_X42_Y30_N0
\u_dp|rf_wd_data~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~63_combout\ = (\u_dp|rf_wd_data~62_combout\) # ((\u_dp|rf_wd_data~56_combout\ & \data_mem_data_in10~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~56_combout\,
	datab => \data_mem_data_in10~combout\,
	datad => \u_dp|rf_wd_data~62_combout\,
	combout => \u_dp|rf_wd_data~63_combout\);

-- Location: LCFF_X46_Y31_N27
\u_dp|u_rf|gen_regs:14:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff10|q~regout\);

-- Location: LCFF_X45_Y31_N7
\u_dp|u_rf|gen_regs:2:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X45_Y31_N6
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff10|q~regout\) # ((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff10|q~regout\ & 
-- !\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff10|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:2:u_reg|ff10|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X45_Y31_N0
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff10|q~regout\))) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff10|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~1_combout\);

-- Location: LCFF_X46_Y30_N9
\u_dp|u_rf|gen_regs:9:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff10|q~regout\);

-- Location: LCFF_X45_Y30_N15
\u_dp|u_rf|gen_regs:13:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff10|q~regout\);

-- Location: LCFF_X46_Y30_N23
\u_dp|u_rf|gen_regs:1:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff10|q~regout\);

-- Location: LCFF_X41_Y30_N21
\u_dp|u_rf|gen_regs:5:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X46_Y30_N28
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff10|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff10|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff10|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff10|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X45_Y30_N14
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff10|q~regout\))) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff10|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~3_combout\);

-- Location: LCFF_X45_Y30_N5
\u_dp|u_rf|gen_regs:12:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff10|q~regout\);

-- Location: LCFF_X41_Y30_N15
\u_dp|u_rf|gen_regs:4:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff10|q~regout\);

-- Location: LCFF_X47_Y30_N15
\u_dp|u_rf|gen_regs:0:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X46_Y30_N18
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_regs:8:u_reg|ff10|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff10|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff10|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff10|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X45_Y30_N26
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff10|q~regout\)) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff10|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff10|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X45_Y30_N24
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_ir|ff0|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~3_combout\)) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X45_Y32_N8
\u_dp|u_rf|gen_regs:15:u_reg|ff10|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~feeder_combout\ = \u_dp|rf_wd_data~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~63_combout\,
	combout => \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~feeder_combout\);

-- Location: LCFF_X45_Y32_N9
\u_dp|u_rf|gen_regs:15:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~regout\);

-- Location: LCFF_X42_Y30_N23
\u_dp|u_rf|gen_regs:3:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff10|q~regout\);

-- Location: LCFF_X42_Y30_N1
\u_dp|u_rf|gen_regs:7:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X45_Y32_N6
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff10|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:3:u_reg|ff10|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff10|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff10|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X45_Y32_N30
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff10|q~regout\))) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:11:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X45_Y32_N0
\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y32_N16
\u_dp|u_ula|u_ela|ib10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib10~2_combout\ = (\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ & (!\u_dp|is_addi~0_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\))) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datac => \u_ctrl|mem_wr~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib10~2_combout\);

-- Location: LCFF_X46_Y31_N5
\u_dp|u_rf|gen_regs:6:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X46_Y30_N24
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff10|q~regout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((!\u_dp|u_ir|ff5|q~regout\ & 
-- \u_dp|u_rf|gen_regs:4:u_reg|ff10|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff10|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:4:u_reg|ff10|q~regout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X46_Y31_N22
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff10|q~regout\))) # (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff10|q~regout\,
	datac => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~0_combout\,
	datad => \u_dp|u_rf|gen_regs:7:u_reg|ff10|q~regout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X45_Y31_N17
\u_dp|u_rf|gen_regs:10:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff10|q~regout\);

-- Location: LCFF_X47_Y30_N5
\u_dp|u_rf|gen_regs:8:u_reg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~63_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff10|q~regout\);

-- Location: LCCOMB_X46_Y30_N10
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff10|q~regout\) # ((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((!\u_dp|u_ir|ff4|q~regout\ & 
-- \u_dp|u_rf|gen_regs:8:u_reg|ff10|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff10|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff10|q~regout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X46_Y30_N8
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:11:u_reg|ff10|q~regout\)) # (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:9:u_reg|ff10|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:11:u_reg|ff10|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:9:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X47_Y30_N6
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_ir|ff4|q~regout\) # (\u_dp|u_rf|gen_regs:2:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:0:u_reg|ff10|q~regout\ & 
-- (!\u_dp|u_ir|ff4|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff10|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_regs:2:u_reg|ff10|q~regout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X42_Y30_N22
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff10|q~regout\))) # (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff10|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y31_N24
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~3_combout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((!\u_dp|u_ir|ff6|q~regout\ & 
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~3_combout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X45_Y30_N4
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_ir|ff4|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff10|q~regout\))) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:12:u_reg|ff10|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_regs:13:u_reg|ff10|q~regout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X46_Y31_N26
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff10|q~regout\))) # (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:14:u_reg|ff10|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~7_combout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff10|q~regout\,
	datad => \u_dp|u_rf|gen_regs:15:u_reg|ff10|q~regout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X46_Y31_N10
\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y32_N14
\u_dp|u_ula|u_ela|ia10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia10~0_combout\ = (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia10~0_combout\);

-- Location: LCCOMB_X40_Y32_N8
\u_dp|u_ula|u_ela|ia10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia10~1_combout\ = (\u_dp|u_ula|u_ela|ia10~0_combout\) # ((\u_dp|u_ula|u_ela|ia15~2_combout\ & (!\u_dp|is_addi~0_combout\ & \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia10~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia10~1_combout\);

-- Location: LCCOMB_X43_Y30_N10
\u_dp|u_ula|u_add|U10|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U10|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia10~1_combout\ & ((\u_dp|u_ula|u_ela|ib10~3_combout\) # ((\u_dp|u_ula|u_ela|ib10~2_combout\) # (\u_dp|u_ula|u_add|U9|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia10~1_combout\ & 
-- (\u_dp|u_ula|u_add|U9|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib10~3_combout\) # (\u_dp|u_ula|u_ela|ib10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib10~3_combout\,
	datab => \u_dp|u_ula|u_ela|ib10~2_combout\,
	datac => \u_dp|u_ula|u_ela|ia10~1_combout\,
	datad => \u_dp|u_ula|u_add|U9|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U10|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N0
\u_dp|u_ula|u_add|U11|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U11|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia11~1_combout\ & ((\u_dp|u_ula|u_ela|ib11~2_combout\) # ((\u_dp|u_ula|u_ela|ib11~3_combout\) # (\u_dp|u_ula|u_add|U10|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia11~1_combout\ & 
-- (\u_dp|u_ula|u_add|U10|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib11~2_combout\) # (\u_dp|u_ula|u_ela|ib11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib11~2_combout\,
	datab => \u_dp|u_ula|u_ela|ib11~3_combout\,
	datac => \u_dp|u_ula|u_ela|ia11~1_combout\,
	datad => \u_dp|u_ula|u_add|U10|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U11|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N30
\u_dp|u_ula|u_add|U12|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U12|Sum~combout\ = \u_dp|u_ula|u_ela|ia12~1_combout\ $ (\u_dp|u_ula|u_add|U11|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib12~3_combout\) # (\u_dp|u_ula|u_ela|ib12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib12~3_combout\,
	datab => \u_dp|u_ula|u_ela|ib12~2_combout\,
	datac => \u_dp|u_ula|u_ela|ia12~1_combout\,
	datad => \u_dp|u_ula|u_add|U11|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U12|Sum~combout\);

-- Location: LCCOMB_X42_Y30_N12
\u_dp|rf_wd_data~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~58_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[12]~8_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U12|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|ula_shifter_res[12]~8_combout\,
	datab => \u_dp|rf_wd_data~0_combout\,
	datac => \u_ctrl|shl~0_combout\,
	datad => \u_dp|u_ula|u_add|U12|Sum~combout\,
	combout => \u_dp|rf_wd_data~58_combout\);

-- Location: LCCOMB_X42_Y30_N26
\u_dp|rf_wd_data~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~59_combout\ = (\u_dp|rf_wd_data~58_combout\) # ((\u_dp|rf_wd_data~56_combout\ & \data_mem_data_in12~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|rf_wd_data~56_combout\,
	datac => \data_mem_data_in12~combout\,
	datad => \u_dp|rf_wd_data~58_combout\,
	combout => \u_dp|rf_wd_data~59_combout\);

-- Location: LCFF_X45_Y30_N3
\u_dp|u_rf|gen_regs:13:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff12|q~regout\);

-- Location: LCFF_X45_Y30_N29
\u_dp|u_rf|gen_regs:12:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X45_Y30_N8
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff12|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:12:u_reg|ff12|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff12|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:12:u_reg|ff12|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X44_Y29_N30
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff12|q~regout\)) # (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:13:u_reg|ff12|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:15:u_reg|ff12|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X44_Y30_N31
\u_dp|u_rf|gen_regs:7:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~59_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X41_Y30_N30
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~3_combout\ = (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2_combout\ & (((\u_dp|u_rf|gen_regs:7:u_reg|ff12|q~regout\)) # (!\u_dp|u_ir|ff4|q~regout\))) # (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:5:u_reg|ff12|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~2_combout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_regs:7:u_reg|ff12|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X45_Y31_N20
\u_dp|u_rf|gen_regs:2:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~feeder_combout\);

-- Location: LCFF_X45_Y31_N21
\u_dp|u_rf|gen_regs:2:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X42_Y30_N2
\u_dp|u_rf|gen_regs:3:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~feeder_combout\);

-- Location: LCFF_X42_Y30_N3
\u_dp|u_rf|gen_regs:3:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X47_Y30_N10
\u_dp|u_rf|gen_regs:0:u_reg|ff12|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~feeder_combout\ = \u_dp|rf_wd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~59_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~feeder_combout\);

-- Location: LCFF_X47_Y30_N11
\u_dp|u_rf|gen_regs:0:u_reg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~regout\);

-- Location: LCCOMB_X44_Y29_N20
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:1:u_reg|ff12|q~regout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((!\u_dp|u_ir|ff5|q~regout\ & 
-- \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff12|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff12|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y27_N10
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff12|q~regout\))) # (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff12|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X44_Y27_N4
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_ir|ff6|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~3_combout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y27_N26
\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ = (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6_combout\ & (((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~8_combout\) # (!\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~1_combout\ & ((\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~1_combout\,
	datab => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X44_Y30_N8
\u_dp|ula_shifter_res[11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[11]~9_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|ula_shifter_res[11]~9_combout\);

-- Location: LCCOMB_X43_Y30_N24
\u_dp|u_ula|u_add|U11|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U11|Sum~combout\ = \u_dp|u_ula|u_ela|ia11~1_combout\ $ (\u_dp|u_ula|u_add|U10|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib11~2_combout\) # (\u_dp|u_ula|u_ela|ib11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib11~2_combout\,
	datab => \u_dp|u_ula|u_ela|ib11~3_combout\,
	datac => \u_dp|u_ula|u_ela|ia11~1_combout\,
	datad => \u_dp|u_ula|u_add|U10|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U11|Sum~combout\);

-- Location: LCCOMB_X44_Y30_N18
\u_dp|rf_wd_data~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~60_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[11]~9_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U11|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|ula_shifter_res[11]~9_combout\,
	datad => \u_dp|u_ula|u_add|U11|Sum~combout\,
	combout => \u_dp|rf_wd_data~60_combout\);

-- Location: LCCOMB_X45_Y30_N30
\u_dp|rf_wd_data~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~61_combout\ = (\u_dp|rf_wd_data~60_combout\) # ((\data_mem_data_in11~combout\ & \u_dp|rf_wd_data~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem_data_in11~combout\,
	datac => \u_dp|rf_wd_data~56_combout\,
	datad => \u_dp|rf_wd_data~60_combout\,
	combout => \u_dp|rf_wd_data~61_combout\);

-- Location: LCCOMB_X46_Y27_N26
\u_dp|u_rf|gen_regs:4:u_reg|ff11|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~feeder_combout\ = \u_dp|rf_wd_data~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~61_combout\,
	combout => \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~feeder_combout\);

-- Location: LCFF_X46_Y27_N27
\u_dp|u_rf|gen_regs:4:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y27_N16
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:8:u_reg|ff11|q~regout\))) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff11|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff11|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff11|q~regout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X46_Y27_N30
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff11|q~regout\)) # (!\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff11|q~regout\))))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff11|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff11|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y30_N30
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff11|q~regout\))) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff11|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff11|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff11|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X45_Y30_N22
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff11|q~regout\))) # (!\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff11|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff11|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X46_Y31_N18
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_ir|ff4|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~3_combout\))) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X46_Y31_N8
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~1_combout\ = (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0_combout\ & (((\u_dp|u_rf|gen_regs:14:u_reg|ff11|q~regout\) # (!\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff11|q~regout\ & (\u_dp|u_ir|ff6|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~0_combout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff11|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_regs:14:u_reg|ff11|q~regout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X45_Y32_N17
\u_dp|u_rf|gen_regs:11:u_reg|ff11|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~61_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff11|q~regout\);

-- Location: LCCOMB_X46_Y32_N20
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff11|q~regout\))) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:3:u_reg|ff11|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff11|q~regout\,
	datab => \u_dp|u_rf|gen_regs:7:u_reg|ff11|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X45_Y32_N16
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff11|q~regout\)) # (!\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:11:u_reg|ff11|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff11|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff11|q~regout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X46_Y31_N12
\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~6_combout\,
	datac => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in13~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in13,
	combout => \data_mem_data_in13~combout\);

-- Location: LCCOMB_X40_Y30_N28
\u_dp|u_ula|u_ela|ib13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib13~2_combout\ = (\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ & (!\u_dp|is_addi~0_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\))) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datac => \u_ctrl|mem_wr~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib13~2_combout\);

-- Location: LCCOMB_X40_Y30_N14
\u_dp|u_ula|u_ela|ib13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib13~3_combout\ = (\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & !\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff14|q~regout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_ir|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib13~3_combout\);

-- Location: LCCOMB_X43_Y30_N26
\u_dp|u_ula|u_add|U12|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U12|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia12~1_combout\ & ((\u_dp|u_ula|u_ela|ib12~3_combout\) # ((\u_dp|u_ula|u_ela|ib12~2_combout\) # (\u_dp|u_ula|u_add|U11|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia12~1_combout\ & 
-- (\u_dp|u_ula|u_add|U11|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib12~3_combout\) # (\u_dp|u_ula|u_ela|ib12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib12~3_combout\,
	datab => \u_dp|u_ula|u_ela|ia12~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib12~2_combout\,
	datad => \u_dp|u_ula|u_add|U11|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U12|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N16
\u_dp|u_ula|u_add|U13|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U13|Sum~combout\ = \u_dp|u_ula|u_ela|ia13~1_combout\ $ (\u_dp|u_ula|u_add|U12|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib13~2_combout\) # (\u_dp|u_ula|u_ela|ib13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia13~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib13~2_combout\,
	datac => \u_dp|u_ula|u_ela|ib13~3_combout\,
	datad => \u_dp|u_ula|u_add|U12|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U13|Sum~combout\);

-- Location: LCCOMB_X44_Y30_N6
\u_dp|rf_wd_data~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~55_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[13]~7_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U13|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|ula_shifter_res[13]~7_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|rf_wd_data~0_combout\,
	datad => \u_dp|u_ula|u_add|U13|Sum~combout\,
	combout => \u_dp|rf_wd_data~55_combout\);

-- Location: LCCOMB_X44_Y30_N22
\u_dp|rf_wd_data~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~57_combout\ = (\u_dp|rf_wd_data~55_combout\) # ((\u_dp|rf_wd_data~56_combout\ & \data_mem_data_in13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~56_combout\,
	datab => \data_mem_data_in13~combout\,
	datad => \u_dp|rf_wd_data~55_combout\,
	combout => \u_dp|rf_wd_data~57_combout\);

-- Location: LCCOMB_X44_Y29_N8
\u_dp|u_rf|gen_regs:15:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X44_Y29_N9
\u_dp|u_rf|gen_regs:15:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X46_Y29_N20
\u_dp|u_rf|gen_regs:14:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X46_Y29_N21
\u_dp|u_rf|gen_regs:14:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X45_Y30_N18
\u_dp|u_rf|gen_regs:12:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X45_Y30_N19
\u_dp|u_rf|gen_regs:12:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X45_Y30_N20
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff13|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:12:u_reg|ff13|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff13|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X44_Y29_N26
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff13|q~regout\)) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:14:u_reg|ff13|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X44_Y30_N27
\u_dp|u_rf|gen_regs:7:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff13|q~regout\);

-- Location: LCFF_X43_Y28_N31
\u_dp|u_rf|gen_regs:5:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X43_Y28_N30
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_regs:5:u_reg|ff13|q~regout\) # (\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff13|q~regout\ & 
-- ((!\u_dp|u_ir|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff13|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y30_N26
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff13|q~regout\))) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff13|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~1_combout\);

-- Location: LCFF_X43_Y28_N17
\u_dp|u_rf|gen_regs:1:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff13|q~regout\);

-- Location: LCFF_X44_Y28_N23
\u_dp|u_rf|gen_regs:0:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X44_Y28_N22
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:2:u_reg|ff13|q~regout\) # ((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_regs:0:u_reg|ff13|q~regout\ & 
-- !\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:0:u_reg|ff13|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y28_N16
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff13|q~regout\)) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff13|q~regout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X44_Y27_N0
\u_dp|u_rf|gen_regs:9:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X44_Y27_N1
\u_dp|u_rf|gen_regs:9:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X44_Y27_N14
\u_dp|u_rf|gen_regs:11:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X44_Y27_N15
\u_dp|u_rf|gen_regs:11:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~regout\);

-- Location: LCFF_X45_Y27_N13
\u_dp|u_rf|gen_regs:8:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X45_Y31_N4
\u_dp|u_rf|gen_regs:10:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X45_Y31_N5
\u_dp|u_rf|gen_regs:10:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X45_Y27_N30
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff13|q~regout\))) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:8:u_reg|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:8:u_reg|ff13|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff13|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X44_Y27_N8
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff13|q~regout\))) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff13|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X43_Y28_N22
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\) # ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X40_Y29_N2
\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y29_N30
\u_dp|u_cmp|st11|out_eq~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st11|out_eq~1_combout\ = (\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\) # (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st11|out_eq~1_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_mem_data_in14~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_mem_data_in14,
	combout => \data_mem_data_in14~combout\);

-- Location: LCCOMB_X40_Y32_N22
\u_dp|rf_wd_data~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~53_combout\ = (!\u_ctrl|wb_sel1~0_combout\ & (\u_ctrl|rf_wr~0_combout\ & (\data_mem_data_in14~combout\ & \u_ctrl|wb_sel0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_ctrl|rf_wr~0_combout\,
	datac => \data_mem_data_in14~combout\,
	datad => \u_ctrl|wb_sel0~0_combout\,
	combout => \u_dp|rf_wd_data~53_combout\);

-- Location: LCCOMB_X44_Y33_N20
\u_dp|u_rf|gen_regs:12:u_reg|ff14|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~feeder_combout\ = \u_dp|rf_wd_data~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~54_combout\,
	combout => \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~feeder_combout\);

-- Location: LCFF_X44_Y33_N21
\u_dp|u_rf|gen_regs:12:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~regout\);

-- Location: LCFF_X44_Y28_N19
\u_dp|u_rf|gen_regs:0:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X43_Y27_N22
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_regs:8:u_reg|ff14|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff14|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff14|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y27_N20
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:12:u_reg|ff14|q~regout\))) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:4:u_reg|ff14|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X41_Y29_N10
\u_dp|u_rf|gen_regs:9:u_reg|ff14|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~feeder_combout\ = \u_dp|rf_wd_data~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~54_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~feeder_combout\);

-- Location: LCFF_X41_Y29_N11
\u_dp|u_rf|gen_regs:9:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~regout\);

-- Location: LCFF_X43_Y28_N5
\u_dp|u_rf|gen_regs:1:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X43_Y28_N4
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_rf|gen_regs:5:u_reg|ff14|q~regout\)) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff14|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff14|q~regout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X44_Y33_N6
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff14|q~regout\)) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:9:u_reg|ff14|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y33_N14
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_ir|ff0|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~3_combout\))) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\);

-- Location: LCFF_X44_Y30_N25
\u_dp|u_rf|gen_regs:6:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff14|q~regout\);

-- Location: LCFF_X42_Y32_N17
\u_dp|u_rf|gen_regs:10:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X45_Y29_N12
\u_dp|u_rf|gen_regs:2:u_reg|ff14|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~feeder_combout\ = \u_dp|rf_wd_data~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~54_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~feeder_combout\);

-- Location: LCFF_X45_Y29_N13
\u_dp|u_rf|gen_regs:2:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X45_Y29_N30
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_ir|ff3|q~regout\)) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_regs:10:u_reg|ff14|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff14|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y33_N30
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff14|q~regout\)) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:6:u_reg|ff14|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff14|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff14|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X44_Y33_N28
\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~8_combout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y33_N18
\u_dp|u_ula|u_ela|ib14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib14~3_combout\ = (\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & !\u_dp|u_ir|ff12|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_ir|ff12|q~regout\,
	combout => \u_dp|u_ula|u_ela|ib14~3_combout\);

-- Location: LCCOMB_X41_Y33_N12
\u_dp|u_ula|u_ela|ib14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib14~2_combout\ = (\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_ula|u_ela|ia15~1_combout\ & ((!\u_dp|is_addi~0_combout\)))) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datab => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	datac => \u_ctrl|mem_wr~1_combout\,
	datad => \u_dp|is_addi~0_combout\,
	combout => \u_dp|u_ula|u_ela|ib14~2_combout\);

-- Location: LCCOMB_X41_Y33_N24
\u_dp|u_ula|u_ela|ib14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib14~combout\ = (\u_dp|u_ula|u_ela|ib14~3_combout\) # (\u_dp|u_ula|u_ela|ib14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_ula|u_ela|ib14~3_combout\,
	datad => \u_dp|u_ula|u_ela|ib14~2_combout\,
	combout => \u_dp|u_ula|u_ela|ib14~combout\);

-- Location: LCCOMB_X43_Y30_N12
\u_dp|u_ula|u_add|U13|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U13|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia13~1_combout\ & ((\u_dp|u_ula|u_ela|ib13~2_combout\) # ((\u_dp|u_ula|u_ela|ib13~3_combout\) # (\u_dp|u_ula|u_add|U12|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia13~1_combout\ & 
-- (\u_dp|u_ula|u_add|U12|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib13~2_combout\) # (\u_dp|u_ula|u_ela|ib13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia13~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib13~2_combout\,
	datac => \u_dp|u_ula|u_ela|ib13~3_combout\,
	datad => \u_dp|u_ula|u_add|U12|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U13|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N22
\u_dp|ula_shifter_res[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[14]~5_combout\ = (!\u_ctrl|shl~0_combout\ & (\u_dp|u_ula|u_ela|ia14~1_combout\ $ (\u_dp|u_ula|u_ela|ib14~combout\ $ (\u_dp|u_ula|u_add|U13|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia14~1_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ula|u_ela|ib14~combout\,
	datad => \u_dp|u_ula|u_add|U13|Cout~0_combout\,
	combout => \u_dp|ula_shifter_res[14]~5_combout\);

-- Location: LCCOMB_X43_Y29_N28
\u_dp|rf_wd_data~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~54_combout\ = (\u_dp|rf_wd_data~53_combout\) # ((\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[14]~6_combout\) # (\u_dp|ula_shifter_res[14]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|ula_shifter_res[14]~6_combout\,
	datab => \u_dp|rf_wd_data~53_combout\,
	datac => \u_dp|rf_wd_data~0_combout\,
	datad => \u_dp|ula_shifter_res[14]~5_combout\,
	combout => \u_dp|rf_wd_data~54_combout\);

-- Location: LCFF_X43_Y28_N3
\u_dp|u_rf|gen_regs:5:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X43_Y28_N2
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_regs:5:u_reg|ff14|q~regout\) # (\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff14|q~regout\ & 
-- ((!\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\);

-- Location: LCFF_X44_Y30_N3
\u_dp|u_rf|gen_regs:7:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X44_Y30_N24
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff14|q~regout\))) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff14|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~0_combout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_regs:7:u_reg|ff14|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X44_Y33_N26
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff14|q~regout\)) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:12:u_reg|ff14|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7_combout\);

-- Location: LCFF_X43_Y29_N3
\u_dp|u_rf|gen_regs:15:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X44_Y33_N8
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~8_combout\ = (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7_combout\ & (((\u_dp|u_rf|gen_regs:15:u_reg|ff14|q~regout\) # (!\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:14:u_reg|ff14|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff14|q~regout\,
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~7_combout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X44_Y28_N21
\u_dp|u_rf|gen_regs:3:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X44_Y28_N18
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:2:u_reg|ff14|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff14|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:0:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y28_N20
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff14|q~regout\))) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff14|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff14|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~5_combout\);

-- Location: LCFF_X42_Y32_N27
\u_dp|u_rf|gen_regs:11:u_reg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff14|q~regout\);

-- Location: LCCOMB_X42_Y32_N26
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~3_combout\ = (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2_combout\ & (((\u_dp|u_rf|gen_regs:11:u_reg|ff14|q~regout\) # (!\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff14|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~2_combout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff14|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff14|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y33_N0
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\) # ((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (!\u_dp|u_ir|ff6|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y33_N22
\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X44_Y34_N24
\u_dp|u_rf|gen_regs:11:u_reg|ff15|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~feeder_combout\ = \u_dp|rf_wd_data~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~52_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~feeder_combout\);

-- Location: LCFF_X44_Y34_N25
\u_dp|u_rf|gen_regs:11:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~regout\);

-- Location: LCFF_X42_Y34_N5
\u_dp|u_rf|gen_regs:9:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X42_Y34_N6
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff15|q~regout\))) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:8:u_reg|ff15|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff15|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y34_N18
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff15|q~regout\))) # (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:10:u_reg|ff15|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~1_combout\);

-- Location: LCFF_X43_Y30_N9
\u_dp|u_rf|gen_regs:15:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff15|q~regout\);

-- Location: LCFF_X43_Y33_N1
\u_dp|u_rf|gen_regs:14:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff15|q~regout\);

-- Location: LCFF_X43_Y34_N27
\u_dp|u_rf|gen_regs:12:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X43_Y34_N26
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff15|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:12:u_reg|ff15|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:14:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_regs:12:u_reg|ff15|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y34_N0
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff15|q~regout\))) # (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:13:u_reg|ff15|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff15|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X42_Y30_N5
\u_dp|u_rf|gen_regs:3:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff15|q~regout\);

-- Location: LCFF_X43_Y32_N31
\u_dp|u_rf|gen_regs:2:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X40_Y30_N0
\u_dp|u_rf|gen_regs:0:u_reg|ff15|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~feeder_combout\ = \u_dp|rf_wd_data~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~52_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~feeder_combout\);

-- Location: LCFF_X40_Y30_N1
\u_dp|u_rf|gen_regs:0:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X40_Y30_N10
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:1:u_reg|ff15|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff15|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff15|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y32_N30
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff15|q~regout\)) # (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff15|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_regs:2:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~5_combout\);

-- Location: LCFF_X44_Y30_N23
\u_dp|u_rf|gen_regs:7:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff15|q~regout\);

-- Location: LCFF_X44_Y32_N23
\u_dp|u_rf|gen_regs:5:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff15|q~regout\);

-- Location: LCFF_X44_Y32_N1
\u_dp|u_rf|gen_regs:4:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X44_Y32_N0
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_regs:6:u_reg|ff15|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff15|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff15|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X44_Y32_N22
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:7:u_reg|ff15|q~regout\)) # (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff15|q~regout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:7:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y32_N14
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\) # ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y34_N28
\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y29_N22
\u_dp|u_ula|u_ela|ia15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia15~4_combout\ = (\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia15~4_combout\);

-- Location: LCCOMB_X40_Y29_N20
\u_dp|u_ula|u_ela|ia15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia15~5_combout\ = (\u_dp|u_ula|u_ela|ia15~4_combout\) # ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & (!\u_dp|is_addi~0_combout\ & \u_dp|u_ula|u_ela|ia15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datad => \u_dp|u_ula|u_ela|ia15~4_combout\,
	combout => \u_dp|u_ula|u_ela|ia15~5_combout\);

-- Location: LCCOMB_X40_Y29_N18
\u_dp|u_ula|u_ela|ia14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia14~0_combout\ = (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia14~0_combout\);

-- Location: LCCOMB_X40_Y29_N0
\u_dp|u_ula|u_ela|ia14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia14~1_combout\ = (\u_dp|u_ula|u_ela|ia14~0_combout\) # ((!\u_dp|is_addi~0_combout\ & (\u_dp|u_ula|u_ela|ia15~2_combout\ & \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia14~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datad => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia14~1_combout\);

-- Location: LCCOMB_X43_Y30_N18
\u_dp|u_ula|u_add|U14|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U14|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia14~1_combout\ & ((\u_dp|u_ula|u_ela|ib14~2_combout\) # ((\u_dp|u_ula|u_ela|ib14~3_combout\) # (\u_dp|u_ula|u_add|U13|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia14~1_combout\ & 
-- (\u_dp|u_ula|u_add|U13|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib14~2_combout\) # (\u_dp|u_ula|u_ela|ib14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib14~2_combout\,
	datab => \u_dp|u_ula|u_ela|ia14~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib14~3_combout\,
	datad => \u_dp|u_ula|u_add|U13|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U14|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N4
\u_dp|rf_wd_data~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~51_combout\ = (!\u_ctrl|shl~0_combout\ & (\u_dp|u_ula|u_ela|ib15~0_combout\ $ (\u_dp|u_ula|u_ela|ia15~5_combout\ $ (\u_dp|u_ula|u_add|U14|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib15~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~5_combout\,
	datad => \u_dp|u_ula|u_add|U14|Cout~0_combout\,
	combout => \u_dp|rf_wd_data~51_combout\);

-- Location: LCCOMB_X40_Y31_N24
\u_dp|rf_wd_data~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~49_combout\ = (\u_dp|u_ir|ff15|q~regout\ & ((\u_dp|u_ir|ff14|q~regout\) # (\u_dp|u_ir|ff12|q~regout\ $ (\u_dp|u_ir|ff13|q~regout\)))) # (!\u_dp|u_ir|ff15|q~regout\ & ((\u_dp|u_ir|ff12|q~regout\) # ((!\u_dp|u_ir|ff14|q~regout\) # 
-- (!\u_dp|u_ir|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff15|q~regout\,
	datad => \u_dp|u_ir|ff14|q~regout\,
	combout => \u_dp|rf_wd_data~49_combout\);

-- Location: LCCOMB_X43_Y30_N8
\u_dp|rf_wd_data~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~52_combout\ = (\u_dp|rf_wd_data~50_combout\) # ((\u_dp|rf_wd_data~51_combout\ & ((\u_dp|rf_wd_data~49_combout\) # (!\u_ctrl|rf_wr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~50_combout\,
	datab => \u_ctrl|rf_wr~0_combout\,
	datac => \u_dp|rf_wd_data~51_combout\,
	datad => \u_dp|rf_wd_data~49_combout\,
	combout => \u_dp|rf_wd_data~52_combout\);

-- Location: LCCOMB_X43_Y33_N14
\u_dp|u_rf|gen_regs:6:u_reg|ff15|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~feeder_combout\ = \u_dp|rf_wd_data~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~52_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~feeder_combout\);

-- Location: LCFF_X43_Y33_N15
\u_dp|u_rf|gen_regs:6:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X44_Y34_N22
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff15|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff15|q~regout\ & 
-- !\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff15|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff15|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X43_Y33_N0
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff15|q~regout\))) # (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff15|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X42_Y30_N24
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff15|q~regout\) # ((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_regs:3:u_reg|ff15|q~regout\ & 
-- !\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff15|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff15|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y34_N30
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff15|q~regout\))) # (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:11:u_reg|ff15|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff15|q~regout\,
	datad => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X40_Y30_N18
\u_dp|u_rf|gen_regs:8:u_reg|ff15|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~feeder_combout\ = \u_dp|rf_wd_data~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~52_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~feeder_combout\);

-- Location: LCFF_X40_Y30_N19
\u_dp|u_rf|gen_regs:8:u_reg|ff15|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~regout\);

-- Location: LCCOMB_X40_Y30_N22
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_rf|gen_regs:8:u_reg|ff15|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff15|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:8:u_reg|ff15|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff15|q~regout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y34_N0
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~5_combout\ = (\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:12:u_reg|ff15|q~regout\) # ((!\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4_combout\ & 
-- (((\u_dp|u_rf|gen_regs:4:u_reg|ff15|q~regout\ & \u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff15|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff15|q~regout\,
	datac => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~4_combout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X44_Y34_N2
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~3_combout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((!\u_dp|u_ir|ff5|q~regout\ & 
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~3_combout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y34_N16
\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y33_N30
\u_dp|u_cmp|st11|out_eq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st11|out_eq~0_combout\ = (\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\) # (\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st11|out_eq~0_combout\);

-- Location: LCCOMB_X40_Y33_N0
\u_dp|u_cmp|st11|out_eq~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st11|out_eq~2_combout\ = (\u_dp|u_cmp|st11|out_eq~1_combout\) # ((\u_dp|u_cmp|st11|out_eq~0_combout\) # (\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_cmp|st11|out_eq~1_combout\,
	datad => \u_dp|u_cmp|st11|out_eq~0_combout\,
	combout => \u_dp|u_cmp|st11|out_eq~2_combout\);

-- Location: LCCOMB_X40_Y33_N28
\u_dp|u_cmp|st7|out_eq~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st7|out_eq~1_combout\ = (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\) # (\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st7|out_eq~1_combout\);

-- Location: LCCOMB_X41_Y33_N16
\u_dp|u_cmp|st7|out_eq\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st7|out_eq~combout\ = (\u_dp|u_cmp|st7|out_eq~0_combout\) # ((\u_dp|u_cmp|st11|out_eq~2_combout\) # (\u_dp|u_cmp|st7|out_eq~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_cmp|st7|out_eq~0_combout\,
	datac => \u_dp|u_cmp|st11|out_eq~2_combout\,
	datad => \u_dp|u_cmp|st7|out_eq~1_combout\,
	combout => \u_dp|u_cmp|st7|out_eq~combout\);

-- Location: LCCOMB_X41_Y28_N12
\u_dp|u_rf|gen_regs:5:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X41_Y28_N13
\u_dp|u_rf|gen_regs:5:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~regout\);

-- Location: LCFF_X42_Y28_N9
\u_dp|u_rf|gen_regs:13:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff4|q~regout\);

-- Location: LCFF_X42_Y28_N7
\u_dp|u_rf|gen_regs:9:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff4|q~regout\);

-- Location: LCFF_X43_Y28_N29
\u_dp|u_rf|gen_regs:1:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X42_Y28_N6
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\) # ((\u_dp|u_rf|gen_regs:9:u_reg|ff4|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:9:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_regs:1:u_reg|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X42_Y28_N14
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff4|q~regout\))) # (!\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff4|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X41_Y32_N31
\u_dp|u_rf|gen_regs:15:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X43_Y32_N0
\u_dp|u_rf|gen_regs:3:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X43_Y32_N1
\u_dp|u_rf|gen_regs:3:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X42_Y32_N30
\u_dp|u_rf|gen_regs:11:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X42_Y32_N31
\u_dp|u_rf|gen_regs:11:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X42_Y32_N28
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\) # (\u_dp|u_rf|gen_regs:11:u_reg|ff4|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff4|q~regout\ & 
-- (!\u_dp|u_ir|ff6|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X41_Y32_N30
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff4|q~regout\))) # (!\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:7:u_reg|ff4|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff4|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X42_Y27_N17
\u_dp|u_rf|gen_regs:8:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X41_Y27_N26
\u_dp|u_rf|gen_regs:0:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X41_Y27_N27
\u_dp|u_rf|gen_regs:0:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X41_Y27_N12
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff4|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff4|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X41_Y27_N10
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff4|q~regout\)) # (!\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff4|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y31_N0
\u_dp|u_rf|gen_regs:6:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X46_Y31_N1
\u_dp|u_rf|gen_regs:6:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X43_Y32_N2
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_regs:6:u_reg|ff4|q~regout\) # (\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:2:u_reg|ff4|q~regout\ & 
-- ((!\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X42_Y32_N24
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff4|q~regout\)) # (!\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff4|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X41_Y28_N26
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_ir|ff5|q~regout\)) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~3_combout\))) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X41_Y28_N0
\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\);

-- Location: LCFF_X42_Y32_N5
\u_dp|u_rf|gen_regs:11:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff3|q~regout\);

-- Location: LCFF_X41_Y29_N15
\u_dp|u_rf|gen_regs:8:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X41_Y29_N4
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff3|q~regout\) # ((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_regs:8:u_reg|ff3|q~regout\ & 
-- !\u_dp|u_ir|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:8:u_reg|ff3|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X42_Y32_N4
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff3|q~regout\))) # (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:10:u_reg|ff3|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~1_combout\);

-- Location: LCFF_X43_Y29_N5
\u_dp|u_rf|gen_regs:15:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:15:u_reg|ff3|q~regout\);

-- Location: LCFF_X43_Y29_N17
\u_dp|u_rf|gen_regs:14:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X45_Y28_N30
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_regs:14:u_reg|ff3|q~regout\) # (\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff3|q~regout\ & 
-- ((!\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff3|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X42_Y28_N2
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff3|q~regout\))) # (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:13:u_reg|ff3|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff3|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X44_Y32_N17
\u_dp|u_rf|gen_regs:5:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff3|q~regout\);

-- Location: LCFF_X44_Y32_N19
\u_dp|u_rf|gen_regs:4:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X44_Y32_N18
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff3|q~regout\) # ((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_regs:4:u_reg|ff3|q~regout\ & 
-- !\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff3|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X44_Y32_N16
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:7:u_reg|ff3|q~regout\)) # (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff3|q~regout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y28_N4
\u_dp|u_rf|gen_regs:0:u_reg|ff3|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~feeder_combout\ = \u_dp|rf_wd_data~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~15_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~feeder_combout\);

-- Location: LCFF_X44_Y28_N5
\u_dp|u_rf|gen_regs:0:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X44_Y28_N6
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_ir|ff0|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_rf|gen_regs:1:u_reg|ff3|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff3|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~regout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_ir|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y32_N18
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff3|q~regout\)) # (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff3|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X43_Y32_N12
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~3_combout\)) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X43_Y32_N22
\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X42_Y33_N30
\u_dp|u_cmp|st3|out_eq~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st3|out_eq~1_combout\ = (\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\) # (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ $ (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st3|out_eq~1_combout\);

-- Location: LCCOMB_X41_Y33_N28
\u_dp|u_cmp|st3|out_eq\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st3|out_eq~combout\ = (\u_dp|u_cmp|st3|out_eq~0_combout\) # ((\u_dp|u_cmp|st7|out_eq~combout\) # (\u_dp|u_cmp|st3|out_eq~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_cmp|st3|out_eq~0_combout\,
	datac => \u_dp|u_cmp|st7|out_eq~combout\,
	datad => \u_dp|u_cmp|st3|out_eq~1_combout\,
	combout => \u_dp|u_cmp|st3|out_eq~combout\);

-- Location: LCCOMB_X41_Y33_N20
\u_dp|rf_wd_data[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~30_combout\ = (!\u_dp|u_cmp|st3|out_eq~combout\ & ((\u_dp|rf_wd_data[0]~29_combout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\) # (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\))) # (!\u_dp|rf_wd_data[0]~29_combout\ & 
-- (!\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ & \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data[0]~29_combout\,
	datab => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_cmp|st3|out_eq~combout\,
	combout => \u_dp|rf_wd_data[0]~30_combout\);

-- Location: LCCOMB_X41_Y32_N24
\u_dp|rf_wd_data[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~34_combout\ = (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & (((\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & !\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ & !\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[0]~34_combout\);

-- Location: LCCOMB_X40_Y33_N8
\u_dp|rf_wd_data[0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~35_combout\ = (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & (\u_dp|rf_wd_data[0]~34_combout\ & \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & ((\u_dp|rf_wd_data[0]~34_combout\) # 
-- (\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|rf_wd_data[0]~34_combout\,
	datad => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[0]~35_combout\);

-- Location: LCCOMB_X40_Y33_N22
\u_dp|rf_wd_data[0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~36_combout\ = (!\u_dp|u_cmp|st11|out_eq~2_combout\ & ((\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ & ((\u_dp|rf_wd_data[0]~35_combout\) # (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\ & (\u_dp|rf_wd_data[0]~35_combout\ & !\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_cmp|st11|out_eq~2_combout\,
	datac => \u_dp|rf_wd_data[0]~35_combout\,
	datad => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[0]~36_combout\);

-- Location: LCFF_X44_Y28_N17
\u_dp|u_rf|gen_regs:3:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X44_Y28_N16
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_ir|ff7|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff13|q~regout\))) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:3:u_reg|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_regs:11:u_reg|ff13|q~regout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X44_Y29_N0
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff13|q~regout\))) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:7:u_reg|ff13|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff13|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff13|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X45_Y30_N17
\u_dp|u_rf|gen_regs:13:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~57_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X44_Y27_N30
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff13|q~regout\))) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_regs:9:u_reg|ff13|q~regout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X45_Y30_N16
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff13|q~regout\))) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff13|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff13|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X43_Y27_N30
\u_dp|u_rf|gen_regs:4:u_reg|ff13|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~feeder_combout\ = \u_dp|rf_wd_data~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~57_combout\,
	combout => \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~feeder_combout\);

-- Location: LCFF_X43_Y27_N31
\u_dp|u_rf|gen_regs:4:u_reg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~regout\);

-- Location: LCCOMB_X43_Y27_N28
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_regs:4:u_reg|ff13|q~regout\) # (\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:0:u_reg|ff13|q~regout\ & 
-- ((!\u_dp|u_ir|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:0:u_reg|ff13|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff13|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_ir|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y27_N12
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff13|q~regout\)) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff13|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff13|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff13|q~regout\,
	datad => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X45_Y29_N28
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~3_combout\) # ((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((!\u_dp|u_ir|ff4|q~regout\ & 
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~3_combout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y29_N22
\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\ & (\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y29_N26
\u_dp|rf_wd_data[0]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~37_combout\ = (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & (((\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & !\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ & !\u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[0]~37_combout\);

-- Location: LCCOMB_X40_Y29_N16
\u_dp|rf_wd_data[0]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~38_combout\ = (\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ & ((\u_dp|rf_wd_data[0]~37_combout\) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ & 
-- (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ & \u_dp|rf_wd_data[0]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|rf_wd_data[0]~37_combout\,
	combout => \u_dp|rf_wd_data[0]~38_combout\);

-- Location: LCCOMB_X40_Y33_N12
\u_dp|rf_wd_data[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~39_combout\ = (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & \u_dp|rf_wd_data[0]~38_combout\)) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\) # (\u_dp|rf_wd_data[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|rf_wd_data[0]~38_combout\,
	combout => \u_dp|rf_wd_data[0]~39_combout\);

-- Location: LCCOMB_X40_Y33_N26
\u_dp|rf_wd_data[0]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~40_combout\ = (\u_dp|rf_wd_data[0]~36_combout\) # ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & ((\u_dp|rf_wd_data[0]~39_combout\) # (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ & \u_dp|rf_wd_data[0]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|rf_wd_data[0]~36_combout\,
	datac => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|rf_wd_data[0]~39_combout\,
	combout => \u_dp|rf_wd_data[0]~40_combout\);

-- Location: LCCOMB_X41_Y33_N0
\u_dp|rf_wd_data[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~41_combout\ = (\u_dp|rf_wd_data[0]~33_combout\) # ((\u_dp|rf_wd_data[0]~30_combout\) # (\u_dp|rf_wd_data[0]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data[0]~33_combout\,
	datac => \u_dp|rf_wd_data[0]~30_combout\,
	datad => \u_dp|rf_wd_data[0]~40_combout\,
	combout => \u_dp|rf_wd_data[0]~41_combout\);

-- Location: LCCOMB_X41_Y33_N6
\u_dp|rf_wd_data[0]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~42_combout\ = (\u_ctrl|wb_sel0~0_combout\ & ((\u_ctrl|wb_sel1~0_combout\ & ((\u_dp|rf_wd_data[0]~41_combout\))) # (!\u_ctrl|wb_sel1~0_combout\ & (\data_mem_data_in0~combout\)))) # (!\u_ctrl|wb_sel0~0_combout\ & 
-- (\u_ctrl|wb_sel1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel0~0_combout\,
	datab => \u_ctrl|wb_sel1~0_combout\,
	datac => \data_mem_data_in0~combout\,
	datad => \u_dp|rf_wd_data[0]~41_combout\,
	combout => \u_dp|rf_wd_data[0]~42_combout\);

-- Location: LCCOMB_X42_Y32_N18
\u_dp|rf_wd_data[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~43_combout\ = (\u_ctrl|rf_wr~0_combout\ & (\u_dp|rf_wd_data[0]~42_combout\ & ((\u_ctrl|wb_sel0~0_combout\) # (\u_dp|u_ir|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel0~0_combout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|rf_wd_data[0]~42_combout\,
	combout => \u_dp|rf_wd_data[0]~43_combout\);

-- Location: LCCOMB_X41_Y28_N16
\u_dp|rf_wd_data[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[0]~46_combout\ = (\u_dp|rf_wd_data[0]~43_combout\) # ((\u_dp|rf_wd_data~0_combout\ & ((\u_dp|rf_wd_data[0]~45_combout\) # (\u_dp|rf_wd_data[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data[0]~45_combout\,
	datab => \u_dp|rf_wd_data~0_combout\,
	datac => \u_dp|rf_wd_data[0]~44_combout\,
	datad => \u_dp|rf_wd_data[0]~43_combout\,
	combout => \u_dp|rf_wd_data[0]~46_combout\);

-- Location: LCCOMB_X42_Y28_N26
\u_dp|u_rf|gen_regs:13:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X42_Y28_N27
\u_dp|u_rf|gen_regs:13:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X43_Y28_N20
\u_dp|u_rf|gen_regs:1:u_reg|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~feeder_combout\ = \u_dp|rf_wd_data[0]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[0]~46_combout\,
	combout => \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~feeder_combout\);

-- Location: LCFF_X43_Y28_N21
\u_dp|u_rf|gen_regs:1:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X42_Y28_N12
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff0|q~regout\) # ((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:1:u_reg|ff0|q~regout\ & 
-- !\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff0|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X42_Y28_N28
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff0|q~regout\)) # (!\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff0|q~regout\))))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:13:u_reg|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X40_Y31_N17
\u_dp|u_rf|gen_regs:3:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X41_Y27_N16
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_ir|ff7|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_rf|gen_regs:11:u_reg|ff0|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:3:u_reg|ff0|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:11:u_reg|ff0|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_regs:3:u_reg|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X42_Y29_N18
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff0|q~regout\))) # (!\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:7:u_reg|ff0|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:7:u_reg|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~8_combout\);

-- Location: LCFF_X44_Y31_N21
\u_dp|u_rf|gen_regs:12:u_reg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[0]~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff0|q~regout\);

-- Location: LCCOMB_X42_Y27_N18
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_ir|ff6|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff0|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff0|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X42_Y27_N28
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:12:u_reg|ff0|q~regout\))) # (!\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:8:u_reg|ff0|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff0|q~regout\,
	datac => \u_dp|u_ir|ff7|q~regout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X42_Y27_N14
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_ir|ff6|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:6:u_reg|ff0|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff0|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_regs:2:u_reg|ff0|q~regout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X43_Y31_N2
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff0|q~regout\))) # (!\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:10:u_reg|ff0|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff0|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff0|q~regout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X43_Y31_N28
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_ir|ff5|q~regout\)) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~3_combout\))) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X43_Y31_N26
\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X42_Y33_N12
\u_dp|rf_wd_data[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~25_combout\ = (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & (\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ $ (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\)))) # 
-- (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ $ (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|rf_wd_data[1]~25_combout\);

-- Location: LCCOMB_X42_Y33_N14
\u_dp|rf_wd_data[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~26_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (\u_dp|rf_wd_data[1]~25_combout\ & (\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\ $ (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|rf_wd_data[1]~25_combout\,
	combout => \u_dp|rf_wd_data[1]~26_combout\);

-- Location: LCCOMB_X41_Y33_N30
\u_dp|rf_wd_data[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~27_combout\ = (\u_ctrl|wb_sel0~0_combout\ & (\u_dp|rf_wd_data[1]~26_combout\ & !\u_dp|u_cmp|st3|out_eq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel0~0_combout\,
	datac => \u_dp|rf_wd_data[1]~26_combout\,
	datad => \u_dp|u_cmp|st3|out_eq~combout\,
	combout => \u_dp|rf_wd_data[1]~27_combout\);

-- Location: LCCOMB_X43_Y34_N8
\u_dp|rf_wd_data[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~22_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data[1]~22_combout\);

-- Location: LCCOMB_X43_Y34_N6
\u_dp|rf_wd_data[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~23_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|rf_wd_data[1]~22_combout\) # ((\u_dp|u_ula|u_add|U1|Sum~combout\ & !\u_ctrl|shl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_add|U1|Sum~combout\,
	datab => \u_dp|rf_wd_data~0_combout\,
	datac => \u_dp|rf_wd_data[1]~22_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data[1]~23_combout\);

-- Location: LCCOMB_X44_Y33_N16
\u_dp|rf_wd_data[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[1]~28_combout\ = (\u_dp|rf_wd_data[1]~23_combout\) # ((\u_ctrl|rf_wr~0_combout\ & ((\u_dp|rf_wd_data[1]~24_combout\) # (\u_dp|rf_wd_data[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|rf_wr~0_combout\,
	datab => \u_dp|rf_wd_data[1]~24_combout\,
	datac => \u_dp|rf_wd_data[1]~27_combout\,
	datad => \u_dp|rf_wd_data[1]~23_combout\,
	combout => \u_dp|rf_wd_data[1]~28_combout\);

-- Location: LCFF_X43_Y29_N15
\u_dp|u_rf|gen_regs:14:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff1|q~regout\);

-- Location: LCFF_X44_Y31_N27
\u_dp|u_rf|gen_regs:12:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:12:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y31_N8
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff1|q~regout\) # ((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_regs:12:u_reg|ff1|q~regout\ & 
-- !\u_dp|u_ir|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y29_N20
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff1|q~regout\)) # (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:14:u_reg|ff1|q~regout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:15:u_reg|ff1|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~8_combout\);

-- Location: LCFF_X44_Y30_N1
\u_dp|u_rf|gen_regs:6:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff1|q~regout\);

-- Location: LCFF_X44_Y30_N15
\u_dp|u_rf|gen_regs:7:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff1|q~regout\);

-- Location: LCFF_X44_Y32_N3
\u_dp|u_rf|gen_regs:4:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y32_N10
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff1|q~regout\) # ((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_regs:4:u_reg|ff1|q~regout\ & 
-- !\u_dp|u_ir|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y30_N14
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff1|q~regout\))) # (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff1|q~regout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X44_Y27_N28
\u_dp|u_rf|gen_regs:9:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~feeder_combout\);

-- Location: LCFF_X44_Y27_N29
\u_dp|u_rf|gen_regs:9:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X45_Y27_N14
\u_dp|u_rf|gen_regs:11:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~feeder_combout\);

-- Location: LCFF_X45_Y27_N15
\u_dp|u_rf|gen_regs:11:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X45_Y31_N10
\u_dp|u_rf|gen_regs:10:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~feeder_combout\);

-- Location: LCFF_X45_Y31_N11
\u_dp|u_rf|gen_regs:10:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X45_Y27_N26
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff1|q~regout\))) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:8:u_reg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X45_Y27_N28
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff1|q~regout\))) # (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~3_combout\);

-- Location: LCFF_X43_Y28_N25
\u_dp|u_rf|gen_regs:1:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X45_Y31_N8
\u_dp|u_rf|gen_regs:2:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~feeder_combout\);

-- Location: LCFF_X45_Y31_N9
\u_dp|u_rf|gen_regs:2:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y28_N30
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_ir|ff1|q~regout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_regs:2:u_reg|ff1|q~regout\))) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff0|q~regout\,
	datad => \u_dp|u_ir|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X43_Y28_N24
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff1|q~regout\)) # (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff1|q~regout\))))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_regs:1:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X44_Y31_N2
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_ir|ff3|q~regout\)) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~3_combout\)) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y31_N10
\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~8_combout\,
	datac => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y31_N16
\u_dp|u_ula|u_ela|ib1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib1~0_combout\ = (\u_dp|u_ula|u_ela|ia15~0_combout\ & ((\u_dp|is_addi~0_combout\ & (!\u_dp|u_ir|ff1|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_ula|u_ela|ia15~0_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib1~0_combout\);

-- Location: LCCOMB_X42_Y31_N16
\u_dp|u_ula|u_ela|ib0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib0~0_combout\ = (\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff0|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib0~0_combout\);

-- Location: LCCOMB_X42_Y31_N22
\u_dp|u_ula|u_ela|ib0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib0~1_combout\ = (\u_dp|u_ula|u_ela|ib0~0_combout\ & (((!\u_dp|u_ula|u_ela|ia15~1_combout\)))) # (!\u_dp|u_ula|u_ela|ib0~0_combout\ & ((\u_dp|u_ula|u_ela|ia15~0_combout\) # ((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~0_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib0~0_combout\,
	datad => \u_dp|u_ula|u_ela|ia15~1_combout\,
	combout => \u_dp|u_ula|u_ela|ib0~1_combout\);

-- Location: LCCOMB_X42_Y31_N8
\u_dp|u_ula|u_add|U0|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U0|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia0~1_combout\ & ((\u_dp|u_ula|u_ela|ia15~0_combout\) # ((\u_ctrl|mem_wr~1_combout\) # (\u_dp|u_ula|u_ela|ib0~1_combout\)))) # (!\u_dp|u_ula|u_ela|ia0~1_combout\ & (\u_dp|u_ula|u_ela|ib0~1_combout\ 
-- & ((\u_dp|u_ula|u_ela|ia15~0_combout\) # (\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~0_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_ula|u_ela|ia0~1_combout\,
	datad => \u_dp|u_ula|u_ela|ib0~1_combout\,
	combout => \u_dp|u_ula|u_add|U0|Cout~0_combout\);

-- Location: LCFF_X44_Y32_N9
\u_dp|u_rf|gen_regs:5:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[1]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y32_N4
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_regs:5:u_reg|ff1|q~regout\) # (\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff1|q~regout\ & 
-- ((!\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff1|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X44_Y30_N20
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff1|q~regout\))) # (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff1|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X44_Y28_N10
\u_dp|u_rf|gen_regs:0:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~feeder_combout\);

-- Location: LCFF_X44_Y28_N11
\u_dp|u_rf|gen_regs:0:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y31_N24
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\) # ((\u_dp|u_rf|gen_regs:2:u_reg|ff1|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (!\u_dp|u_ir|ff4|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:2:u_reg|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y28_N14
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:3:u_reg|ff1|q~regout\)) # (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:1:u_reg|ff1|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:3:u_reg|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X45_Y27_N0
\u_dp|u_rf|gen_regs:8:u_reg|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~feeder_combout\ = \u_dp|rf_wd_data[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[1]~28_combout\,
	combout => \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~feeder_combout\);

-- Location: LCFF_X45_Y27_N1
\u_dp|u_rf|gen_regs:8:u_reg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~regout\);

-- Location: LCCOMB_X44_Y31_N22
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff1|q~regout\) # ((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((!\u_dp|u_ir|ff4|q~regout\ & 
-- \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_regs:8:u_reg|ff1|q~regout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X44_Y27_N2
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff1|q~regout\))) # (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff1|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff1|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y28_N28
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_ir|ff7|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~3_combout\))) # (!\u_dp|u_ir|ff7|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y28_N26
\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\ & (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff6|q~regout\ & (((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~8_combout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X42_Y31_N20
\u_dp|ula_b_vec[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_b_vec[1]~2_combout\ = (\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff1|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ir|ff1|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|ula_b_vec[1]~2_combout\);

-- Location: LCCOMB_X43_Y31_N12
\u_dp|u_ula|u_ela|ia1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia1~0_combout\ = (\u_dp|u_ula|u_ela|ia15~2_combout\) # ((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datad => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia1~0_combout\);

-- Location: LCCOMB_X43_Y31_N30
\u_dp|u_ula|u_ela|ia1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia1~1_combout\ = (\u_dp|u_ula|u_ela|ia4~0_combout\ & (((\u_dp|ula_b_vec[1]~2_combout\ & \u_dp|u_ula|u_ela|ia1~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia4~0_combout\ & ((\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\) # 
-- ((\u_dp|ula_b_vec[1]~2_combout\ & \u_dp|u_ula|u_ela|ia1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|ula_b_vec[1]~2_combout\,
	datad => \u_dp|u_ula|u_ela|ia1~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia1~1_combout\);

-- Location: LCCOMB_X42_Y31_N26
\u_dp|u_ula|u_add|U1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U1|Cout~0_combout\ = (\u_dp|u_ula|u_add|U0|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib1~1_combout\) # ((\u_dp|u_ula|u_ela|ib1~0_combout\) # (\u_dp|u_ula|u_ela|ia1~1_combout\)))) # (!\u_dp|u_ula|u_add|U0|Cout~0_combout\ & 
-- (\u_dp|u_ula|u_ela|ia1~1_combout\ & ((\u_dp|u_ula|u_ela|ib1~1_combout\) # (\u_dp|u_ula|u_ela|ib1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib1~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib1~0_combout\,
	datac => \u_dp|u_ula|u_add|U0|Cout~0_combout\,
	datad => \u_dp|u_ula|u_ela|ia1~1_combout\,
	combout => \u_dp|u_ula|u_add|U1|Cout~0_combout\);

-- Location: LCCOMB_X42_Y28_N20
\u_dp|u_ula|u_add|U2|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U2|Sum~combout\ = \u_dp|u_ula|u_ela|ia2~2_combout\ $ (\u_dp|u_ula|u_add|U1|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib2~1_combout\) # (\u_dp|u_ula|u_ela|ib2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib2~1_combout\,
	datab => \u_dp|u_ula|u_ela|ia2~2_combout\,
	datac => \u_dp|u_ula|u_add|U1|Cout~0_combout\,
	datad => \u_dp|u_ula|u_ela|ib2~0_combout\,
	combout => \u_dp|u_ula|u_add|U2|Sum~combout\);

-- Location: LCCOMB_X41_Y28_N2
\u_dp|rf_wd_data[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[2]~17_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|rf_wd_data[2]~16_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U2|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|rf_wd_data[2]~16_combout\,
	datad => \u_dp|u_ula|u_add|U2|Sum~combout\,
	combout => \u_dp|rf_wd_data[2]~17_combout\);

-- Location: LCCOMB_X40_Y34_N12
\u_ctrl|wb_sel1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|wb_sel1~1_combout\ = (\u_ctrl|wb_sel1~0_combout\ & (!\u_ctrl|u1|q~regout\ & (\u_ctrl|u2|q~regout\ & !\u_ctrl|u0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|wb_sel1~1_combout\);

-- Location: LCCOMB_X41_Y33_N4
\u_dp|u_cmp|st0|out_gt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~4_combout\ = (!\u_dp|u_cmp|st7|out_eq~combout\ & ((\u_dp|u_cmp|st0|out_gt~3_combout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\))) # (!\u_dp|u_cmp|st0|out_gt~3_combout\ & 
-- (\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\ & !\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_cmp|st0|out_gt~3_combout\,
	datab => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_cmp|st7|out_eq~combout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~4_combout\);

-- Location: LCCOMB_X42_Y33_N0
\u_dp|u_cmp|st0|out_gt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~0_combout\ = (\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & (((!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~0_combout\);

-- Location: LCCOMB_X41_Y33_N14
\u_dp|u_cmp|st0|out_gt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~1_combout\ = (!\u_dp|u_cmp|st3|out_eq~combout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\ & \u_dp|u_cmp|st0|out_gt~0_combout\)) # 
-- (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\) # (\u_dp|u_cmp|st0|out_gt~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_cmp|st0|out_gt~0_combout\,
	datad => \u_dp|u_cmp|st3|out_eq~combout\,
	combout => \u_dp|u_cmp|st0|out_gt~1_combout\);

-- Location: LCCOMB_X40_Y29_N12
\u_dp|u_cmp|st0|out_gt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~8_combout\ = (\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\) # ((!\u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:12:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:11:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~8_combout\);

-- Location: LCCOMB_X40_Y29_N28
\u_dp|u_cmp|st0|out_gt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~9_combout\ = (\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_cmp|st0|out_gt~8_combout\) # (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\))) # (!\u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\ & 
-- (!\u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\ & \u_dp|u_cmp|st0|out_gt~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:13:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_cmp|st0|out_gt~8_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~9_combout\);

-- Location: LCCOMB_X40_Y33_N16
\u_dp|u_cmp|st0|out_gt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~10_combout\ = (\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_cmp|st0|out_gt~9_combout\) # (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\))) # (!\u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\ & 
-- (!\u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\ & \u_dp|u_cmp|st0|out_gt~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|u_rf|gen_rda:14:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_cmp|st0|out_gt~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~10_combout\);

-- Location: LCCOMB_X41_Y32_N2
\u_dp|u_cmp|st0|out_gt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~5_combout\ = (\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & (!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\) # ((!\u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\ & \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~5_combout\);

-- Location: LCCOMB_X40_Y33_N2
\u_dp|u_cmp|st0|out_gt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~6_combout\ = (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_cmp|st0|out_gt~5_combout\) # (!\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\))) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ & 
-- (\u_dp|u_cmp|st0|out_gt~5_combout\ & !\u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_cmp|st0|out_gt~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~6_combout\);

-- Location: LCCOMB_X40_Y33_N18
\u_dp|u_cmp|st0|out_gt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~7_combout\ = (!\u_dp|u_cmp|st11|out_eq~2_combout\ & ((\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\ & ((\u_dp|u_cmp|st0|out_gt~6_combout\) # (!\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\))) # 
-- (!\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\ & (\u_dp|u_cmp|st0|out_gt~6_combout\ & !\u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_cmp|st0|out_gt~6_combout\,
	datac => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_cmp|st11|out_eq~2_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~7_combout\);

-- Location: LCCOMB_X40_Y33_N10
\u_dp|u_cmp|st0|out_gt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_cmp|st0|out_gt~11_combout\ = (\u_dp|u_cmp|st0|out_gt~7_combout\) # ((\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & (\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\ & \u_dp|u_cmp|st0|out_gt~10_combout\)) # 
-- (!\u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\ & ((\u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\) # (\u_dp|u_cmp|st0|out_gt~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_rf|gen_rda:15:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_cmp|st0|out_gt~10_combout\,
	datad => \u_dp|u_cmp|st0|out_gt~7_combout\,
	combout => \u_dp|u_cmp|st0|out_gt~11_combout\);

-- Location: LCCOMB_X41_Y33_N22
\u_dp|rf_wd_data[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[2]~19_combout\ = (\u_ctrl|wb_sel1~0_combout\ & ((\u_dp|u_cmp|st0|out_gt~4_combout\) # ((\u_dp|u_cmp|st0|out_gt~1_combout\) # (\u_dp|u_cmp|st0|out_gt~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|wb_sel1~0_combout\,
	datab => \u_dp|u_cmp|st0|out_gt~4_combout\,
	datac => \u_dp|u_cmp|st0|out_gt~1_combout\,
	datad => \u_dp|u_cmp|st0|out_gt~11_combout\,
	combout => \u_dp|rf_wd_data[2]~19_combout\);

-- Location: LCCOMB_X41_Y33_N8
\u_dp|rf_wd_data[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[2]~20_combout\ = (\u_ctrl|wb_sel0~0_combout\ & ((\u_dp|rf_wd_data[2]~19_combout\) # ((\data_mem_data_in2~combout\ & !\u_ctrl|wb_sel1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem_data_in2~combout\,
	datab => \u_ctrl|wb_sel1~1_combout\,
	datac => \u_ctrl|wb_sel0~0_combout\,
	datad => \u_dp|rf_wd_data[2]~19_combout\,
	combout => \u_dp|rf_wd_data[2]~20_combout\);

-- Location: LCCOMB_X42_Y29_N16
\u_dp|rf_wd_data[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data[2]~21_combout\ = (\u_dp|rf_wd_data[2]~17_combout\) # ((\u_ctrl|rf_wr~0_combout\ & ((\u_dp|rf_wd_data[2]~18_combout\) # (\u_dp|rf_wd_data[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data[2]~18_combout\,
	datab => \u_ctrl|rf_wr~0_combout\,
	datac => \u_dp|rf_wd_data[2]~17_combout\,
	datad => \u_dp|rf_wd_data[2]~20_combout\,
	combout => \u_dp|rf_wd_data[2]~21_combout\);

-- Location: LCFF_X42_Y29_N17
\u_dp|u_rf|gen_regs:6:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff2|q~regout\);

-- Location: LCFF_X45_Y31_N3
\u_dp|u_rf|gen_regs:2:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X45_Y31_N30
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff2|q~regout\) # ((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff2|q~regout\ & 
-- !\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\);

-- Location: LCFF_X43_Y29_N11
\u_dp|u_rf|gen_regs:14:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X43_Y29_N0
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~1_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff2|q~regout\))) # (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:6:u_reg|ff2|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~0_combout\,
	datad => \u_dp|u_rf|gen_regs:14:u_reg|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~1_combout\);

-- Location: LCCOMB_X44_Y28_N0
\u_dp|u_rf|gen_regs:3:u_reg|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~feeder_combout\ = \u_dp|rf_wd_data[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data[2]~21_combout\,
	combout => \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~feeder_combout\);

-- Location: LCFF_X44_Y28_N1
\u_dp|u_rf|gen_regs:3:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~regout\);

-- Location: LCFF_X42_Y29_N31
\u_dp|u_rf|gen_regs:7:u_reg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data[2]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff2|q~regout\);

-- Location: LCCOMB_X44_Y29_N6
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff2|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:3:u_reg|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_regs:7:u_reg|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y29_N8
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff2|q~regout\))) # (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:11:u_reg|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:11:u_reg|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X44_Y28_N8
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:8:u_reg|ff2|q~regout\))) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff2|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff2|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X45_Y28_N2
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff2|q~regout\)) # (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff2|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X43_Y28_N12
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff2|q~regout\) # ((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_regs:1:u_reg|ff2|q~regout\ & 
-- !\u_dp|u_ir|ff3|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:5:u_reg|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X45_Y28_N0
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:13:u_reg|ff2|q~regout\)) # (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:9:u_reg|ff2|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff2|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y29_N28
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_ir|ff0|q~regout\)) # (!\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~3_combout\))) # (!\u_dp|u_ir|ff0|q~regout\ & 
-- (\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X43_Y29_N30
\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff1|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~8_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X43_Y29_N22
\u_dp|u_ula|u_ela|ib2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib2~0_combout\ = (\u_dp|u_ula|u_ela|ia15~0_combout\ & ((\u_dp|is_addi~0_combout\ & (!\u_dp|u_ir|ff2|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((!\u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_dp|u_ir|ff2|q~regout\,
	datac => \u_dp|u_ula|u_ela|ia15~0_combout\,
	datad => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib2~0_combout\);

-- Location: LCCOMB_X42_Y31_N0
\u_dp|u_ula|u_add|U2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U2|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia2~2_combout\ & ((\u_dp|u_ula|u_ela|ib2~1_combout\) # ((\u_dp|u_ula|u_ela|ib2~0_combout\) # (\u_dp|u_ula|u_add|U1|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia2~2_combout\ & 
-- (\u_dp|u_ula|u_add|U1|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib2~1_combout\) # (\u_dp|u_ula|u_ela|ib2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib2~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib2~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia2~2_combout\,
	datad => \u_dp|u_ula|u_add|U1|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U2|Cout~0_combout\);

-- Location: LCCOMB_X42_Y31_N24
\u_dp|u_ula|u_ela|ib3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib3~0_combout\ = (\u_dp|u_ula|u_ela|ia15~0_combout\ & ((\u_dp|is_addi~0_combout\ & (!\u_dp|u_ir|ff3|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((!\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~0_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib3~0_combout\);

-- Location: LCCOMB_X42_Y31_N30
\u_dp|ula_b_vec[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_b_vec[3]~0_combout\ = (\u_dp|is_addi~0_combout\ & (\u_dp|u_ir|ff3|q~regout\)) # (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|ula_b_vec[3]~0_combout\);

-- Location: LCCOMB_X43_Y31_N18
\u_dp|u_ula|u_ela|ia3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia3~0_combout\ = (\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|ula_b_vec[3]~0_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datac => \u_dp|ula_b_vec[3]~0_combout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia3~0_combout\);

-- Location: LCCOMB_X42_Y31_N14
\u_dp|u_ula|u_ela|ia3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia3~1_combout\ = (\u_dp|u_ula|u_ela|ia3~0_combout\) # ((\u_dp|ula_b_vec[3]~0_combout\ & \u_dp|u_ula|u_ela|ia15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|ula_b_vec[3]~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datad => \u_dp|u_ula|u_ela|ia3~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia3~1_combout\);

-- Location: LCCOMB_X40_Y31_N26
\u_dp|u_ula|u_add|U3|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U3|Sum~combout\ = \u_dp|u_ula|u_add|U2|Cout~0_combout\ $ (\u_dp|u_ula|u_ela|ia3~1_combout\ $ (((\u_dp|u_ula|u_ela|ib3~1_combout\) # (\u_dp|u_ula|u_ela|ib3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib3~1_combout\,
	datab => \u_dp|u_ula|u_add|U2|Cout~0_combout\,
	datac => \u_dp|u_ula|u_ela|ib3~0_combout\,
	datad => \u_dp|u_ula|u_ela|ia3~1_combout\,
	combout => \u_dp|u_ula|u_add|U3|Sum~combout\);

-- Location: LCCOMB_X40_Y31_N8
\u_dp|ula_shifter_res[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[3]~4_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|ula_shifter_res[3]~4_combout\);

-- Location: LCCOMB_X40_Y31_N0
\u_dp|rf_wd_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~13_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[3]~4_combout\) # ((\u_dp|u_ula|u_add|U3|Sum~combout\ & !\u_ctrl|shl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_dp|u_ula|u_add|U3|Sum~combout\,
	datac => \u_dp|ula_shifter_res[3]~4_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data~13_combout\);

-- Location: LCCOMB_X43_Y32_N24
\u_dp|rf_wd_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~15_combout\ = (\u_dp|rf_wd_data~13_combout\) # ((\u_dp|rf_wd_data~14_combout\ & \u_ctrl|rf_wr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|rf_wd_data~14_combout\,
	datac => \u_dp|rf_wd_data~13_combout\,
	datad => \u_ctrl|rf_wr~0_combout\,
	combout => \u_dp|rf_wd_data~15_combout\);

-- Location: LCCOMB_X43_Y32_N14
\u_dp|u_rf|gen_regs:2:u_reg|ff3|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~feeder_combout\ = \u_dp|rf_wd_data~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~15_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~feeder_combout\);

-- Location: LCFF_X43_Y32_N15
\u_dp|u_rf|gen_regs:2:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~regout\);

-- Location: LCFF_X43_Y32_N25
\u_dp|u_rf|gen_regs:3:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:3:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X44_Y29_N18
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:1:u_reg|ff3|q~regout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((!\u_dp|u_ir|ff5|q~regout\ & 
-- \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:1:u_reg|ff3|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X44_Y29_N4
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff3|q~regout\))) # (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff3|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~5_combout\);

-- Location: LCFF_X42_Y29_N21
\u_dp|u_rf|gen_regs:7:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X42_Y29_N6
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff3|q~regout\) # ((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_regs:4:u_reg|ff3|q~regout\ & 
-- !\u_dp|u_ir|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff3|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X42_Y29_N26
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:7:u_reg|ff3|q~regout\))) # (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff3|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X44_Y29_N14
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_ir|ff7|q~regout\) # ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (!\u_dp|u_ir|ff7|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~5_combout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X42_Y32_N22
\u_dp|u_rf|gen_regs:10:u_reg|ff3|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~feeder_combout\ = \u_dp|rf_wd_data~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~15_combout\,
	combout => \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~feeder_combout\);

-- Location: LCFF_X42_Y32_N23
\u_dp|u_rf|gen_regs:10:u_reg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~regout\);

-- Location: LCCOMB_X41_Y29_N24
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff3|q~regout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_regs:8:u_reg|ff3|q~regout\ & 
-- !\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:8:u_reg|ff3|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X42_Y32_N6
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff3|q~regout\))) # (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:10:u_reg|ff3|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff3|q~regout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~0_combout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X43_Y29_N24
\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\ & (\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~8_combout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y28_N20
\u_dp|ula_shifter_res[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[4]~3_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[4]~3_combout\);

-- Location: LCCOMB_X41_Y31_N22
\u_dp|u_ula|u_ela|ia4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia4~1_combout\ = (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\ & (((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\)) # (!\u_dp|u_ula|u_ela|ia4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datab => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datac => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia4~1_combout\);

-- Location: LCCOMB_X41_Y31_N4
\u_dp|u_ula|u_ela|ia4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia4~2_combout\ = (\u_dp|u_ula|u_ela|ia4~1_combout\) # ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & (\u_dp|u_ula|u_ela|ia15~2_combout\ & !\u_dp|is_addi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	datab => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datac => \u_dp|is_addi~0_combout\,
	datad => \u_dp|u_ula|u_ela|ia4~1_combout\,
	combout => \u_dp|u_ula|u_ela|ia4~2_combout\);

-- Location: LCCOMB_X42_Y31_N4
\u_dp|u_ula|u_ela|ib3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib3~1_combout\ = (\u_dp|ula_b_vec[3]~0_combout\ & ((!\u_dp|u_ula|u_ela|ia15~1_combout\))) # (!\u_dp|ula_b_vec[3]~0_combout\ & (\u_ctrl|mem_wr~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datad => \u_dp|ula_b_vec[3]~0_combout\,
	combout => \u_dp|u_ula|u_ela|ib3~1_combout\);

-- Location: LCCOMB_X42_Y31_N6
\u_dp|u_ula|u_add|U3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U3|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia3~1_combout\ & ((\u_dp|u_ula|u_ela|ib3~0_combout\) # ((\u_dp|u_ula|u_ela|ib3~1_combout\) # (\u_dp|u_ula|u_add|U2|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia3~1_combout\ & 
-- (\u_dp|u_ula|u_add|U2|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib3~0_combout\) # (\u_dp|u_ula|u_ela|ib3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib3~0_combout\,
	datab => \u_dp|u_ula|u_ela|ia3~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib3~1_combout\,
	datad => \u_dp|u_ula|u_add|U2|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U3|Cout~0_combout\);

-- Location: LCCOMB_X41_Y28_N18
\u_dp|u_ula|u_add|U4|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U4|Sum~combout\ = \u_dp|u_ula|u_ela|ia4~2_combout\ $ (\u_dp|u_ula|u_add|U3|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib4~3_combout\) # (\u_dp|u_ula|u_ela|ib4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib4~3_combout\,
	datab => \u_dp|u_ula|u_ela|ib4~2_combout\,
	datac => \u_dp|u_ula|u_ela|ia4~2_combout\,
	datad => \u_dp|u_ula|u_add|U3|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U4|Sum~combout\);

-- Location: LCCOMB_X41_Y28_N28
\u_dp|rf_wd_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~10_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[4]~3_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U4|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|ula_shifter_res[4]~3_combout\,
	datad => \u_dp|u_ula|u_add|U4|Sum~combout\,
	combout => \u_dp|rf_wd_data~10_combout\);

-- Location: LCCOMB_X41_Y28_N30
\u_dp|rf_wd_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~12_combout\ = (\u_dp|rf_wd_data~10_combout\) # ((\u_ctrl|rf_wr~0_combout\ & \u_dp|rf_wd_data~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|rf_wr~0_combout\,
	datac => \u_dp|rf_wd_data~11_combout\,
	datad => \u_dp|rf_wd_data~10_combout\,
	combout => \u_dp|rf_wd_data~12_combout\);

-- Location: LCCOMB_X42_Y32_N2
\u_dp|u_rf|gen_regs:10:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X42_Y32_N3
\u_dp|u_rf|gen_regs:10:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X46_Y31_N20
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:6:u_reg|ff4|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:6:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X46_Y31_N30
\u_dp|u_rf|gen_regs:14:u_reg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~feeder_combout\ = \u_dp|rf_wd_data~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~12_combout\,
	combout => \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~feeder_combout\);

-- Location: LCFF_X46_Y31_N31
\u_dp|u_rf|gen_regs:14:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X46_Y31_N2
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff4|q~regout\))) # (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:10:u_reg|ff4|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~2_combout\,
	datad => \u_dp|u_rf|gen_regs:14:u_reg|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X41_Y27_N18
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff4|q~regout\)) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff4|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X42_Y27_N22
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~5_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff4|q~regout\)) # (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff4|q~regout\))))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff4|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X42_Y27_N4
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff0|q~regout\ & (\u_dp|u_ir|ff1|q~regout\)) # (!\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\ & (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~3_combout\)) # (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\);

-- Location: LCFF_X41_Y32_N13
\u_dp|u_rf|gen_regs:7:u_reg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:7:u_reg|ff4|q~regout\);

-- Location: LCCOMB_X43_Y32_N20
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\ = (\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_ir|ff3|q~regout\)))) # (!\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_ir|ff3|q~regout\ & (\u_dp|u_rf|gen_regs:11:u_reg|ff4|q~regout\)) # (!\u_dp|u_ir|ff3|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:3:u_reg|ff4|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:11:u_reg|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff4|q~regout\,
	datac => \u_dp|u_ir|ff2|q~regout\,
	datad => \u_dp|u_ir|ff3|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\);

-- Location: LCCOMB_X41_Y32_N12
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~8_combout\ = (\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff4|q~regout\)) # (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:7:u_reg|ff4|q~regout\))))) # (!\u_dp|u_ir|ff2|q~regout\ & (((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff2|q~regout\,
	datab => \u_dp|u_rf|gen_regs:15:u_reg|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:7:u_reg|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~8_combout\);

-- Location: LCCOMB_X42_Y27_N6
\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (((\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~1_combout\,
	datab => \u_dp|u_ir|ff0|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y31_N28
\u_dp|u_ula|u_ela|ib4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib4~2_combout\ = (\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & (!\u_dp|is_addi~0_combout\ & ((!\u_dp|u_ula|u_ela|ia15~1_combout\)))) # (!\u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\ & (((\u_ctrl|mem_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|is_addi~0_combout\,
	datab => \u_ctrl|mem_wr~1_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib4~2_combout\);

-- Location: LCCOMB_X42_Y31_N28
\u_dp|u_ula|u_add|U4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U4|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia4~2_combout\ & ((\u_dp|u_ula|u_ela|ib4~3_combout\) # ((\u_dp|u_ula|u_ela|ib4~2_combout\) # (\u_dp|u_ula|u_add|U3|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia4~2_combout\ & 
-- (\u_dp|u_ula|u_add|U3|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib4~3_combout\) # (\u_dp|u_ula|u_ela|ib4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib4~3_combout\,
	datab => \u_dp|u_ula|u_ela|ib4~2_combout\,
	datac => \u_dp|u_ula|u_ela|ia4~2_combout\,
	datad => \u_dp|u_ula|u_add|U3|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U4|Cout~0_combout\);

-- Location: LCCOMB_X41_Y31_N26
\u_dp|u_ula|u_add|U5|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U5|Sum~combout\ = \u_dp|u_ula|u_ela|ia5~1_combout\ $ (\u_dp|u_ula|u_add|U4|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib5~3_combout\) # (\u_dp|u_ula|u_ela|ib5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia5~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib5~3_combout\,
	datac => \u_dp|u_ula|u_ela|ib5~2_combout\,
	datad => \u_dp|u_ula|u_add|U4|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U5|Sum~combout\);

-- Location: LCCOMB_X40_Y31_N20
\u_dp|ula_shifter_res[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[5]~2_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|ula_shifter_res[5]~2_combout\);

-- Location: LCCOMB_X40_Y31_N6
\u_dp|rf_wd_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~7_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[5]~2_combout\) # ((\u_dp|u_ula|u_add|U5|Sum~combout\ & !\u_ctrl|shl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_dp|u_ula|u_add|U5|Sum~combout\,
	datac => \u_dp|ula_shifter_res[5]~2_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data~7_combout\);

-- Location: LCCOMB_X40_Y32_N24
\u_dp|rf_wd_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~9_combout\ = (\u_dp|rf_wd_data~7_combout\) # ((\u_dp|rf_wd_data~8_combout\ & \u_ctrl|rf_wr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|rf_wd_data~8_combout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|rf_wd_data~7_combout\,
	combout => \u_dp|rf_wd_data~9_combout\);

-- Location: LCFF_X41_Y29_N9
\u_dp|u_rf|gen_regs:9:u_reg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff5|q~regout\);

-- Location: LCCOMB_X41_Y29_N12
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff5|q~regout\))) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:8:u_reg|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:10:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X41_Y29_N30
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff5|q~regout\))) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:11:u_reg|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X43_Y32_N6
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~5_combout\ = (\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff5|q~regout\) # ((!\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4_combout\ & (((\u_dp|u_ir|ff4|q~regout\ 
-- & \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~4_combout\,
	datab => \u_dp|u_rf|gen_regs:3:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_regs:1:u_reg|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X43_Y33_N2
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\) # ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6_combout\);

-- Location: LCCOMB_X45_Y28_N10
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff5|q~regout\) # ((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_regs:12:u_reg|ff5|q~regout\ & 
-- !\u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:13:u_reg|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff5|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X43_Y33_N22
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\ & ((\u_dp|u_rf|gen_regs:15:u_reg|ff5|q~regout\))) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\ & 
-- (\u_dp|u_rf|gen_regs:14:u_reg|ff5|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff5|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:15:u_reg|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~7_combout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X43_Y33_N8
\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\ = (\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6_combout\ & (((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~8_combout\) # (!\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~1_combout\ & (\u_dp|u_ir|ff6|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~1_combout\,
	datab => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~6_combout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X41_Y34_N30
\u_dp|ula_shifter_res[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[6]~1_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|shl~0_combout\,
	datab => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[6]~1_combout\);

-- Location: LCCOMB_X43_Y31_N22
\u_dp|u_ula|u_ela|ia5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia5~0_combout\ = (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_ula|u_ela|ia15~2_combout\) # ((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datad => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia5~0_combout\);

-- Location: LCCOMB_X43_Y31_N0
\u_dp|u_ula|u_ela|ia5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia5~1_combout\ = (\u_dp|u_ula|u_ela|ia4~0_combout\ & (((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & \u_dp|u_ula|u_ela|ia5~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia4~0_combout\ & ((\u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\) # 
-- ((\u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\ & \u_dp|u_ula|u_ela|ia5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	datac => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	datad => \u_dp|u_ula|u_ela|ia5~0_combout\,
	combout => \u_dp|u_ula|u_ela|ia5~1_combout\);

-- Location: LCCOMB_X42_Y31_N2
\u_dp|u_ula|u_add|U5|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U5|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia5~1_combout\ & ((\u_dp|u_ula|u_ela|ib5~3_combout\) # ((\u_dp|u_ula|u_ela|ib5~2_combout\) # (\u_dp|u_ula|u_add|U4|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia5~1_combout\ & 
-- (\u_dp|u_ula|u_add|U4|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib5~3_combout\) # (\u_dp|u_ula|u_ela|ib5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib5~3_combout\,
	datab => \u_dp|u_ula|u_ela|ib5~2_combout\,
	datac => \u_dp|u_ula|u_ela|ia5~1_combout\,
	datad => \u_dp|u_ula|u_add|U4|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U5|Cout~0_combout\);

-- Location: LCCOMB_X43_Y31_N14
\u_dp|u_ula|u_ela|ib6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ib6~3_combout\ = (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_ir|ff13|q~regout\ & (\u_dp|u_ir|ff14|q~regout\ & !\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_dp|u_ir|ff13|q~regout\,
	datac => \u_dp|u_ir|ff14|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ib6~3_combout\);

-- Location: LCCOMB_X42_Y34_N30
\u_dp|u_ula|u_add|U6|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U6|Sum~combout\ = \u_dp|u_ula|u_add|U5|Cout~0_combout\ $ (\u_dp|u_ula|u_ela|ia6~1_combout\ $ (((\u_dp|u_ula|u_ela|ib6~2_combout\) # (\u_dp|u_ula|u_ela|ib6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib6~2_combout\,
	datab => \u_dp|u_ula|u_add|U5|Cout~0_combout\,
	datac => \u_dp|u_ula|u_ela|ib6~3_combout\,
	datad => \u_dp|u_ula|u_ela|ia6~1_combout\,
	combout => \u_dp|u_ula|u_add|U6|Sum~combout\);

-- Location: LCCOMB_X42_Y34_N0
\u_dp|rf_wd_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~4_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[6]~1_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U6|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|ula_shifter_res[6]~1_combout\,
	datad => \u_dp|u_ula|u_add|U6|Sum~combout\,
	combout => \u_dp|rf_wd_data~4_combout\);

-- Location: LCCOMB_X42_Y34_N10
\u_dp|rf_wd_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~6_combout\ = (\u_dp|rf_wd_data~4_combout\) # ((\u_dp|rf_wd_data~5_combout\ & \u_ctrl|rf_wr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|rf_wd_data~5_combout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|rf_wd_data~4_combout\,
	combout => \u_dp|rf_wd_data~6_combout\);

-- Location: LCFF_X42_Y33_N27
\u_dp|u_rf|gen_regs:2:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X43_Y33_N18
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:10:u_reg|ff6|q~regout\) # ((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_regs:2:u_reg|ff6|q~regout\ & 
-- !\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:10:u_reg|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:2:u_reg|ff6|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0_combout\);

-- Location: LCCOMB_X43_Y33_N26
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~1_combout\ = (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff6|q~regout\) # ((!\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0_combout\ & 
-- (((\u_dp|u_rf|gen_regs:6:u_reg|ff6|q~regout\ & \u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~0_combout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff6|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~1_combout\);

-- Location: LCFF_X43_Y28_N9
\u_dp|u_rf|gen_regs:5:u_reg|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff6|q~regout\);

-- Location: LCCOMB_X43_Y28_N8
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\ = (\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\ & ((\u_dp|u_rf|gen_regs:5:u_reg|ff6|q~regout\))) # (!\u_dp|u_ir|ff2|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:1:u_reg|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff3|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff6|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\);

-- Location: LCCOMB_X44_Y32_N20
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~3_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff6|q~regout\))) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\ & 
-- (\u_dp|u_rf|gen_regs:9:u_reg|ff6|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:9:u_reg|ff6|q~regout\,
	datab => \u_dp|u_ir|ff3|q~regout\,
	datac => \u_dp|u_rf|gen_regs:13:u_reg|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~3_combout\);

-- Location: LCCOMB_X40_Y30_N16
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4_combout\ = (\u_dp|u_ir|ff3|q~regout\ & ((\u_dp|u_rf|gen_regs:8:u_reg|ff6|q~regout\) # ((\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_ir|ff3|q~regout\ & (((\u_dp|u_rf|gen_regs:0:u_reg|ff6|q~regout\ & 
-- !\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff6|q~regout\,
	datac => \u_dp|u_ir|ff3|q~regout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4_combout\);

-- Location: LCCOMB_X40_Y29_N4
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~5_combout\ = (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4_combout\ & (((\u_dp|u_rf|gen_regs:12:u_reg|ff6|q~regout\) # (!\u_dp|u_ir|ff2|q~regout\)))) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:4:u_reg|ff6|q~regout\ & ((\u_dp|u_ir|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:4:u_reg|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~4_combout\,
	datad => \u_dp|u_ir|ff2|q~regout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~5_combout\);

-- Location: LCCOMB_X44_Y32_N30
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\ = (\u_dp|u_ir|ff0|q~regout\ & ((\u_dp|u_ir|ff1|q~regout\) # ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~3_combout\)))) # (!\u_dp|u_ir|ff0|q~regout\ & (!\u_dp|u_ir|ff1|q~regout\ & 
-- ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff0|q~regout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\);

-- Location: LCCOMB_X44_Y32_N24
\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ = (\u_dp|u_ir|ff1|q~regout\ & ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\ & (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff1|q~regout\ & (((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~8_combout\,
	datab => \u_dp|u_ir|ff1|q~regout\,
	datac => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~1_combout\,
	datad => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~6_combout\,
	combout => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\);

-- Location: LCCOMB_X43_Y31_N4
\u_dp|u_ula|u_ela|ia6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia6~0_combout\ = (!\u_dp|is_addi~0_combout\ & ((\u_dp|u_ula|u_ela|ia15~2_combout\) # ((\u_dp|u_ula|u_ela|ia15~3_combout\ & \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia15~2_combout\,
	datab => \u_dp|is_addi~0_combout\,
	datac => \u_dp|u_ula|u_ela|ia15~3_combout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia6~0_combout\);

-- Location: LCCOMB_X43_Y31_N20
\u_dp|u_ula|u_ela|ia6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_ela|ia6~1_combout\ = (\u_dp|u_ula|u_ela|ia4~0_combout\ & (\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ & (\u_dp|u_ula|u_ela|ia6~0_combout\))) # (!\u_dp|u_ula|u_ela|ia4~0_combout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\) # 
-- ((\u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\ & \u_dp|u_ula|u_ela|ia6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia4~0_combout\,
	datab => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	datac => \u_dp|u_ula|u_ela|ia6~0_combout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|u_ula|u_ela|ia6~1_combout\);

-- Location: LCCOMB_X42_Y31_N12
\u_dp|u_ula|u_add|U6|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U6|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia6~1_combout\ & ((\u_dp|u_ula|u_ela|ib6~2_combout\) # ((\u_dp|u_ula|u_ela|ib6~3_combout\) # (\u_dp|u_ula|u_add|U5|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia6~1_combout\ & 
-- (\u_dp|u_ula|u_add|U5|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib6~2_combout\) # (\u_dp|u_ula|u_ela|ib6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib6~2_combout\,
	datab => \u_dp|u_ula|u_ela|ia6~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib6~3_combout\,
	datad => \u_dp|u_ula|u_add|U5|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U6|Cout~0_combout\);

-- Location: LCCOMB_X42_Y31_N18
\u_dp|u_ula|u_add|U7|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U7|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia7~1_combout\ & ((\u_dp|u_ula|u_ela|ib7~2_combout\) # ((\u_dp|u_ula|u_ela|ib7~3_combout\) # (\u_dp|u_ula|u_add|U6|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia7~1_combout\ & 
-- (\u_dp|u_ula|u_add|U6|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib7~2_combout\) # (\u_dp|u_ula|u_ela|ib7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ia7~1_combout\,
	datab => \u_dp|u_ula|u_ela|ib7~2_combout\,
	datac => \u_dp|u_ula|u_ela|ib7~3_combout\,
	datad => \u_dp|u_ula|u_add|U6|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U7|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N2
\u_dp|u_ula|u_add|U8|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U8|Cout~0_combout\ = (\u_dp|u_ula|u_ela|ia8~1_combout\ & ((\u_dp|u_ula|u_ela|ib8~3_combout\) # ((\u_dp|u_ula|u_ela|ib8~2_combout\) # (\u_dp|u_ula|u_add|U7|Cout~0_combout\)))) # (!\u_dp|u_ula|u_ela|ia8~1_combout\ & 
-- (\u_dp|u_ula|u_add|U7|Cout~0_combout\ & ((\u_dp|u_ula|u_ela|ib8~3_combout\) # (\u_dp|u_ula|u_ela|ib8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib8~3_combout\,
	datab => \u_dp|u_ula|u_ela|ia8~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib8~2_combout\,
	datad => \u_dp|u_ula|u_add|U7|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U8|Cout~0_combout\);

-- Location: LCCOMB_X43_Y30_N20
\u_dp|u_ula|u_add|U9|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U9|Sum~combout\ = \u_dp|u_ula|u_ela|ia9~1_combout\ $ (\u_dp|u_ula|u_add|U8|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib9~3_combout\) # (\u_dp|u_ula|u_ela|ib9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib9~3_combout\,
	datab => \u_dp|u_ula|u_ela|ia9~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib9~2_combout\,
	datad => \u_dp|u_ula|u_add|U8|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U9|Sum~combout\);

-- Location: LCCOMB_X44_Y30_N4
\u_dp|ula_shifter_res[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[9]~11_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:10:u_mux_a|m30|d~9_combout\,
	datab => \u_dp|u_ir|ff12|q~regout\,
	datac => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|ula_shifter_res[9]~11_combout\);

-- Location: LCCOMB_X44_Y30_N10
\u_dp|rf_wd_data~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~64_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[9]~11_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U9|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ula|u_add|U9|Sum~combout\,
	datad => \u_dp|ula_shifter_res[9]~11_combout\,
	combout => \u_dp|rf_wd_data~64_combout\);

-- Location: LCCOMB_X46_Y30_N2
\u_dp|rf_wd_data~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~65_combout\ = (\u_dp|rf_wd_data~64_combout\) # ((\data_mem_data_in9~combout\ & \u_dp|rf_wd_data~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem_data_in9~combout\,
	datac => \u_dp|rf_wd_data~56_combout\,
	datad => \u_dp|rf_wd_data~64_combout\,
	combout => \u_dp|rf_wd_data~65_combout\);

-- Location: LCFF_X46_Y29_N9
\u_dp|u_rf|gen_regs:10:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:10:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y29_N6
\u_dp|u_rf|gen_regs:2:u_reg|ff9|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~feeder_combout\ = \u_dp|rf_wd_data~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~65_combout\,
	combout => \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~feeder_combout\);

-- Location: LCFF_X45_Y29_N7
\u_dp|u_rf|gen_regs:2:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X45_Y29_N22
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_ir|ff6|q~regout\)) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_regs:6:u_reg|ff9|q~regout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:2:u_reg|ff9|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_ir|ff6|q~regout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff9|q~regout\,
	datad => \u_dp|u_rf|gen_regs:2:u_reg|ff9|q~regout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X46_Y29_N10
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:14:u_reg|ff9|q~regout\)) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:10:u_reg|ff9|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:14:u_reg|ff9|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff9|q~regout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~3_combout\);

-- Location: LCFF_X47_Y30_N17
\u_dp|u_rf|gen_regs:8:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:8:u_reg|ff9|q~regout\);

-- Location: LCFF_X47_Y30_N23
\u_dp|u_rf|gen_regs:0:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X47_Y30_N20
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_regs:4:u_reg|ff9|q~regout\))) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:0:u_reg|ff9|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:0:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_regs:4:u_reg|ff9|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X46_Y30_N0
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff9|q~regout\)) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\ & 
-- ((\u_dp|u_rf|gen_regs:8:u_reg|ff9|q~regout\))))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff9|q~regout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:8:u_reg|ff9|q~regout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y30_N6
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_ir|ff5|q~regout\)) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~3_combout\)) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff4|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~3_combout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\);

-- Location: LCFF_X46_Y30_N3
\u_dp|u_rf|gen_regs:1:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:1:u_reg|ff9|q~regout\);

-- Location: LCFF_X46_Y30_N17
\u_dp|u_rf|gen_regs:9:u_reg|ff9|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff9|q~regout\);

-- Location: LCCOMB_X46_Y30_N16
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_regs:9:u_reg|ff9|q~regout\) # (\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (\u_dp|u_rf|gen_regs:1:u_reg|ff9|q~regout\ & 
-- ((!\u_dp|u_ir|ff6|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff9|q~regout\,
	datac => \u_dp|u_rf|gen_regs:9:u_reg|ff9|q~regout\,
	datad => \u_dp|u_ir|ff6|q~regout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X41_Y30_N28
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~1_combout\ = (\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:13:u_reg|ff9|q~regout\))) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\ & 
-- (\u_dp|u_rf|gen_regs:5:u_reg|ff9|q~regout\)))) # (!\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff6|q~regout\,
	datab => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~0_combout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff9|q~regout\,
	datad => \u_dp|u_rf|gen_regs:13:u_reg|ff9|q~regout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~1_combout\);

-- Location: LCCOMB_X40_Y33_N6
\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\ & (\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~8_combout\)) # (!\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\ & 
-- ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~1_combout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~8_combout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~1_combout\,
	combout => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X42_Y30_N8
\u_dp|ula_shifter_res[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[8]~12_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\))) # (!\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_rf|gen_rda:9:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[8]~12_combout\);

-- Location: LCCOMB_X43_Y30_N14
\u_dp|u_ula|u_add|U8|Sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_ula|u_add|U8|Sum~combout\ = \u_dp|u_ula|u_ela|ia8~1_combout\ $ (\u_dp|u_ula|u_add|U7|Cout~0_combout\ $ (((\u_dp|u_ula|u_ela|ib8~3_combout\) # (\u_dp|u_ula|u_ela|ib8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_ela|ib8~3_combout\,
	datab => \u_dp|u_ula|u_ela|ia8~1_combout\,
	datac => \u_dp|u_ula|u_ela|ib8~2_combout\,
	datad => \u_dp|u_ula|u_add|U7|Cout~0_combout\,
	combout => \u_dp|u_ula|u_add|U8|Sum~combout\);

-- Location: LCCOMB_X47_Y30_N26
\u_dp|rf_wd_data~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~66_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[8]~12_combout\) # ((!\u_ctrl|shl~0_combout\ & \u_dp|u_ula|u_add|U8|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~0_combout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|ula_shifter_res[8]~12_combout\,
	datad => \u_dp|u_ula|u_add|U8|Sum~combout\,
	combout => \u_dp|rf_wd_data~66_combout\);

-- Location: LCCOMB_X47_Y30_N4
\u_dp|rf_wd_data~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~67_combout\ = (\u_dp|rf_wd_data~66_combout\) # ((\u_dp|rf_wd_data~56_combout\ & \data_mem_data_in8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|rf_wd_data~56_combout\,
	datab => \data_mem_data_in8~combout\,
	datad => \u_dp|rf_wd_data~66_combout\,
	combout => \u_dp|rf_wd_data~67_combout\);

-- Location: LCFF_X44_Y32_N29
\u_dp|u_rf|gen_regs:5:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:5:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X47_Y29_N8
\u_dp|u_rf|gen_regs:4:u_reg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~feeder_combout\ = \u_dp|rf_wd_data~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dp|rf_wd_data~67_combout\,
	combout => \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~feeder_combout\);

-- Location: LCFF_X47_Y29_N9
\u_dp|u_rf|gen_regs:4:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u_dp|u_rf|we_dec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X45_Y29_N24
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:6:u_reg|ff8|q~regout\)) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:4:u_reg|ff8|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:6:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:4:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X46_Y32_N0
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:7:u_reg|ff8|q~regout\)) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff8|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_regs:5:u_reg|ff8|q~regout\,
	datad => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~3_combout\);

-- Location: LCFF_X47_Y30_N19
\u_dp|u_rf|gen_regs:0:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:0:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X46_Y30_N12
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & (\u_dp|u_rf|gen_regs:1:u_reg|ff8|q~regout\)) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- ((\u_dp|u_rf|gen_regs:0:u_reg|ff8|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:1:u_reg|ff8|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_regs:0:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\);

-- Location: LCCOMB_X46_Y32_N26
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~5_combout\ = (\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\ & ((\u_dp|u_rf|gen_regs:3:u_reg|ff8|q~regout\))) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\ & 
-- (\u_dp|u_rf|gen_regs:2:u_reg|ff8|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:2:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff5|q~regout\,
	datac => \u_dp|u_rf|gen_regs:3:u_reg|ff8|q~regout\,
	datad => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~4_combout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~5_combout\);

-- Location: LCCOMB_X46_Y32_N8
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & (\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~3_combout\)) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~3_combout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~5_combout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\);

-- Location: LCFF_X46_Y29_N19
\u_dp|u_rf|gen_regs:14:u_reg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff8|q~regout\);

-- Location: LCCOMB_X47_Y29_N28
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_rf|gen_regs:14:u_reg|ff8|q~regout\))) # (!\u_dp|u_ir|ff5|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:12:u_reg|ff8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:12:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_rf|gen_regs:14:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X45_Y32_N10
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff8|q~regout\)) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:13:u_reg|ff8|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:15:u_reg|ff8|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~7_combout\,
	datad => \u_dp|u_rf|gen_regs:13:u_reg|ff8|q~regout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X46_Y32_N22
\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~1_combout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X43_Y34_N4
\u_dp|ula_shifter_res[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|ula_shifter_res[7]~0_combout\ = (\u_ctrl|shl~0_combout\ & ((\u_dp|u_ir|ff12|q~regout\ & (\u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\)) # (!\u_dp|u_ir|ff12|q~regout\ & ((\u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff12|q~regout\,
	datab => \u_ctrl|shl~0_combout\,
	datac => \u_dp|u_rf|gen_rda:8:u_mux_a|m30|d~9_combout\,
	datad => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	combout => \u_dp|ula_shifter_res[7]~0_combout\);

-- Location: LCCOMB_X43_Y34_N28
\u_dp|rf_wd_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~1_combout\ = (\u_dp|rf_wd_data~0_combout\ & ((\u_dp|ula_shifter_res[7]~0_combout\) # ((\u_dp|u_ula|u_add|U7|Sum~combout\ & !\u_ctrl|shl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ula|u_add|U7|Sum~combout\,
	datab => \u_dp|rf_wd_data~0_combout\,
	datac => \u_dp|ula_shifter_res[7]~0_combout\,
	datad => \u_ctrl|shl~0_combout\,
	combout => \u_dp|rf_wd_data~1_combout\);

-- Location: LCCOMB_X43_Y34_N16
\u_dp|rf_wd_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|rf_wd_data~3_combout\ = (\u_dp|rf_wd_data~1_combout\) # ((\u_dp|rf_wd_data~2_combout\ & \u_ctrl|rf_wr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|rf_wd_data~2_combout\,
	datac => \u_ctrl|rf_wr~0_combout\,
	datad => \u_dp|rf_wd_data~1_combout\,
	combout => \u_dp|rf_wd_data~3_combout\);

-- Location: LCFF_X42_Y34_N29
\u_dp|u_rf|gen_regs:9:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:9:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X42_Y34_N14
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & ((\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_regs:9:u_reg|ff7|q~regout\))) # (!\u_dp|u_ir|ff4|q~regout\ & 
-- (\u_dp|u_rf|gen_regs:8:u_reg|ff7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:8:u_reg|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:9:u_reg|ff7|q~regout\,
	datac => \u_dp|u_ir|ff5|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0_combout\);

-- Location: LCCOMB_X41_Y34_N6
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~1_combout\ = (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0_combout\ & ((\u_dp|u_rf|gen_regs:11:u_reg|ff7|q~regout\) # ((!\u_dp|u_ir|ff5|q~regout\)))) # (!\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0_combout\ & 
-- (((\u_dp|u_rf|gen_regs:10:u_reg|ff7|q~regout\ & \u_dp|u_ir|ff5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:11:u_reg|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~0_combout\,
	datac => \u_dp|u_rf|gen_regs:10:u_reg|ff7|q~regout\,
	datad => \u_dp|u_ir|ff5|q~regout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~1_combout\);

-- Location: LCFF_X40_Y33_N21
\u_dp|u_rf|gen_regs:6:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:6:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X40_Y33_N20
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_regs:6:u_reg|ff7|q~regout\) # (\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:4:u_reg|ff7|q~regout\ & 
-- ((!\u_dp|u_ir|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:4:u_reg|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:6:u_reg|ff7|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\);

-- Location: LCCOMB_X41_Y34_N18
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~3_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\ & (\u_dp|u_rf|gen_regs:7:u_reg|ff7|q~regout\)) # (!\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\ & 
-- ((\u_dp|u_rf|gen_regs:5:u_reg|ff7|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:7:u_reg|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_regs:5:u_reg|ff7|q~regout\,
	datac => \u_dp|u_ir|ff4|q~regout\,
	datad => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~2_combout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~3_combout\);

-- Location: LCCOMB_X42_Y34_N20
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\ = (\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_ir|ff6|q~regout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_ir|ff6|q~regout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~3_combout\))) # (!\u_dp|u_ir|ff6|q~regout\ & 
-- (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~5_combout\,
	datab => \u_dp|u_ir|ff7|q~regout\,
	datac => \u_dp|u_ir|ff6|q~regout\,
	datad => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~3_combout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\);

-- Location: LCFF_X43_Y33_N25
\u_dp|u_rf|gen_regs:14:u_reg|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_dp|rf_wd_data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \u_dp|u_rf|we_dec\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_dp|u_rf|gen_regs:14:u_reg|ff7|q~regout\);

-- Location: LCCOMB_X42_Y34_N16
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\ = (\u_dp|u_ir|ff5|q~regout\ & (((\u_dp|u_rf|gen_regs:14:u_reg|ff7|q~regout\) # (\u_dp|u_ir|ff4|q~regout\)))) # (!\u_dp|u_ir|ff5|q~regout\ & (\u_dp|u_rf|gen_regs:12:u_reg|ff7|q~regout\ & 
-- ((!\u_dp|u_ir|ff4|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff5|q~regout\,
	datab => \u_dp|u_rf|gen_regs:12:u_reg|ff7|q~regout\,
	datac => \u_dp|u_rf|gen_regs:14:u_reg|ff7|q~regout\,
	datad => \u_dp|u_ir|ff4|q~regout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\);

-- Location: LCCOMB_X42_Y34_N2
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~8_combout\ = (\u_dp|u_ir|ff4|q~regout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\ & (\u_dp|u_rf|gen_regs:15:u_reg|ff7|q~regout\)) # (!\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\ & 
-- ((\u_dp|u_rf|gen_regs:13:u_reg|ff7|q~regout\))))) # (!\u_dp|u_ir|ff4|q~regout\ & (((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_rf|gen_regs:15:u_reg|ff7|q~regout\,
	datab => \u_dp|u_ir|ff4|q~regout\,
	datac => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~7_combout\,
	datad => \u_dp|u_rf|gen_regs:13:u_reg|ff7|q~regout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~8_combout\);

-- Location: LCCOMB_X42_Y34_N24
\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\ = (\u_dp|u_ir|ff7|q~regout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\ & ((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~8_combout\))) # (!\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\ & 
-- (\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~1_combout\)))) # (!\u_dp|u_ir|ff7|q~regout\ & (((\u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff7|q~regout\,
	datab => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~1_combout\,
	datac => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~6_combout\,
	datad => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~8_combout\,
	combout => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\);

-- Location: LCCOMB_X40_Y34_N10
\u_ctrl|mem_rd~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|mem_rd~2_combout\ = (!\u_dp|u_ir|ff13|q~regout\ & (!\u_dp|u_ir|ff14|q~regout\ & (!\u_dp|u_ir|ff12|q~regout\ & \u_dp|u_ir|ff15|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|u_ir|ff13|q~regout\,
	datab => \u_dp|u_ir|ff14|q~regout\,
	datac => \u_dp|u_ir|ff12|q~regout\,
	datad => \u_dp|u_ir|ff15|q~regout\,
	combout => \u_ctrl|mem_rd~2_combout\);

-- Location: LCCOMB_X40_Y34_N18
\u_ctrl|mem_rd~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|mem_rd~3_combout\ = (\u_ctrl|mem_rd~2_combout\ & (\u_ctrl|u1|q~regout\ & (!\u_ctrl|u2|q~regout\ & \u_ctrl|u0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|mem_rd~2_combout\,
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|mem_rd~3_combout\);

-- Location: LCCOMB_X40_Y34_N8
\u_ctrl|mem_wr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|mem_wr~0_combout\ = (\u_ctrl|u1|q~regout\ & (!\u_ctrl|u2|q~regout\ & \u_ctrl|u0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ctrl|u1|q~regout\,
	datac => \u_ctrl|u2|q~regout\,
	datad => \u_ctrl|u0|q~regout\,
	combout => \u_ctrl|mem_wr~0_combout\);

-- Location: LCCOMB_X40_Y34_N24
\u_ctrl|mem_wr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_ctrl|mem_wr~2_combout\ = (\u_ctrl|mem_wr~1_combout\ & (\u_dp|u_ir|ff15|q~regout\ & \u_ctrl|mem_wr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ctrl|mem_wr~1_combout\,
	datab => \u_dp|u_ir|ff15|q~regout\,
	datac => \u_ctrl|mem_wr~0_combout\,
	combout => \u_ctrl|mem_wr~2_combout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff7|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr7);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff6|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr6);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff5|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr5);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff4|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr4);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff3|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr3);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff2|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr2);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff1|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr1);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr_addr0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_pc|ff0|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr_addr0);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:7:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr7);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:6:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr6);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:5:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr5);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:4:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr4);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:3:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr3);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:2:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr2);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:1:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr1);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_addr0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rda:0:u_mux_a|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_addr0);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out15~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:15:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out15);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out14~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:14:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out14);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out13~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:13:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out13);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:12:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out12);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:11:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out11);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:10:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out10);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out9~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:9:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out9);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out8~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:8:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out8);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:7:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out7);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:6:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out6);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:5:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out5);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:4:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out4);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:3:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out3);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:2:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out2);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:1:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out1);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_data_out0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_dp|u_rf|gen_rdb:0:u_mux_b|m30|d~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_data_out0);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_rd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_ctrl|mem_rd~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_rd);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_wr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_ctrl|mem_wr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_wr);
END structure;


