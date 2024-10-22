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

-- DATE "04/14/2024 22:04:43"

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

ENTITY 	cronometro IS
    PORT (
	CLK : IN std_logic;
	BOTAO1 : IN std_logic;
	BOTAO2 : IN std_logic;
	SWITCH : IN std_logic;
	SAIDA_DEC_SEG : OUT std_logic_vector(6 DOWNTO 0);
	SAIDA_UNI_SEG : OUT std_logic_vector(6 DOWNTO 0);
	SAIDA_DEC_CS : OUT std_logic_vector(6 DOWNTO 0);
	SAIDA_UNI_CS : OUT std_logic_vector(6 DOWNTO 0)
	);
END cronometro;

-- Design Ports Information
-- SAIDA_DEC_SEG[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_SEG[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_SEG[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_SEG[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_SEG[4]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_SEG[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_SEG[6]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_SEG[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_DEC_CS[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SAIDA_UNI_CS[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SWITCH	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BOTAO1	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BOTAO2	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_BOTAO1 : std_logic;
SIGNAL ww_BOTAO2 : std_logic;
SIGNAL ww_SWITCH : std_logic;
SIGNAL ww_SAIDA_DEC_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SAIDA_UNI_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SAIDA_DEC_CS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SAIDA_UNI_CS : std_logic_vector(6 DOWNTO 0);
SIGNAL \clockzada|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWITCH~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockzada|Add0~0_combout\ : std_logic;
SIGNAL \clockzada|Add0~1\ : std_logic;
SIGNAL \clockzada|Add0~2_combout\ : std_logic;
SIGNAL \clockzada|Add0~3\ : std_logic;
SIGNAL \clockzada|Add0~4_combout\ : std_logic;
SIGNAL \clockzada|Add0~5\ : std_logic;
SIGNAL \clockzada|Add0~6_combout\ : std_logic;
SIGNAL \clockzada|Add0~7\ : std_logic;
SIGNAL \clockzada|Add0~8_combout\ : std_logic;
SIGNAL \clockzada|Add0~9\ : std_logic;
SIGNAL \clockzada|Add0~10_combout\ : std_logic;
SIGNAL \clockzada|Add0~11\ : std_logic;
SIGNAL \clockzada|Add0~12_combout\ : std_logic;
SIGNAL \clockzada|Add0~13\ : std_logic;
SIGNAL \clockzada|Add0~14_combout\ : std_logic;
SIGNAL \clockzada|Add0~15\ : std_logic;
SIGNAL \clockzada|Add0~16_combout\ : std_logic;
SIGNAL \clockzada|Add0~17\ : std_logic;
SIGNAL \clockzada|Add0~18_combout\ : std_logic;
SIGNAL \clockzada|Add0~19\ : std_logic;
SIGNAL \clockzada|Add0~20_combout\ : std_logic;
SIGNAL \clockzada|Add0~21\ : std_logic;
SIGNAL \clockzada|Add0~22_combout\ : std_logic;
SIGNAL \clockzada|Add0~23\ : std_logic;
SIGNAL \clockzada|Add0~24_combout\ : std_logic;
SIGNAL \clockzada|Add0~25\ : std_logic;
SIGNAL \clockzada|Add0~26_combout\ : std_logic;
SIGNAL \clockzada|Add0~27\ : std_logic;
SIGNAL \clockzada|Add0~28_combout\ : std_logic;
SIGNAL \clockzada|Add0~29\ : std_logic;
SIGNAL \clockzada|Add0~30_combout\ : std_logic;
SIGNAL \clockzada|Add0~31\ : std_logic;
SIGNAL \clockzada|Add0~32_combout\ : std_logic;
SIGNAL \clockzada|Add0~33\ : std_logic;
SIGNAL \clockzada|Add0~34_combout\ : std_logic;
SIGNAL \clockzada|Add0~35\ : std_logic;
SIGNAL \clockzada|Add0~36_combout\ : std_logic;
SIGNAL \clockzada|Add0~37\ : std_logic;
SIGNAL \clockzada|Add0~38_combout\ : std_logic;
SIGNAL \clockzada|Add0~39\ : std_logic;
SIGNAL \clockzada|Add0~40_combout\ : std_logic;
SIGNAL \clockzada|Add0~41\ : std_logic;
SIGNAL \clockzada|Add0~42_combout\ : std_logic;
SIGNAL \clockzada|Add0~43\ : std_logic;
SIGNAL \clockzada|Add0~44_combout\ : std_logic;
SIGNAL \clockzada|Add0~45\ : std_logic;
SIGNAL \clockzada|Add0~46_combout\ : std_logic;
SIGNAL \clockzada|Add0~47\ : std_logic;
SIGNAL \clockzada|Add0~48_combout\ : std_logic;
SIGNAL \clockzada|Add0~49\ : std_logic;
SIGNAL \clockzada|Add0~50_combout\ : std_logic;
SIGNAL \clockzada|Add0~51\ : std_logic;
SIGNAL \clockzada|Add0~52_combout\ : std_logic;
SIGNAL \clockzada|Add0~53\ : std_logic;
SIGNAL \clockzada|Add0~54_combout\ : std_logic;
SIGNAL \clockzada|Add0~55\ : std_logic;
SIGNAL \clockzada|Add0~56_combout\ : std_logic;
SIGNAL \clockzada|Add0~57\ : std_logic;
SIGNAL \clockzada|Add0~58_combout\ : std_logic;
SIGNAL \clockzada|Add0~59\ : std_logic;
SIGNAL \clockzada|Add0~60_combout\ : std_logic;
SIGNAL \clockzada|Add0~61\ : std_logic;
SIGNAL \clockzada|Add0~62_combout\ : std_logic;
SIGNAL \clockzada|tmp~regout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|Add0~0_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|Add0~0_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|Add0~1_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|Add0~0_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|Add0~1_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|Add0~0_combout\ : std_logic;
SIGNAL \clockzada|Equal0~0_combout\ : std_logic;
SIGNAL \clockzada|Equal0~1_combout\ : std_logic;
SIGNAL \clockzada|Equal0~2_combout\ : std_logic;
SIGNAL \clockzada|Equal0~3_combout\ : std_logic;
SIGNAL \clockzada|Equal0~4_combout\ : std_logic;
SIGNAL \clockzada|Equal0~5_combout\ : std_logic;
SIGNAL \clockzada|Equal0~6_combout\ : std_logic;
SIGNAL \clockzada|Equal0~7_combout\ : std_logic;
SIGNAL \clockzada|Equal0~8_combout\ : std_logic;
SIGNAL \clockzada|Equal0~9_combout\ : std_logic;
SIGNAL \clockzada|tmp~0_combout\ : std_logic;
SIGNAL \clockzada|count~0_combout\ : std_logic;
SIGNAL \clockzada|count~1_combout\ : std_logic;
SIGNAL \clockzada|count~2_combout\ : std_logic;
SIGNAL \clockzada|count~3_combout\ : std_logic;
SIGNAL \clockzada|count~4_combout\ : std_logic;
SIGNAL \clockzada|count~5_combout\ : std_logic;
SIGNAL \clockzada|count~6_combout\ : std_logic;
SIGNAL \clockzada|count~7_combout\ : std_logic;
SIGNAL \BOTAO1~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \clockzada|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \BOTAO2~combout\ : std_logic;
SIGNAL \state[1]~0_combout\ : std_logic;
SIGNAL \SWITCH~combout\ : std_logic;
SIGNAL \SWITCH~clkctrl_outclk\ : std_logic;
SIGNAL \state[0]~1_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|CONT[1]~7_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|CONT[1]~2_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|CONT[1]~3_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|CONT[2]~4_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|Add0~1_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[3]~10_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|CONT[3]~5_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|CONT[2]~4_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|CONT[1]~3_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[3]~4_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|CONT[2]~0_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|CONT[3]~5_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|Equal14~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[3]~5_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[3]~8_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[2]~7_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[0]~9_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|Equal14~0_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|CONT~3_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[1]~7_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|CONT~4_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|CONT[1]~2_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|CONT~5_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|Add0~1_combout\ : std_logic;
SIGNAL \contador_segundos|cont_dezenas|CONT~6_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[1]~1_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[2]~2_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[3]~3_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[4]~4_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[5]~5_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_seg|output[6]~6_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT[1]~6_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[1]~1_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[2]~2_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[3]~3_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[4]~4_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[5]~5_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|output[6]~6_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_dezenas|CONT[0]~6_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[1]~1_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[2]~2_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[3]~3_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[4]~4_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[5]~5_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|output[6]~6_combout\ : std_logic;
SIGNAL \contador_milisegundos|cont_unidade|CONT[0]~1_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[1]~1_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[2]~2_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[3]~3_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[4]~4_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[5]~5_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|output[6]~6_combout\ : std_logic;
SIGNAL \contador_segundos|cont_unidade|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador_milisegundos|cont_dezenas|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador_milisegundos|cont_unidade|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL state : std_logic_vector(1 DOWNTO 0);
SIGNAL \clockzada|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \contador_segundos|cont_dezenas|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dec7seg_dezenas_seg|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_unidades_ms|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_dezenas_ms|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \dec7seg_unidades_seg|ALT_INV_output[0]~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_BOTAO1 <= BOTAO1;
ww_BOTAO2 <= BOTAO2;
ww_SWITCH <= SWITCH;
SAIDA_DEC_SEG <= ww_SAIDA_DEC_SEG;
SAIDA_UNI_SEG <= ww_SAIDA_UNI_SEG;
SAIDA_DEC_CS <= ww_SAIDA_DEC_CS;
SAIDA_UNI_CS <= ww_SAIDA_UNI_CS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clockzada|tmp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clockzada|tmp~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\SWITCH~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SWITCH~combout\);
\dec7seg_dezenas_seg|ALT_INV_output[0]~0_combout\ <= NOT \dec7seg_dezenas_seg|output[0]~0_combout\;
\dec7seg_unidades_ms|ALT_INV_output[0]~0_combout\ <= NOT \dec7seg_unidades_ms|output[0]~0_combout\;
\dec7seg_dezenas_ms|ALT_INV_output[0]~0_combout\ <= NOT \dec7seg_dezenas_ms|output[0]~0_combout\;
\dec7seg_unidades_seg|ALT_INV_output[0]~0_combout\ <= NOT \dec7seg_unidades_seg|output[0]~0_combout\;

-- Location: LCCOMB_X35_Y15_N0
\clockzada|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~0_combout\ = \clockzada|count\(0) $ (GND)
-- \clockzada|Add0~1\ = CARRY(!\clockzada|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(0),
	datad => VCC,
	combout => \clockzada|Add0~0_combout\,
	cout => \clockzada|Add0~1\);

-- Location: LCCOMB_X35_Y15_N2
\clockzada|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~2_combout\ = (\clockzada|count\(1) & (!\clockzada|Add0~1\)) # (!\clockzada|count\(1) & ((\clockzada|Add0~1\) # (GND)))
-- \clockzada|Add0~3\ = CARRY((!\clockzada|Add0~1\) # (!\clockzada|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(1),
	datad => VCC,
	cin => \clockzada|Add0~1\,
	combout => \clockzada|Add0~2_combout\,
	cout => \clockzada|Add0~3\);

-- Location: LCCOMB_X35_Y15_N4
\clockzada|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~4_combout\ = (\clockzada|count\(2) & (\clockzada|Add0~3\ $ (GND))) # (!\clockzada|count\(2) & (!\clockzada|Add0~3\ & VCC))
-- \clockzada|Add0~5\ = CARRY((\clockzada|count\(2) & !\clockzada|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(2),
	datad => VCC,
	cin => \clockzada|Add0~3\,
	combout => \clockzada|Add0~4_combout\,
	cout => \clockzada|Add0~5\);

-- Location: LCCOMB_X35_Y15_N6
\clockzada|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~6_combout\ = (\clockzada|count\(3) & (!\clockzada|Add0~5\)) # (!\clockzada|count\(3) & ((\clockzada|Add0~5\) # (GND)))
-- \clockzada|Add0~7\ = CARRY((!\clockzada|Add0~5\) # (!\clockzada|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(3),
	datad => VCC,
	cin => \clockzada|Add0~5\,
	combout => \clockzada|Add0~6_combout\,
	cout => \clockzada|Add0~7\);

-- Location: LCCOMB_X35_Y15_N8
\clockzada|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~8_combout\ = (\clockzada|count\(4) & (\clockzada|Add0~7\ $ (GND))) # (!\clockzada|count\(4) & (!\clockzada|Add0~7\ & VCC))
-- \clockzada|Add0~9\ = CARRY((\clockzada|count\(4) & !\clockzada|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(4),
	datad => VCC,
	cin => \clockzada|Add0~7\,
	combout => \clockzada|Add0~8_combout\,
	cout => \clockzada|Add0~9\);

-- Location: LCCOMB_X35_Y15_N10
\clockzada|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~10_combout\ = (\clockzada|count\(5) & (!\clockzada|Add0~9\)) # (!\clockzada|count\(5) & ((\clockzada|Add0~9\) # (GND)))
-- \clockzada|Add0~11\ = CARRY((!\clockzada|Add0~9\) # (!\clockzada|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(5),
	datad => VCC,
	cin => \clockzada|Add0~9\,
	combout => \clockzada|Add0~10_combout\,
	cout => \clockzada|Add0~11\);

-- Location: LCCOMB_X35_Y15_N12
\clockzada|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~12_combout\ = (\clockzada|count\(6) & (\clockzada|Add0~11\ $ (GND))) # (!\clockzada|count\(6) & (!\clockzada|Add0~11\ & VCC))
-- \clockzada|Add0~13\ = CARRY((\clockzada|count\(6) & !\clockzada|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(6),
	datad => VCC,
	cin => \clockzada|Add0~11\,
	combout => \clockzada|Add0~12_combout\,
	cout => \clockzada|Add0~13\);

-- Location: LCCOMB_X35_Y15_N14
\clockzada|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~14_combout\ = (\clockzada|count\(7) & (!\clockzada|Add0~13\)) # (!\clockzada|count\(7) & ((\clockzada|Add0~13\) # (GND)))
-- \clockzada|Add0~15\ = CARRY((!\clockzada|Add0~13\) # (!\clockzada|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(7),
	datad => VCC,
	cin => \clockzada|Add0~13\,
	combout => \clockzada|Add0~14_combout\,
	cout => \clockzada|Add0~15\);

-- Location: LCCOMB_X35_Y15_N16
\clockzada|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~16_combout\ = (\clockzada|count\(8) & (\clockzada|Add0~15\ $ (GND))) # (!\clockzada|count\(8) & (!\clockzada|Add0~15\ & VCC))
-- \clockzada|Add0~17\ = CARRY((\clockzada|count\(8) & !\clockzada|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(8),
	datad => VCC,
	cin => \clockzada|Add0~15\,
	combout => \clockzada|Add0~16_combout\,
	cout => \clockzada|Add0~17\);

-- Location: LCCOMB_X35_Y15_N18
\clockzada|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~18_combout\ = (\clockzada|count\(9) & (!\clockzada|Add0~17\)) # (!\clockzada|count\(9) & ((\clockzada|Add0~17\) # (GND)))
-- \clockzada|Add0~19\ = CARRY((!\clockzada|Add0~17\) # (!\clockzada|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(9),
	datad => VCC,
	cin => \clockzada|Add0~17\,
	combout => \clockzada|Add0~18_combout\,
	cout => \clockzada|Add0~19\);

-- Location: LCCOMB_X35_Y15_N20
\clockzada|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~20_combout\ = (\clockzada|count\(10) & (\clockzada|Add0~19\ $ (GND))) # (!\clockzada|count\(10) & (!\clockzada|Add0~19\ & VCC))
-- \clockzada|Add0~21\ = CARRY((\clockzada|count\(10) & !\clockzada|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(10),
	datad => VCC,
	cin => \clockzada|Add0~19\,
	combout => \clockzada|Add0~20_combout\,
	cout => \clockzada|Add0~21\);

-- Location: LCCOMB_X35_Y15_N22
\clockzada|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~22_combout\ = (\clockzada|count\(11) & (!\clockzada|Add0~21\)) # (!\clockzada|count\(11) & ((\clockzada|Add0~21\) # (GND)))
-- \clockzada|Add0~23\ = CARRY((!\clockzada|Add0~21\) # (!\clockzada|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(11),
	datad => VCC,
	cin => \clockzada|Add0~21\,
	combout => \clockzada|Add0~22_combout\,
	cout => \clockzada|Add0~23\);

-- Location: LCCOMB_X35_Y15_N24
\clockzada|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~24_combout\ = (\clockzada|count\(12) & (\clockzada|Add0~23\ $ (GND))) # (!\clockzada|count\(12) & (!\clockzada|Add0~23\ & VCC))
-- \clockzada|Add0~25\ = CARRY((\clockzada|count\(12) & !\clockzada|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(12),
	datad => VCC,
	cin => \clockzada|Add0~23\,
	combout => \clockzada|Add0~24_combout\,
	cout => \clockzada|Add0~25\);

-- Location: LCCOMB_X35_Y15_N26
\clockzada|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~26_combout\ = (\clockzada|count\(13) & (!\clockzada|Add0~25\)) # (!\clockzada|count\(13) & ((\clockzada|Add0~25\) # (GND)))
-- \clockzada|Add0~27\ = CARRY((!\clockzada|Add0~25\) # (!\clockzada|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(13),
	datad => VCC,
	cin => \clockzada|Add0~25\,
	combout => \clockzada|Add0~26_combout\,
	cout => \clockzada|Add0~27\);

-- Location: LCCOMB_X35_Y15_N28
\clockzada|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~28_combout\ = (\clockzada|count\(14) & (\clockzada|Add0~27\ $ (GND))) # (!\clockzada|count\(14) & (!\clockzada|Add0~27\ & VCC))
-- \clockzada|Add0~29\ = CARRY((\clockzada|count\(14) & !\clockzada|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(14),
	datad => VCC,
	cin => \clockzada|Add0~27\,
	combout => \clockzada|Add0~28_combout\,
	cout => \clockzada|Add0~29\);

-- Location: LCCOMB_X35_Y15_N30
\clockzada|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~30_combout\ = (\clockzada|count\(15) & (!\clockzada|Add0~29\)) # (!\clockzada|count\(15) & ((\clockzada|Add0~29\) # (GND)))
-- \clockzada|Add0~31\ = CARRY((!\clockzada|Add0~29\) # (!\clockzada|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(15),
	datad => VCC,
	cin => \clockzada|Add0~29\,
	combout => \clockzada|Add0~30_combout\,
	cout => \clockzada|Add0~31\);

-- Location: LCCOMB_X35_Y14_N0
\clockzada|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~32_combout\ = (\clockzada|count\(16) & (\clockzada|Add0~31\ $ (GND))) # (!\clockzada|count\(16) & (!\clockzada|Add0~31\ & VCC))
-- \clockzada|Add0~33\ = CARRY((\clockzada|count\(16) & !\clockzada|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(16),
	datad => VCC,
	cin => \clockzada|Add0~31\,
	combout => \clockzada|Add0~32_combout\,
	cout => \clockzada|Add0~33\);

-- Location: LCCOMB_X35_Y14_N2
\clockzada|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~34_combout\ = (\clockzada|count\(17) & (!\clockzada|Add0~33\)) # (!\clockzada|count\(17) & ((\clockzada|Add0~33\) # (GND)))
-- \clockzada|Add0~35\ = CARRY((!\clockzada|Add0~33\) # (!\clockzada|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(17),
	datad => VCC,
	cin => \clockzada|Add0~33\,
	combout => \clockzada|Add0~34_combout\,
	cout => \clockzada|Add0~35\);

-- Location: LCCOMB_X35_Y14_N4
\clockzada|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~36_combout\ = (\clockzada|count\(18) & (\clockzada|Add0~35\ $ (GND))) # (!\clockzada|count\(18) & (!\clockzada|Add0~35\ & VCC))
-- \clockzada|Add0~37\ = CARRY((\clockzada|count\(18) & !\clockzada|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(18),
	datad => VCC,
	cin => \clockzada|Add0~35\,
	combout => \clockzada|Add0~36_combout\,
	cout => \clockzada|Add0~37\);

-- Location: LCCOMB_X35_Y14_N6
\clockzada|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~38_combout\ = (\clockzada|count\(19) & (!\clockzada|Add0~37\)) # (!\clockzada|count\(19) & ((\clockzada|Add0~37\) # (GND)))
-- \clockzada|Add0~39\ = CARRY((!\clockzada|Add0~37\) # (!\clockzada|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(19),
	datad => VCC,
	cin => \clockzada|Add0~37\,
	combout => \clockzada|Add0~38_combout\,
	cout => \clockzada|Add0~39\);

-- Location: LCCOMB_X35_Y14_N8
\clockzada|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~40_combout\ = (\clockzada|count\(20) & (\clockzada|Add0~39\ $ (GND))) # (!\clockzada|count\(20) & (!\clockzada|Add0~39\ & VCC))
-- \clockzada|Add0~41\ = CARRY((\clockzada|count\(20) & !\clockzada|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(20),
	datad => VCC,
	cin => \clockzada|Add0~39\,
	combout => \clockzada|Add0~40_combout\,
	cout => \clockzada|Add0~41\);

-- Location: LCCOMB_X35_Y14_N10
\clockzada|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~42_combout\ = (\clockzada|count\(21) & (!\clockzada|Add0~41\)) # (!\clockzada|count\(21) & ((\clockzada|Add0~41\) # (GND)))
-- \clockzada|Add0~43\ = CARRY((!\clockzada|Add0~41\) # (!\clockzada|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(21),
	datad => VCC,
	cin => \clockzada|Add0~41\,
	combout => \clockzada|Add0~42_combout\,
	cout => \clockzada|Add0~43\);

-- Location: LCCOMB_X35_Y14_N12
\clockzada|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~44_combout\ = (\clockzada|count\(22) & (\clockzada|Add0~43\ $ (GND))) # (!\clockzada|count\(22) & (!\clockzada|Add0~43\ & VCC))
-- \clockzada|Add0~45\ = CARRY((\clockzada|count\(22) & !\clockzada|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(22),
	datad => VCC,
	cin => \clockzada|Add0~43\,
	combout => \clockzada|Add0~44_combout\,
	cout => \clockzada|Add0~45\);

-- Location: LCCOMB_X35_Y14_N14
\clockzada|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~46_combout\ = (\clockzada|count\(23) & (!\clockzada|Add0~45\)) # (!\clockzada|count\(23) & ((\clockzada|Add0~45\) # (GND)))
-- \clockzada|Add0~47\ = CARRY((!\clockzada|Add0~45\) # (!\clockzada|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(23),
	datad => VCC,
	cin => \clockzada|Add0~45\,
	combout => \clockzada|Add0~46_combout\,
	cout => \clockzada|Add0~47\);

-- Location: LCCOMB_X35_Y14_N16
\clockzada|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~48_combout\ = (\clockzada|count\(24) & (\clockzada|Add0~47\ $ (GND))) # (!\clockzada|count\(24) & (!\clockzada|Add0~47\ & VCC))
-- \clockzada|Add0~49\ = CARRY((\clockzada|count\(24) & !\clockzada|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(24),
	datad => VCC,
	cin => \clockzada|Add0~47\,
	combout => \clockzada|Add0~48_combout\,
	cout => \clockzada|Add0~49\);

-- Location: LCCOMB_X35_Y14_N18
\clockzada|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~50_combout\ = (\clockzada|count\(25) & (!\clockzada|Add0~49\)) # (!\clockzada|count\(25) & ((\clockzada|Add0~49\) # (GND)))
-- \clockzada|Add0~51\ = CARRY((!\clockzada|Add0~49\) # (!\clockzada|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(25),
	datad => VCC,
	cin => \clockzada|Add0~49\,
	combout => \clockzada|Add0~50_combout\,
	cout => \clockzada|Add0~51\);

-- Location: LCCOMB_X35_Y14_N20
\clockzada|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~52_combout\ = (\clockzada|count\(26) & (\clockzada|Add0~51\ $ (GND))) # (!\clockzada|count\(26) & (!\clockzada|Add0~51\ & VCC))
-- \clockzada|Add0~53\ = CARRY((\clockzada|count\(26) & !\clockzada|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(26),
	datad => VCC,
	cin => \clockzada|Add0~51\,
	combout => \clockzada|Add0~52_combout\,
	cout => \clockzada|Add0~53\);

-- Location: LCCOMB_X35_Y14_N22
\clockzada|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~54_combout\ = (\clockzada|count\(27) & (!\clockzada|Add0~53\)) # (!\clockzada|count\(27) & ((\clockzada|Add0~53\) # (GND)))
-- \clockzada|Add0~55\ = CARRY((!\clockzada|Add0~53\) # (!\clockzada|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(27),
	datad => VCC,
	cin => \clockzada|Add0~53\,
	combout => \clockzada|Add0~54_combout\,
	cout => \clockzada|Add0~55\);

-- Location: LCCOMB_X35_Y14_N24
\clockzada|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~56_combout\ = (\clockzada|count\(28) & (\clockzada|Add0~55\ $ (GND))) # (!\clockzada|count\(28) & (!\clockzada|Add0~55\ & VCC))
-- \clockzada|Add0~57\ = CARRY((\clockzada|count\(28) & !\clockzada|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(28),
	datad => VCC,
	cin => \clockzada|Add0~55\,
	combout => \clockzada|Add0~56_combout\,
	cout => \clockzada|Add0~57\);

-- Location: LCCOMB_X35_Y14_N26
\clockzada|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~58_combout\ = (\clockzada|count\(29) & (!\clockzada|Add0~57\)) # (!\clockzada|count\(29) & ((\clockzada|Add0~57\) # (GND)))
-- \clockzada|Add0~59\ = CARRY((!\clockzada|Add0~57\) # (!\clockzada|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(29),
	datad => VCC,
	cin => \clockzada|Add0~57\,
	combout => \clockzada|Add0~58_combout\,
	cout => \clockzada|Add0~59\);

-- Location: LCCOMB_X35_Y14_N28
\clockzada|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~60_combout\ = (\clockzada|count\(30) & (\clockzada|Add0~59\ $ (GND))) # (!\clockzada|count\(30) & (!\clockzada|Add0~59\ & VCC))
-- \clockzada|Add0~61\ = CARRY((\clockzada|count\(30) & !\clockzada|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|count\(30),
	datad => VCC,
	cin => \clockzada|Add0~59\,
	combout => \clockzada|Add0~60_combout\,
	cout => \clockzada|Add0~61\);

-- Location: LCCOMB_X35_Y14_N30
\clockzada|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Add0~62_combout\ = \clockzada|Add0~61\ $ (\clockzada|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clockzada|count\(31),
	cin => \clockzada|Add0~61\,
	combout => \clockzada|Add0~62_combout\);

-- Location: LCFF_X34_Y14_N21
\clockzada|tmp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|tmp~regout\);

-- Location: LCCOMB_X5_Y23_N20
\contador_segundos|cont_dezenas|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|Add0~0_combout\ = \contador_segundos|cont_dezenas|CONT\(2) $ (((\contador_segundos|cont_dezenas|CONT\(0) & \contador_segundos|cont_dezenas|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_segundos|cont_dezenas|CONT\(0),
	datac => \contador_segundos|cont_dezenas|CONT\(2),
	datad => \contador_segundos|cont_dezenas|CONT\(1),
	combout => \contador_segundos|cont_dezenas|Add0~0_combout\);

-- Location: LCCOMB_X5_Y23_N10
\contador_segundos|cont_unidade|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|Add0~0_combout\ = \contador_segundos|cont_unidade|CONT\(2) $ (((\contador_segundos|cont_unidade|CONT\(0) & \contador_segundos|cont_unidade|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(1),
	combout => \contador_segundos|cont_unidade|Add0~0_combout\);

-- Location: LCCOMB_X5_Y23_N24
\contador_segundos|cont_unidade|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|Add0~1_combout\ = \contador_segundos|cont_unidade|CONT\(3) $ (((\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(1) & \contador_segundos|cont_unidade|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(2),
	datab => \contador_segundos|cont_unidade|CONT\(3),
	datac => \contador_segundos|cont_unidade|CONT\(1),
	datad => \contador_segundos|cont_unidade|CONT\(0),
	combout => \contador_segundos|cont_unidade|Add0~1_combout\);

-- Location: LCCOMB_X7_Y23_N16
\contador_milisegundos|cont_dezenas|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|Add0~0_combout\ = \contador_milisegundos|cont_dezenas|CONT\(2) $ (((\contador_milisegundos|cont_dezenas|CONT\(0) & \contador_milisegundos|cont_dezenas|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_milisegundos|cont_dezenas|CONT\(0),
	datac => \contador_milisegundos|cont_dezenas|CONT\(1),
	datad => \contador_milisegundos|cont_dezenas|CONT\(2),
	combout => \contador_milisegundos|cont_dezenas|Add0~0_combout\);

-- Location: LCCOMB_X7_Y23_N2
\contador_milisegundos|cont_dezenas|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|Add0~1_combout\ = \contador_milisegundos|cont_dezenas|CONT\(3) $ (((\contador_milisegundos|cont_dezenas|CONT\(0) & (\contador_milisegundos|cont_dezenas|CONT\(1) & \contador_milisegundos|cont_dezenas|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(0),
	datab => \contador_milisegundos|cont_dezenas|CONT\(3),
	datac => \contador_milisegundos|cont_dezenas|CONT\(1),
	datad => \contador_milisegundos|cont_dezenas|CONT\(2),
	combout => \contador_milisegundos|cont_dezenas|Add0~1_combout\);

-- Location: LCCOMB_X7_Y23_N12
\contador_milisegundos|cont_unidade|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|Add0~0_combout\ = \contador_milisegundos|cont_unidade|CONT\(2) $ (((\contador_milisegundos|cont_unidade|CONT\(0) & \contador_milisegundos|cont_unidade|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(1),
	combout => \contador_milisegundos|cont_unidade|Add0~0_combout\);

-- Location: LCFF_X35_Y15_N15
\clockzada|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \clockzada|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(0));

-- Location: LCFF_X35_Y15_N7
\clockzada|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(3));

-- Location: LCFF_X35_Y15_N5
\clockzada|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(2));

-- Location: LCFF_X35_Y15_N3
\clockzada|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(1));

-- Location: LCCOMB_X34_Y15_N12
\clockzada|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~0_combout\ = (!\clockzada|count\(1) & (!\clockzada|count\(3) & (\clockzada|count\(0) & !\clockzada|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(1),
	datab => \clockzada|count\(3),
	datac => \clockzada|count\(0),
	datad => \clockzada|count\(2),
	combout => \clockzada|Equal0~0_combout\);

-- Location: LCFF_X34_Y15_N19
\clockzada|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(4));

-- Location: LCFF_X34_Y15_N25
\clockzada|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(7));

-- Location: LCFF_X35_Y15_N11
\clockzada|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(5));

-- Location: LCFF_X35_Y15_N13
\clockzada|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(6));

-- Location: LCCOMB_X34_Y15_N2
\clockzada|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~1_combout\ = (\clockzada|count\(7) & (!\clockzada|count\(5) & (!\clockzada|count\(6) & \clockzada|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(7),
	datab => \clockzada|count\(5),
	datac => \clockzada|count\(6),
	datad => \clockzada|count\(4),
	combout => \clockzada|Equal0~1_combout\);

-- Location: LCFF_X35_Y15_N17
\clockzada|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(8));

-- Location: LCFF_X35_Y15_N19
\clockzada|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(9));

-- Location: LCFF_X35_Y15_N21
\clockzada|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(10));

-- Location: LCFF_X35_Y15_N23
\clockzada|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(11));

-- Location: LCCOMB_X34_Y15_N28
\clockzada|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~2_combout\ = (!\clockzada|count\(8) & (!\clockzada|count\(9) & (!\clockzada|count\(10) & !\clockzada|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(8),
	datab => \clockzada|count\(9),
	datac => \clockzada|count\(10),
	datad => \clockzada|count\(11),
	combout => \clockzada|Equal0~2_combout\);

-- Location: LCFF_X34_Y15_N31
\clockzada|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(12));

-- Location: LCFF_X34_Y15_N17
\clockzada|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(14));

-- Location: LCFF_X34_Y15_N15
\clockzada|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(15));

-- Location: LCFF_X35_Y15_N27
\clockzada|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(13));

-- Location: LCCOMB_X34_Y15_N4
\clockzada|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~3_combout\ = (\clockzada|count\(14) & (\clockzada|count\(15) & (!\clockzada|count\(13) & \clockzada|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(14),
	datab => \clockzada|count\(15),
	datac => \clockzada|count\(13),
	datad => \clockzada|count\(12),
	combout => \clockzada|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y15_N10
\clockzada|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~4_combout\ = (\clockzada|Equal0~0_combout\ & (\clockzada|Equal0~2_combout\ & (\clockzada|Equal0~3_combout\ & \clockzada|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~0_combout\,
	datab => \clockzada|Equal0~2_combout\,
	datac => \clockzada|Equal0~3_combout\,
	datad => \clockzada|Equal0~1_combout\,
	combout => \clockzada|Equal0~4_combout\);

-- Location: LCFF_X34_Y14_N15
\clockzada|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(16));

-- Location: LCFF_X34_Y14_N31
\clockzada|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(17));

-- Location: LCFF_X35_Y14_N5
\clockzada|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(18));

-- Location: LCFF_X35_Y14_N7
\clockzada|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(19));

-- Location: LCCOMB_X34_Y14_N24
\clockzada|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~5_combout\ = (!\clockzada|count\(19) & (\clockzada|count\(17) & (\clockzada|count\(16) & !\clockzada|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(19),
	datab => \clockzada|count\(17),
	datac => \clockzada|count\(16),
	datad => \clockzada|count\(18),
	combout => \clockzada|Equal0~5_combout\);

-- Location: LCFF_X35_Y14_N9
\clockzada|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(20));

-- Location: LCFF_X35_Y14_N11
\clockzada|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(21));

-- Location: LCFF_X35_Y14_N13
\clockzada|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(22));

-- Location: LCFF_X35_Y14_N15
\clockzada|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(23));

-- Location: LCCOMB_X34_Y14_N8
\clockzada|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~6_combout\ = (!\clockzada|count\(20) & (!\clockzada|count\(22) & (!\clockzada|count\(21) & !\clockzada|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(20),
	datab => \clockzada|count\(22),
	datac => \clockzada|count\(21),
	datad => \clockzada|count\(23),
	combout => \clockzada|Equal0~6_combout\);

-- Location: LCFF_X35_Y14_N17
\clockzada|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(24));

-- Location: LCFF_X35_Y14_N19
\clockzada|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(25));

-- Location: LCFF_X35_Y14_N21
\clockzada|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(26));

-- Location: LCFF_X35_Y14_N23
\clockzada|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(27));

-- Location: LCCOMB_X34_Y14_N22
\clockzada|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~7_combout\ = (!\clockzada|count\(24) & (!\clockzada|count\(25) & (!\clockzada|count\(26) & !\clockzada|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(24),
	datab => \clockzada|count\(25),
	datac => \clockzada|count\(26),
	datad => \clockzada|count\(27),
	combout => \clockzada|Equal0~7_combout\);

-- Location: LCFF_X35_Y14_N25
\clockzada|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(28));

-- Location: LCFF_X35_Y14_N27
\clockzada|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(29));

-- Location: LCFF_X35_Y14_N29
\clockzada|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(30));

-- Location: LCFF_X35_Y14_N31
\clockzada|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clockzada|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clockzada|count\(31));

-- Location: LCCOMB_X34_Y14_N10
\clockzada|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~8_combout\ = (!\clockzada|count\(29) & (!\clockzada|count\(28) & (!\clockzada|count\(31) & !\clockzada|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|count\(29),
	datab => \clockzada|count\(28),
	datac => \clockzada|count\(31),
	datad => \clockzada|count\(30),
	combout => \clockzada|Equal0~8_combout\);

-- Location: LCCOMB_X34_Y14_N0
\clockzada|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|Equal0~9_combout\ = (\clockzada|Equal0~8_combout\ & (\clockzada|Equal0~6_combout\ & (\clockzada|Equal0~5_combout\ & \clockzada|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~8_combout\,
	datab => \clockzada|Equal0~6_combout\,
	datac => \clockzada|Equal0~5_combout\,
	datad => \clockzada|Equal0~7_combout\,
	combout => \clockzada|Equal0~9_combout\);

-- Location: LCCOMB_X34_Y14_N20
\clockzada|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|tmp~0_combout\ = \clockzada|tmp~regout\ $ (((\clockzada|Equal0~4_combout\ & \clockzada|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~4_combout\,
	datac => \clockzada|tmp~regout\,
	datad => \clockzada|Equal0~9_combout\,
	combout => \clockzada|tmp~0_combout\);

-- Location: LCCOMB_X34_Y15_N0
\clockzada|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~0_combout\ = ((\clockzada|Equal0~4_combout\ & \clockzada|Equal0~9_combout\)) # (!\clockzada|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~4_combout\,
	datac => \clockzada|Add0~0_combout\,
	datad => \clockzada|Equal0~9_combout\,
	combout => \clockzada|count~0_combout\);

-- Location: LCCOMB_X34_Y15_N18
\clockzada|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~1_combout\ = (\clockzada|Add0~8_combout\ & ((!\clockzada|Equal0~4_combout\) # (!\clockzada|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|Equal0~9_combout\,
	datac => \clockzada|Add0~8_combout\,
	datad => \clockzada|Equal0~4_combout\,
	combout => \clockzada|count~1_combout\);

-- Location: LCCOMB_X34_Y15_N24
\clockzada|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~2_combout\ = (\clockzada|Add0~14_combout\ & ((!\clockzada|Equal0~4_combout\) # (!\clockzada|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|Equal0~9_combout\,
	datac => \clockzada|Add0~14_combout\,
	datad => \clockzada|Equal0~4_combout\,
	combout => \clockzada|count~2_combout\);

-- Location: LCCOMB_X34_Y15_N30
\clockzada|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~3_combout\ = (\clockzada|Add0~24_combout\ & ((!\clockzada|Equal0~9_combout\) # (!\clockzada|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~4_combout\,
	datab => \clockzada|Equal0~9_combout\,
	datad => \clockzada|Add0~24_combout\,
	combout => \clockzada|count~3_combout\);

-- Location: LCCOMB_X34_Y15_N16
\clockzada|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~4_combout\ = (\clockzada|Add0~28_combout\ & ((!\clockzada|Equal0~9_combout\) # (!\clockzada|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~4_combout\,
	datab => \clockzada|Equal0~9_combout\,
	datad => \clockzada|Add0~28_combout\,
	combout => \clockzada|count~4_combout\);

-- Location: LCCOMB_X34_Y15_N14
\clockzada|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~5_combout\ = (\clockzada|Add0~30_combout\ & ((!\clockzada|Equal0~9_combout\) # (!\clockzada|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~4_combout\,
	datab => \clockzada|Equal0~9_combout\,
	datad => \clockzada|Add0~30_combout\,
	combout => \clockzada|count~5_combout\);

-- Location: LCCOMB_X34_Y14_N14
\clockzada|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~6_combout\ = (\clockzada|Add0~32_combout\ & ((!\clockzada|Equal0~9_combout\) # (!\clockzada|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockzada|Equal0~4_combout\,
	datac => \clockzada|Add0~32_combout\,
	datad => \clockzada|Equal0~9_combout\,
	combout => \clockzada|count~6_combout\);

-- Location: LCCOMB_X34_Y14_N30
\clockzada|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clockzada|count~7_combout\ = (\clockzada|Add0~34_combout\ & ((!\clockzada|Equal0~4_combout\) # (!\clockzada|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockzada|Equal0~9_combout\,
	datac => \clockzada|Equal0~4_combout\,
	datad => \clockzada|Add0~34_combout\,
	combout => \clockzada|count~7_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BOTAO1~I\ : cycloneii_io
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
	padio => ww_BOTAO1,
	combout => \BOTAO1~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G12
\clockzada|tmp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockzada|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockzada|tmp~clkctrl_outclk\);

-- Location: CLKCTRL_G2
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

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BOTAO2~I\ : cycloneii_io
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
	padio => ww_BOTAO2,
	combout => \BOTAO2~combout\);

-- Location: LCCOMB_X6_Y23_N14
\state[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~0_combout\ = (\BOTAO1~combout\ & (state(1))) # (!\BOTAO1~combout\ & (!state(1) & state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTAO1~combout\,
	datac => state(1),
	datad => state(0),
	combout => \state[1]~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH~I\ : cycloneii_io
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
	padio => ww_SWITCH,
	combout => \SWITCH~combout\);

-- Location: CLKCTRL_G6
\SWITCH~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SWITCH~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SWITCH~clkctrl_outclk\);

-- Location: LCFF_X6_Y23_N15
\state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \state[1]~0_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LCCOMB_X6_Y23_N28
\state[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[0]~1_combout\ = (\BOTAO1~combout\ & ((state(0)) # ((!\BOTAO2~combout\ & state(1))))) # (!\BOTAO1~combout\ & (((state(1)) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTAO1~combout\,
	datab => \BOTAO2~combout\,
	datac => state(0),
	datad => state(1),
	combout => \state[0]~1_combout\);

-- Location: LCFF_X6_Y23_N29
\state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \state[0]~1_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LCCOMB_X5_Y23_N22
\contador_segundos|cont_dezenas|CONT[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|CONT[1]~7_combout\ = (\dec7seg_unidades_seg|Equal14~0_combout\) # ((state(0) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => \dec7seg_unidades_seg|Equal14~0_combout\,
	combout => \contador_segundos|cont_dezenas|CONT[1]~7_combout\);

-- Location: LCCOMB_X6_Y23_N12
\contador_milisegundos|cont_unidade|CONT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|CONT[1]~2_combout\ = (!state(1) & (state(0) & !\dec7seg_unidades_ms|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(0),
	datad => \dec7seg_unidades_ms|Equal14~0_combout\,
	combout => \contador_milisegundos|cont_unidade|CONT[1]~2_combout\);

-- Location: LCCOMB_X6_Y23_N22
\contador_milisegundos|cont_unidade|CONT[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|CONT[1]~3_combout\ = (\contador_milisegundos|cont_unidade|CONT\(1) & (((!\contador_milisegundos|cont_unidade|CONT\(0) & \contador_milisegundos|cont_unidade|CONT[1]~2_combout\)) # (!state(0)))) # 
-- (!\contador_milisegundos|cont_unidade|CONT\(1) & (\contador_milisegundos|cont_unidade|CONT\(0) & ((\contador_milisegundos|cont_unidade|CONT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(0),
	datab => state(0),
	datac => \contador_milisegundos|cont_unidade|CONT\(1),
	datad => \contador_milisegundos|cont_unidade|CONT[1]~2_combout\,
	combout => \contador_milisegundos|cont_unidade|CONT[1]~3_combout\);

-- Location: LCFF_X6_Y23_N23
\contador_milisegundos|cont_unidade|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_unidade|CONT[1]~3_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_unidade|CONT\(1));

-- Location: LCCOMB_X7_Y23_N30
\contador_milisegundos|cont_unidade|CONT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|CONT[2]~4_combout\ = (\contador_milisegundos|cont_unidade|Add0~0_combout\ & ((\contador_milisegundos|cont_unidade|CONT[1]~2_combout\) # ((!state(0) & \contador_milisegundos|cont_unidade|CONT\(2))))) # 
-- (!\contador_milisegundos|cont_unidade|Add0~0_combout\ & (!state(0) & (\contador_milisegundos|cont_unidade|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|Add0~0_combout\,
	datab => state(0),
	datac => \contador_milisegundos|cont_unidade|CONT\(2),
	datad => \contador_milisegundos|cont_unidade|CONT[1]~2_combout\,
	combout => \contador_milisegundos|cont_unidade|CONT[2]~4_combout\);

-- Location: LCFF_X7_Y23_N31
\contador_milisegundos|cont_unidade|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_unidade|CONT[2]~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_unidade|CONT\(2));

-- Location: LCCOMB_X7_Y23_N18
\contador_milisegundos|cont_unidade|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|Add0~1_combout\ = \contador_milisegundos|cont_unidade|CONT\(3) $ (((\contador_milisegundos|cont_unidade|CONT\(0) & (\contador_milisegundos|cont_unidade|CONT\(2) & \contador_milisegundos|cont_unidade|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(0),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(3),
	datad => \contador_milisegundos|cont_unidade|CONT\(1),
	combout => \contador_milisegundos|cont_unidade|Add0~1_combout\);

-- Location: LCCOMB_X6_Y23_N18
\contador_segundos|cont_unidade|CONT[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[3]~10_combout\ = (state(0) & (!state(1) & ((\contador_segundos|cont_unidade|CONT[3]~4_combout\) # (!\dec7seg_unidades_ms|Equal14~0_combout\)))) # (!state(0) & (((\contador_segundos|cont_unidade|CONT[3]~4_combout\) # 
-- (!\dec7seg_unidades_ms|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \contador_segundos|cont_unidade|CONT[3]~4_combout\,
	datad => \dec7seg_unidades_ms|Equal14~0_combout\,
	combout => \contador_segundos|cont_unidade|CONT[3]~10_combout\);

-- Location: LCCOMB_X6_Y23_N0
\contador_milisegundos|cont_dezenas|CONT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ = (\dec7seg_unidades_ms|Equal14~0_combout\ & (((\contador_segundos|cont_unidade|CONT[3]~4_combout\ & !state(0))))) # (!\dec7seg_unidades_ms|Equal14~0_combout\ & (((!state(0))) # (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec7seg_unidades_ms|Equal14~0_combout\,
	datab => state(1),
	datac => \contador_segundos|cont_unidade|CONT[3]~4_combout\,
	datad => state(0),
	combout => \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\);

-- Location: LCCOMB_X6_Y23_N26
\contador_milisegundos|cont_dezenas|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|CONT[3]~5_combout\ = (\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & (((\contador_milisegundos|cont_dezenas|CONT\(3))))) # (!\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & 
-- (\contador_milisegundos|cont_dezenas|Add0~1_combout\ & (\contador_segundos|cont_unidade|CONT[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|Add0~1_combout\,
	datab => \contador_segundos|cont_unidade|CONT[3]~10_combout\,
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\,
	combout => \contador_milisegundos|cont_dezenas|CONT[3]~5_combout\);

-- Location: LCFF_X6_Y23_N27
\contador_milisegundos|cont_dezenas|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_dezenas|CONT[3]~5_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_dezenas|CONT\(3));

-- Location: LCCOMB_X6_Y23_N8
\contador_milisegundos|cont_dezenas|CONT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|CONT[2]~4_combout\ = (\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & (((\contador_milisegundos|cont_dezenas|CONT\(2))))) # (!\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & 
-- (\contador_milisegundos|cont_dezenas|Add0~0_combout\ & (\contador_segundos|cont_unidade|CONT[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|Add0~0_combout\,
	datab => \contador_segundos|cont_unidade|CONT[3]~10_combout\,
	datac => \contador_milisegundos|cont_dezenas|CONT\(2),
	datad => \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\,
	combout => \contador_milisegundos|cont_dezenas|CONT[2]~4_combout\);

-- Location: LCFF_X6_Y23_N9
\contador_milisegundos|cont_dezenas|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_dezenas|CONT[2]~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_dezenas|CONT\(2));

-- Location: LCCOMB_X6_Y23_N30
\contador_milisegundos|cont_dezenas|CONT[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|CONT[1]~3_combout\ = (\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & (((\contador_milisegundos|cont_dezenas|CONT\(1))))) # (!\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & 
-- (\contador_segundos|cont_unidade|CONT[3]~10_combout\ & (\contador_milisegundos|cont_dezenas|CONT\(0) $ (\contador_milisegundos|cont_dezenas|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(0),
	datab => \contador_segundos|cont_unidade|CONT[3]~10_combout\,
	datac => \contador_milisegundos|cont_dezenas|CONT\(1),
	datad => \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\,
	combout => \contador_milisegundos|cont_dezenas|CONT[1]~3_combout\);

-- Location: LCFF_X6_Y23_N31
\contador_milisegundos|cont_dezenas|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_dezenas|CONT[1]~3_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_dezenas|CONT\(1));

-- Location: LCCOMB_X6_Y23_N16
\contador_segundos|cont_unidade|CONT[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[3]~4_combout\ = (((\contador_milisegundos|cont_dezenas|CONT\(2)) # (\contador_milisegundos|cont_dezenas|CONT\(1))) # (!\contador_milisegundos|cont_dezenas|CONT\(3))) # (!\contador_milisegundos|cont_dezenas|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(0),
	datab => \contador_milisegundos|cont_dezenas|CONT\(3),
	datac => \contador_milisegundos|cont_dezenas|CONT\(2),
	datad => \contador_milisegundos|cont_dezenas|CONT\(1),
	combout => \contador_segundos|cont_unidade|CONT[3]~4_combout\);

-- Location: LCCOMB_X6_Y23_N2
\contador_milisegundos|cont_unidade|CONT[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|CONT[2]~0_combout\ = (!state(0) & ((\contador_segundos|cont_unidade|CONT[3]~4_combout\) # (!\dec7seg_unidades_ms|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \contador_segundos|cont_unidade|CONT[3]~4_combout\,
	datad => \dec7seg_unidades_ms|Equal14~0_combout\,
	combout => \contador_milisegundos|cont_unidade|CONT[2]~0_combout\);

-- Location: LCCOMB_X6_Y23_N4
\contador_milisegundos|cont_unidade|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|CONT[3]~5_combout\ = (\contador_milisegundos|cont_unidade|CONT[1]~2_combout\ & ((\contador_milisegundos|cont_unidade|Add0~1_combout\) # ((\contador_milisegundos|cont_unidade|CONT\(3) & 
-- \contador_milisegundos|cont_unidade|CONT[2]~0_combout\)))) # (!\contador_milisegundos|cont_unidade|CONT[1]~2_combout\ & (((\contador_milisegundos|cont_unidade|CONT\(3) & \contador_milisegundos|cont_unidade|CONT[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT[1]~2_combout\,
	datab => \contador_milisegundos|cont_unidade|Add0~1_combout\,
	datac => \contador_milisegundos|cont_unidade|CONT\(3),
	datad => \contador_milisegundos|cont_unidade|CONT[2]~0_combout\,
	combout => \contador_milisegundos|cont_unidade|CONT[3]~5_combout\);

-- Location: LCFF_X6_Y23_N5
\contador_milisegundos|cont_unidade|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_unidade|CONT[3]~5_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_unidade|CONT\(3));

-- Location: LCCOMB_X6_Y23_N10
\dec7seg_unidades_ms|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|Equal14~0_combout\ = (\contador_milisegundos|cont_unidade|CONT\(0) & (!\contador_milisegundos|cont_unidade|CONT\(1) & (\contador_milisegundos|cont_unidade|CONT\(3) & !\contador_milisegundos|cont_unidade|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(0),
	datab => \contador_milisegundos|cont_unidade|CONT\(1),
	datac => \contador_milisegundos|cont_unidade|CONT\(3),
	datad => \contador_milisegundos|cont_unidade|CONT\(2),
	combout => \dec7seg_unidades_ms|Equal14~0_combout\);

-- Location: LCCOMB_X6_Y23_N6
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (state(1) & state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y23_N12
\contador_segundos|cont_unidade|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[3]~5_combout\ = (!\dec7seg_unidades_seg|Equal14~0_combout\ & (!\Equal0~0_combout\ & ((\contador_segundos|cont_unidade|CONT[3]~4_combout\) # (!\dec7seg_unidades_ms|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec7seg_unidades_seg|Equal14~0_combout\,
	datab => \dec7seg_unidades_ms|Equal14~0_combout\,
	datac => \contador_segundos|cont_unidade|CONT[3]~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \contador_segundos|cont_unidade|CONT[3]~5_combout\);

-- Location: LCCOMB_X5_Y23_N2
\contador_segundos|cont_unidade|CONT[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[3]~8_combout\ = (\contador_segundos|cont_unidade|CONT[3]~5_combout\ & (((\contador_segundos|cont_unidade|CONT\(3))))) # (!\contador_segundos|cont_unidade|CONT[3]~5_combout\ & 
-- (\contador_segundos|cont_unidade|Add0~1_combout\ & (!\contador_segundos|cont_dezenas|CONT[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|Add0~1_combout\,
	datab => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	datac => \contador_segundos|cont_unidade|CONT\(3),
	datad => \contador_segundos|cont_unidade|CONT[3]~5_combout\,
	combout => \contador_segundos|cont_unidade|CONT[3]~8_combout\);

-- Location: LCFF_X5_Y23_N3
\contador_segundos|cont_unidade|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_unidade|CONT[3]~8_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_unidade|CONT\(3));

-- Location: LCCOMB_X5_Y23_N16
\contador_segundos|cont_unidade|CONT[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[2]~7_combout\ = (\contador_segundos|cont_unidade|CONT[3]~5_combout\ & (((\contador_segundos|cont_unidade|CONT\(2))))) # (!\contador_segundos|cont_unidade|CONT[3]~5_combout\ & 
-- (\contador_segundos|cont_unidade|Add0~0_combout\ & (!\contador_segundos|cont_dezenas|CONT[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|Add0~0_combout\,
	datab => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	datac => \contador_segundos|cont_unidade|CONT\(2),
	datad => \contador_segundos|cont_unidade|CONT[3]~5_combout\,
	combout => \contador_segundos|cont_unidade|CONT[2]~7_combout\);

-- Location: LCFF_X5_Y23_N17
\contador_segundos|cont_unidade|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_unidade|CONT[2]~7_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_unidade|CONT\(2));

-- Location: LCCOMB_X5_Y23_N0
\contador_segundos|cont_unidade|CONT[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[0]~9_combout\ = (\contador_segundos|cont_unidade|CONT\(0) & (((\contador_segundos|cont_unidade|CONT[3]~5_combout\)))) # (!\contador_segundos|cont_unidade|CONT\(0) & (!\contador_segundos|cont_unidade|CONT[3]~5_combout\ 
-- & ((!state(1)) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT[3]~5_combout\,
	combout => \contador_segundos|cont_unidade|CONT[0]~9_combout\);

-- Location: LCFF_X5_Y23_N1
\contador_segundos|cont_unidade|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_unidade|CONT[0]~9_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_unidade|CONT\(0));

-- Location: LCCOMB_X5_Y23_N28
\dec7seg_unidades_seg|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|Equal14~0_combout\ = (!\contador_segundos|cont_unidade|CONT\(1) & (\contador_segundos|cont_unidade|CONT\(3) & (!\contador_segundos|cont_unidade|CONT\(2) & \contador_segundos|cont_unidade|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(3),
	datac => \contador_segundos|cont_unidade|CONT\(2),
	datad => \contador_segundos|cont_unidade|CONT\(0),
	combout => \dec7seg_unidades_seg|Equal14~0_combout\);

-- Location: LCCOMB_X5_Y23_N4
\contador_segundos|cont_dezenas|CONT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|CONT~3_combout\ = (!\contador_segundos|cont_dezenas|CONT\(0) & (!\Equal0~0_combout\ & ((\contador_segundos|cont_dezenas|CONT[1]~2_combout\) # (!\dec7seg_unidades_seg|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec7seg_unidades_seg|Equal14~0_combout\,
	datab => \contador_segundos|cont_dezenas|CONT[1]~2_combout\,
	datac => \contador_segundos|cont_dezenas|CONT\(0),
	datad => \Equal0~0_combout\,
	combout => \contador_segundos|cont_dezenas|CONT~3_combout\);

-- Location: LCFF_X5_Y23_N5
\contador_segundos|cont_dezenas|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_dezenas|CONT~3_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_dezenas|CONT\(0));

-- Location: LCCOMB_X4_Y23_N16
\dec7seg_dezenas_seg|output[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[1]~7_combout\ = \contador_segundos|cont_dezenas|CONT\(1) $ (\contador_segundos|cont_dezenas|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[1]~7_combout\);

-- Location: LCCOMB_X5_Y23_N30
\contador_segundos|cont_dezenas|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|CONT~4_combout\ = (!\Equal0~0_combout\ & (\dec7seg_dezenas_seg|output[1]~7_combout\ & ((\contador_segundos|cont_dezenas|CONT[1]~2_combout\) # (!\dec7seg_unidades_seg|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \dec7seg_dezenas_seg|output[1]~7_combout\,
	datac => \dec7seg_unidades_seg|Equal14~0_combout\,
	datad => \contador_segundos|cont_dezenas|CONT[1]~2_combout\,
	combout => \contador_segundos|cont_dezenas|CONT~4_combout\);

-- Location: LCFF_X5_Y23_N31
\contador_segundos|cont_dezenas|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_dezenas|CONT~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_dezenas|CONT\(1));

-- Location: LCCOMB_X5_Y23_N26
\contador_segundos|cont_dezenas|CONT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|CONT[1]~2_combout\ = (\contador_segundos|cont_dezenas|CONT\(3)) # (((\contador_segundos|cont_dezenas|CONT\(1)) # (!\contador_segundos|cont_dezenas|CONT\(0))) # (!\contador_segundos|cont_dezenas|CONT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(0),
	datad => \contador_segundos|cont_dezenas|CONT\(1),
	combout => \contador_segundos|cont_dezenas|CONT[1]~2_combout\);

-- Location: LCCOMB_X5_Y23_N8
\contador_segundos|cont_dezenas|CONT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|CONT~5_combout\ = (\contador_segundos|cont_dezenas|Add0~0_combout\ & (!\Equal0~0_combout\ & ((\contador_segundos|cont_dezenas|CONT[1]~2_combout\) # (!\dec7seg_unidades_seg|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|Add0~0_combout\,
	datab => \dec7seg_unidades_seg|Equal14~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \contador_segundos|cont_dezenas|CONT[1]~2_combout\,
	combout => \contador_segundos|cont_dezenas|CONT~5_combout\);

-- Location: LCFF_X5_Y23_N9
\contador_segundos|cont_dezenas|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_dezenas|CONT~5_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_dezenas|CONT\(2));

-- Location: LCCOMB_X5_Y23_N18
\contador_segundos|cont_dezenas|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|Add0~1_combout\ = \contador_segundos|cont_dezenas|CONT\(3) $ (((\contador_segundos|cont_dezenas|CONT\(2) & (\contador_segundos|cont_dezenas|CONT\(0) & \contador_segundos|cont_dezenas|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(0),
	datad => \contador_segundos|cont_dezenas|CONT\(1),
	combout => \contador_segundos|cont_dezenas|Add0~1_combout\);

-- Location: LCCOMB_X5_Y23_N6
\contador_segundos|cont_dezenas|CONT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_dezenas|CONT~6_combout\ = (\contador_segundos|cont_dezenas|Add0~1_combout\ & (!\Equal0~0_combout\ & ((\contador_segundos|cont_dezenas|CONT[1]~2_combout\) # (!\dec7seg_unidades_seg|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec7seg_unidades_seg|Equal14~0_combout\,
	datab => \contador_segundos|cont_dezenas|Add0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \contador_segundos|cont_dezenas|CONT[1]~2_combout\,
	combout => \contador_segundos|cont_dezenas|CONT~6_combout\);

-- Location: LCFF_X5_Y23_N7
\contador_segundos|cont_dezenas|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_dezenas|CONT~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_dezenas|CONT\(3));

-- Location: LCCOMB_X4_Y23_N4
\dec7seg_dezenas_seg|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[0]~0_combout\ = (\contador_segundos|cont_dezenas|CONT\(0) & ((\contador_segundos|cont_dezenas|CONT\(3)) # (\contador_segundos|cont_dezenas|CONT\(2) $ (\contador_segundos|cont_dezenas|CONT\(1))))) # 
-- (!\contador_segundos|cont_dezenas|CONT\(0) & ((\contador_segundos|cont_dezenas|CONT\(1)) # (\contador_segundos|cont_dezenas|CONT\(3) $ (\contador_segundos|cont_dezenas|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[0]~0_combout\);

-- Location: LCCOMB_X4_Y23_N2
\dec7seg_dezenas_seg|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[1]~1_combout\ = (\contador_segundos|cont_dezenas|CONT\(2) & (\contador_segundos|cont_dezenas|CONT\(0) & (\contador_segundos|cont_dezenas|CONT\(3) $ (\contador_segundos|cont_dezenas|CONT\(1))))) # 
-- (!\contador_segundos|cont_dezenas|CONT\(2) & (!\contador_segundos|cont_dezenas|CONT\(3) & ((\contador_segundos|cont_dezenas|CONT\(1)) # (\contador_segundos|cont_dezenas|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[1]~1_combout\);

-- Location: LCCOMB_X4_Y23_N24
\dec7seg_dezenas_seg|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[2]~2_combout\ = (\contador_segundos|cont_dezenas|CONT\(1) & (!\contador_segundos|cont_dezenas|CONT\(3) & ((\contador_segundos|cont_dezenas|CONT\(0))))) # (!\contador_segundos|cont_dezenas|CONT\(1) & 
-- ((\contador_segundos|cont_dezenas|CONT\(2) & (!\contador_segundos|cont_dezenas|CONT\(3))) # (!\contador_segundos|cont_dezenas|CONT\(2) & ((\contador_segundos|cont_dezenas|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[2]~2_combout\);

-- Location: LCCOMB_X4_Y23_N22
\dec7seg_dezenas_seg|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[3]~3_combout\ = (\contador_segundos|cont_dezenas|CONT\(1) & ((\contador_segundos|cont_dezenas|CONT\(2) & ((\contador_segundos|cont_dezenas|CONT\(0)))) # (!\contador_segundos|cont_dezenas|CONT\(2) & 
-- (\contador_segundos|cont_dezenas|CONT\(3) & !\contador_segundos|cont_dezenas|CONT\(0))))) # (!\contador_segundos|cont_dezenas|CONT\(1) & (!\contador_segundos|cont_dezenas|CONT\(3) & (\contador_segundos|cont_dezenas|CONT\(2) $ 
-- (\contador_segundos|cont_dezenas|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[3]~3_combout\);

-- Location: LCCOMB_X4_Y23_N0
\dec7seg_dezenas_seg|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[4]~4_combout\ = (\contador_segundos|cont_dezenas|CONT\(3) & (\contador_segundos|cont_dezenas|CONT\(2) & ((\contador_segundos|cont_dezenas|CONT\(1)) # (!\contador_segundos|cont_dezenas|CONT\(0))))) # 
-- (!\contador_segundos|cont_dezenas|CONT\(3) & (!\contador_segundos|cont_dezenas|CONT\(2) & (\contador_segundos|cont_dezenas|CONT\(1) & !\contador_segundos|cont_dezenas|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[4]~4_combout\);

-- Location: LCCOMB_X4_Y23_N6
\dec7seg_dezenas_seg|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[5]~5_combout\ = (\contador_segundos|cont_dezenas|CONT\(3) & ((\contador_segundos|cont_dezenas|CONT\(0) & ((\contador_segundos|cont_dezenas|CONT\(1)))) # (!\contador_segundos|cont_dezenas|CONT\(0) & 
-- (\contador_segundos|cont_dezenas|CONT\(2))))) # (!\contador_segundos|cont_dezenas|CONT\(3) & (\contador_segundos|cont_dezenas|CONT\(2) & (\contador_segundos|cont_dezenas|CONT\(1) $ (\contador_segundos|cont_dezenas|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[5]~5_combout\);

-- Location: LCCOMB_X4_Y23_N12
\dec7seg_dezenas_seg|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_seg|output[6]~6_combout\ = (\contador_segundos|cont_dezenas|CONT\(3) & (\contador_segundos|cont_dezenas|CONT\(0) & (\contador_segundos|cont_dezenas|CONT\(2) $ (\contador_segundos|cont_dezenas|CONT\(1))))) # 
-- (!\contador_segundos|cont_dezenas|CONT\(3) & (!\contador_segundos|cont_dezenas|CONT\(1) & (\contador_segundos|cont_dezenas|CONT\(2) $ (\contador_segundos|cont_dezenas|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_dezenas|CONT\(3),
	datab => \contador_segundos|cont_dezenas|CONT\(2),
	datac => \contador_segundos|cont_dezenas|CONT\(1),
	datad => \contador_segundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_seg|output[6]~6_combout\);

-- Location: LCCOMB_X5_Y23_N14
\contador_segundos|cont_unidade|CONT[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_segundos|cont_unidade|CONT[1]~6_combout\ = (\contador_segundos|cont_unidade|CONT[3]~5_combout\ & (((\contador_segundos|cont_unidade|CONT\(1))))) # (!\contador_segundos|cont_unidade|CONT[3]~5_combout\ & 
-- (!\contador_segundos|cont_dezenas|CONT[1]~7_combout\ & (\contador_segundos|cont_unidade|CONT\(0) $ (\contador_segundos|cont_unidade|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(0),
	datab => \contador_segundos|cont_dezenas|CONT[1]~7_combout\,
	datac => \contador_segundos|cont_unidade|CONT\(1),
	datad => \contador_segundos|cont_unidade|CONT[3]~5_combout\,
	combout => \contador_segundos|cont_unidade|CONT[1]~6_combout\);

-- Location: LCFF_X5_Y23_N15
\contador_segundos|cont_unidade|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_segundos|cont_unidade|CONT[1]~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_segundos|cont_unidade|CONT\(1));

-- Location: LCCOMB_X4_Y23_N18
\dec7seg_unidades_seg|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[0]~0_combout\ = (\contador_segundos|cont_unidade|CONT\(0) & ((\contador_segundos|cont_unidade|CONT\(3)) # (\contador_segundos|cont_unidade|CONT\(1) $ (\contador_segundos|cont_unidade|CONT\(2))))) # 
-- (!\contador_segundos|cont_unidade|CONT\(0) & ((\contador_segundos|cont_unidade|CONT\(1)) # (\contador_segundos|cont_unidade|CONT\(2) $ (\contador_segundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[0]~0_combout\);

-- Location: LCCOMB_X4_Y23_N28
\dec7seg_unidades_seg|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[1]~1_combout\ = (\contador_segundos|cont_unidade|CONT\(1) & (!\contador_segundos|cont_unidade|CONT\(3) & ((\contador_segundos|cont_unidade|CONT\(0)) # (!\contador_segundos|cont_unidade|CONT\(2))))) # 
-- (!\contador_segundos|cont_unidade|CONT\(1) & (\contador_segundos|cont_unidade|CONT\(0) & (\contador_segundos|cont_unidade|CONT\(2) $ (!\contador_segundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[1]~1_combout\);

-- Location: LCCOMB_X4_Y23_N30
\dec7seg_unidades_seg|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[2]~2_combout\ = (\contador_segundos|cont_unidade|CONT\(1) & (((\contador_segundos|cont_unidade|CONT\(0) & !\contador_segundos|cont_unidade|CONT\(3))))) # (!\contador_segundos|cont_unidade|CONT\(1) & 
-- ((\contador_segundos|cont_unidade|CONT\(2) & ((!\contador_segundos|cont_unidade|CONT\(3)))) # (!\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[2]~2_combout\);

-- Location: LCCOMB_X4_Y23_N8
\dec7seg_unidades_seg|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[3]~3_combout\ = (\contador_segundos|cont_unidade|CONT\(1) & ((\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(0))) # (!\contador_segundos|cont_unidade|CONT\(2) & 
-- (!\contador_segundos|cont_unidade|CONT\(0) & \contador_segundos|cont_unidade|CONT\(3))))) # (!\contador_segundos|cont_unidade|CONT\(1) & (!\contador_segundos|cont_unidade|CONT\(3) & (\contador_segundos|cont_unidade|CONT\(2) $ 
-- (\contador_segundos|cont_unidade|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[3]~3_combout\);

-- Location: LCCOMB_X4_Y23_N26
\dec7seg_unidades_seg|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[4]~4_combout\ = (\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(3) & ((\contador_segundos|cont_unidade|CONT\(1)) # (!\contador_segundos|cont_unidade|CONT\(0))))) # 
-- (!\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(1) & (!\contador_segundos|cont_unidade|CONT\(0) & !\contador_segundos|cont_unidade|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[4]~4_combout\);

-- Location: LCCOMB_X4_Y23_N20
\dec7seg_unidades_seg|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[5]~5_combout\ = (\contador_segundos|cont_unidade|CONT\(1) & ((\contador_segundos|cont_unidade|CONT\(0) & ((\contador_segundos|cont_unidade|CONT\(3)))) # (!\contador_segundos|cont_unidade|CONT\(0) & 
-- (\contador_segundos|cont_unidade|CONT\(2))))) # (!\contador_segundos|cont_unidade|CONT\(1) & (\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(0) $ (\contador_segundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[5]~5_combout\);

-- Location: LCCOMB_X4_Y23_N10
\dec7seg_unidades_seg|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_seg|output[6]~6_combout\ = (\contador_segundos|cont_unidade|CONT\(2) & (!\contador_segundos|cont_unidade|CONT\(1) & (\contador_segundos|cont_unidade|CONT\(0) $ (!\contador_segundos|cont_unidade|CONT\(3))))) # 
-- (!\contador_segundos|cont_unidade|CONT\(2) & (\contador_segundos|cont_unidade|CONT\(0) & (\contador_segundos|cont_unidade|CONT\(1) $ (!\contador_segundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_segundos|cont_unidade|CONT\(1),
	datab => \contador_segundos|cont_unidade|CONT\(2),
	datac => \contador_segundos|cont_unidade|CONT\(0),
	datad => \contador_segundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_seg|output[6]~6_combout\);

-- Location: LCCOMB_X6_Y23_N24
\contador_milisegundos|cont_dezenas|CONT[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_dezenas|CONT[0]~6_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(0) & (((\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\)))) # (!\contador_milisegundos|cont_dezenas|CONT\(0) & 
-- (!\contador_milisegundos|cont_dezenas|CONT[2]~2_combout\ & ((!state(1)) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \contador_milisegundos|cont_dezenas|CONT\(0),
	datad => \contador_milisegundos|cont_dezenas|CONT[2]~2_combout\,
	combout => \contador_milisegundos|cont_dezenas|CONT[0]~6_combout\);

-- Location: LCFF_X6_Y23_N25
\contador_milisegundos|cont_dezenas|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_dezenas|CONT[0]~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_dezenas|CONT\(0));

-- Location: LCCOMB_X7_Y23_N28
\dec7seg_dezenas_ms|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[0]~0_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(0) & ((\contador_milisegundos|cont_dezenas|CONT\(3)) # (\contador_milisegundos|cont_dezenas|CONT\(1) $ (\contador_milisegundos|cont_dezenas|CONT\(2))))) # 
-- (!\contador_milisegundos|cont_dezenas|CONT\(0) & ((\contador_milisegundos|cont_dezenas|CONT\(1)) # (\contador_milisegundos|cont_dezenas|CONT\(2) $ (\contador_milisegundos|cont_dezenas|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[0]~0_combout\);

-- Location: LCCOMB_X7_Y23_N6
\dec7seg_dezenas_ms|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[1]~1_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(1) & (!\contador_milisegundos|cont_dezenas|CONT\(3) & ((\contador_milisegundos|cont_dezenas|CONT\(0)) # (!\contador_milisegundos|cont_dezenas|CONT\(2))))) # 
-- (!\contador_milisegundos|cont_dezenas|CONT\(1) & (\contador_milisegundos|cont_dezenas|CONT\(0) & (\contador_milisegundos|cont_dezenas|CONT\(2) $ (!\contador_milisegundos|cont_dezenas|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[1]~1_combout\);

-- Location: LCCOMB_X7_Y23_N0
\dec7seg_dezenas_ms|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[2]~2_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(1) & (((!\contador_milisegundos|cont_dezenas|CONT\(3) & \contador_milisegundos|cont_dezenas|CONT\(0))))) # (!\contador_milisegundos|cont_dezenas|CONT\(1) & 
-- ((\contador_milisegundos|cont_dezenas|CONT\(2) & (!\contador_milisegundos|cont_dezenas|CONT\(3))) # (!\contador_milisegundos|cont_dezenas|CONT\(2) & ((\contador_milisegundos|cont_dezenas|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[2]~2_combout\);

-- Location: LCCOMB_X7_Y23_N10
\dec7seg_dezenas_ms|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[3]~3_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(1) & ((\contador_milisegundos|cont_dezenas|CONT\(2) & ((\contador_milisegundos|cont_dezenas|CONT\(0)))) # (!\contador_milisegundos|cont_dezenas|CONT\(2) & 
-- (\contador_milisegundos|cont_dezenas|CONT\(3) & !\contador_milisegundos|cont_dezenas|CONT\(0))))) # (!\contador_milisegundos|cont_dezenas|CONT\(1) & (!\contador_milisegundos|cont_dezenas|CONT\(3) & (\contador_milisegundos|cont_dezenas|CONT\(2) $ 
-- (\contador_milisegundos|cont_dezenas|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[3]~3_combout\);

-- Location: LCCOMB_X7_Y23_N8
\dec7seg_dezenas_ms|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[4]~4_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(2) & (\contador_milisegundos|cont_dezenas|CONT\(3) & ((\contador_milisegundos|cont_dezenas|CONT\(1)) # (!\contador_milisegundos|cont_dezenas|CONT\(0))))) # 
-- (!\contador_milisegundos|cont_dezenas|CONT\(2) & (\contador_milisegundos|cont_dezenas|CONT\(1) & (!\contador_milisegundos|cont_dezenas|CONT\(3) & !\contador_milisegundos|cont_dezenas|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[4]~4_combout\);

-- Location: LCCOMB_X7_Y23_N26
\dec7seg_dezenas_ms|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[5]~5_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(1) & ((\contador_milisegundos|cont_dezenas|CONT\(0) & ((\contador_milisegundos|cont_dezenas|CONT\(3)))) # (!\contador_milisegundos|cont_dezenas|CONT\(0) & 
-- (\contador_milisegundos|cont_dezenas|CONT\(2))))) # (!\contador_milisegundos|cont_dezenas|CONT\(1) & (\contador_milisegundos|cont_dezenas|CONT\(2) & (\contador_milisegundos|cont_dezenas|CONT\(3) $ (\contador_milisegundos|cont_dezenas|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[5]~5_combout\);

-- Location: LCCOMB_X7_Y23_N4
\dec7seg_dezenas_ms|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_dezenas_ms|output[6]~6_combout\ = (\contador_milisegundos|cont_dezenas|CONT\(2) & (!\contador_milisegundos|cont_dezenas|CONT\(1) & (\contador_milisegundos|cont_dezenas|CONT\(3) $ (!\contador_milisegundos|cont_dezenas|CONT\(0))))) # 
-- (!\contador_milisegundos|cont_dezenas|CONT\(2) & (\contador_milisegundos|cont_dezenas|CONT\(0) & (\contador_milisegundos|cont_dezenas|CONT\(1) $ (!\contador_milisegundos|cont_dezenas|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_dezenas|CONT\(1),
	datab => \contador_milisegundos|cont_dezenas|CONT\(2),
	datac => \contador_milisegundos|cont_dezenas|CONT\(3),
	datad => \contador_milisegundos|cont_dezenas|CONT\(0),
	combout => \dec7seg_dezenas_ms|output[6]~6_combout\);

-- Location: LCCOMB_X6_Y23_N20
\contador_milisegundos|cont_unidade|CONT[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador_milisegundos|cont_unidade|CONT[0]~1_combout\ = (\contador_milisegundos|cont_unidade|CONT\(0) & (((\contador_milisegundos|cont_unidade|CONT[2]~0_combout\)))) # (!\contador_milisegundos|cont_unidade|CONT\(0) & (state(0) & (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT[2]~0_combout\,
	combout => \contador_milisegundos|cont_unidade|CONT[0]~1_combout\);

-- Location: LCFF_X6_Y23_N21
\contador_milisegundos|cont_unidade|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clockzada|tmp~clkctrl_outclk\,
	datain => \contador_milisegundos|cont_unidade|CONT[0]~1_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_milisegundos|cont_unidade|CONT\(0));

-- Location: LCCOMB_X1_Y15_N12
\dec7seg_unidades_ms|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[0]~0_combout\ = (\contador_milisegundos|cont_unidade|CONT\(0) & ((\contador_milisegundos|cont_unidade|CONT\(3)) # (\contador_milisegundos|cont_unidade|CONT\(1) $ (\contador_milisegundos|cont_unidade|CONT\(2))))) # 
-- (!\contador_milisegundos|cont_unidade|CONT\(0) & ((\contador_milisegundos|cont_unidade|CONT\(1)) # (\contador_milisegundos|cont_unidade|CONT\(2) $ (\contador_milisegundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[0]~0_combout\);

-- Location: LCCOMB_X1_Y15_N22
\dec7seg_unidades_ms|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[1]~1_combout\ = (\contador_milisegundos|cont_unidade|CONT\(1) & (!\contador_milisegundos|cont_unidade|CONT\(3) & ((\contador_milisegundos|cont_unidade|CONT\(0)) # (!\contador_milisegundos|cont_unidade|CONT\(2))))) # 
-- (!\contador_milisegundos|cont_unidade|CONT\(1) & (\contador_milisegundos|cont_unidade|CONT\(0) & (\contador_milisegundos|cont_unidade|CONT\(2) $ (!\contador_milisegundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[1]~1_combout\);

-- Location: LCCOMB_X1_Y15_N16
\dec7seg_unidades_ms|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[2]~2_combout\ = (\contador_milisegundos|cont_unidade|CONT\(1) & (((\contador_milisegundos|cont_unidade|CONT\(0) & !\contador_milisegundos|cont_unidade|CONT\(3))))) # (!\contador_milisegundos|cont_unidade|CONT\(1) & 
-- ((\contador_milisegundos|cont_unidade|CONT\(2) & ((!\contador_milisegundos|cont_unidade|CONT\(3)))) # (!\contador_milisegundos|cont_unidade|CONT\(2) & (\contador_milisegundos|cont_unidade|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[2]~2_combout\);

-- Location: LCCOMB_X1_Y15_N10
\dec7seg_unidades_ms|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[3]~3_combout\ = (\contador_milisegundos|cont_unidade|CONT\(1) & ((\contador_milisegundos|cont_unidade|CONT\(2) & (\contador_milisegundos|cont_unidade|CONT\(0))) # (!\contador_milisegundos|cont_unidade|CONT\(2) & 
-- (!\contador_milisegundos|cont_unidade|CONT\(0) & \contador_milisegundos|cont_unidade|CONT\(3))))) # (!\contador_milisegundos|cont_unidade|CONT\(1) & (!\contador_milisegundos|cont_unidade|CONT\(3) & (\contador_milisegundos|cont_unidade|CONT\(2) $ 
-- (\contador_milisegundos|cont_unidade|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[3]~3_combout\);

-- Location: LCCOMB_X1_Y15_N20
\dec7seg_unidades_ms|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[4]~4_combout\ = (\contador_milisegundos|cont_unidade|CONT\(2) & (\contador_milisegundos|cont_unidade|CONT\(3) & ((\contador_milisegundos|cont_unidade|CONT\(1)) # (!\contador_milisegundos|cont_unidade|CONT\(0))))) # 
-- (!\contador_milisegundos|cont_unidade|CONT\(2) & (\contador_milisegundos|cont_unidade|CONT\(1) & (!\contador_milisegundos|cont_unidade|CONT\(0) & !\contador_milisegundos|cont_unidade|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[4]~4_combout\);

-- Location: LCCOMB_X1_Y15_N6
\dec7seg_unidades_ms|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[5]~5_combout\ = (\contador_milisegundos|cont_unidade|CONT\(1) & ((\contador_milisegundos|cont_unidade|CONT\(0) & ((\contador_milisegundos|cont_unidade|CONT\(3)))) # (!\contador_milisegundos|cont_unidade|CONT\(0) & 
-- (\contador_milisegundos|cont_unidade|CONT\(2))))) # (!\contador_milisegundos|cont_unidade|CONT\(1) & (\contador_milisegundos|cont_unidade|CONT\(2) & (\contador_milisegundos|cont_unidade|CONT\(0) $ (\contador_milisegundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[5]~5_combout\);

-- Location: LCCOMB_X1_Y15_N8
\dec7seg_unidades_ms|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec7seg_unidades_ms|output[6]~6_combout\ = (\contador_milisegundos|cont_unidade|CONT\(2) & (!\contador_milisegundos|cont_unidade|CONT\(1) & (\contador_milisegundos|cont_unidade|CONT\(0) $ (!\contador_milisegundos|cont_unidade|CONT\(3))))) # 
-- (!\contador_milisegundos|cont_unidade|CONT\(2) & (\contador_milisegundos|cont_unidade|CONT\(0) & (\contador_milisegundos|cont_unidade|CONT\(1) $ (!\contador_milisegundos|cont_unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_milisegundos|cont_unidade|CONT\(1),
	datab => \contador_milisegundos|cont_unidade|CONT\(2),
	datac => \contador_milisegundos|cont_unidade|CONT\(0),
	datad => \contador_milisegundos|cont_unidade|CONT\(3),
	combout => \dec7seg_unidades_ms|output[6]~6_combout\);

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[0]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|ALT_INV_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(0));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[1]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(1));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[2]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|output[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[3]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|output[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[4]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|output[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(4));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[5]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|output[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(5));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_SEG[6]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_seg|output[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_SEG(6));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[0]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|ALT_INV_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[1]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[2]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|output[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[3]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|output[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[4]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|output[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[5]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|output[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_SEG[6]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_seg|output[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_SEG(6));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[0]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|ALT_INV_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(0));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[1]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[2]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|output[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[3]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|output[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[4]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|output[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(4));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[5]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|output[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_DEC_CS[6]~I\ : cycloneii_io
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
	datain => \dec7seg_dezenas_ms|output[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_DEC_CS(6));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[0]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|ALT_INV_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[1]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[2]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|output[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[3]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|output[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[4]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|output[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[5]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|output[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SAIDA_UNI_CS[6]~I\ : cycloneii_io
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
	datain => \dec7seg_unidades_ms|output[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SAIDA_UNI_CS(6));
END structure;


