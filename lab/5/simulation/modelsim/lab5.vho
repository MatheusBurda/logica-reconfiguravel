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

-- DATE "05/02/2024 20:26:26"

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

ENTITY 	lab5 IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	clk_read_p : OUT std_logic;
	fifo_usedw_p : OUT std_logic_vector(8 DOWNTO 0);
	fifo_empty_p : OUT std_logic;
	state_write_p : OUT std_logic_vector(1 DOWNTO 0);
	state_read_p : OUT std_logic_vector(1 DOWNTO 0);
	write_en_p : OUT std_logic;
	read_en_p : OUT std_logic;
	Q_bram_write : OUT std_logic_vector(7 DOWNTO 0);
	Q_bram_read : OUT std_logic_vector(7 DOWNTO 0);
	Q_fifo : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab5;

-- Design Ports Information
-- clk_read_p	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[3]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[4]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_usedw_p[8]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fifo_empty_p	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state_write_p[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state_write_p[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state_read_p[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state_read_p[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_en_p	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_en_p	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[4]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[6]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_write[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[4]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_bram_read[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[0]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[4]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_fifo[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_read_p : std_logic;
SIGNAL ww_fifo_usedw_p : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_fifo_empty_p : std_logic;
SIGNAL ww_state_write_p : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_state_read_p : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_write_en_p : std_logic;
SIGNAL ww_read_en_p : std_logic;
SIGNAL ww_Q_bram_write : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_bram_read : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_fifo : std_logic_vector(7 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_read~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_read_count[10]~52_combout\ : std_logic;
SIGNAL \clk_read_count[12]~56_combout\ : std_logic;
SIGNAL \clk_read_count[19]~70_combout\ : std_logic;
SIGNAL \clk_read_count[21]~74_combout\ : std_logic;
SIGNAL \clk_read_count[26]~84_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ : std_logic;
SIGNAL \read_en~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[9]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \clk_read_count[0]~32_combout\ : std_logic;
SIGNAL \clk_read_count[2]~37\ : std_logic;
SIGNAL \clk_read_count[3]~39\ : std_logic;
SIGNAL \clk_read_count[4]~40_combout\ : std_logic;
SIGNAL \clk_read_count[4]~41\ : std_logic;
SIGNAL \clk_read_count[5]~43\ : std_logic;
SIGNAL \clk_read_count[6]~45\ : std_logic;
SIGNAL \clk_read_count[7]~46_combout\ : std_logic;
SIGNAL \clk_read_count[7]~47\ : std_logic;
SIGNAL \clk_read_count[8]~49\ : std_logic;
SIGNAL \clk_read_count[9]~50_combout\ : std_logic;
SIGNAL \clk_read_count[9]~51\ : std_logic;
SIGNAL \clk_read_count[10]~53\ : std_logic;
SIGNAL \clk_read_count[11]~54_combout\ : std_logic;
SIGNAL \clk_read_count[11]~55\ : std_logic;
SIGNAL \clk_read_count[12]~57\ : std_logic;
SIGNAL \clk_read_count[13]~58_combout\ : std_logic;
SIGNAL \clk_read_count[13]~59\ : std_logic;
SIGNAL \clk_read_count[14]~60_combout\ : std_logic;
SIGNAL \clk_read_count[14]~61\ : std_logic;
SIGNAL \clk_read_count[15]~62_combout\ : std_logic;
SIGNAL \clk_read_count[15]~63\ : std_logic;
SIGNAL \clk_read_count[16]~64_combout\ : std_logic;
SIGNAL \clk_read_count[16]~65\ : std_logic;
SIGNAL \clk_read_count[17]~66_combout\ : std_logic;
SIGNAL \clk_read_count[17]~67\ : std_logic;
SIGNAL \clk_read_count[18]~68_combout\ : std_logic;
SIGNAL \clk_read_count[18]~69\ : std_logic;
SIGNAL \clk_read_count[19]~71\ : std_logic;
SIGNAL \clk_read_count[20]~72_combout\ : std_logic;
SIGNAL \clk_read_count[20]~73\ : std_logic;
SIGNAL \clk_read_count[21]~75\ : std_logic;
SIGNAL \clk_read_count[22]~77\ : std_logic;
SIGNAL \clk_read_count[23]~78_combout\ : std_logic;
SIGNAL \clk_read_count[23]~79\ : std_logic;
SIGNAL \clk_read_count[24]~81\ : std_logic;
SIGNAL \clk_read_count[25]~82_combout\ : std_logic;
SIGNAL \clk_read_count[25]~83\ : std_logic;
SIGNAL \clk_read_count[26]~85\ : std_logic;
SIGNAL \clk_read_count[27]~86_combout\ : std_logic;
SIGNAL \clk_read_count[27]~87\ : std_logic;
SIGNAL \clk_read_count[28]~89\ : std_logic;
SIGNAL \clk_read_count[29]~90_combout\ : std_logic;
SIGNAL \clk_read_count[29]~91\ : std_logic;
SIGNAL \clk_read_count[30]~92_combout\ : std_logic;
SIGNAL \clk_read_count[30]~93\ : std_logic;
SIGNAL \clk_read_count[31]~94_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \clk_read_count[0]~33\ : std_logic;
SIGNAL \clk_read_count[1]~34_combout\ : std_logic;
SIGNAL \clk_read_count[1]~35\ : std_logic;
SIGNAL \clk_read_count[2]~36_combout\ : std_logic;
SIGNAL \clk_read_count[3]~38_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \clk_read_count[6]~44_combout\ : std_logic;
SIGNAL \clk_read_count[5]~42_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \clk_read_count[8]~48_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \clk_read_count[22]~76_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \clk_read_count[24]~80_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \clk_read_count[28]~88_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \clk_read~0_combout\ : std_logic;
SIGNAL \clk_read~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|p0addr~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|p0addr~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~3_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~5_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~9_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \read_en~1_combout\ : std_logic;
SIGNAL \read_en~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~7_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~8_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~6_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[1]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~5_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~3_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~1_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]~feeder_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \state_write[1]~1_combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \state_write[0]~0_combout\ : std_logic;
SIGNAL \write_en~0_combout\ : std_logic;
SIGNAL \write_en~1_combout\ : std_logic;
SIGNAL \write_en~regout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~7_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \clk_read~clkctrl_outclk\ : std_logic;
SIGNAL \state_read[0]~0_combout\ : std_logic;
SIGNAL \state_read[1]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \state_write[0]~2_combout\ : std_logic;
SIGNAL \addr_write[0]~9_combout\ : std_logic;
SIGNAL \addr_write[1]~10_combout\ : std_logic;
SIGNAL \addr_write[1]~11\ : std_logic;
SIGNAL \addr_write[2]~12_combout\ : std_logic;
SIGNAL \addr_write[2]~13\ : std_logic;
SIGNAL \addr_write[3]~14_combout\ : std_logic;
SIGNAL \addr_write[3]~15\ : std_logic;
SIGNAL \addr_write[4]~16_combout\ : std_logic;
SIGNAL \addr_write[4]~17\ : std_logic;
SIGNAL \addr_write[5]~18_combout\ : std_logic;
SIGNAL \addr_write[5]~19\ : std_logic;
SIGNAL \addr_write[6]~20_combout\ : std_logic;
SIGNAL \addr_write[6]~21\ : std_logic;
SIGNAL \addr_write[7]~22_combout\ : std_logic;
SIGNAL \addr_write[7]~23\ : std_logic;
SIGNAL \addr_write[8]~24_combout\ : std_logic;
SIGNAL \addr_write[8]~25\ : std_logic;
SIGNAL \addr_write[9]~26_combout\ : std_logic;
SIGNAL \state_read[1]~2_combout\ : std_logic;
SIGNAL \addr_read[0]~9_combout\ : std_logic;
SIGNAL \addr_read[1]~10_combout\ : std_logic;
SIGNAL \addr_read[1]~11\ : std_logic;
SIGNAL \addr_read[2]~12_combout\ : std_logic;
SIGNAL \addr_read[2]~13\ : std_logic;
SIGNAL \addr_read[3]~14_combout\ : std_logic;
SIGNAL \addr_read[3]~15\ : std_logic;
SIGNAL \addr_read[4]~16_combout\ : std_logic;
SIGNAL \addr_read[4]~17\ : std_logic;
SIGNAL \addr_read[5]~18_combout\ : std_logic;
SIGNAL \addr_read[5]~19\ : std_logic;
SIGNAL \addr_read[6]~20_combout\ : std_logic;
SIGNAL \addr_read[6]~21\ : std_logic;
SIGNAL \addr_read[7]~22_combout\ : std_logic;
SIGNAL \addr_read[7]~23\ : std_logic;
SIGNAL \addr_read[8]~24_combout\ : std_logic;
SIGNAL \addr_read[8]~25\ : std_logic;
SIGNAL \addr_read[9]~26_combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL state_write : std_logic_vector(1 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL state_read : std_logic_vector(1 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL clk_read_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL addr_write : std_logic_vector(9 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram_read|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \bram_write|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL addr_read : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_clk_read~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fifo_uut|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
clk_read_p <= ww_clk_read_p;
fifo_usedw_p <= ww_fifo_usedw_p;
fifo_empty_p <= ww_fifo_empty_p;
state_write_p <= ww_state_write_p;
state_read_p <= ww_state_read_p;
write_en_p <= ww_write_en_p;
read_en_p <= ww_read_en_p;
Q_bram_write <= ww_Q_bram_write;
Q_bram_read <= ww_Q_bram_read;
Q_fifo <= ww_Q_fifo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (addr_write(9) & addr_write(8) & addr_write(7) & addr_write(6) & addr_write(5) & addr_write(4) & addr_write(3) & addr_write(2) & addr_write(1) & 
addr_write(0));

\bram_write|altsyncram_component|auto_generated|q_a\(0) <= \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\bram_write|altsyncram_component|auto_generated|q_a\(1) <= \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\bram_write|altsyncram_component|auto_generated|q_a\(2) <= \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\bram_write|altsyncram_component|auto_generated|q_a\(3) <= \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (addr_write(9) & addr_write(8) & addr_write(7) & addr_write(6) & addr_write(5) & addr_write(4) & addr_write(3) & addr_write(2) & addr_write(1) & 
addr_write(0));

\bram_write|altsyncram_component|auto_generated|q_a\(4) <= \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\bram_write|altsyncram_component|auto_generated|q_a\(5) <= \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\bram_write|altsyncram_component|auto_generated|q_a\(6) <= \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\bram_write|altsyncram_component|auto_generated|q_a\(7) <= \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3) & \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2) & 
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1) & \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0));

\bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (addr_read(9) & addr_read(8) & addr_read(7) & addr_read(6) & addr_read(5) & addr_read(4) & addr_read(3) & addr_read(2) & addr_read(1) & addr_read(0));

\bram_read|altsyncram_component|auto_generated|q_a\(0) <= \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\bram_read|altsyncram_component|auto_generated|q_a\(1) <= \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\bram_read|altsyncram_component|auto_generated|q_a\(2) <= \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\bram_read|altsyncram_component|auto_generated|q_a\(3) <= \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7) & \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6) & 
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5) & \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4));

\bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (addr_read(9) & addr_read(8) & addr_read(7) & addr_read(6) & addr_read(5) & addr_read(4) & addr_read(3) & addr_read(2) & addr_read(1) & addr_read(0));

\bram_read|altsyncram_component|auto_generated|q_a\(4) <= \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\bram_read|altsyncram_component|auto_generated|q_a\(5) <= \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\bram_read|altsyncram_component|auto_generated|q_a\(6) <= \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\bram_read|altsyncram_component|auto_generated|q_a\(7) <= \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\ <= (\bram_write|altsyncram_component|auto_generated|q_a\(7) & \bram_write|altsyncram_component|auto_generated|q_a\(6) & 
\bram_write|altsyncram_component|auto_generated|q_a\(5) & \bram_write|altsyncram_component|auto_generated|q_a\(4) & \bram_write|altsyncram_component|auto_generated|q_a\(3) & \bram_write|altsyncram_component|auto_generated|q_a\(2) & 
\bram_write|altsyncram_component|auto_generated|q_a\(1) & \bram_write|altsyncram_component|auto_generated|q_a\(0));

\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ <= (\fifo_uut|dcfifo_component|auto_generated|ram_address_b\(8) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) & 
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ <= (\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(0);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(1);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(2);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(3);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(4);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(5);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(6);
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7) <= \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

\clk_read~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_read~regout\);
\ALT_INV_clk_read~clkctrl_outclk\ <= NOT \clk_read~clkctrl_outclk\;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0) <= NOT \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a\(0);
\fifo_uut|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ <= NOT \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\;

-- Location: LCFF_X24_Y6_N21
\clk_read_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[10]~52_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(10));

-- Location: LCFF_X24_Y6_N25
\clk_read_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[12]~56_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(12));

-- Location: LCFF_X24_Y5_N7
\clk_read_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[19]~70_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(19));

-- Location: LCFF_X24_Y5_N11
\clk_read_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[21]~74_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(21));

-- Location: LCFF_X24_Y5_N21
\clk_read_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[26]~84_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(26));

-- Location: LCCOMB_X24_Y6_N20
\clk_read_count[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[10]~52_combout\ = (clk_read_count(10) & (\clk_read_count[9]~51\ $ (GND))) # (!clk_read_count(10) & (!\clk_read_count[9]~51\ & VCC))
-- \clk_read_count[10]~53\ = CARRY((clk_read_count(10) & !\clk_read_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(10),
	datad => VCC,
	cin => \clk_read_count[9]~51\,
	combout => \clk_read_count[10]~52_combout\,
	cout => \clk_read_count[10]~53\);

-- Location: LCCOMB_X24_Y6_N24
\clk_read_count[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[12]~56_combout\ = (clk_read_count(12) & (\clk_read_count[11]~55\ $ (GND))) # (!clk_read_count(12) & (!\clk_read_count[11]~55\ & VCC))
-- \clk_read_count[12]~57\ = CARRY((clk_read_count(12) & !\clk_read_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(12),
	datad => VCC,
	cin => \clk_read_count[11]~55\,
	combout => \clk_read_count[12]~56_combout\,
	cout => \clk_read_count[12]~57\);

-- Location: LCCOMB_X24_Y5_N6
\clk_read_count[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[19]~70_combout\ = (clk_read_count(19) & (!\clk_read_count[18]~69\)) # (!clk_read_count(19) & ((\clk_read_count[18]~69\) # (GND)))
-- \clk_read_count[19]~71\ = CARRY((!\clk_read_count[18]~69\) # (!clk_read_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(19),
	datad => VCC,
	cin => \clk_read_count[18]~69\,
	combout => \clk_read_count[19]~70_combout\,
	cout => \clk_read_count[19]~71\);

-- Location: LCCOMB_X24_Y5_N10
\clk_read_count[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[21]~74_combout\ = (clk_read_count(21) & (!\clk_read_count[20]~73\)) # (!clk_read_count(21) & ((\clk_read_count[20]~73\) # (GND)))
-- \clk_read_count[21]~75\ = CARRY((!\clk_read_count[20]~73\) # (!clk_read_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(21),
	datad => VCC,
	cin => \clk_read_count[20]~73\,
	combout => \clk_read_count[21]~74_combout\,
	cout => \clk_read_count[21]~75\);

-- Location: LCCOMB_X24_Y5_N20
\clk_read_count[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[26]~84_combout\ = (clk_read_count(26) & (\clk_read_count[25]~83\ $ (GND))) # (!clk_read_count(26) & (!\clk_read_count[25]~83\ & VCC))
-- \clk_read_count[26]~85\ = CARRY((clk_read_count(26) & !\clk_read_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(26),
	datad => VCC,
	cin => \clk_read_count[25]~83\,
	combout => \clk_read_count[26]~84_combout\,
	cout => \clk_read_count[26]~85\);

-- Location: LCFF_X29_Y29_N17
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(7));

-- Location: LCFF_X25_Y28_N25
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1));

-- Location: LCFF_X25_Y30_N27
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9));

-- Location: LCFF_X25_Y30_N31
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8));

-- Location: LCCOMB_X25_Y30_N26
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(8) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(9))))) # (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(8) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(8),
	datab => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8),
	datac => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCFF_X24_Y30_N7
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5));

-- Location: LCCOMB_X25_Y6_N12
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (clk_read_count(15)) # ((clk_read_count(14)) # ((clk_read_count(13)) # (clk_read_count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(15),
	datab => clk_read_count(14),
	datac => clk_read_count(13),
	datad => clk_read_count(12),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X25_Y5_N0
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (clk_read_count(16)) # ((clk_read_count(19)) # ((clk_read_count(18)) # (clk_read_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(16),
	datab => clk_read_count(19),
	datac => clk_read_count(18),
	datad => clk_read_count(17),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X30_Y29_N26
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\);

-- Location: LCFF_X25_Y28_N11
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(1));

-- Location: LCFF_X25_Y30_N25
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(9));

-- Location: LCFF_X25_Y30_N7
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(8));

-- Location: LCFF_X25_Y30_N29
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(5));

-- Location: LCCOMB_X25_Y27_N10
\read_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \read_en~0_combout\ = (\rst~combout\) # ((\read_en~regout\ & ((state_read(1)))) # (!\read_en~regout\ & (state_read(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~regout\,
	datab => state_read(0),
	datac => \rst~combout\,
	datad => state_read(1),
	combout => \read_en~0_combout\);

-- Location: LCCOMB_X27_Y30_N6
\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9)) # 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8) $ (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8))))) # (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8) $ (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X27_Y30_N8
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ = (\write_en~regout\ & (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & !\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\);

-- Location: LCFF_X25_Y29_N17
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCFF_X29_Y30_N3
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(9));

-- Location: LCFF_X29_Y30_N21
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: LCFF_X28_Y30_N21
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCFF_X28_Y30_N7
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\);

-- Location: LCFF_X24_Y28_N17
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\);

-- Location: LCCOMB_X28_Y30_N6
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\);

-- Location: LCCOMB_X29_Y30_N2
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[9]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	combout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[9]~feeder_combout\);

-- Location: LCCOMB_X29_Y30_N20
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N30
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y30_N6
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(5),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y28_N16
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|ram_address_b\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|ram_address_b\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N6
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N28
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\);

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

-- Location: LCCOMB_X24_Y6_N0
\clk_read_count[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[0]~32_combout\ = clk_read_count(0) $ (VCC)
-- \clk_read_count[0]~33\ = CARRY(clk_read_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(0),
	datad => VCC,
	combout => \clk_read_count[0]~32_combout\,
	cout => \clk_read_count[0]~33\);

-- Location: LCCOMB_X24_Y6_N4
\clk_read_count[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[2]~36_combout\ = (clk_read_count(2) & (\clk_read_count[1]~35\ $ (GND))) # (!clk_read_count(2) & (!\clk_read_count[1]~35\ & VCC))
-- \clk_read_count[2]~37\ = CARRY((clk_read_count(2) & !\clk_read_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(2),
	datad => VCC,
	cin => \clk_read_count[1]~35\,
	combout => \clk_read_count[2]~36_combout\,
	cout => \clk_read_count[2]~37\);

-- Location: LCCOMB_X24_Y6_N6
\clk_read_count[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[3]~38_combout\ = (clk_read_count(3) & (!\clk_read_count[2]~37\)) # (!clk_read_count(3) & ((\clk_read_count[2]~37\) # (GND)))
-- \clk_read_count[3]~39\ = CARRY((!\clk_read_count[2]~37\) # (!clk_read_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(3),
	datad => VCC,
	cin => \clk_read_count[2]~37\,
	combout => \clk_read_count[3]~38_combout\,
	cout => \clk_read_count[3]~39\);

-- Location: LCCOMB_X24_Y6_N8
\clk_read_count[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[4]~40_combout\ = (clk_read_count(4) & (\clk_read_count[3]~39\ $ (GND))) # (!clk_read_count(4) & (!\clk_read_count[3]~39\ & VCC))
-- \clk_read_count[4]~41\ = CARRY((clk_read_count(4) & !\clk_read_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(4),
	datad => VCC,
	cin => \clk_read_count[3]~39\,
	combout => \clk_read_count[4]~40_combout\,
	cout => \clk_read_count[4]~41\);

-- Location: LCFF_X24_Y6_N9
\clk_read_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[4]~40_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(4));

-- Location: LCCOMB_X24_Y6_N10
\clk_read_count[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[5]~42_combout\ = (clk_read_count(5) & (!\clk_read_count[4]~41\)) # (!clk_read_count(5) & ((\clk_read_count[4]~41\) # (GND)))
-- \clk_read_count[5]~43\ = CARRY((!\clk_read_count[4]~41\) # (!clk_read_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(5),
	datad => VCC,
	cin => \clk_read_count[4]~41\,
	combout => \clk_read_count[5]~42_combout\,
	cout => \clk_read_count[5]~43\);

-- Location: LCCOMB_X24_Y6_N12
\clk_read_count[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[6]~44_combout\ = (clk_read_count(6) & (\clk_read_count[5]~43\ $ (GND))) # (!clk_read_count(6) & (!\clk_read_count[5]~43\ & VCC))
-- \clk_read_count[6]~45\ = CARRY((clk_read_count(6) & !\clk_read_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(6),
	datad => VCC,
	cin => \clk_read_count[5]~43\,
	combout => \clk_read_count[6]~44_combout\,
	cout => \clk_read_count[6]~45\);

-- Location: LCCOMB_X24_Y6_N14
\clk_read_count[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[7]~46_combout\ = (clk_read_count(7) & (!\clk_read_count[6]~45\)) # (!clk_read_count(7) & ((\clk_read_count[6]~45\) # (GND)))
-- \clk_read_count[7]~47\ = CARRY((!\clk_read_count[6]~45\) # (!clk_read_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(7),
	datad => VCC,
	cin => \clk_read_count[6]~45\,
	combout => \clk_read_count[7]~46_combout\,
	cout => \clk_read_count[7]~47\);

-- Location: LCFF_X24_Y6_N15
\clk_read_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[7]~46_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(7));

-- Location: LCCOMB_X24_Y6_N16
\clk_read_count[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[8]~48_combout\ = (clk_read_count(8) & (\clk_read_count[7]~47\ $ (GND))) # (!clk_read_count(8) & (!\clk_read_count[7]~47\ & VCC))
-- \clk_read_count[8]~49\ = CARRY((clk_read_count(8) & !\clk_read_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(8),
	datad => VCC,
	cin => \clk_read_count[7]~47\,
	combout => \clk_read_count[8]~48_combout\,
	cout => \clk_read_count[8]~49\);

-- Location: LCCOMB_X24_Y6_N18
\clk_read_count[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[9]~50_combout\ = (clk_read_count(9) & (!\clk_read_count[8]~49\)) # (!clk_read_count(9) & ((\clk_read_count[8]~49\) # (GND)))
-- \clk_read_count[9]~51\ = CARRY((!\clk_read_count[8]~49\) # (!clk_read_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(9),
	datad => VCC,
	cin => \clk_read_count[8]~49\,
	combout => \clk_read_count[9]~50_combout\,
	cout => \clk_read_count[9]~51\);

-- Location: LCFF_X24_Y6_N19
\clk_read_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[9]~50_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(9));

-- Location: LCCOMB_X24_Y6_N22
\clk_read_count[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[11]~54_combout\ = (clk_read_count(11) & (!\clk_read_count[10]~53\)) # (!clk_read_count(11) & ((\clk_read_count[10]~53\) # (GND)))
-- \clk_read_count[11]~55\ = CARRY((!\clk_read_count[10]~53\) # (!clk_read_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(11),
	datad => VCC,
	cin => \clk_read_count[10]~53\,
	combout => \clk_read_count[11]~54_combout\,
	cout => \clk_read_count[11]~55\);

-- Location: LCFF_X24_Y6_N23
\clk_read_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[11]~54_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(11));

-- Location: LCCOMB_X24_Y6_N26
\clk_read_count[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[13]~58_combout\ = (clk_read_count(13) & (!\clk_read_count[12]~57\)) # (!clk_read_count(13) & ((\clk_read_count[12]~57\) # (GND)))
-- \clk_read_count[13]~59\ = CARRY((!\clk_read_count[12]~57\) # (!clk_read_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(13),
	datad => VCC,
	cin => \clk_read_count[12]~57\,
	combout => \clk_read_count[13]~58_combout\,
	cout => \clk_read_count[13]~59\);

-- Location: LCFF_X24_Y6_N27
\clk_read_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[13]~58_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(13));

-- Location: LCCOMB_X24_Y6_N28
\clk_read_count[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[14]~60_combout\ = (clk_read_count(14) & (\clk_read_count[13]~59\ $ (GND))) # (!clk_read_count(14) & (!\clk_read_count[13]~59\ & VCC))
-- \clk_read_count[14]~61\ = CARRY((clk_read_count(14) & !\clk_read_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(14),
	datad => VCC,
	cin => \clk_read_count[13]~59\,
	combout => \clk_read_count[14]~60_combout\,
	cout => \clk_read_count[14]~61\);

-- Location: LCFF_X24_Y6_N29
\clk_read_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[14]~60_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(14));

-- Location: LCCOMB_X24_Y6_N30
\clk_read_count[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[15]~62_combout\ = (clk_read_count(15) & (!\clk_read_count[14]~61\)) # (!clk_read_count(15) & ((\clk_read_count[14]~61\) # (GND)))
-- \clk_read_count[15]~63\ = CARRY((!\clk_read_count[14]~61\) # (!clk_read_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(15),
	datad => VCC,
	cin => \clk_read_count[14]~61\,
	combout => \clk_read_count[15]~62_combout\,
	cout => \clk_read_count[15]~63\);

-- Location: LCFF_X24_Y6_N31
\clk_read_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[15]~62_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(15));

-- Location: LCCOMB_X24_Y5_N0
\clk_read_count[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[16]~64_combout\ = (clk_read_count(16) & (\clk_read_count[15]~63\ $ (GND))) # (!clk_read_count(16) & (!\clk_read_count[15]~63\ & VCC))
-- \clk_read_count[16]~65\ = CARRY((clk_read_count(16) & !\clk_read_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(16),
	datad => VCC,
	cin => \clk_read_count[15]~63\,
	combout => \clk_read_count[16]~64_combout\,
	cout => \clk_read_count[16]~65\);

-- Location: LCFF_X24_Y5_N1
\clk_read_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[16]~64_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(16));

-- Location: LCCOMB_X24_Y5_N2
\clk_read_count[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[17]~66_combout\ = (clk_read_count(17) & (!\clk_read_count[16]~65\)) # (!clk_read_count(17) & ((\clk_read_count[16]~65\) # (GND)))
-- \clk_read_count[17]~67\ = CARRY((!\clk_read_count[16]~65\) # (!clk_read_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(17),
	datad => VCC,
	cin => \clk_read_count[16]~65\,
	combout => \clk_read_count[17]~66_combout\,
	cout => \clk_read_count[17]~67\);

-- Location: LCFF_X24_Y5_N3
\clk_read_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[17]~66_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(17));

-- Location: LCCOMB_X24_Y5_N4
\clk_read_count[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[18]~68_combout\ = (clk_read_count(18) & (\clk_read_count[17]~67\ $ (GND))) # (!clk_read_count(18) & (!\clk_read_count[17]~67\ & VCC))
-- \clk_read_count[18]~69\ = CARRY((clk_read_count(18) & !\clk_read_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(18),
	datad => VCC,
	cin => \clk_read_count[17]~67\,
	combout => \clk_read_count[18]~68_combout\,
	cout => \clk_read_count[18]~69\);

-- Location: LCFF_X24_Y5_N5
\clk_read_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[18]~68_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(18));

-- Location: LCCOMB_X24_Y5_N8
\clk_read_count[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[20]~72_combout\ = (clk_read_count(20) & (\clk_read_count[19]~71\ $ (GND))) # (!clk_read_count(20) & (!\clk_read_count[19]~71\ & VCC))
-- \clk_read_count[20]~73\ = CARRY((clk_read_count(20) & !\clk_read_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(20),
	datad => VCC,
	cin => \clk_read_count[19]~71\,
	combout => \clk_read_count[20]~72_combout\,
	cout => \clk_read_count[20]~73\);

-- Location: LCFF_X24_Y5_N9
\clk_read_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[20]~72_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(20));

-- Location: LCCOMB_X24_Y5_N12
\clk_read_count[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[22]~76_combout\ = (clk_read_count(22) & (\clk_read_count[21]~75\ $ (GND))) # (!clk_read_count(22) & (!\clk_read_count[21]~75\ & VCC))
-- \clk_read_count[22]~77\ = CARRY((clk_read_count(22) & !\clk_read_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(22),
	datad => VCC,
	cin => \clk_read_count[21]~75\,
	combout => \clk_read_count[22]~76_combout\,
	cout => \clk_read_count[22]~77\);

-- Location: LCCOMB_X24_Y5_N14
\clk_read_count[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[23]~78_combout\ = (clk_read_count(23) & (!\clk_read_count[22]~77\)) # (!clk_read_count(23) & ((\clk_read_count[22]~77\) # (GND)))
-- \clk_read_count[23]~79\ = CARRY((!\clk_read_count[22]~77\) # (!clk_read_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(23),
	datad => VCC,
	cin => \clk_read_count[22]~77\,
	combout => \clk_read_count[23]~78_combout\,
	cout => \clk_read_count[23]~79\);

-- Location: LCFF_X24_Y5_N15
\clk_read_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[23]~78_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(23));

-- Location: LCCOMB_X24_Y5_N16
\clk_read_count[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[24]~80_combout\ = (clk_read_count(24) & (\clk_read_count[23]~79\ $ (GND))) # (!clk_read_count(24) & (!\clk_read_count[23]~79\ & VCC))
-- \clk_read_count[24]~81\ = CARRY((clk_read_count(24) & !\clk_read_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(24),
	datad => VCC,
	cin => \clk_read_count[23]~79\,
	combout => \clk_read_count[24]~80_combout\,
	cout => \clk_read_count[24]~81\);

-- Location: LCCOMB_X24_Y5_N18
\clk_read_count[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[25]~82_combout\ = (clk_read_count(25) & (!\clk_read_count[24]~81\)) # (!clk_read_count(25) & ((\clk_read_count[24]~81\) # (GND)))
-- \clk_read_count[25]~83\ = CARRY((!\clk_read_count[24]~81\) # (!clk_read_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(25),
	datad => VCC,
	cin => \clk_read_count[24]~81\,
	combout => \clk_read_count[25]~82_combout\,
	cout => \clk_read_count[25]~83\);

-- Location: LCFF_X24_Y5_N19
\clk_read_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[25]~82_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(25));

-- Location: LCCOMB_X24_Y5_N22
\clk_read_count[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[27]~86_combout\ = (clk_read_count(27) & (!\clk_read_count[26]~85\)) # (!clk_read_count(27) & ((\clk_read_count[26]~85\) # (GND)))
-- \clk_read_count[27]~87\ = CARRY((!\clk_read_count[26]~85\) # (!clk_read_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(27),
	datad => VCC,
	cin => \clk_read_count[26]~85\,
	combout => \clk_read_count[27]~86_combout\,
	cout => \clk_read_count[27]~87\);

-- Location: LCFF_X24_Y5_N23
\clk_read_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[27]~86_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(27));

-- Location: LCCOMB_X24_Y5_N24
\clk_read_count[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[28]~88_combout\ = (clk_read_count(28) & (\clk_read_count[27]~87\ $ (GND))) # (!clk_read_count(28) & (!\clk_read_count[27]~87\ & VCC))
-- \clk_read_count[28]~89\ = CARRY((clk_read_count(28) & !\clk_read_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(28),
	datad => VCC,
	cin => \clk_read_count[27]~87\,
	combout => \clk_read_count[28]~88_combout\,
	cout => \clk_read_count[28]~89\);

-- Location: LCCOMB_X24_Y5_N26
\clk_read_count[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[29]~90_combout\ = (clk_read_count(29) & (!\clk_read_count[28]~89\)) # (!clk_read_count(29) & ((\clk_read_count[28]~89\) # (GND)))
-- \clk_read_count[29]~91\ = CARRY((!\clk_read_count[28]~89\) # (!clk_read_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(29),
	datad => VCC,
	cin => \clk_read_count[28]~89\,
	combout => \clk_read_count[29]~90_combout\,
	cout => \clk_read_count[29]~91\);

-- Location: LCFF_X24_Y5_N27
\clk_read_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[29]~90_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(29));

-- Location: LCCOMB_X24_Y5_N28
\clk_read_count[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[30]~92_combout\ = (clk_read_count(30) & (\clk_read_count[29]~91\ $ (GND))) # (!clk_read_count(30) & (!\clk_read_count[29]~91\ & VCC))
-- \clk_read_count[30]~93\ = CARRY((clk_read_count(30) & !\clk_read_count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(30),
	datad => VCC,
	cin => \clk_read_count[29]~91\,
	combout => \clk_read_count[30]~92_combout\,
	cout => \clk_read_count[30]~93\);

-- Location: LCFF_X24_Y5_N29
\clk_read_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[30]~92_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(30));

-- Location: LCCOMB_X24_Y5_N30
\clk_read_count[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[31]~94_combout\ = \clk_read_count[30]~93\ $ (clk_read_count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_read_count(31),
	cin => \clk_read_count[30]~93\,
	combout => \clk_read_count[31]~94_combout\);

-- Location: LCFF_X24_Y5_N31
\clk_read_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[31]~94_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(31));

-- Location: LCCOMB_X25_Y6_N16
\LessThan2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (!clk_read_count(31) & \LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_read_count(31),
	datad => \LessThan2~9_combout\,
	combout => \LessThan2~10_combout\);

-- Location: LCFF_X24_Y6_N1
\clk_read_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[0]~32_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(0));

-- Location: LCCOMB_X24_Y6_N2
\clk_read_count[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read_count[1]~34_combout\ = (clk_read_count(1) & (!\clk_read_count[0]~33\)) # (!clk_read_count(1) & ((\clk_read_count[0]~33\) # (GND)))
-- \clk_read_count[1]~35\ = CARRY((!\clk_read_count[0]~33\) # (!clk_read_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_read_count(1),
	datad => VCC,
	cin => \clk_read_count[0]~33\,
	combout => \clk_read_count[1]~34_combout\,
	cout => \clk_read_count[1]~35\);

-- Location: LCFF_X24_Y6_N3
\clk_read_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[1]~34_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(1));

-- Location: LCFF_X24_Y6_N5
\clk_read_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[2]~36_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(2));

-- Location: LCFF_X24_Y6_N7
\clk_read_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[3]~38_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(3));

-- Location: LCCOMB_X25_Y6_N8
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (clk_read_count(3)) # ((clk_read_count(2) & ((clk_read_count(0)) # (clk_read_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(0),
	datab => clk_read_count(2),
	datac => clk_read_count(3),
	datad => clk_read_count(1),
	combout => \LessThan2~0_combout\);

-- Location: LCFF_X24_Y6_N13
\clk_read_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[6]~44_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(6));

-- Location: LCFF_X24_Y6_N11
\clk_read_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[5]~42_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(5));

-- Location: LCCOMB_X25_Y6_N14
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (clk_read_count(4)) # ((clk_read_count(6)) # ((clk_read_count(7)) # (clk_read_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(4),
	datab => clk_read_count(6),
	datac => clk_read_count(7),
	datad => clk_read_count(5),
	combout => \LessThan2~1_combout\);

-- Location: LCFF_X24_Y6_N17
\clk_read_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[8]~48_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(8));

-- Location: LCCOMB_X25_Y6_N22
\LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (clk_read_count(10)) # ((clk_read_count(11)) # ((clk_read_count(8)) # (clk_read_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(10),
	datab => clk_read_count(11),
	datac => clk_read_count(8),
	datad => clk_read_count(9),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X25_Y6_N30
\LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~3_combout\) # ((\LessThan2~0_combout\) # ((\LessThan2~1_combout\) # (\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCFF_X24_Y5_N13
\clk_read_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[22]~76_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(22));

-- Location: LCCOMB_X25_Y6_N24
\LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (clk_read_count(21)) # ((clk_read_count(23)) # ((clk_read_count(20)) # (clk_read_count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(21),
	datab => clk_read_count(23),
	datac => clk_read_count(20),
	datad => clk_read_count(22),
	combout => \LessThan2~6_combout\);

-- Location: LCFF_X24_Y5_N17
\clk_read_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[24]~80_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(24));

-- Location: LCCOMB_X25_Y6_N28
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (clk_read_count(26)) # ((clk_read_count(27)) # ((clk_read_count(25)) # (clk_read_count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(26),
	datab => clk_read_count(27),
	datac => clk_read_count(25),
	datad => clk_read_count(24),
	combout => \LessThan2~7_combout\);

-- Location: LCFF_X24_Y5_N25
\clk_read_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read_count[28]~88_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_read_count(28));

-- Location: LCCOMB_X25_Y6_N10
\LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (clk_read_count(29)) # ((\LessThan2~7_combout\) # ((clk_read_count(28)) # (clk_read_count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(29),
	datab => \LessThan2~7_combout\,
	datac => clk_read_count(28),
	datad => clk_read_count(30),
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X25_Y6_N26
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~5_combout\) # ((\LessThan2~4_combout\) # ((\LessThan2~6_combout\) # (\LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~4_combout\,
	datac => \LessThan2~6_combout\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X25_Y6_N18
\clk_read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_read~0_combout\ = \clk_read~regout\ $ (((!clk_read_count(31) & (!\rst~combout\ & \LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_read_count(31),
	datab => \rst~combout\,
	datac => \clk_read~regout\,
	datad => \LessThan2~9_combout\,
	combout => \clk_read~0_combout\);

-- Location: LCFF_X25_Y6_N19
clk_read : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_read~regout\);

-- Location: LCCOMB_X24_Y28_N12
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X25_Y28_N20
\fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\);

-- Location: LCFF_X25_Y28_N21
\fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdaclr|dffe16a\(0));

-- Location: LCFF_X24_Y30_N3
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCFF_X24_Y30_N9
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(2));

-- Location: LCFF_X24_Y30_N27
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2));

-- Location: LCFF_X24_Y30_N23
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X24_Y30_N24
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\);

-- Location: LCFF_X24_Y30_N25
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(3));

-- Location: LCFF_X24_Y30_N29
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3));

-- Location: LCCOMB_X23_Y30_N18
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N22
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\);

-- Location: LCCOMB_X28_Y30_N12
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~feeder_combout\);

-- Location: LCCOMB_X25_Y28_N18
\fifo_uut|dcfifo_component|auto_generated|p0addr~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|p0addr~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_uut|dcfifo_component|auto_generated|p0addr~feeder_combout\);

-- Location: LCFF_X25_Y28_N19
\fifo_uut|dcfifo_component|auto_generated|p0addr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|p0addr~feeder_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|p0addr~regout\);

-- Location: LCCOMB_X25_Y28_N6
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\fifo_uut|dcfifo_component|auto_generated|p0addr~regout\ & (((\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ & 
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\)) # (!\read_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|p0addr~regout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X25_Y28_N28
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & !\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X25_Y28_N22
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X25_Y28_N16
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~3_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (((\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~3_combout\);

-- Location: LCFF_X25_Y28_N17
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~3_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6));

-- Location: LCCOMB_X25_Y30_N10
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\);

-- Location: LCFF_X25_Y30_N11
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCFF_X28_Y30_N11
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(6));

-- Location: LCFF_X27_Y30_N11
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(6));

-- Location: LCCOMB_X25_Y30_N12
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\);

-- Location: LCFF_X25_Y30_N13
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCFF_X28_Y30_N23
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(7));

-- Location: LCFF_X27_Y30_N13
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7));

-- Location: LCCOMB_X27_Y30_N10
\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & ((\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(6))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7)))) # (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7)) # (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(6),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X25_Y28_N0
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~5_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (((\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~5_combout\);

-- Location: LCFF_X25_Y28_N1
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~5_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4));

-- Location: LCCOMB_X25_Y30_N18
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\);

-- Location: LCFF_X25_Y30_N19
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCCOMB_X24_Y30_N20
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]~feeder_combout\);

-- Location: LCFF_X24_Y30_N21
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(4));

-- Location: LCFF_X27_Y30_N15
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4));

-- Location: LCFF_X25_Y30_N23
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	sload => VCC,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X24_Y30_N0
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]~feeder_combout\);

-- Location: LCFF_X24_Y30_N1
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(5));

-- Location: LCFF_X27_Y30_N29
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5));

-- Location: LCCOMB_X27_Y30_N14
\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & ((\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5)))) # (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5)) # (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X24_Y30_N4
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]~feeder_combout\);

-- Location: LCFF_X24_Y30_N5
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(3));

-- Location: LCFF_X27_Y30_N9
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(3));

-- Location: LCCOMB_X23_Y30_N20
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\);

-- Location: LCFF_X23_Y30_N21
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCFF_X23_Y30_N29
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(2));

-- Location: LCFF_X27_Y30_N3
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2));

-- Location: LCCOMB_X27_Y30_N2
\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(3)))) # (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(3)) # (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(3),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X27_Y30_N0
\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- ((\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\) # ((\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\) # 
-- (\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X27_Y30_N28
\fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = (\write_en~regout\ & ((\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\) # 
-- (\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: LCFF_X28_Y30_N13
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\);

-- Location: LCCOMB_X28_Y30_N30
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (((\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- (\fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\);

-- Location: LCFF_X28_Y30_N31
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1));

-- Location: LCCOMB_X28_Y30_N26
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\);

-- Location: LCFF_X27_Y30_N19
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\,
	sload => VCC,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\);

-- Location: LCCOMB_X27_Y30_N4
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ $ 
-- (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\);

-- Location: LCFF_X27_Y30_N31
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\,
	sload => VCC,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\);

-- Location: LCCOMB_X28_Y30_N24
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~9_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (((\fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- !\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~9_combout\);

-- Location: LCFF_X28_Y30_N25
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

-- Location: LCCOMB_X25_Y29_N26
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\);

-- Location: LCFF_X25_Y29_N27
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCCOMB_X24_Y28_N30
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\);

-- Location: LCFF_X24_Y28_N31
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(0));

-- Location: LCFF_X25_Y28_N3
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0));

-- Location: LCCOMB_X25_Y30_N0
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\);

-- Location: LCFF_X25_Y30_N1
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCCOMB_X25_Y28_N2
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1) & (\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(0))))) # (!\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(1) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(1),
	datac => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X25_Y30_N24
\fifo_uut|dcfifo_component|auto_generated|valid_rdreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\ = (\read_en~regout\ & ((!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\);

-- Location: LCFF_X23_Y30_N19
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X24_Y30_N28
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(2) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(3))))) # (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(2),
	datab => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X24_Y30_N10
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\);

-- Location: LCFF_X24_Y30_N11
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X24_Y30_N14
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\);

-- Location: LCFF_X24_Y30_N15
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(4));

-- Location: LCFF_X24_Y30_N17
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4));

-- Location: LCCOMB_X24_Y30_N16
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5) & (\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(5) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(5),
	datac => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\);

-- Location: LCFF_X29_Y30_N13
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCCOMB_X29_Y30_N8
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]~feeder_combout\);

-- Location: LCFF_X29_Y30_N9
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(6));

-- Location: LCCOMB_X25_Y30_N14
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(6),
	combout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\);

-- Location: LCFF_X25_Y30_N15
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6));

-- Location: LCCOMB_X27_Y30_N16
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (((!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\);

-- Location: LCFF_X27_Y30_N17
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7));

-- Location: LCFF_X29_Y30_N11
\fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCFF_X25_Y30_N21
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(7));

-- Location: LCFF_X25_Y30_N5
\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7));

-- Location: LCCOMB_X25_Y30_N4
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(7) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(6))))) # (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7) & (\fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(7),
	datab => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6),
	datac => \fifo_uut|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X24_Y30_N18
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ & 
-- (\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ & (\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ & 
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X25_Y27_N0
\read_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \read_en~1_combout\ = (\read_en~0_combout\ & (((\read_en~regout\)))) # (!\read_en~0_combout\ & (((!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~0_combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datac => \read_en~regout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \read_en~1_combout\);

-- Location: LCFF_X25_Y27_N1
read_en : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \read_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \read_en~regout\);

-- Location: LCCOMB_X24_Y30_N12
\fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ = ((\read_en~regout\ & ((!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\)))) # (!\fifo_uut|dcfifo_component|auto_generated|p0addr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|p0addr~regout\,
	datab => \read_en~regout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\);

-- Location: LCFF_X24_Y28_N13
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

-- Location: LCCOMB_X24_Y28_N14
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X25_Y28_N14
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~7_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~7_combout\);

-- Location: LCFF_X25_Y28_N15
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~7_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2));

-- Location: LCCOMB_X25_Y28_N12
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~8_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (((\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~8_combout\);

-- Location: LCFF_X25_Y28_N13
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~8_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3));

-- Location: LCCOMB_X24_Y28_N0
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X24_Y28_N28
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~6_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~6_combout\);

-- Location: LCFF_X24_Y28_N29
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~6_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5));

-- Location: LCCOMB_X25_Y28_N26
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~4_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) $ (((\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~4_combout\);

-- Location: LCFF_X25_Y28_N27
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~4_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7));

-- Location: LCCOMB_X24_Y28_N2
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: LCFF_X24_Y28_N3
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\);

-- Location: LCCOMB_X24_Y28_N4
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCFF_X24_Y28_N5
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\);

-- Location: LCCOMB_X24_Y28_N6
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ $ 
-- (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCFF_X24_Y28_N7
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\);

-- Location: LCCOMB_X25_Y28_N4
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (((\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & 
-- (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\);

-- Location: LCFF_X25_Y28_N5
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1));

-- Location: LCFF_X25_Y30_N9
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	sload => VCC,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X29_Y30_N30
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\);

-- Location: LCFF_X29_Y30_N31
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1));

-- Location: LCCOMB_X28_Y30_N18
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[1]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[1]~feeder_combout\);

-- Location: LCFF_X28_Y30_N19
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1));

-- Location: LCCOMB_X29_Y30_N0
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\);

-- Location: LCFF_X29_Y30_N1
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(0));

-- Location: LCFF_X28_Y30_N17
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(0));

-- Location: LCCOMB_X28_Y30_N16
\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(0)))) # (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(0)) # (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X27_Y30_N30
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ & (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- ((\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\) # (\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\);

-- Location: LCCOMB_X28_Y30_N2
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (((\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & 
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\);

-- Location: LCFF_X28_Y30_N3
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3));

-- Location: LCCOMB_X28_Y30_N8
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~5_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (((!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~5_combout\);

-- Location: LCFF_X28_Y30_N9
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4));

-- Location: LCCOMB_X27_Y30_N24
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\ = (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\);

-- Location: LCCOMB_X27_Y30_N26
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~3_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (((\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~3_combout\);

-- Location: LCFF_X27_Y30_N27
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6));

-- Location: LCCOMB_X27_Y30_N18
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ = (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & 
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\);

-- Location: LCCOMB_X27_Y30_N22
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) $ (((\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_combout\);

-- Location: LCFF_X27_Y30_N23
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8));

-- Location: LCCOMB_X27_Y30_N20
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~0_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) $ (((!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~0_combout\);

-- Location: LCFF_X27_Y30_N21
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9));

-- Location: LCCOMB_X29_Y30_N6
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\);

-- Location: LCFF_X29_Y29_N7
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7));

-- Location: LCCOMB_X25_Y28_N10
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & (!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X25_Y28_N30
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~2_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(9) $ (((!\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) & 
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~2_combout\);

-- Location: LCFF_X25_Y28_N31
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~2_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(9));

-- Location: LCFF_X25_Y30_N3
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(9),
	sload => VCC,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCCOMB_X28_Y30_N14
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]~feeder_combout\);

-- Location: LCFF_X28_Y30_N15
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(9));

-- Location: LCFF_X27_Y30_N5
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9));

-- Location: LCCOMB_X27_Y30_N12
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(7),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(6),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\);

-- Location: LCFF_X29_Y29_N19
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(6));

-- Location: LCCOMB_X30_Y29_N16
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\);

-- Location: LCFF_X29_Y29_N9
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5));

-- Location: LCCOMB_X29_Y30_N16
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\);

-- Location: LCCOMB_X24_Y30_N2
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ = (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & 
-- (!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\);

-- Location: LCCOMB_X24_Y30_N30
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\);

-- Location: LCFF_X24_Y30_N31
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5));

-- Location: LCCOMB_X29_Y29_N0
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\);

-- Location: LCFF_X29_Y29_N1
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(4));

-- Location: LCCOMB_X29_Y29_N30
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\);

-- Location: LCFF_X29_Y29_N31
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3));

-- Location: LCCOMB_X30_Y29_N8
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(3) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(3),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\);

-- Location: LCCOMB_X30_Y29_N0
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\);

-- Location: LCFF_X30_Y29_N1
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(2));

-- Location: LCCOMB_X29_Y29_N2
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\);

-- Location: LCFF_X29_Y29_N3
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1));

-- Location: LCCOMB_X29_Y29_N22
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(0) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\);

-- Location: LCFF_X29_Y29_N23
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(0));

-- Location: LCCOMB_X29_Y29_N4
\fifo_uut|dcfifo_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~0_combout\ = (\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(0) & ((GND) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(0)))) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(0) & (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(0) $ (GND)))
-- \fifo_uut|dcfifo_component|auto_generated|op_1~1\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(0)) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(0),
	datad => VCC,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~0_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X29_Y29_N6
\fifo_uut|dcfifo_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~2_combout\ = (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(1) & ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~1\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1) & ((\fifo_uut|dcfifo_component|auto_generated|op_1~1\) # (GND))))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(1) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1) & (\fifo_uut|dcfifo_component|auto_generated|op_1~1\ & VCC)) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~1\))))
-- \fifo_uut|dcfifo_component|auto_generated|op_1~3\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(1) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~1\) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1)))) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(1) & (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1) & !\fifo_uut|dcfifo_component|auto_generated|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(1),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(1),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~1\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~2_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X29_Y29_N8
\fifo_uut|dcfifo_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~4_combout\ = ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(2) $ (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(2) $ (\fifo_uut|dcfifo_component|auto_generated|op_1~3\)))) # (GND)
-- \fifo_uut|dcfifo_component|auto_generated|op_1~5\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(2) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~3\) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(2)))) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(2) & (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(2) & !\fifo_uut|dcfifo_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(2),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(2),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~3\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~4_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y29_N10
\fifo_uut|dcfifo_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~6_combout\ = (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(3) & ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~5\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3) & ((\fifo_uut|dcfifo_component|auto_generated|op_1~5\) # (GND))))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(3) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3) & (\fifo_uut|dcfifo_component|auto_generated|op_1~5\ & VCC)) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~5\))))
-- \fifo_uut|dcfifo_component|auto_generated|op_1~7\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(3) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~5\) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3)))) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(3) & (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3) & !\fifo_uut|dcfifo_component|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(3),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(3),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~5\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~6_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X29_Y29_N12
\fifo_uut|dcfifo_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~8_combout\ = ((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|op_1~7\)))) # (GND)
-- \fifo_uut|dcfifo_component|auto_generated|op_1~9\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(4) & (\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(4) & !\fifo_uut|dcfifo_component|auto_generated|op_1~7\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(4) & ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(4)) # (!\fifo_uut|dcfifo_component|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(4),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(4),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~7\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~8_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X29_Y29_N14
\fifo_uut|dcfifo_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~10_combout\ = (\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(5) & ((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~9\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5) & (\fifo_uut|dcfifo_component|auto_generated|op_1~9\ & VCC)))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(5) & ((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5) 
-- & ((\fifo_uut|dcfifo_component|auto_generated|op_1~9\) # (GND))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~9\))))
-- \fifo_uut|dcfifo_component|auto_generated|op_1~11\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(5) & (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5) & !\fifo_uut|dcfifo_component|auto_generated|op_1~9\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(5) & ((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5)) # (!\fifo_uut|dcfifo_component|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(5),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(5),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~9\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~10_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X29_Y29_N16
\fifo_uut|dcfifo_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~12_combout\ = ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(6) $ (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(6) $ (\fifo_uut|dcfifo_component|auto_generated|op_1~11\)))) # (GND)
-- \fifo_uut|dcfifo_component|auto_generated|op_1~13\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(6) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~11\) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(6)))) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(6) & (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(6) & !\fifo_uut|dcfifo_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(6),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(6),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~11\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~12_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X29_Y29_N18
\fifo_uut|dcfifo_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\ = (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(7) & ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~13\)) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7) & ((\fifo_uut|dcfifo_component|auto_generated|op_1~13\) # (GND))))) # (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(7) & 
-- ((\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7) & (\fifo_uut|dcfifo_component|auto_generated|op_1~13\ & VCC)) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7) & (!\fifo_uut|dcfifo_component|auto_generated|op_1~13\))))
-- \fifo_uut|dcfifo_component|auto_generated|op_1~15\ = CARRY((\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(7) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~13\) # (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7)))) # 
-- (!\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(7) & (!\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7) & !\fifo_uut|dcfifo_component|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(7),
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(7),
	datad => VCC,
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~13\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\,
	cout => \fifo_uut|dcfifo_component|auto_generated|op_1~15\);

-- Location: LCFF_X29_Y29_N11
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(8));

-- Location: LCCOMB_X25_Y28_N8
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~1_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8) $ (((\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) & 
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datac => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~1_combout\);

-- Location: LCFF_X25_Y28_N9
\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~1_combout\,
	aclr => \fifo_uut|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8));

-- Location: LCCOMB_X25_Y30_N16
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdptr_g[8]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[8]~feeder_combout\);

-- Location: LCFF_X25_Y30_N17
\fifo_uut|dcfifo_component|auto_generated|rdptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|rdptr_g[8]~feeder_combout\,
	ena => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X28_Y30_N0
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]~feeder_combout\ = \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]~feeder_combout\);

-- Location: LCFF_X28_Y30_N1
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(8));

-- Location: LCFF_X27_Y30_N7
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8));

-- Location: LCCOMB_X30_Y29_N30
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\);

-- Location: LCFF_X30_Y29_N31
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(8));

-- Location: LCCOMB_X29_Y29_N20
\fifo_uut|dcfifo_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(8) $ (\fifo_uut|dcfifo_component|auto_generated|op_1~15\ $ (\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(8),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(8),
	cin => \fifo_uut|dcfifo_component|auto_generated|op_1~15\,
	combout => \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X28_Y29_N26
\state_write[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_write[1]~1_combout\ = (state_write(0) & ((state_write(1)) # ((\fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\ & \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\)))) # (!state_write(0) & 
-- (\fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\ & (state_write(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_write(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\,
	datac => state_write(1),
	datad => \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\,
	combout => \state_write[1]~1_combout\);

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

-- Location: LCFF_X28_Y29_N27
\state_write[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_write[1]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_write(1));

-- Location: LCCOMB_X28_Y29_N24
\state_write[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_write[0]~0_combout\ = ((state_write(1) & (state_write(0))) # (!state_write(1) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\) # (!state_write(0))))) # (!\fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_write(1),
	datab => \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\,
	datac => state_write(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\,
	combout => \state_write[0]~0_combout\);

-- Location: LCFF_X28_Y29_N25
\state_write[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_write[0]~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_write(0));

-- Location: LCCOMB_X28_Y29_N22
\write_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \write_en~0_combout\ = (\fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\ & ((state_write(1) & (!\write_en~regout\)) # (!state_write(1) & ((state_write(0)))))) # (!\fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\ & (!\write_en~regout\ & 
-- ((state_write(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~regout\,
	datab => state_write(1),
	datac => state_write(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\,
	combout => \write_en~0_combout\);

-- Location: LCCOMB_X28_Y29_N0
\write_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \write_en~1_combout\ = (\rst~combout\ & (((\write_en~regout\)))) # (!\rst~combout\ & (((!\fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\ & \write_en~regout\)) # (!\write_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\,
	datac => \write_en~regout\,
	datad => \write_en~0_combout\,
	combout => \write_en~1_combout\);

-- Location: LCFF_X28_Y29_N1
write_en : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \write_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \write_en~regout\);

-- Location: LCCOMB_X28_Y30_N28
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ = (\write_en~regout\ & (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & ((\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\) # 
-- (\fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\,
	datab => \write_en~regout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\);

-- Location: LCCOMB_X28_Y30_N4
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~7_combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (((!\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ & \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~7_combout\);

-- Location: LCFF_X28_Y30_N5
\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2));

-- Location: LCCOMB_X29_Y29_N24
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	datab => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\);

-- Location: LCFF_X29_Y29_N25
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(0));

-- Location: LCCOMB_X29_Y29_N28
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(1),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(2),
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\);

-- Location: LCFF_X29_Y29_N29
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(1));

-- Location: LCCOMB_X28_Y29_N20
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\);

-- Location: LCFF_X28_Y29_N21
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(2));

-- Location: LCFF_X29_Y29_N5
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(3));

-- Location: LCCOMB_X30_Y29_N14
\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ = \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4) $ (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5) $ 
-- (\fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(4),
	datac => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe10a\(5),
	datad => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\);

-- Location: LCFF_X29_Y29_N13
\fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_brp|dffe17a\(4));

-- Location: LCCOMB_X29_Y29_N26
\fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\ = \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ $ (\fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\);

-- Location: LCFF_X29_Y29_N27
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(5));

-- Location: LCFF_X29_Y29_N21
\fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fifo_uut|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_uut|dcfifo_component|auto_generated|ws_bwp|dffe17a\(6));

-- Location: LCCOMB_X24_Y29_N20
\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0) = (\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ & 
-- \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0));

-- Location: CLKCTRL_G12
\clk_read~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_read~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_read~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y27_N8
\state_read[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_read[0]~0_combout\ = (((state_read(1) & state_read(0))) # (!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\)) # (!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_read(1),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	datac => state_read(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	combout => \state_read[0]~0_combout\);

-- Location: LCFF_X25_Y27_N9
\state_read[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \state_read[0]~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_read(0));

-- Location: LCCOMB_X25_Y27_N6
\state_read[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_read[1]~1_combout\ = (state_read(0) & ((state_read(1)) # ((\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ & \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)))) # 
-- (!state_read(0) & (\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ & ((\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_read(0),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datac => state_read(1),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \state_read[1]~1_combout\);

-- Location: LCFF_X25_Y27_N7
\state_read[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \state_read[1]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_read(1));

-- Location: LCCOMB_X27_Y29_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X28_Y29_N30
\state_write[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_write[0]~2_combout\ = (!state_write(1) & (state_write(0) & ((!\fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\) # (!\fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_write(1),
	datab => \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\,
	datac => state_write(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\,
	combout => \state_write[0]~2_combout\);

-- Location: LCCOMB_X28_Y29_N28
\addr_write[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[0]~9_combout\ = addr_write(0) $ (\state_write[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addr_write(0),
	datad => \state_write[0]~2_combout\,
	combout => \addr_write[0]~9_combout\);

-- Location: LCFF_X28_Y29_N29
\addr_write[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[0]~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(0));

-- Location: LCCOMB_X28_Y29_N2
\addr_write[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[1]~10_combout\ = (addr_write(1) & (addr_write(0) $ (VCC))) # (!addr_write(1) & (addr_write(0) & VCC))
-- \addr_write[1]~11\ = CARRY((addr_write(1) & addr_write(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(1),
	datab => addr_write(0),
	datad => VCC,
	combout => \addr_write[1]~10_combout\,
	cout => \addr_write[1]~11\);

-- Location: LCFF_X28_Y29_N3
\addr_write[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[1]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(1));

-- Location: LCCOMB_X28_Y29_N4
\addr_write[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[2]~12_combout\ = (addr_write(2) & (!\addr_write[1]~11\)) # (!addr_write(2) & ((\addr_write[1]~11\) # (GND)))
-- \addr_write[2]~13\ = CARRY((!\addr_write[1]~11\) # (!addr_write(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(2),
	datad => VCC,
	cin => \addr_write[1]~11\,
	combout => \addr_write[2]~12_combout\,
	cout => \addr_write[2]~13\);

-- Location: LCFF_X28_Y29_N5
\addr_write[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[2]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(2));

-- Location: LCCOMB_X28_Y29_N6
\addr_write[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[3]~14_combout\ = (addr_write(3) & (\addr_write[2]~13\ $ (GND))) # (!addr_write(3) & (!\addr_write[2]~13\ & VCC))
-- \addr_write[3]~15\ = CARRY((addr_write(3) & !\addr_write[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(3),
	datad => VCC,
	cin => \addr_write[2]~13\,
	combout => \addr_write[3]~14_combout\,
	cout => \addr_write[3]~15\);

-- Location: LCFF_X28_Y29_N7
\addr_write[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[3]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(3));

-- Location: LCCOMB_X28_Y29_N8
\addr_write[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[4]~16_combout\ = (addr_write(4) & (!\addr_write[3]~15\)) # (!addr_write(4) & ((\addr_write[3]~15\) # (GND)))
-- \addr_write[4]~17\ = CARRY((!\addr_write[3]~15\) # (!addr_write(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(4),
	datad => VCC,
	cin => \addr_write[3]~15\,
	combout => \addr_write[4]~16_combout\,
	cout => \addr_write[4]~17\);

-- Location: LCFF_X28_Y29_N9
\addr_write[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[4]~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(4));

-- Location: LCCOMB_X28_Y29_N10
\addr_write[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[5]~18_combout\ = (addr_write(5) & (\addr_write[4]~17\ $ (GND))) # (!addr_write(5) & (!\addr_write[4]~17\ & VCC))
-- \addr_write[5]~19\ = CARRY((addr_write(5) & !\addr_write[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(5),
	datad => VCC,
	cin => \addr_write[4]~17\,
	combout => \addr_write[5]~18_combout\,
	cout => \addr_write[5]~19\);

-- Location: LCFF_X28_Y29_N11
\addr_write[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[5]~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(5));

-- Location: LCCOMB_X28_Y29_N12
\addr_write[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[6]~20_combout\ = (addr_write(6) & (!\addr_write[5]~19\)) # (!addr_write(6) & ((\addr_write[5]~19\) # (GND)))
-- \addr_write[6]~21\ = CARRY((!\addr_write[5]~19\) # (!addr_write(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(6),
	datad => VCC,
	cin => \addr_write[5]~19\,
	combout => \addr_write[6]~20_combout\,
	cout => \addr_write[6]~21\);

-- Location: LCFF_X28_Y29_N13
\addr_write[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[6]~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(6));

-- Location: LCCOMB_X28_Y29_N14
\addr_write[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[7]~22_combout\ = (addr_write(7) & (\addr_write[6]~21\ $ (GND))) # (!addr_write(7) & (!\addr_write[6]~21\ & VCC))
-- \addr_write[7]~23\ = CARRY((addr_write(7) & !\addr_write[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(7),
	datad => VCC,
	cin => \addr_write[6]~21\,
	combout => \addr_write[7]~22_combout\,
	cout => \addr_write[7]~23\);

-- Location: LCFF_X28_Y29_N15
\addr_write[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[7]~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(7));

-- Location: LCCOMB_X28_Y29_N16
\addr_write[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[8]~24_combout\ = (addr_write(8) & (!\addr_write[7]~23\)) # (!addr_write(8) & ((\addr_write[7]~23\) # (GND)))
-- \addr_write[8]~25\ = CARRY((!\addr_write[7]~23\) # (!addr_write(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(8),
	datad => VCC,
	cin => \addr_write[7]~23\,
	combout => \addr_write[8]~24_combout\,
	cout => \addr_write[8]~25\);

-- Location: LCFF_X28_Y29_N17
\addr_write[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[8]~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(8));

-- Location: LCCOMB_X28_Y29_N18
\addr_write[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_write[9]~26_combout\ = \addr_write[8]~25\ $ (!addr_write(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => addr_write(9),
	cin => \addr_write[8]~25\,
	combout => \addr_write[9]~26_combout\);

-- Location: LCFF_X28_Y29_N19
\addr_write[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr_write[9]~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_write[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_write(9));

-- Location: M4K_X26_Y29
\bram_write|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210",
	mem_init0 => X"FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory_load.hex",
	init_file_layout => "port_a",
	logical_ram_name => "bram:bram_write|altsyncram:altsyncram_component|altsyncram_2hd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bram_write|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y31
\bram_write|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000",
	mem_init0 => X"FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory_load.hex",
	init_file_layout => "port_a",
	logical_ram_name => "bram:bram_write|altsyncram:altsyncram_component|altsyncram_2hd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bram_write|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y30_N20
\fifo_uut|dcfifo_component|auto_generated|ram_address_b[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_uut|dcfifo_component|auto_generated|ram_address_b\(8) = \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(9) $ (\fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(9),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	combout => \fifo_uut|dcfifo_component|auto_generated|ram_address_b\(8));

-- Location: M4K_X26_Y30
\fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo:fifo_uut|dcfifo:dcfifo_component|dcfifo_s2g1:auto_generated|altsyncram_dku:fifo_ram|altsyncram_o8c1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \fifo_uut|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	clk0 => \clk_read~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \fifo_uut|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \fifo_uut|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portadatain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\,
	portbdatain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\,
	portaaddr => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\,
	portbaddr => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y27_N2
\state_read[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_read[1]~2_combout\ = (!state_read(1) & (state_read(0) & ((!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # (!\fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_read(1),
	datab => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datac => state_read(0),
	datad => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \state_read[1]~2_combout\);

-- Location: LCCOMB_X25_Y27_N12
\addr_read[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[0]~9_combout\ = addr_read(0) $ (\state_read[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addr_read(0),
	datad => \state_read[1]~2_combout\,
	combout => \addr_read[0]~9_combout\);

-- Location: LCFF_X25_Y27_N13
\addr_read[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[0]~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(0));

-- Location: LCCOMB_X25_Y27_N14
\addr_read[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[1]~10_combout\ = (addr_read(0) & (addr_read(1) $ (VCC))) # (!addr_read(0) & (addr_read(1) & VCC))
-- \addr_read[1]~11\ = CARRY((addr_read(0) & addr_read(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_read(0),
	datab => addr_read(1),
	datad => VCC,
	combout => \addr_read[1]~10_combout\,
	cout => \addr_read[1]~11\);

-- Location: LCFF_X25_Y27_N15
\addr_read[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[1]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(1));

-- Location: LCCOMB_X25_Y27_N16
\addr_read[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[2]~12_combout\ = (addr_read(2) & (!\addr_read[1]~11\)) # (!addr_read(2) & ((\addr_read[1]~11\) # (GND)))
-- \addr_read[2]~13\ = CARRY((!\addr_read[1]~11\) # (!addr_read(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_read(2),
	datad => VCC,
	cin => \addr_read[1]~11\,
	combout => \addr_read[2]~12_combout\,
	cout => \addr_read[2]~13\);

-- Location: LCFF_X25_Y27_N17
\addr_read[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[2]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(2));

-- Location: LCCOMB_X25_Y27_N18
\addr_read[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[3]~14_combout\ = (addr_read(3) & (\addr_read[2]~13\ $ (GND))) # (!addr_read(3) & (!\addr_read[2]~13\ & VCC))
-- \addr_read[3]~15\ = CARRY((addr_read(3) & !\addr_read[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_read(3),
	datad => VCC,
	cin => \addr_read[2]~13\,
	combout => \addr_read[3]~14_combout\,
	cout => \addr_read[3]~15\);

-- Location: LCFF_X25_Y27_N19
\addr_read[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[3]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(3));

-- Location: LCCOMB_X25_Y27_N20
\addr_read[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[4]~16_combout\ = (addr_read(4) & (!\addr_read[3]~15\)) # (!addr_read(4) & ((\addr_read[3]~15\) # (GND)))
-- \addr_read[4]~17\ = CARRY((!\addr_read[3]~15\) # (!addr_read(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_read(4),
	datad => VCC,
	cin => \addr_read[3]~15\,
	combout => \addr_read[4]~16_combout\,
	cout => \addr_read[4]~17\);

-- Location: LCFF_X25_Y27_N21
\addr_read[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[4]~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(4));

-- Location: LCCOMB_X25_Y27_N22
\addr_read[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[5]~18_combout\ = (addr_read(5) & (\addr_read[4]~17\ $ (GND))) # (!addr_read(5) & (!\addr_read[4]~17\ & VCC))
-- \addr_read[5]~19\ = CARRY((addr_read(5) & !\addr_read[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_read(5),
	datad => VCC,
	cin => \addr_read[4]~17\,
	combout => \addr_read[5]~18_combout\,
	cout => \addr_read[5]~19\);

-- Location: LCFF_X25_Y27_N23
\addr_read[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[5]~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(5));

-- Location: LCCOMB_X25_Y27_N24
\addr_read[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[6]~20_combout\ = (addr_read(6) & (!\addr_read[5]~19\)) # (!addr_read(6) & ((\addr_read[5]~19\) # (GND)))
-- \addr_read[6]~21\ = CARRY((!\addr_read[5]~19\) # (!addr_read(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_read(6),
	datad => VCC,
	cin => \addr_read[5]~19\,
	combout => \addr_read[6]~20_combout\,
	cout => \addr_read[6]~21\);

-- Location: LCFF_X25_Y27_N25
\addr_read[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[6]~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(6));

-- Location: LCCOMB_X25_Y27_N26
\addr_read[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[7]~22_combout\ = (addr_read(7) & (\addr_read[6]~21\ $ (GND))) # (!addr_read(7) & (!\addr_read[6]~21\ & VCC))
-- \addr_read[7]~23\ = CARRY((addr_read(7) & !\addr_read[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_read(7),
	datad => VCC,
	cin => \addr_read[6]~21\,
	combout => \addr_read[7]~22_combout\,
	cout => \addr_read[7]~23\);

-- Location: LCFF_X25_Y27_N27
\addr_read[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[7]~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(7));

-- Location: LCCOMB_X25_Y27_N28
\addr_read[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[8]~24_combout\ = (addr_read(8) & (!\addr_read[7]~23\)) # (!addr_read(8) & ((\addr_read[7]~23\) # (GND)))
-- \addr_read[8]~25\ = CARRY((!\addr_read[7]~23\) # (!addr_read(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_read(8),
	datad => VCC,
	cin => \addr_read[7]~23\,
	combout => \addr_read[8]~24_combout\,
	cout => \addr_read[8]~25\);

-- Location: LCFF_X25_Y27_N29
\addr_read[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[8]~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(8));

-- Location: LCCOMB_X25_Y27_N30
\addr_read[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr_read[9]~26_combout\ = addr_read(9) $ (!\addr_read[8]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_read(9),
	cin => \addr_read[8]~25\,
	combout => \addr_read[9]~26_combout\);

-- Location: LCFF_X25_Y27_N31
\addr_read[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_read~clkctrl_outclk\,
	datain => \addr_read[9]~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_read[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr_read(9));

-- Location: M4K_X26_Y27
\bram_read|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210",
	mem_init0 => X"FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory_load.hex",
	init_file_layout => "port_a",
	logical_ram_name => "bram:bram_read|altsyncram:altsyncram_component|altsyncram_2hd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \read_en~regout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bram_read|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y28
\bram_read|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000",
	mem_init0 => X"FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA9999999999999999888888888888888877777777777777776666666666666666555555555555555544444444444444443333333333333333222222222222222211111111111111110000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory_load.hex",
	init_file_layout => "port_a",
	logical_ram_name => "bram:bram_read|altsyncram:altsyncram_component|altsyncram_2hd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \read_en~regout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bram_read|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_read_p~I\ : cycloneii_io
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
	datain => \clk_read~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_read_p);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[0]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[1]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[2]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(2));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[3]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(3));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[4]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(4));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[5]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(5));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[6]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[7]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(7));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_usedw_p[8]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|op_1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_usedw_p(8));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifo_empty_p~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifo_empty_p);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state_write_p[0]~I\ : cycloneii_io
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
	datain => state_write(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_write_p(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state_write_p[1]~I\ : cycloneii_io
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
	datain => state_write(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_write_p(1));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state_read_p[0]~I\ : cycloneii_io
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
	datain => state_read(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_read_p(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state_read_p[1]~I\ : cycloneii_io
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
	datain => state_read(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_read_p(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_en_p~I\ : cycloneii_io
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
	datain => \write_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_en_p);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_en_p~I\ : cycloneii_io
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
	datain => \read_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_en_p);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[0]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(0));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[1]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[2]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[3]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(3));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[4]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[5]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(5));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[6]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(6));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_write[7]~I\ : cycloneii_io
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
	datain => \bram_write|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_write(7));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[0]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[1]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[2]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[3]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[4]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(4));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[5]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[6]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_bram_read[7]~I\ : cycloneii_io
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
	datain => \bram_read|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_bram_read(7));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[0]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[1]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[2]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[3]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[4]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[5]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(5));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[6]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_fifo[7]~I\ : cycloneii_io
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
	datain => \fifo_uut|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_fifo(7));
END structure;


