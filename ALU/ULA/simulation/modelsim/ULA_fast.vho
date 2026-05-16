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

-- DATE "05/16/2026 19:49:43"

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

ENTITY 	ULA IS
    PORT (
	a5 : IN std_logic;
	a4 : IN std_logic;
	a3 : IN std_logic;
	a2 : IN std_logic;
	a1 : IN std_logic;
	a0 : IN std_logic;
	b5 : IN std_logic;
	b4 : IN std_logic;
	b3 : IN std_logic;
	b2 : IN std_logic;
	b1 : IN std_logic;
	b0 : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic;
	e : IN std_logic;
	clk : IN std_logic;
	s5 : OUT STD.STANDARD.bit;
	s4 : OUT STD.STANDARD.bit;
	s3 : OUT STD.STANDARD.bit;
	s2 : OUT STD.STANDARD.bit;
	s1 : OUT STD.STANDARD.bit;
	s0 : OUT STD.STANDARD.bit
	);
END ULA;

-- Design Ports Information
-- s5	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s4	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b5	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- z	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a4	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a3	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a1	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b0	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a0	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a5	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t1|ia4~0_combout\ : std_logic;
SIGNAL \t1|ia4~1_combout\ : std_logic;
SIGNAL \t1|ia3~0_combout\ : std_logic;
SIGNAL \t1|ia3~1_combout\ : std_logic;
SIGNAL \t1|ib2~0_combout\ : std_logic;
SIGNAL \t1|ib1~0_combout\ : std_logic;
SIGNAL \t1|ia0~0_combout\ : std_logic;
SIGNAL \t1|ia0~1_combout\ : std_logic;
SIGNAL \u6|S~2_combout\ : std_logic;
SIGNAL \u6|S~3_combout\ : std_logic;
SIGNAL \a4~combout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \a3~combout\ : std_logic;
SIGNAL \a0~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \a5~combout\ : std_logic;
SIGNAL \x~combout\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \b5~combout\ : std_logic;
SIGNAL \u6|S~5_combout\ : std_logic;
SIGNAL \u6|S~4_combout\ : std_logic;
SIGNAL \e~combout\ : std_logic;
SIGNAL \r1|s5~regout\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \t1|ib4~0_combout\ : std_logic;
SIGNAL \t1|ib3~0_combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \a2~combout\ : std_logic;
SIGNAL \t1|ia2~0_combout\ : std_logic;
SIGNAL \t1|ia2~1_combout\ : std_logic;
SIGNAL \t1|process_0~0_combout\ : std_logic;
SIGNAL \y~combout\ : std_logic;
SIGNAL \t1|process_0~1_combout\ : std_logic;
SIGNAL \b0~combout\ : std_logic;
SIGNAL \u1|Cout~0_combout\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \t1|ia1~0_combout\ : std_logic;
SIGNAL \a1~combout\ : std_logic;
SIGNAL \t1|ia1~1_combout\ : std_logic;
SIGNAL \u2|Cout~0_combout\ : std_logic;
SIGNAL \u3|Cout~0_combout\ : std_logic;
SIGNAL \u4|Cout~0_combout\ : std_logic;
SIGNAL \u5|S~combout\ : std_logic;
SIGNAL \r1|s4~regout\ : std_logic;
SIGNAL \u4|S~combout\ : std_logic;
SIGNAL \r1|s3~regout\ : std_logic;
SIGNAL \u3|S~combout\ : std_logic;
SIGNAL \r1|s2~regout\ : std_logic;
SIGNAL \u2|S~combout\ : std_logic;
SIGNAL \r1|s1~regout\ : std_logic;
SIGNAL \u1|S~combout\ : std_logic;
SIGNAL \r1|s0~regout\ : std_logic;

BEGIN

ww_a5 <= a5;
ww_a4 <= a4;
ww_a3 <= a3;
ww_a2 <= a2;
ww_a1 <= a1;
ww_a0 <= a0;
ww_b5 <= b5;
ww_b4 <= b4;
ww_b3 <= b3;
ww_b2 <= b2;
ww_b1 <= b1;
ww_b0 <= b0;
ww_x <= x;
ww_y <= y;
ww_z <= z;
ww_e <= e;
ww_clk <= clk;
s5 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s5);
s4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s4);
s3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s3);
s2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s2);
s1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s1);
s0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s0);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X1_Y16_N2
\t1|ia4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia4~0_combout\ = (\a4~combout\ & (\y~combout\ $ (((\b4~combout\) # (\z~combout\))))) # (!\a4~combout\ & ((\b4~combout\ & ((\z~combout\) # (\y~combout\))) # (!\b4~combout\ & (\z~combout\ & \y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~combout\,
	datab => \b4~combout\,
	datac => \z~combout\,
	datad => \y~combout\,
	combout => \t1|ia4~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\t1|ia4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia4~1_combout\ = (\x~combout\ & ((\t1|ia4~0_combout\))) # (!\x~combout\ & (\a4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~combout\,
	datab => \t1|ia4~0_combout\,
	datac => \x~combout\,
	combout => \t1|ia4~1_combout\);

-- Location: LCCOMB_X1_Y16_N8
\t1|ia3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia3~0_combout\ = (\a3~combout\ & (\y~combout\ $ (((\b3~combout\) # (\z~combout\))))) # (!\a3~combout\ & ((\b3~combout\ & ((\z~combout\) # (\y~combout\))) # (!\b3~combout\ & (\z~combout\ & \y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \a3~combout\,
	datac => \z~combout\,
	datad => \y~combout\,
	combout => \t1|ia3~0_combout\);

-- Location: LCCOMB_X1_Y16_N26
\t1|ia3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia3~1_combout\ = (\x~combout\ & (\t1|ia3~0_combout\)) # (!\x~combout\ & ((\a3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|ia3~0_combout\,
	datac => \x~combout\,
	datad => \a3~combout\,
	combout => \t1|ia3~1_combout\);

-- Location: LCCOMB_X62_Y8_N6
\t1|ib2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ib2~0_combout\ = \z~combout\ $ (\b2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datac => \b2~combout\,
	combout => \t1|ib2~0_combout\);

-- Location: LCCOMB_X62_Y8_N12
\t1|ib1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ib1~0_combout\ = \z~combout\ $ (\b1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datad => \b1~combout\,
	combout => \t1|ib1~0_combout\);

-- Location: LCCOMB_X62_Y8_N2
\t1|ia0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia0~0_combout\ = (\y~combout\ & (\a0~combout\ $ (((\b0~combout\) # (\z~combout\))))) # (!\y~combout\ & ((\b0~combout\ & ((\z~combout\) # (\a0~combout\))) # (!\b0~combout\ & (\z~combout\ & \a0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~combout\,
	datab => \z~combout\,
	datac => \y~combout\,
	datad => \a0~combout\,
	combout => \t1|ia0~0_combout\);

-- Location: LCCOMB_X62_Y8_N20
\t1|ia0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia0~1_combout\ = (\x~combout\ & (\t1|ia0~0_combout\)) # (!\x~combout\ & ((\a0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \t1|ia0~0_combout\,
	datad => \a0~combout\,
	combout => \t1|ia0~1_combout\);

-- Location: LCCOMB_X1_Y16_N6
\u6|S~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|S~2_combout\ = (\t1|ia4~1_combout\ & ((\u4|Cout~0_combout\) # ((\t1|ib4~0_combout\ & \t1|process_0~0_combout\)))) # (!\t1|ia4~1_combout\ & (\t1|ib4~0_combout\ & (\u4|Cout~0_combout\ & \t1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ia4~1_combout\,
	datab => \t1|ib4~0_combout\,
	datac => \u4|Cout~0_combout\,
	datad => \t1|process_0~0_combout\,
	combout => \u6|S~2_combout\);

-- Location: LCCOMB_X1_Y16_N24
\u6|S~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|S~3_combout\ = (\a5~combout\ & (\y~combout\ $ (((\b5~combout\) # (\z~combout\))))) # (!\a5~combout\ & ((\b5~combout\ & ((\z~combout\) # (\y~combout\))) # (!\b5~combout\ & (\z~combout\ & \y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \a5~combout\,
	datac => \z~combout\,
	datad => \y~combout\,
	combout => \u6|S~3_combout\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a4~I\ : cycloneii_io
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
	padio => ww_a4,
	combout => \a4~combout\);

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b3~I\ : cycloneii_io
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
	padio => ww_b3,
	combout => \b3~combout\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a3~I\ : cycloneii_io
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
	padio => ww_a3,
	combout => \a3~combout\);

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a0~I\ : cycloneii_io
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
	padio => ww_a0,
	combout => \a0~combout\);

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

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a5~I\ : cycloneii_io
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
	padio => ww_a5,
	combout => \a5~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x~I\ : cycloneii_io
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
	padio => ww_x,
	combout => \x~combout\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z~I\ : cycloneii_io
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
	padio => ww_z,
	combout => \z~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b5~I\ : cycloneii_io
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
	padio => ww_b5,
	combout => \b5~combout\);

-- Location: LCCOMB_X1_Y16_N10
\u6|S~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|S~5_combout\ = \u6|S~2_combout\ $ (((!\x~combout\ & (!\z~combout\ & \b5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|S~2_combout\,
	datab => \x~combout\,
	datac => \z~combout\,
	datad => \b5~combout\,
	combout => \u6|S~5_combout\);

-- Location: LCCOMB_X1_Y16_N16
\u6|S~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|S~4_combout\ = \u6|S~5_combout\ $ (((\x~combout\ & (\u6|S~3_combout\)) # (!\x~combout\ & ((\a5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|S~3_combout\,
	datab => \a5~combout\,
	datac => \x~combout\,
	datad => \u6|S~5_combout\,
	combout => \u6|S~4_combout\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e~I\ : cycloneii_io
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
	padio => ww_e,
	combout => \e~combout\);

-- Location: LCFF_X1_Y16_N17
\r1|s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|S~4_combout\,
	ena => \e~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|s5~regout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b4~I\ : cycloneii_io
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
	padio => ww_b4,
	combout => \b4~combout\);

-- Location: LCCOMB_X1_Y16_N0
\t1|ib4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ib4~0_combout\ = \b4~combout\ $ (\z~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b4~combout\,
	datac => \z~combout\,
	combout => \t1|ib4~0_combout\);

-- Location: LCCOMB_X1_Y16_N30
\t1|ib3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ib3~0_combout\ = \b3~combout\ $ (\z~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datac => \z~combout\,
	combout => \t1|ib3~0_combout\);

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b2~I\ : cycloneii_io
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
	padio => ww_b2,
	combout => \b2~combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a2~I\ : cycloneii_io
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
	padio => ww_a2,
	combout => \a2~combout\);

-- Location: LCCOMB_X62_Y8_N8
\t1|ia2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia2~0_combout\ = (\y~combout\ & (\a2~combout\ $ (((\z~combout\) # (\b2~combout\))))) # (!\y~combout\ & ((\z~combout\ & ((\b2~combout\) # (\a2~combout\))) # (!\z~combout\ & (\b2~combout\ & \a2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \z~combout\,
	datac => \b2~combout\,
	datad => \a2~combout\,
	combout => \t1|ia2~0_combout\);

-- Location: LCCOMB_X62_Y8_N26
\t1|ia2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia2~1_combout\ = (\x~combout\ & (\t1|ia2~0_combout\)) # (!\x~combout\ & ((\a2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datac => \t1|ia2~0_combout\,
	datad => \a2~combout\,
	combout => \t1|ia2~1_combout\);

-- Location: LCCOMB_X1_Y16_N22
\t1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|process_0~0_combout\ = (!\x~combout\ & !\z~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datac => \z~combout\,
	combout => \t1|process_0~0_combout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y~I\ : cycloneii_io
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
	padio => ww_y,
	combout => \y~combout\);

-- Location: LCCOMB_X62_Y8_N22
\t1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|process_0~1_combout\ = (\x~combout\) # (\z~combout\ $ (!\y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datac => \y~combout\,
	datad => \x~combout\,
	combout => \t1|process_0~1_combout\);

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b0~I\ : cycloneii_io
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
	padio => ww_b0,
	combout => \b0~combout\);

-- Location: LCCOMB_X62_Y8_N16
\u1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Cout~0_combout\ = (\t1|ia0~1_combout\ & (((\t1|process_0~0_combout\ & \b0~combout\)) # (!\t1|process_0~1_combout\))) # (!\t1|ia0~1_combout\ & (!\t1|process_0~1_combout\ & (\t1|process_0~0_combout\ & \b0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ia0~1_combout\,
	datab => \t1|process_0~1_combout\,
	datac => \t1|process_0~0_combout\,
	datad => \b0~combout\,
	combout => \u1|Cout~0_combout\);

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b1~I\ : cycloneii_io
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
	padio => ww_b1,
	combout => \b1~combout\);

-- Location: LCCOMB_X62_Y8_N30
\t1|ia1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia1~0_combout\ = (\a1~combout\ & (\y~combout\ $ (((\z~combout\) # (\b1~combout\))))) # (!\a1~combout\ & ((\z~combout\ & ((\y~combout\) # (\b1~combout\))) # (!\z~combout\ & (\y~combout\ & \b1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~combout\,
	datab => \z~combout\,
	datac => \y~combout\,
	datad => \b1~combout\,
	combout => \t1|ia1~0_combout\);

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a1~I\ : cycloneii_io
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
	padio => ww_a1,
	combout => \a1~combout\);

-- Location: LCCOMB_X62_Y8_N0
\t1|ia1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|ia1~1_combout\ = (\x~combout\ & (\t1|ia1~0_combout\)) # (!\x~combout\ & ((\a1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \t1|ia1~0_combout\,
	datac => \a1~combout\,
	combout => \t1|ia1~1_combout\);

-- Location: LCCOMB_X62_Y8_N10
\u2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Cout~0_combout\ = (\u1|Cout~0_combout\ & ((\t1|ia1~1_combout\) # ((\t1|ib1~0_combout\ & \t1|process_0~0_combout\)))) # (!\u1|Cout~0_combout\ & (\t1|ib1~0_combout\ & (\t1|process_0~0_combout\ & \t1|ia1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ib1~0_combout\,
	datab => \t1|process_0~0_combout\,
	datac => \u1|Cout~0_combout\,
	datad => \t1|ia1~1_combout\,
	combout => \u2|Cout~0_combout\);

-- Location: LCCOMB_X62_Y8_N4
\u3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Cout~0_combout\ = (\t1|ia2~1_combout\ & ((\u2|Cout~0_combout\) # ((\t1|ib2~0_combout\ & \t1|process_0~0_combout\)))) # (!\t1|ia2~1_combout\ & (\t1|ib2~0_combout\ & (\t1|process_0~0_combout\ & \u2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ib2~0_combout\,
	datab => \t1|ia2~1_combout\,
	datac => \t1|process_0~0_combout\,
	datad => \u2|Cout~0_combout\,
	combout => \u3|Cout~0_combout\);

-- Location: LCCOMB_X1_Y16_N28
\u4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Cout~0_combout\ = (\t1|ia3~1_combout\ & ((\u3|Cout~0_combout\) # ((\t1|ib3~0_combout\ & \t1|process_0~0_combout\)))) # (!\t1|ia3~1_combout\ & (\t1|ib3~0_combout\ & (\u3|Cout~0_combout\ & \t1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ia3~1_combout\,
	datab => \t1|ib3~0_combout\,
	datac => \u3|Cout~0_combout\,
	datad => \t1|process_0~0_combout\,
	combout => \u4|Cout~0_combout\);

-- Location: LCCOMB_X1_Y16_N18
\u5|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|S~combout\ = \t1|ia4~1_combout\ $ (\u4|Cout~0_combout\ $ (((\t1|ib4~0_combout\ & \t1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ia4~1_combout\,
	datab => \t1|ib4~0_combout\,
	datac => \u4|Cout~0_combout\,
	datad => \t1|process_0~0_combout\,
	combout => \u5|S~combout\);

-- Location: LCFF_X1_Y16_N19
\r1|s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|S~combout\,
	ena => \e~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|s4~regout\);

-- Location: LCCOMB_X1_Y16_N20
\u4|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|S~combout\ = \t1|ia3~1_combout\ $ (\u3|Cout~0_combout\ $ (((\t1|ib3~0_combout\ & \t1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ia3~1_combout\,
	datab => \t1|ib3~0_combout\,
	datac => \u3|Cout~0_combout\,
	datad => \t1|process_0~0_combout\,
	combout => \u4|S~combout\);

-- Location: LCFF_X1_Y16_N21
\r1|s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|S~combout\,
	ena => \e~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|s3~regout\);

-- Location: LCCOMB_X62_Y8_N24
\u3|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|S~combout\ = \t1|ia2~1_combout\ $ (\u2|Cout~0_combout\ $ (((\t1|ib2~0_combout\ & \t1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ib2~0_combout\,
	datab => \t1|ia2~1_combout\,
	datac => \t1|process_0~0_combout\,
	datad => \u2|Cout~0_combout\,
	combout => \u3|S~combout\);

-- Location: LCFF_X62_Y8_N25
\r1|s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|S~combout\,
	ena => \e~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|s2~regout\);

-- Location: LCCOMB_X62_Y8_N18
\u2|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|S~combout\ = \u1|Cout~0_combout\ $ (\t1|ia1~1_combout\ $ (((\t1|ib1~0_combout\ & \t1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ib1~0_combout\,
	datab => \t1|process_0~0_combout\,
	datac => \u1|Cout~0_combout\,
	datad => \t1|ia1~1_combout\,
	combout => \u2|S~combout\);

-- Location: LCFF_X62_Y8_N19
\r1|s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u2|S~combout\,
	ena => \e~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|s1~regout\);

-- Location: LCCOMB_X62_Y8_N28
\u1|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|S~combout\ = \t1|ia0~1_combout\ $ (\t1|process_0~1_combout\ $ (((!\b0~combout\) # (!\t1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|ia0~1_combout\,
	datab => \t1|process_0~1_combout\,
	datac => \t1|process_0~0_combout\,
	datad => \b0~combout\,
	combout => \u1|S~combout\);

-- Location: LCFF_X62_Y8_N29
\r1|s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|S~combout\,
	ena => \e~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|s0~regout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s5~I\ : cycloneii_io
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
	datain => \r1|s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s5);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s4~I\ : cycloneii_io
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
	datain => \r1|s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s4);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3~I\ : cycloneii_io
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
	datain => \r1|s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3);

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2~I\ : cycloneii_io
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
	datain => \r1|s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2);

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1~I\ : cycloneii_io
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
	datain => \r1|s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0~I\ : cycloneii_io
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
	datain => \r1|s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0);
END structure;


