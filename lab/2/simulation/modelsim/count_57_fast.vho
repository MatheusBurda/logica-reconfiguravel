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

-- DATE "03/27/2024 13:52:11"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	count_57 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	EN : IN std_logic;
	Q1_U : OUT std_logic_vector(3 DOWNTO 0);
	Q2_D : OUT std_logic_vector(3 DOWNTO 0)
	);
END count_57;

-- Design Ports Information
-- Q1_U[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1_U[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1_U[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1_U[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2_D[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2_D[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2_D[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2_D[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RST	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF count_57 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_Q1_U : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2_D : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ld1~2_combout\ : std_logic;
SIGNAL \count1|Add0~0_combout\ : std_logic;
SIGNAL \count1|Add0~1_combout\ : std_logic;
SIGNAL \count2|Add0~0_combout\ : std_logic;
SIGNAL \count2|Add0~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \count1|count[2]~7_combout\ : std_logic;
SIGNAL \count1|count[2]~10_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \ld1~3_combout\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \ld1~combout\ : std_logic;
SIGNAL \count2|count[0]~0_combout\ : std_logic;
SIGNAL \count2|count[1]~1_combout\ : std_logic;
SIGNAL \count2|count[3]~3_combout\ : std_logic;
SIGNAL \ld1~4_combout\ : std_logic;
SIGNAL \count1|count[0]~5_combout\ : std_logic;
SIGNAL \count1|count[1]~0_combout\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \count1|count[0]~6_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \count1|count[0]~9_combout\ : std_logic;
SIGNAL \count1|count[3]~8_combout\ : std_logic;
SIGNAL \count2|count[2]~2_combout\ : std_logic;
SIGNAL \count2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count1|count\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_CLR <= CLR;
ww_EN <= EN;
Q1_U <= ww_Q1_U;
Q2_D <= ww_Q2_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

-- Location: LCCOMB_X23_Y35_N30
\ld1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ld1~2_combout\ = (!\RST~combout\ & !\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~combout\,
	datad => \CLR~combout\,
	combout => \ld1~2_combout\);

-- Location: LCCOMB_X23_Y35_N14
\count1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~0_combout\ = \count1|count\(1) $ (\count1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1|count\(1),
	datad => \count1|count\(0),
	combout => \count1|Add0~0_combout\);

-- Location: LCCOMB_X23_Y35_N22
\count1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~1_combout\ = \count1|count\(3) $ (((\count1|count\(2) & (\count1|count\(1) & \count1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|count\(2),
	datab => \count1|count\(1),
	datac => \count1|count\(0),
	datad => \count1|count\(3),
	combout => \count1|Add0~1_combout\);

-- Location: LCCOMB_X24_Y35_N26
\count2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~0_combout\ = \count2|count\(2) $ (((\count2|count\(1) & \count2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count2|count\(1),
	datac => \count2|count\(0),
	datad => \count2|count\(2),
	combout => \count2|Add0~0_combout\);

-- Location: LCCOMB_X24_Y35_N16
\count2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~1_combout\ = \count2|count\(3) $ (((\count2|count\(1) & (\count2|count\(0) & \count2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|count\(3),
	datab => \count2|count\(1),
	datac => \count2|count\(0),
	datad => \count2|count\(2),
	combout => \count2|Add0~1_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y35_N12
\count1|count[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[2]~7_combout\ = (\count1|count[0]~5_combout\ & (\count1|count\(2) $ (((\count1|count\(0) & \count1|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|count\(2),
	datab => \count1|count\(0),
	datac => \count1|count\(1),
	datad => \count1|count[0]~5_combout\,
	combout => \count1|count[2]~7_combout\);

-- Location: LCCOMB_X23_Y35_N24
\count1|count[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[2]~10_combout\ = (\EN~combout\ & (((\count1|count[2]~7_combout\)))) # (!\EN~combout\ & ((\count1|count\(2)) # ((!\Equal5~0_combout\ & \count1|count[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~combout\,
	datab => \Equal5~0_combout\,
	datac => \count1|count\(2),
	datad => \count1|count[2]~7_combout\,
	combout => \count1|count[2]~10_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
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
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCFF_X23_Y35_N25
\count1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count1|count[2]~10_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|count\(2));

-- Location: LCCOMB_X23_Y35_N8
\ld1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ld1~3_combout\ = (\count1|count\(3) & (!\count1|count\(0) & (!\count1|count\(2) & !\count1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|count\(3),
	datab => \count1|count\(0),
	datac => \count1|count\(2),
	datad => \count1|count\(1),
	combout => \ld1~3_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR~I\ : cycloneii_io
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
	padio => ww_CLR,
	combout => \CLR~combout\);

-- Location: LCCOMB_X23_Y35_N16
ld1 : cycloneii_lcell_comb
-- Equation(s):
-- \ld1~combout\ = (!\RST~combout\ & (!\CLR~combout\ & ((!\ld1~4_combout\) # (!\ld1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \CLR~combout\,
	datac => \ld1~3_combout\,
	datad => \ld1~4_combout\,
	combout => \ld1~combout\);

-- Location: LCCOMB_X24_Y35_N28
\count2|count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|count[0]~0_combout\ = (\Equal5~0_combout\ $ (!\count2|count\(0))) # (!\ld1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \count2|count\(0),
	datad => \ld1~combout\,
	combout => \count2|count[0]~0_combout\);

-- Location: LCFF_X24_Y35_N29
\count2|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count2|count[0]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|count\(0));

-- Location: LCCOMB_X24_Y35_N14
\count2|count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|count[1]~1_combout\ = (\count1|count[0]~5_combout\ & (((\count2|count\(1))))) # (!\count1|count[0]~5_combout\ & (\ld1~combout\ & (\count2|count\(0) $ (\count2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|count\(0),
	datab => \ld1~combout\,
	datac => \count2|count\(1),
	datad => \count1|count[0]~5_combout\,
	combout => \count2|count[1]~1_combout\);

-- Location: LCFF_X24_Y35_N15
\count2|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count2|count[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|count\(1));

-- Location: LCCOMB_X24_Y35_N18
\count2|count[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|count[3]~3_combout\ = (\count1|count[0]~5_combout\ & (((\count2|count\(3))))) # (!\count1|count[0]~5_combout\ & (\count2|Add0~1_combout\ & (\ld1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|Add0~1_combout\,
	datab => \ld1~combout\,
	datac => \count2|count\(3),
	datad => \count1|count[0]~5_combout\,
	combout => \count2|count[3]~3_combout\);

-- Location: LCFF_X24_Y35_N19
\count2|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count2|count[3]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|count\(3));

-- Location: LCCOMB_X24_Y35_N24
\ld1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ld1~4_combout\ = (\count2|count\(2) & (!\count2|count\(0) & (\count2|count\(1) & !\count2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|count\(2),
	datab => \count2|count\(0),
	datac => \count2|count\(1),
	datad => \count2|count\(3),
	combout => \ld1~4_combout\);

-- Location: LCCOMB_X23_Y35_N26
\count1|count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[0]~5_combout\ = (\ld1~2_combout\ & (\Equal5~0_combout\ & ((!\ld1~4_combout\) # (!\ld1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld1~2_combout\,
	datab => \ld1~3_combout\,
	datac => \Equal5~0_combout\,
	datad => \ld1~4_combout\,
	combout => \count1|count[0]~5_combout\);

-- Location: LCCOMB_X23_Y35_N28
\count1|count[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[1]~0_combout\ = (\count1|count[0]~5_combout\ & (\count1|Add0~0_combout\)) # (!\count1|count[0]~5_combout\ & ((\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|Add0~0_combout\,
	datab => \Equal5~0_combout\,
	datad => \count1|count[0]~5_combout\,
	combout => \count1|count[1]~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN~I\ : cycloneii_io
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
	padio => ww_EN,
	combout => \EN~combout\);

-- Location: LCCOMB_X23_Y35_N0
\count1|count[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[0]~6_combout\ = (\Equal5~0_combout\ & !\EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~0_combout\,
	datad => \EN~combout\,
	combout => \count1|count[0]~6_combout\);

-- Location: LCFF_X23_Y35_N29
\count1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count1|count[1]~0_combout\,
	sdata => \count1|count\(1),
	aclr => \RST~clkctrl_outclk\,
	sload => \count1|count[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|count\(1));

-- Location: LCCOMB_X23_Y35_N4
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ((\count1|count\(1)) # ((\count1|count\(2)) # (!\count1|count\(0)))) # (!\count1|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|count\(3),
	datab => \count1|count\(1),
	datac => \count1|count\(2),
	datad => \count1|count\(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X23_Y35_N2
\count1|count[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[0]~9_combout\ = (\count1|count\(0) & (!\EN~combout\ & (\Equal5~0_combout\))) # (!\count1|count\(0) & (\count1|count[0]~5_combout\ & ((\EN~combout\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~combout\,
	datab => \Equal5~0_combout\,
	datac => \count1|count\(0),
	datad => \count1|count[0]~5_combout\,
	combout => \count1|count[0]~9_combout\);

-- Location: LCFF_X23_Y35_N3
\count1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count1|count[0]~9_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|count\(0));

-- Location: LCCOMB_X23_Y35_N6
\count1|count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|count[3]~8_combout\ = (\count1|count[0]~6_combout\ & (((\count1|count\(3))))) # (!\count1|count[0]~6_combout\ & (\count1|Add0~1_combout\ & ((\count1|count[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|Add0~1_combout\,
	datab => \count1|count[0]~6_combout\,
	datac => \count1|count\(3),
	datad => \count1|count[0]~5_combout\,
	combout => \count1|count[3]~8_combout\);

-- Location: LCFF_X23_Y35_N7
\count1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count1|count[3]~8_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|count\(3));

-- Location: LCCOMB_X24_Y35_N20
\count2|count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|count[2]~2_combout\ = (\count1|count[0]~5_combout\ & (((\count2|count\(2))))) # (!\count1|count[0]~5_combout\ & (\count2|Add0~0_combout\ & (\ld1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|Add0~0_combout\,
	datab => \ld1~combout\,
	datac => \count2|count\(2),
	datad => \count1|count[0]~5_combout\,
	combout => \count2|count[2]~2_combout\);

-- Location: LCFF_X24_Y35_N21
\count2|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count2|count[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|count\(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1_U[0]~I\ : cycloneii_io
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
	datain => \count1|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1_U(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1_U[1]~I\ : cycloneii_io
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
	datain => \count1|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1_U(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1_U[2]~I\ : cycloneii_io
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
	datain => \count1|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1_U(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1_U[3]~I\ : cycloneii_io
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
	datain => \count1|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1_U(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2_D[0]~I\ : cycloneii_io
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
	datain => \count2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2_D(0));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2_D[1]~I\ : cycloneii_io
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
	datain => \count2|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2_D(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2_D[2]~I\ : cycloneii_io
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
	datain => \count2|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2_D(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2_D[3]~I\ : cycloneii_io
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
	datain => \count2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2_D(3));
END structure;


