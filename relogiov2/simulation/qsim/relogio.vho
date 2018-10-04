-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "10/02/2018 10:49:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	r1debug : OUT std_logic_vector(3 DOWNTO 0);
	aluflagdebug : OUT std_logic;
	outputdebug : OUT std_logic_vector(11 DOWNTO 0);
	aluresultDebug : OUT std_logic_vector(3 DOWNTO 0);
	regA : OUT std_logic_vector(3 DOWNTO 0);
	regB : OUT std_logic_vector(3 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1debug[0]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1debug[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1debug[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1debug[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluflagdebug	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[2]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[7]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[8]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[9]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[10]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputdebug[11]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluresultDebug[0]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluresultDebug[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluresultDebug[2]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluresultDebug[3]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[1]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[2]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_r1debug : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_aluflagdebug : std_logic;
SIGNAL ww_outputdebug : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_aluresultDebug : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_regA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_regB : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|Equal0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|Equal0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o6[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|Equal0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \r1debug[0]~output_o\ : std_logic;
SIGNAL \r1debug[1]~output_o\ : std_logic;
SIGNAL \r1debug[2]~output_o\ : std_logic;
SIGNAL \r1debug[3]~output_o\ : std_logic;
SIGNAL \aluflagdebug~output_o\ : std_logic;
SIGNAL \outputdebug[0]~output_o\ : std_logic;
SIGNAL \outputdebug[1]~output_o\ : std_logic;
SIGNAL \outputdebug[2]~output_o\ : std_logic;
SIGNAL \outputdebug[3]~output_o\ : std_logic;
SIGNAL \outputdebug[4]~output_o\ : std_logic;
SIGNAL \outputdebug[5]~output_o\ : std_logic;
SIGNAL \outputdebug[6]~output_o\ : std_logic;
SIGNAL \outputdebug[7]~output_o\ : std_logic;
SIGNAL \outputdebug[8]~output_o\ : std_logic;
SIGNAL \outputdebug[9]~output_o\ : std_logic;
SIGNAL \outputdebug[10]~output_o\ : std_logic;
SIGNAL \outputdebug[11]~output_o\ : std_logic;
SIGNAL \aluresultDebug[0]~output_o\ : std_logic;
SIGNAL \aluresultDebug[1]~output_o\ : std_logic;
SIGNAL \aluresultDebug[2]~output_o\ : std_logic;
SIGNAL \aluresultDebug[3]~output_o\ : std_logic;
SIGNAL \regA[0]~output_o\ : std_logic;
SIGNAL \regA[1]~output_o\ : std_logic;
SIGNAL \regA[2]~output_o\ : std_logic;
SIGNAL \regA[3]~output_o\ : std_logic;
SIGNAL \regB[0]~output_o\ : std_logic;
SIGNAL \regB[1]~output_o\ : std_logic;
SIGNAL \regB[2]~output_o\ : std_logic;
SIGNAL \regB[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \e1|content~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \e1|content~4_combout\ : std_logic;
SIGNAL \pc~3_combout\ : std_logic;
SIGNAL \e1|content~1_combout\ : std_logic;
SIGNAL \e1|content~0_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \e4|selected[1]~2_combout\ : std_logic;
SIGNAL \e15|selected[1]~1_combout\ : std_logic;
SIGNAL \q5|Equal0~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \clock_c|o6[3]~0_combout\ : std_logic;
SIGNAL \clock_c|o6[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \e16|selected[1]~1_combout\ : std_logic;
SIGNAL \q6|Equal0~0_combout\ : std_logic;
SIGNAL \e2|selected[1]~6_combout\ : std_logic;
SIGNAL \clock_c|Equal0~1_combout\ : std_logic;
SIGNAL \clock_c|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \clock_c|Equal0~3_combout\ : std_logic;
SIGNAL \clock_c|Equal0~3clkctrl_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \e14|selected[1]~1_combout\ : std_logic;
SIGNAL \q4|Equal0~0_combout\ : std_logic;
SIGNAL \e2|selected[1]~4_combout\ : std_logic;
SIGNAL \clock_c|Equal0~0_combout\ : std_logic;
SIGNAL \clock_c|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \clock_c|Equal0~2_combout\ : std_logic;
SIGNAL \clock_c|Equal0~2clkctrl_outclk\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \e13|selected[1]~1_combout\ : std_logic;
SIGNAL \q3|Equal0~0_combout\ : std_logic;
SIGNAL \e2|selected[1]~5_combout\ : std_logic;
SIGNAL \e2|selected[1]~7_combout\ : std_logic;
SIGNAL \e1|content~2_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \e3|Add0~3_cout\ : std_logic;
SIGNAL \e3|Add0~4_combout\ : std_logic;
SIGNAL \e3|Add0~13_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \e4|selected[3]~4_combout\ : std_logic;
SIGNAL \e4|selected[3]~5_combout\ : std_logic;
SIGNAL \e15|selected[3]~0_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \e16|selected[3]~0_combout\ : std_logic;
SIGNAL \e2|selected[3]~14_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \e14|selected[3]~0_combout\ : std_logic;
SIGNAL \e2|selected[3]~12_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \e13|selected[3]~0_combout\ : std_logic;
SIGNAL \e2|selected[3]~13_combout\ : std_logic;
SIGNAL \e2|selected[3]~15_combout\ : std_logic;
SIGNAL \e3|Add0~8_combout\ : std_logic;
SIGNAL \e3|Add0~7\ : std_logic;
SIGNAL \e3|Add0~10\ : std_logic;
SIGNAL \e3|Add0~11_combout\ : std_logic;
SIGNAL \e4|selected[0]~0_combout\ : std_logic;
SIGNAL \e4|selected[0]~1_combout\ : std_logic;
SIGNAL \e15|selected[0]~2_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \e16|selected[0]~2_combout\ : std_logic;
SIGNAL \e2|selected[0]~2_combout\ : std_logic;
SIGNAL \e2|selected[0]~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \e14|selected[0]~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \e13|selected[0]~2_combout\ : std_logic;
SIGNAL \e2|selected[0]~1_combout\ : std_logic;
SIGNAL \e2|selected[0]~3_combout\ : std_logic;
SIGNAL \e3|Add0~5\ : std_logic;
SIGNAL \e3|Add0~6_combout\ : std_logic;
SIGNAL \pc~2_combout\ : std_logic;
SIGNAL \e1|content~7_combout\ : std_logic;
SIGNAL \pc~4_combout\ : std_logic;
SIGNAL \pc~6_combout\ : std_logic;
SIGNAL \pc[0]~feeder_combout\ : std_logic;
SIGNAL \e1|content~5_combout\ : std_logic;
SIGNAL \pc~5_combout\ : std_logic;
SIGNAL \clock_c|Equal0~4_combout\ : std_logic;
SIGNAL \clock_c|Equal0~4clkctrl_outclk\ : std_logic;
SIGNAL \e15|selected[2]~3_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \e16|selected[2]~3_combout\ : std_logic;
SIGNAL \e2|selected[2]~10_combout\ : std_logic;
SIGNAL \e2|selected[2]~8_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \e14|selected[2]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \e13|selected[2]~3_combout\ : std_logic;
SIGNAL \e2|selected[2]~9_combout\ : std_logic;
SIGNAL \e2|selected[2]~11_combout\ : std_logic;
SIGNAL \e3|Add0~9_combout\ : std_logic;
SIGNAL \e3|Equal0~0_combout\ : std_logic;
SIGNAL \e4|selected[2]~3_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \e6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \e7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \e8|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \e9|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \e10|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \e11|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \e1|content~8_combout\ : std_logic;
SIGNAL \e1|content~9_combout\ : std_logic;
SIGNAL \e1|content~3_combout\ : std_logic;
SIGNAL \e1|content~10_combout\ : std_logic;
SIGNAL \q4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q6|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \q3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL pc : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_c|o6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e1|ALT_INV_content~8_combout\ : std_logic;
SIGNAL \e1|ALT_INV_content~4_combout\ : std_logic;
SIGNAL \e1|ALT_INV_content~1_combout\ : std_logic;
SIGNAL \e11|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e10|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e9|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e8|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e7|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \e6|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
r1debug <= ww_r1debug;
aluflagdebug <= ww_aluflagdebug;
outputdebug <= ww_outputdebug;
aluresultDebug <= ww_aluresultDebug;
regA <= ww_regA;
regB <= ww_regB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clock_c|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c|Equal0~0_combout\);

\clock_c|Equal0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c|Equal0~2_combout\);

\clock_c|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c|Equal0~1_combout\);

\clock_c|Equal0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c|Equal0~3_combout\);

\clock_c|o6[3]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c|o6[3]~0_combout\);

\clock_c|Equal0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c|Equal0~4_combout\);
\e1|ALT_INV_content~8_combout\ <= NOT \e1|content~8_combout\;
\e1|ALT_INV_content~4_combout\ <= NOT \e1|content~4_combout\;
\e1|ALT_INV_content~1_combout\ <= NOT \e1|content~1_combout\;
\e11|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \e11|rascSaida7seg[2]~2_combout\;
\e10|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \e10|rascSaida7seg[2]~2_combout\;
\e9|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \e9|rascSaida7seg[2]~2_combout\;
\e8|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \e8|rascSaida7seg[2]~2_combout\;
\e7|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \e7|rascSaida7seg[2]~2_combout\;
\e6|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \e6|rascSaida7seg[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e8|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e9|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e10|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e11|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\r1debug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_c|o1\(0),
	devoe => ww_devoe,
	o => \r1debug[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\r1debug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_c|o1\(1),
	devoe => ww_devoe,
	o => \r1debug[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\r1debug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_c|o1\(2),
	devoe => ww_devoe,
	o => \r1debug[2]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\r1debug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_c|o1\(3),
	devoe => ww_devoe,
	o => \r1debug[3]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\aluflagdebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \aluflagdebug~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\outputdebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~4_combout\,
	devoe => ww_devoe,
	o => \outputdebug[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\outputdebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~5_combout\,
	devoe => ww_devoe,
	o => \outputdebug[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\outputdebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~6_combout\,
	devoe => ww_devoe,
	o => \outputdebug[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\outputdebug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~7_combout\,
	devoe => ww_devoe,
	o => \outputdebug[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\outputdebug[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~4_combout\,
	devoe => ww_devoe,
	o => \outputdebug[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\outputdebug[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~4_combout\,
	devoe => ww_devoe,
	o => \outputdebug[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\outputdebug[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~8_combout\,
	devoe => ww_devoe,
	o => \outputdebug[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\outputdebug[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~9_combout\,
	devoe => ww_devoe,
	o => \outputdebug[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\outputdebug[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~3_combout\,
	devoe => ww_devoe,
	o => \outputdebug[8]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\outputdebug[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~1_combout\,
	devoe => ww_devoe,
	o => \outputdebug[9]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\outputdebug[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~0_combout\,
	devoe => ww_devoe,
	o => \outputdebug[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\outputdebug[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~10_combout\,
	devoe => ww_devoe,
	o => \outputdebug[11]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\aluresultDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~4_combout\,
	devoe => ww_devoe,
	o => \aluresultDebug[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\aluresultDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~6_combout\,
	devoe => ww_devoe,
	o => \aluresultDebug[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\aluresultDebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~9_combout\,
	devoe => ww_devoe,
	o => \aluresultDebug[2]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\aluresultDebug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~11_combout\,
	devoe => ww_devoe,
	o => \aluresultDebug[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\regA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e2|selected[0]~3_combout\,
	devoe => ww_devoe,
	o => \regA[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\regA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e2|selected[1]~7_combout\,
	devoe => ww_devoe,
	o => \regA[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\regA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e2|selected[2]~11_combout\,
	devoe => ww_devoe,
	o => \regA[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\regA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e2|selected[3]~15_combout\,
	devoe => ww_devoe,
	o => \regA[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\regB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~4_combout\,
	devoe => ww_devoe,
	o => \regB[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\regB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~8_combout\,
	devoe => ww_devoe,
	o => \regB[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\regB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~9_combout\,
	devoe => ww_devoe,
	o => \regB[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\regB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~3_combout\,
	devoe => ww_devoe,
	o => \regB[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X76_Y4_N8
\e1|content~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~6_combout\ = (!pc(3) & (pc(2) $ (((pc(0) & pc(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \e1|content~6_combout\);

-- Location: LCCOMB_X75_Y4_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X75_Y4_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X75_Y4_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X76_Y4_N0
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~2_combout\ & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Equal0~8_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X76_Y4_N1
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X75_Y4_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X76_Y4_N20
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~4_combout\ & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X76_Y4_N21
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X75_Y4_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X75_Y4_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X75_Y4_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X75_Y4_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X75_Y4_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X75_Y4_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X76_Y4_N26
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(4)) # (((counter(5)) # (counter(3))) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(5),
	datad => counter(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X76_Y4_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (counter(1)) # (!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	datad => counter(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X75_Y4_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X75_Y4_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X75_Y4_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X75_Y4_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X75_Y4_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X75_Y4_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X75_Y4_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X75_Y4_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X75_Y4_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (counter(7)) # ((counter(9)) # ((counter(8)) # (counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(9),
	datac => counter(8),
	datad => counter(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X75_Y4_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X75_Y4_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X75_Y4_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X75_Y4_N29
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X75_Y4_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X75_Y4_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X75_Y3_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X75_Y3_N1
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X75_Y3_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X75_Y3_N3
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X75_Y3_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X75_Y3_N5
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X75_Y3_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X75_Y3_N7
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X75_Y3_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X75_Y3_N9
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X75_Y3_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X75_Y3_N11
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X75_Y3_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X75_Y3_N13
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X75_Y3_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X75_Y3_N15
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X75_Y3_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X75_Y3_N17
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X75_Y3_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(18)) # ((counter(21)) # ((counter(20)) # (counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(21),
	datac => counter(20),
	datad => counter(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X75_Y3_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X75_Y3_N19
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X75_Y3_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X75_Y3_N21
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X75_Y3_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X75_Y3_N23
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X75_Y3_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = counter(25) $ (\Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: FF_X75_Y3_N25
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X75_Y3_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(23)) # ((counter(25)) # ((counter(24)) # (counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(25),
	datac => counter(24),
	datad => counter(22),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X75_Y3_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(16)) # ((counter(17)) # ((counter(15)) # (counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => counter(15),
	datad => counter(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X75_Y4_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(12)) # ((counter(13)) # ((counter(10)) # (counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(13),
	datac => counter(10),
	datad => counter(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X75_Y4_N2
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\) # ((\Equal0~0_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X76_Y4_N28
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\) # ((\Equal0~7_combout\) # ((\Equal0~5_combout\) # (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X77_Y4_N22
\e1|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~4_combout\ = (pc(0)) # ((pc(3) & pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(0),
	datac => pc(3),
	datad => pc(2),
	combout => \e1|content~4_combout\);

-- Location: LCCOMB_X81_Y4_N18
\pc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~3_combout\ = (\Equal0~8_combout\ & ((\e1|content~6_combout\) # ((\pc~2_combout\ & \e1|content~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~6_combout\,
	datab => \Equal0~8_combout\,
	datac => \pc~2_combout\,
	datad => \e1|content~4_combout\,
	combout => \pc~3_combout\);

-- Location: FF_X81_Y4_N19
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \pc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: LCCOMB_X80_Y4_N30
\e1|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~1_combout\ = ((pc(2) & pc(3))) # (!pc(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(2),
	datac => pc(1),
	datad => pc(3),
	combout => \e1|content~1_combout\);

-- Location: LCCOMB_X80_Y4_N24
\e1|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~0_combout\ = (pc(2) & !pc(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(2),
	datad => pc(3),
	combout => \e1|content~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X81_Y4_N28
\e4|selected[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|selected[1]~2_combout\ = (\e3|Equal0~0_combout\ & (((\e3|Add0~6_combout\)))) # (!\e3|Equal0~0_combout\ & ((\e1|content~4_combout\ & (\e2|selected[1]~7_combout\)) # (!\e1|content~4_combout\ & ((\e3|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Equal0~0_combout\,
	datab => \e2|selected[1]~7_combout\,
	datac => \e3|Add0~6_combout\,
	datad => \e1|content~4_combout\,
	combout => \e4|selected[1]~2_combout\);

-- Location: LCCOMB_X79_Y4_N10
\clock_c|o5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o5\(1) = (GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & (\e4|selected[1]~2_combout\)) # (!GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & ((\clock_c|o5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[1]~2_combout\,
	datac => \clock_c|Equal0~4clkctrl_outclk\,
	datad => \clock_c|o5\(1),
	combout => \clock_c|o5\(1));

-- Location: LCCOMB_X79_Y4_N26
\e15|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e15|selected[1]~1_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o5\(1)))) # (!\KEY[0]~input_o\ & (\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \clock_c|o5\(1),
	combout => \e15|selected[1]~1_combout\);

-- Location: LCCOMB_X83_Y4_N24
\q5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q5|Equal0~0_combout\ = ((!pc(1) & (!pc(2) & pc(3)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datab => \KEY[0]~input_o\,
	datac => pc(2),
	datad => pc(3),
	combout => \q5|Equal0~0_combout\);

-- Location: FF_X79_Y4_N27
\q5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e15|selected[1]~1_combout\,
	ena => \q5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(1));

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X82_Y4_N0
\clock_c|o6[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o6[3]~0_combout\ = (pc(3) & (pc(1) & !pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datac => pc(1),
	datad => pc(2),
	combout => \clock_c|o6[3]~0_combout\);

-- Location: CLKCTRL_G6
\clock_c|o6[3]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c|o6[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c|o6[3]~0clkctrl_outclk\);

-- Location: LCCOMB_X81_Y3_N10
\clock_c|o6[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o6\(1) = (GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & (\e4|selected[1]~2_combout\)) # (!GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & ((\clock_c|o6\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[1]~2_combout\,
	datac => \clock_c|o6[3]~0clkctrl_outclk\,
	datad => \clock_c|o6\(1),
	combout => \clock_c|o6\(1));

-- Location: LCCOMB_X81_Y3_N14
\e16|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e16|selected[1]~1_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o6\(1)))) # (!\KEY[0]~input_o\ & (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \clock_c|o6\(1),
	combout => \e16|selected[1]~1_combout\);

-- Location: LCCOMB_X81_Y3_N26
\q6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q6|Equal0~0_combout\ = ((pc(3) & (pc(1) & !pc(2)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(3),
	datab => \KEY[0]~input_o\,
	datac => pc(1),
	datad => pc(2),
	combout => \q6|Equal0~0_combout\);

-- Location: FF_X81_Y3_N15
\q6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e16|selected[1]~1_combout\,
	ena => \q6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(1));

-- Location: LCCOMB_X80_Y4_N22
\e2|selected[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~6_combout\ = (\e1|content~1_combout\ & ((\e1|content~0_combout\ & ((\q6|DOUT\(1)))) # (!\e1|content~0_combout\ & (\q5|DOUT\(1))))) # (!\e1|content~1_combout\ & (((\q6|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~1_combout\,
	datab => \e1|content~0_combout\,
	datac => \q5|DOUT\(1),
	datad => \q6|DOUT\(1),
	combout => \e2|selected[1]~6_combout\);

-- Location: LCCOMB_X82_Y4_N4
\clock_c|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|Equal0~1_combout\ = (!pc(3) & (pc(1) & !pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datac => pc(1),
	datad => pc(2),
	combout => \clock_c|Equal0~1_combout\);

-- Location: CLKCTRL_G15
\clock_c|Equal0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c|Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X82_Y4_N18
\clock_c|o2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o2\(1) = (GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & ((\e4|selected[1]~2_combout\))) # (!GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & (\clock_c|o2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_c|o2\(1),
	datac => \e4|selected[1]~2_combout\,
	datad => \clock_c|Equal0~1clkctrl_outclk\,
	combout => \clock_c|o2\(1));

-- Location: FF_X82_Y4_N19
\q2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_c|o2\(1),
	ena => \clock_c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(1));

-- Location: LCCOMB_X77_Y4_N18
\clock_c|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|Equal0~3_combout\ = (pc(1) & (!pc(3) & pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datac => pc(3),
	datad => pc(2),
	combout => \clock_c|Equal0~3_combout\);

-- Location: CLKCTRL_G18
\clock_c|Equal0~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c|Equal0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c|Equal0~3clkctrl_outclk\);

-- Location: LCCOMB_X84_Y4_N26
\clock_c|o4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o4\(1) = (GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & ((\e4|selected[1]~2_combout\))) # (!GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & (\clock_c|o4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_c|o4\(1),
	datac => \e4|selected[1]~2_combout\,
	datad => \clock_c|Equal0~3clkctrl_outclk\,
	combout => \clock_c|o4\(1));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X84_Y4_N22
\e14|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e14|selected[1]~1_combout\ = (\KEY[0]~input_o\ & (\clock_c|o4\(1))) # (!\KEY[0]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \clock_c|o4\(1),
	datad => \SW[7]~input_o\,
	combout => \e14|selected[1]~1_combout\);

-- Location: LCCOMB_X83_Y4_N10
\q4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q4|Equal0~0_combout\ = ((pc(1) & (pc(2) & !pc(3)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datab => \KEY[0]~input_o\,
	datac => pc(2),
	datad => pc(3),
	combout => \q4|Equal0~0_combout\);

-- Location: FF_X84_Y4_N23
\q4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e14|selected[1]~1_combout\,
	ena => \q4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(1));

-- Location: LCCOMB_X80_Y4_N28
\e2|selected[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~4_combout\ = (\e1|content~1_combout\ & (((\e1|content~0_combout\)))) # (!\e1|content~1_combout\ & ((\e1|content~0_combout\ & ((\q4|DOUT\(1)))) # (!\e1|content~0_combout\ & (\q2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(1),
	datab => \q4|DOUT\(1),
	datac => \e1|content~1_combout\,
	datad => \e1|content~0_combout\,
	combout => \e2|selected[1]~4_combout\);

-- Location: LCCOMB_X77_Y4_N12
\clock_c|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|Equal0~0_combout\ = (pc(3) & ((pc(2)))) # (!pc(3) & (!pc(1) & !pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datac => pc(3),
	datad => pc(2),
	combout => \clock_c|Equal0~0_combout\);

-- Location: CLKCTRL_G16
\clock_c|Equal0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X82_Y4_N12
\clock_c|o1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o1\(1) = (GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & ((\e4|selected[1]~2_combout\))) # (!GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & (\clock_c|o1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_c|o1\(1),
	datac => \e4|selected[1]~2_combout\,
	datad => \clock_c|Equal0~0clkctrl_outclk\,
	combout => \clock_c|o1\(1));

-- Location: FF_X81_Y4_N1
\q1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clock_c|o1\(1),
	sload => VCC,
	ena => \clock_c|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(1));

-- Location: LCCOMB_X82_Y4_N24
\clock_c|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|Equal0~2_combout\ = (!pc(3) & (!pc(1) & pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datac => pc(1),
	datad => pc(2),
	combout => \clock_c|Equal0~2_combout\);

-- Location: CLKCTRL_G17
\clock_c|Equal0~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c|Equal0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c|Equal0~2clkctrl_outclk\);

-- Location: LCCOMB_X83_Y4_N8
\clock_c|o3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o3\(1) = (GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & ((\e4|selected[1]~2_combout\))) # (!GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & (\clock_c|o3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_c|Equal0~2clkctrl_outclk\,
	datac => \clock_c|o3\(1),
	datad => \e4|selected[1]~2_combout\,
	combout => \clock_c|o3\(1));

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X83_Y4_N14
\e13|selected[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e13|selected[1]~1_combout\ = (\KEY[0]~input_o\ & (\clock_c|o3\(1))) # (!\KEY[0]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \clock_c|o3\(1),
	datad => \SW[3]~input_o\,
	combout => \e13|selected[1]~1_combout\);

-- Location: LCCOMB_X83_Y4_N28
\q3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q3|Equal0~0_combout\ = ((!pc(1) & (pc(2) & !pc(3)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datab => \KEY[0]~input_o\,
	datac => pc(2),
	datad => pc(3),
	combout => \q3|Equal0~0_combout\);

-- Location: FF_X83_Y4_N15
\q3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e13|selected[1]~1_combout\,
	ena => \q3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(1));

-- Location: LCCOMB_X80_Y4_N6
\e2|selected[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~5_combout\ = (\e1|content~1_combout\ & ((\e2|selected[1]~4_combout\ & ((\q3|DOUT\(1)))) # (!\e2|selected[1]~4_combout\ & (\q1|DOUT\(1))))) # (!\e1|content~1_combout\ & (\e2|selected[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~1_combout\,
	datab => \e2|selected[1]~4_combout\,
	datac => \q1|DOUT\(1),
	datad => \q3|DOUT\(1),
	combout => \e2|selected[1]~5_combout\);

-- Location: LCCOMB_X80_Y4_N2
\e2|selected[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~7_combout\ = (pc(2) & (((\e2|selected[1]~5_combout\)))) # (!pc(2) & ((pc(3) & (\e2|selected[1]~6_combout\)) # (!pc(3) & ((\e2|selected[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[1]~6_combout\,
	datab => pc(2),
	datac => \e2|selected[1]~5_combout\,
	datad => pc(3),
	combout => \e2|selected[1]~7_combout\);

-- Location: LCCOMB_X82_Y4_N22
\e1|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~2_combout\ = (pc(3) & pc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datad => pc(2),
	combout => \e1|content~2_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X81_Y4_N4
\e3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~3_cout\ = CARRY((pc(0)) # (\e1|content~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => \e1|content~2_combout\,
	datad => VCC,
	cout => \e3|Add0~3_cout\);

-- Location: LCCOMB_X81_Y4_N6
\e3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~4_combout\ = (\e2|selected[0]~3_combout\ & (\e3|Add0~3_cout\ & VCC)) # (!\e2|selected[0]~3_combout\ & (!\e3|Add0~3_cout\))
-- \e3|Add0~5\ = CARRY((!\e2|selected[0]~3_combout\ & !\e3|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[0]~3_combout\,
	datad => VCC,
	cin => \e3|Add0~3_cout\,
	combout => \e3|Add0~4_combout\,
	cout => \e3|Add0~5\);

-- Location: LCCOMB_X77_Y4_N30
\e3|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~13_combout\ = (pc(2) & ((pc(3)) # ((pc(1) & pc(0))))) # (!pc(2) & (pc(1) & ((pc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(2),
	datab => pc(1),
	datac => pc(3),
	datad => pc(0),
	combout => \e3|Add0~13_combout\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X82_Y4_N2
\e4|selected[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|selected[3]~4_combout\ = (\e3|Add0~6_combout\) # ((\e3|Add0~9_combout\) # (\e3|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~6_combout\,
	datab => \e3|Add0~9_combout\,
	datac => \e3|Add0~4_combout\,
	combout => \e4|selected[3]~4_combout\);

-- Location: LCCOMB_X82_Y4_N6
\e4|selected[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|selected[3]~5_combout\ = (\e1|content~4_combout\ & (\e2|selected[3]~15_combout\ & ((\e4|selected[3]~4_combout\) # (\e3|Add0~11_combout\)))) # (!\e1|content~4_combout\ & (((\e3|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[3]~4_combout\,
	datab => \e3|Add0~11_combout\,
	datac => \e1|content~4_combout\,
	datad => \e2|selected[3]~15_combout\,
	combout => \e4|selected[3]~5_combout\);

-- Location: LCCOMB_X79_Y4_N20
\clock_c|o5[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o5\(3) = (GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & (\e4|selected[3]~5_combout\)) # (!GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & ((\clock_c|o5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[3]~5_combout\,
	datac => \clock_c|Equal0~4clkctrl_outclk\,
	datad => \clock_c|o5\(3),
	combout => \clock_c|o5\(3));

-- Location: LCCOMB_X79_Y4_N12
\e15|selected[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e15|selected[3]~0_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o5\(3)))) # (!\KEY[0]~input_o\ & (\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \clock_c|o5\(3),
	combout => \e15|selected[3]~0_combout\);

-- Location: FF_X79_Y4_N13
\q5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e15|selected[3]~0_combout\,
	ena => \q5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(3));

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X81_Y3_N0
\clock_c|o6[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o6\(3) = (GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & ((\e4|selected[3]~5_combout\))) # (!GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & (\clock_c|o6\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_c|o6\(3),
	datac => \e4|selected[3]~5_combout\,
	datad => \clock_c|o6[3]~0clkctrl_outclk\,
	combout => \clock_c|o6\(3));

-- Location: LCCOMB_X81_Y3_N24
\e16|selected[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e16|selected[3]~0_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o6\(3)))) # (!\KEY[0]~input_o\ & (\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \clock_c|o6\(3),
	combout => \e16|selected[3]~0_combout\);

-- Location: FF_X81_Y3_N25
\q6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e16|selected[3]~0_combout\,
	ena => \q6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(3));

-- Location: LCCOMB_X80_Y4_N0
\e2|selected[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~14_combout\ = (\e1|content~1_combout\ & ((\e1|content~0_combout\ & ((\q6|DOUT\(3)))) # (!\e1|content~0_combout\ & (\q5|DOUT\(3))))) # (!\e1|content~1_combout\ & (((\q6|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q6|DOUT\(3),
	datac => \e1|content~1_combout\,
	datad => \e1|content~0_combout\,
	combout => \e2|selected[3]~14_combout\);

-- Location: LCCOMB_X82_Y4_N8
\clock_c|o1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o1\(3) = (GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & ((\e4|selected[3]~5_combout\))) # (!GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & (\clock_c|o1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_c|o1\(3),
	datac => \e4|selected[3]~5_combout\,
	datad => \clock_c|Equal0~0clkctrl_outclk\,
	combout => \clock_c|o1\(3));

-- Location: FF_X81_Y4_N13
\q1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clock_c|o1\(3),
	sload => VCC,
	ena => \clock_c|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(3));

-- Location: LCCOMB_X82_Y4_N20
\clock_c|o2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o2\(3) = (GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & ((\e4|selected[3]~5_combout\))) # (!GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & (\clock_c|o2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_c|o2\(3),
	datac => \e4|selected[3]~5_combout\,
	datad => \clock_c|Equal0~1clkctrl_outclk\,
	combout => \clock_c|o2\(3));

-- Location: FF_X82_Y4_N21
\q2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_c|o2\(3),
	ena => \clock_c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(3));

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X82_Y4_N16
\clock_c|o4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o4\(3) = (GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & (\e4|selected[3]~5_combout\)) # (!GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & ((\clock_c|o4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[3]~5_combout\,
	datac => \clock_c|Equal0~3clkctrl_outclk\,
	datad => \clock_c|o4\(3),
	combout => \clock_c|o4\(3));

-- Location: LCCOMB_X82_Y4_N28
\e14|selected[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e14|selected[3]~0_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o4\(3)))) # (!\KEY[0]~input_o\ & (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \clock_c|o4\(3),
	combout => \e14|selected[3]~0_combout\);

-- Location: FF_X82_Y4_N29
\q4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e14|selected[3]~0_combout\,
	ena => \q4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(3));

-- Location: LCCOMB_X80_Y4_N26
\e2|selected[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~12_combout\ = (\e1|content~1_combout\ & (((\e1|content~0_combout\)))) # (!\e1|content~1_combout\ & ((\e1|content~0_combout\ & ((\q4|DOUT\(3)))) # (!\e1|content~0_combout\ & (\q2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q4|DOUT\(3),
	datac => \e1|content~1_combout\,
	datad => \e1|content~0_combout\,
	combout => \e2|selected[3]~12_combout\);

-- Location: LCCOMB_X83_Y4_N22
\clock_c|o3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o3\(3) = (GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & (\e4|selected[3]~5_combout\)) # (!GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & ((\clock_c|o3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[3]~5_combout\,
	datac => \clock_c|o3\(3),
	datad => \clock_c|Equal0~2clkctrl_outclk\,
	combout => \clock_c|o3\(3));

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X83_Y4_N0
\e13|selected[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e13|selected[3]~0_combout\ = (\KEY[0]~input_o\ & (\clock_c|o3\(3))) # (!\KEY[0]~input_o\ & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \clock_c|o3\(3),
	datad => \SW[5]~input_o\,
	combout => \e13|selected[3]~0_combout\);

-- Location: FF_X83_Y4_N1
\q3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e13|selected[3]~0_combout\,
	ena => \q3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(3));

-- Location: LCCOMB_X80_Y4_N16
\e2|selected[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~13_combout\ = (\e1|content~1_combout\ & ((\e2|selected[3]~12_combout\ & ((\q3|DOUT\(3)))) # (!\e2|selected[3]~12_combout\ & (\q1|DOUT\(3))))) # (!\e1|content~1_combout\ & (((\e2|selected[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~1_combout\,
	datab => \q1|DOUT\(3),
	datac => \e2|selected[3]~12_combout\,
	datad => \q3|DOUT\(3),
	combout => \e2|selected[3]~13_combout\);

-- Location: LCCOMB_X80_Y4_N10
\e2|selected[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~15_combout\ = (pc(2) & (((\e2|selected[3]~13_combout\)))) # (!pc(2) & ((pc(3) & (\e2|selected[3]~14_combout\)) # (!pc(3) & ((\e2|selected[3]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[3]~14_combout\,
	datab => pc(2),
	datac => \e2|selected[3]~13_combout\,
	datad => pc(3),
	combout => \e2|selected[3]~15_combout\);

-- Location: LCCOMB_X82_Y4_N10
\e3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~8_combout\ = (pc(0) & (((pc(3)) # (!pc(1))))) # (!pc(0) & (pc(2) & ((pc(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(2),
	datac => pc(1),
	datad => pc(3),
	combout => \e3|Add0~8_combout\);

-- Location: LCCOMB_X81_Y4_N8
\e3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~6_combout\ = ((\e2|selected[1]~7_combout\ $ (\e1|content~2_combout\ $ (!\e3|Add0~5\)))) # (GND)
-- \e3|Add0~7\ = CARRY((\e2|selected[1]~7_combout\ & ((\e1|content~2_combout\) # (!\e3|Add0~5\))) # (!\e2|selected[1]~7_combout\ & (\e1|content~2_combout\ & !\e3|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[1]~7_combout\,
	datab => \e1|content~2_combout\,
	datad => VCC,
	cin => \e3|Add0~5\,
	combout => \e3|Add0~6_combout\,
	cout => \e3|Add0~7\);

-- Location: LCCOMB_X81_Y4_N10
\e3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~9_combout\ = (\e2|selected[2]~11_combout\ & ((\e3|Add0~8_combout\ & (\e3|Add0~7\ & VCC)) # (!\e3|Add0~8_combout\ & (!\e3|Add0~7\)))) # (!\e2|selected[2]~11_combout\ & ((\e3|Add0~8_combout\ & (!\e3|Add0~7\)) # (!\e3|Add0~8_combout\ & 
-- ((\e3|Add0~7\) # (GND)))))
-- \e3|Add0~10\ = CARRY((\e2|selected[2]~11_combout\ & (!\e3|Add0~8_combout\ & !\e3|Add0~7\)) # (!\e2|selected[2]~11_combout\ & ((!\e3|Add0~7\) # (!\e3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[2]~11_combout\,
	datab => \e3|Add0~8_combout\,
	datad => VCC,
	cin => \e3|Add0~7\,
	combout => \e3|Add0~9_combout\,
	cout => \e3|Add0~10\);

-- Location: LCCOMB_X81_Y4_N12
\e3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~11_combout\ = \e3|Add0~13_combout\ $ (\e3|Add0~10\ $ (!\e2|selected[3]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \e3|Add0~13_combout\,
	datad => \e2|selected[3]~15_combout\,
	cin => \e3|Add0~10\,
	combout => \e3|Add0~11_combout\);

-- Location: LCCOMB_X81_Y4_N0
\e4|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|selected[0]~0_combout\ = (\e3|Add0~9_combout\) # ((\e3|Add0~6_combout\) # (\e3|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~9_combout\,
	datab => \e3|Add0~6_combout\,
	datad => \e3|Add0~11_combout\,
	combout => \e4|selected[0]~0_combout\);

-- Location: LCCOMB_X81_Y4_N20
\e4|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|selected[0]~1_combout\ = (\e1|content~4_combout\ & (\e2|selected[0]~3_combout\ & ((\e3|Add0~4_combout\) # (\e4|selected[0]~0_combout\)))) # (!\e1|content~4_combout\ & (((\e3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[0]~3_combout\,
	datab => \e3|Add0~4_combout\,
	datac => \e4|selected[0]~0_combout\,
	datad => \e1|content~4_combout\,
	combout => \e4|selected[0]~1_combout\);

-- Location: LCCOMB_X79_Y4_N16
\clock_c|o5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o5\(0) = (GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & (\e4|selected[0]~1_combout\)) # (!GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & ((\clock_c|o5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[0]~1_combout\,
	datac => \clock_c|Equal0~4clkctrl_outclk\,
	datad => \clock_c|o5\(0),
	combout => \clock_c|o5\(0));

-- Location: LCCOMB_X79_Y4_N0
\e15|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e15|selected[0]~2_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o5\(0)))) # (!\KEY[0]~input_o\ & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \clock_c|o5\(0),
	combout => \e15|selected[0]~2_combout\);

-- Location: FF_X79_Y4_N1
\q5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e15|selected[0]~2_combout\,
	ena => \q5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(0));

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X81_Y3_N20
\clock_c|o6[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o6\(0) = (GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & (\e4|selected[0]~1_combout\)) # (!GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & ((\clock_c|o6\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[0]~1_combout\,
	datab => \clock_c|o6\(0),
	datad => \clock_c|o6[3]~0clkctrl_outclk\,
	combout => \clock_c|o6\(0));

-- Location: LCCOMB_X81_Y3_N8
\e16|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e16|selected[0]~2_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o6\(0)))) # (!\KEY[0]~input_o\ & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \clock_c|o6\(0),
	combout => \e16|selected[0]~2_combout\);

-- Location: FF_X81_Y3_N9
\q6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e16|selected[0]~2_combout\,
	ena => \q6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(0));

-- Location: LCCOMB_X80_Y4_N20
\e2|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~2_combout\ = (\e1|content~1_combout\ & ((\e1|content~0_combout\ & ((\q6|DOUT\(0)))) # (!\e1|content~0_combout\ & (\q5|DOUT\(0))))) # (!\e1|content~1_combout\ & (((\q6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(0),
	datab => \q6|DOUT\(0),
	datac => \e1|content~1_combout\,
	datad => \e1|content~0_combout\,
	combout => \e2|selected[0]~2_combout\);

-- Location: LCCOMB_X82_Y4_N14
\clock_c|o2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o2\(0) = (GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & (\e4|selected[0]~1_combout\)) # (!GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & ((\clock_c|o2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[0]~1_combout\,
	datac => \clock_c|o2\(0),
	datad => \clock_c|Equal0~1clkctrl_outclk\,
	combout => \clock_c|o2\(0));

-- Location: FF_X82_Y4_N15
\q2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_c|o2\(0),
	ena => \clock_c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(0));

-- Location: LCCOMB_X82_Y4_N30
\clock_c|o1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o1\(0) = (GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & (\e4|selected[0]~1_combout\)) # (!GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & ((\clock_c|o1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[0]~1_combout\,
	datac => \clock_c|o1\(0),
	datad => \clock_c|Equal0~0clkctrl_outclk\,
	combout => \clock_c|o1\(0));

-- Location: FF_X81_Y4_N25
\q1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clock_c|o1\(0),
	sload => VCC,
	ena => \clock_c|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(0));

-- Location: LCCOMB_X81_Y4_N24
\e2|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~0_combout\ = (\e1|content~1_combout\ & (((\q1|DOUT\(0)) # (\e1|content~0_combout\)))) # (!\e1|content~1_combout\ & (\q2|DOUT\(0) & ((!\e1|content~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~1_combout\,
	datab => \q2|DOUT\(0),
	datac => \q1|DOUT\(0),
	datad => \e1|content~0_combout\,
	combout => \e2|selected[0]~0_combout\);

-- Location: LCCOMB_X84_Y4_N8
\clock_c|o4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o4\(0) = (GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & (\e4|selected[0]~1_combout\)) # (!GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & ((\clock_c|o4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[0]~1_combout\,
	datab => \clock_c|o4\(0),
	datad => \clock_c|Equal0~3clkctrl_outclk\,
	combout => \clock_c|o4\(0));

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X84_Y4_N24
\e14|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e14|selected[0]~2_combout\ = (\KEY[0]~input_o\ & (\clock_c|o4\(0))) # (!\KEY[0]~input_o\ & ((\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \clock_c|o4\(0),
	datad => \SW[6]~input_o\,
	combout => \e14|selected[0]~2_combout\);

-- Location: FF_X84_Y4_N25
\q4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e14|selected[0]~2_combout\,
	ena => \q4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(0));

-- Location: LCCOMB_X83_Y4_N26
\clock_c|o3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o3\(0) = (GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & (\e4|selected[0]~1_combout\)) # (!GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & ((\clock_c|o3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[0]~1_combout\,
	datac => \clock_c|o3\(0),
	datad => \clock_c|Equal0~2clkctrl_outclk\,
	combout => \clock_c|o3\(0));

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X83_Y4_N4
\e13|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e13|selected[0]~2_combout\ = (\KEY[0]~input_o\ & (\clock_c|o3\(0))) # (!\KEY[0]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \clock_c|o3\(0),
	datad => \SW[2]~input_o\,
	combout => \e13|selected[0]~2_combout\);

-- Location: FF_X83_Y4_N5
\q3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e13|selected[0]~2_combout\,
	ena => \q3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(0));

-- Location: LCCOMB_X81_Y4_N16
\e2|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~1_combout\ = (\e2|selected[0]~0_combout\ & (((\q3|DOUT\(0)) # (!\e1|content~0_combout\)))) # (!\e2|selected[0]~0_combout\ & (\q4|DOUT\(0) & ((\e1|content~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[0]~0_combout\,
	datab => \q4|DOUT\(0),
	datac => \q3|DOUT\(0),
	datad => \e1|content~0_combout\,
	combout => \e2|selected[0]~1_combout\);

-- Location: LCCOMB_X81_Y4_N2
\e2|selected[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~3_combout\ = (pc(3) & ((pc(2) & ((\e2|selected[0]~1_combout\))) # (!pc(2) & (\e2|selected[0]~2_combout\)))) # (!pc(3) & (((\e2|selected[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(3),
	datab => pc(2),
	datac => \e2|selected[0]~2_combout\,
	datad => \e2|selected[0]~1_combout\,
	combout => \e2|selected[0]~3_combout\);

-- Location: LCCOMB_X81_Y4_N30
\pc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~2_combout\ = (\e3|Add0~9_combout\) # ((\e3|Add0~6_combout\) # ((\e3|Add0~4_combout\) # (\e3|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~9_combout\,
	datab => \e3|Add0~6_combout\,
	datac => \e3|Add0~4_combout\,
	datad => \e3|Add0~11_combout\,
	combout => \pc~2_combout\);

-- Location: LCCOMB_X76_Y4_N2
\e1|content~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~7_combout\ = (pc(2) & (pc(0) & (pc(1) & !pc(3)))) # (!pc(2) & (pc(3) & ((!pc(1)) # (!pc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \e1|content~7_combout\);

-- Location: LCCOMB_X81_Y4_N22
\pc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~4_combout\ = (\Equal0~8_combout\ & ((\e1|content~7_combout\) # ((\pc~2_combout\ & \e1|content~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~2_combout\,
	datab => \Equal0~8_combout\,
	datac => \e1|content~7_combout\,
	datad => \e1|content~4_combout\,
	combout => \pc~4_combout\);

-- Location: FF_X81_Y4_N23
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \pc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: LCCOMB_X76_Y4_N10
\pc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~6_combout\ = (!pc(0) & (\Equal0~8_combout\ & ((!pc(2)) # (!pc(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(3),
	datac => pc(2),
	datad => \Equal0~8_combout\,
	combout => \pc~6_combout\);

-- Location: LCCOMB_X77_Y4_N6
\pc[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[0]~feeder_combout\ = \pc~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc~6_combout\,
	combout => \pc[0]~feeder_combout\);

-- Location: FF_X77_Y4_N7
\pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pc[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: LCCOMB_X76_Y4_N6
\e1|content~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~5_combout\ = (pc(3) & (!pc(2) & (pc(0) $ (pc(1))))) # (!pc(3) & (pc(0) $ (((pc(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(3),
	datac => pc(2),
	datad => pc(1),
	combout => \e1|content~5_combout\);

-- Location: LCCOMB_X80_Y4_N12
\pc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~5_combout\ = (\e1|content~5_combout\ & (\Equal0~8_combout\ & ((\e3|Equal0~0_combout\) # (!\e1|content~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~5_combout\,
	datab => \Equal0~8_combout\,
	datac => \e1|content~4_combout\,
	datad => \e3|Equal0~0_combout\,
	combout => \pc~5_combout\);

-- Location: FF_X80_Y4_N13
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pc~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: LCCOMB_X77_Y4_N8
\clock_c|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|Equal0~4_combout\ = (!pc(1) & (pc(3) & !pc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datac => pc(3),
	datad => pc(2),
	combout => \clock_c|Equal0~4_combout\);

-- Location: CLKCTRL_G19
\clock_c|Equal0~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c|Equal0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c|Equal0~4clkctrl_outclk\);

-- Location: LCCOMB_X79_Y4_N18
\clock_c|o5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o5\(2) = (GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & (\e4|selected[2]~3_combout\)) # (!GLOBAL(\clock_c|Equal0~4clkctrl_outclk\) & ((\clock_c|o5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[2]~3_combout\,
	datac => \clock_c|Equal0~4clkctrl_outclk\,
	datad => \clock_c|o5\(2),
	combout => \clock_c|o5\(2));

-- Location: LCCOMB_X79_Y4_N14
\e15|selected[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e15|selected[2]~3_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o5\(2)))) # (!\KEY[0]~input_o\ & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \clock_c|o5\(2),
	combout => \e15|selected[2]~3_combout\);

-- Location: FF_X79_Y4_N15
\q5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e15|selected[2]~3_combout\,
	ena => \q5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(2));

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X81_Y3_N18
\clock_c|o6[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o6\(2) = (GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & (\e4|selected[2]~3_combout\)) # (!GLOBAL(\clock_c|o6[3]~0clkctrl_outclk\) & ((\clock_c|o6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|selected[2]~3_combout\,
	datac => \clock_c|o6[3]~0clkctrl_outclk\,
	datad => \clock_c|o6\(2),
	combout => \clock_c|o6\(2));

-- Location: LCCOMB_X81_Y3_N2
\e16|selected[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e16|selected[2]~3_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o6\(2)))) # (!\KEY[0]~input_o\ & (\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \clock_c|o6\(2),
	combout => \e16|selected[2]~3_combout\);

-- Location: FF_X81_Y3_N3
\q6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e16|selected[2]~3_combout\,
	ena => \q6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(2));

-- Location: LCCOMB_X80_Y4_N8
\e2|selected[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~10_combout\ = (\e1|content~1_combout\ & ((\e1|content~0_combout\ & ((\q6|DOUT\(2)))) # (!\e1|content~0_combout\ & (\q5|DOUT\(2))))) # (!\e1|content~1_combout\ & (((\q6|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(2),
	datab => \q6|DOUT\(2),
	datac => \e1|content~1_combout\,
	datad => \e1|content~0_combout\,
	combout => \e2|selected[2]~10_combout\);

-- Location: LCCOMB_X82_Y4_N26
\clock_c|o2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o2\(2) = (GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & (\e4|selected[2]~3_combout\)) # (!GLOBAL(\clock_c|Equal0~1clkctrl_outclk\) & ((\clock_c|o2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|selected[2]~3_combout\,
	datac => \clock_c|o2\(2),
	datad => \clock_c|Equal0~1clkctrl_outclk\,
	combout => \clock_c|o2\(2));

-- Location: FF_X82_Y4_N27
\q2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_c|o2\(2),
	ena => \clock_c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(2));

-- Location: LCCOMB_X80_Y4_N18
\e2|selected[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~8_combout\ = (\e1|content~1_combout\ & (((\q1|DOUT\(2)) # (\e1|content~0_combout\)))) # (!\e1|content~1_combout\ & (\q2|DOUT\(2) & ((!\e1|content~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~1_combout\,
	datab => \q2|DOUT\(2),
	datac => \q1|DOUT\(2),
	datad => \e1|content~0_combout\,
	combout => \e2|selected[2]~8_combout\);

-- Location: LCCOMB_X84_Y4_N30
\clock_c|o4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o4\(2) = (GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & ((\e4|selected[2]~3_combout\))) # (!GLOBAL(\clock_c|Equal0~3clkctrl_outclk\) & (\clock_c|o4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_c|o4\(2),
	datac => \e4|selected[2]~3_combout\,
	datad => \clock_c|Equal0~3clkctrl_outclk\,
	combout => \clock_c|o4\(2));

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X84_Y4_N6
\e14|selected[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e14|selected[2]~3_combout\ = (\KEY[0]~input_o\ & (\clock_c|o4\(2))) # (!\KEY[0]~input_o\ & ((\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \clock_c|o4\(2),
	datad => \SW[8]~input_o\,
	combout => \e14|selected[2]~3_combout\);

-- Location: FF_X84_Y4_N7
\q4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e14|selected[2]~3_combout\,
	ena => \q4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(2));

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X83_Y4_N12
\clock_c|o3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o3\(2) = (GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & ((\e4|selected[2]~3_combout\))) # (!GLOBAL(\clock_c|Equal0~2clkctrl_outclk\) & (\clock_c|o3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_c|o3\(2),
	datab => \e4|selected[2]~3_combout\,
	datad => \clock_c|Equal0~2clkctrl_outclk\,
	combout => \clock_c|o3\(2));

-- Location: LCCOMB_X83_Y4_N18
\e13|selected[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e13|selected[2]~3_combout\ = (\KEY[0]~input_o\ & ((\clock_c|o3\(2)))) # (!\KEY[0]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \clock_c|o3\(2),
	combout => \e13|selected[2]~3_combout\);

-- Location: FF_X83_Y4_N19
\q3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e13|selected[2]~3_combout\,
	ena => \q3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(2));

-- Location: LCCOMB_X80_Y4_N4
\e2|selected[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~9_combout\ = (\e2|selected[2]~8_combout\ & (((\q3|DOUT\(2))) # (!\e1|content~0_combout\))) # (!\e2|selected[2]~8_combout\ & (\e1|content~0_combout\ & (\q4|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[2]~8_combout\,
	datab => \e1|content~0_combout\,
	datac => \q4|DOUT\(2),
	datad => \q3|DOUT\(2),
	combout => \e2|selected[2]~9_combout\);

-- Location: LCCOMB_X80_Y4_N14
\e2|selected[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~11_combout\ = (pc(2) & (((\e2|selected[2]~9_combout\)))) # (!pc(2) & ((pc(3) & (\e2|selected[2]~10_combout\)) # (!pc(3) & ((\e2|selected[2]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[2]~10_combout\,
	datab => pc(2),
	datac => \e2|selected[2]~9_combout\,
	datad => pc(3),
	combout => \e2|selected[2]~11_combout\);

-- Location: LCCOMB_X81_Y4_N26
\e3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Equal0~0_combout\ = (!\e3|Add0~9_combout\ & (!\e3|Add0~4_combout\ & (!\e3|Add0~6_combout\ & !\e3|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~9_combout\,
	datab => \e3|Add0~4_combout\,
	datac => \e3|Add0~6_combout\,
	datad => \e3|Add0~11_combout\,
	combout => \e3|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y4_N14
\e4|selected[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|selected[2]~3_combout\ = (\e3|Equal0~0_combout\ & (\e3|Add0~9_combout\)) # (!\e3|Equal0~0_combout\ & ((\e1|content~4_combout\ & ((\e2|selected[2]~11_combout\))) # (!\e1|content~4_combout\ & (\e3|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Equal0~0_combout\,
	datab => \e3|Add0~9_combout\,
	datac => \e2|selected[2]~11_combout\,
	datad => \e1|content~4_combout\,
	combout => \e4|selected[2]~3_combout\);

-- Location: LCCOMB_X79_Y4_N6
\clock_c|o1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_c|o1\(2) = (GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & ((\e4|selected[2]~3_combout\))) # (!GLOBAL(\clock_c|Equal0~0clkctrl_outclk\) & (\clock_c|o1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_c|o1\(2),
	datac => \e4|selected[2]~3_combout\,
	datad => \clock_c|Equal0~0clkctrl_outclk\,
	combout => \clock_c|o1\(2));

-- Location: FF_X80_Y4_N19
\q1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clock_c|o1\(2),
	sload => VCC,
	ena => \clock_c|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(2));

-- Location: LCCOMB_X114_Y16_N0
\e6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[0]~0_combout\ = (\q1|DOUT\(2) & (!\q1|DOUT\(1) & (\q1|DOUT\(3) $ (!\q1|DOUT\(0))))) # (!\q1|DOUT\(2) & (\q1|DOUT\(0) & (\q1|DOUT\(1) $ (!\q1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y16_N22
\e6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[1]~1_combout\ = (\q1|DOUT\(1) & ((\q1|DOUT\(0) & ((\q1|DOUT\(3)))) # (!\q1|DOUT\(0) & (\q1|DOUT\(2))))) # (!\q1|DOUT\(1) & (\q1|DOUT\(2) & (\q1|DOUT\(3) $ (\q1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y16_N16
\e6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[2]~2_combout\ = (\q1|DOUT\(2) & (((!\q1|DOUT\(1) & \q1|DOUT\(0))) # (!\q1|DOUT\(3)))) # (!\q1|DOUT\(2) & (((\q1|DOUT\(3)) # (\q1|DOUT\(0))) # (!\q1|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y16_N18
\e6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[3]~3_combout\ = (\q1|DOUT\(1) & ((\q1|DOUT\(2) & ((\q1|DOUT\(0)))) # (!\q1|DOUT\(2) & (\q1|DOUT\(3) & !\q1|DOUT\(0))))) # (!\q1|DOUT\(1) & (!\q1|DOUT\(3) & (\q1|DOUT\(2) $ (\q1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y16_N24
\e6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[4]~4_combout\ = (\q1|DOUT\(1) & (((!\q1|DOUT\(3) & \q1|DOUT\(0))))) # (!\q1|DOUT\(1) & ((\q1|DOUT\(2) & (!\q1|DOUT\(3))) # (!\q1|DOUT\(2) & ((\q1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y16_N10
\e6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[5]~5_combout\ = (\q1|DOUT\(2) & (\q1|DOUT\(0) & (\q1|DOUT\(1) $ (\q1|DOUT\(3))))) # (!\q1|DOUT\(2) & (!\q1|DOUT\(3) & ((\q1|DOUT\(1)) # (\q1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y16_N12
\e6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|rascSaida7seg[6]~6_combout\ = (\q1|DOUT\(0) & (!\q1|DOUT\(3) & (\q1|DOUT\(2) $ (!\q1|DOUT\(1))))) # (!\q1|DOUT\(0) & (!\q1|DOUT\(1) & (\q1|DOUT\(2) $ (!\q1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1|DOUT\(2),
	datab => \q1|DOUT\(1),
	datac => \q1|DOUT\(3),
	datad => \q1|DOUT\(0),
	combout => \e6|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X84_Y4_N0
\e7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[0]~0_combout\ = (\q2|DOUT\(3) & (\q2|DOUT\(0) & (\q2|DOUT\(1) $ (\q2|DOUT\(2))))) # (!\q2|DOUT\(3) & (!\q2|DOUT\(1) & (\q2|DOUT\(2) $ (\q2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X84_Y4_N14
\e7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[1]~1_combout\ = (\q2|DOUT\(3) & ((\q2|DOUT\(0) & (\q2|DOUT\(1))) # (!\q2|DOUT\(0) & ((\q2|DOUT\(2)))))) # (!\q2|DOUT\(3) & (\q2|DOUT\(2) & (\q2|DOUT\(1) $ (\q2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X84_Y4_N4
\e7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[2]~2_combout\ = (\q2|DOUT\(3) & (((!\q2|DOUT\(1) & \q2|DOUT\(0))) # (!\q2|DOUT\(2)))) # (!\q2|DOUT\(3) & (((\q2|DOUT\(2)) # (\q2|DOUT\(0))) # (!\q2|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X84_Y4_N2
\e7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[3]~3_combout\ = (\q2|DOUT\(1) & ((\q2|DOUT\(2) & ((\q2|DOUT\(0)))) # (!\q2|DOUT\(2) & (\q2|DOUT\(3) & !\q2|DOUT\(0))))) # (!\q2|DOUT\(1) & (!\q2|DOUT\(3) & (\q2|DOUT\(2) $ (\q2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X84_Y4_N16
\e7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[4]~4_combout\ = (\q2|DOUT\(1) & (!\q2|DOUT\(3) & ((\q2|DOUT\(0))))) # (!\q2|DOUT\(1) & ((\q2|DOUT\(2) & (!\q2|DOUT\(3))) # (!\q2|DOUT\(2) & ((\q2|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X84_Y4_N18
\e7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[5]~5_combout\ = (\q2|DOUT\(1) & (!\q2|DOUT\(3) & ((\q2|DOUT\(0)) # (!\q2|DOUT\(2))))) # (!\q2|DOUT\(1) & (\q2|DOUT\(0) & (\q2|DOUT\(3) $ (!\q2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X84_Y4_N12
\e7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e7|rascSaida7seg[6]~6_combout\ = (\q2|DOUT\(0) & (!\q2|DOUT\(3) & (\q2|DOUT\(1) $ (!\q2|DOUT\(2))))) # (!\q2|DOUT\(0) & (!\q2|DOUT\(1) & (\q2|DOUT\(3) $ (!\q2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(3),
	datab => \q2|DOUT\(1),
	datac => \q2|DOUT\(2),
	datad => \q2|DOUT\(0),
	combout => \e7|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X83_Y4_N16
\e8|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[0]~0_combout\ = (\q3|DOUT\(2) & (!\q3|DOUT\(1) & (\q3|DOUT\(0) $ (!\q3|DOUT\(3))))) # (!\q3|DOUT\(2) & (\q3|DOUT\(0) & (\q3|DOUT\(1) $ (!\q3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(2),
	datab => \q3|DOUT\(1),
	datac => \q3|DOUT\(0),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X83_Y4_N6
\e8|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[1]~1_combout\ = (\q3|DOUT\(1) & ((\q3|DOUT\(0) & ((\q3|DOUT\(3)))) # (!\q3|DOUT\(0) & (\q3|DOUT\(2))))) # (!\q3|DOUT\(1) & (\q3|DOUT\(2) & (\q3|DOUT\(0) $ (\q3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(2),
	datab => \q3|DOUT\(1),
	datac => \q3|DOUT\(0),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X77_Y4_N16
\e8|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[2]~2_combout\ = (\q3|DOUT\(2) & (((\q3|DOUT\(0) & !\q3|DOUT\(1))) # (!\q3|DOUT\(3)))) # (!\q3|DOUT\(2) & ((\q3|DOUT\(0)) # ((\q3|DOUT\(3)) # (!\q3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(0),
	datab => \q3|DOUT\(2),
	datac => \q3|DOUT\(1),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X77_Y4_N20
\e8|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[3]~3_combout\ = (\q3|DOUT\(1) & ((\q3|DOUT\(0) & (\q3|DOUT\(2))) # (!\q3|DOUT\(0) & (!\q3|DOUT\(2) & \q3|DOUT\(3))))) # (!\q3|DOUT\(1) & (!\q3|DOUT\(3) & (\q3|DOUT\(0) $ (\q3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(0),
	datab => \q3|DOUT\(2),
	datac => \q3|DOUT\(1),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X83_Y4_N20
\e8|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[4]~4_combout\ = (\q3|DOUT\(1) & (((\q3|DOUT\(0) & !\q3|DOUT\(3))))) # (!\q3|DOUT\(1) & ((\q3|DOUT\(2) & ((!\q3|DOUT\(3)))) # (!\q3|DOUT\(2) & (\q3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(2),
	datab => \q3|DOUT\(1),
	datac => \q3|DOUT\(0),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X83_Y4_N30
\e8|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[5]~5_combout\ = (\q3|DOUT\(2) & (\q3|DOUT\(0) & (\q3|DOUT\(1) $ (\q3|DOUT\(3))))) # (!\q3|DOUT\(2) & (!\q3|DOUT\(3) & ((\q3|DOUT\(1)) # (\q3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(2),
	datab => \q3|DOUT\(1),
	datac => \q3|DOUT\(0),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X77_Y4_N14
\e8|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e8|rascSaida7seg[6]~6_combout\ = (\q3|DOUT\(0) & (!\q3|DOUT\(3) & (\q3|DOUT\(2) $ (!\q3|DOUT\(1))))) # (!\q3|DOUT\(0) & (!\q3|DOUT\(1) & (\q3|DOUT\(2) $ (!\q3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(0),
	datab => \q3|DOUT\(2),
	datac => \q3|DOUT\(1),
	datad => \q3|DOUT\(3),
	combout => \e8|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X84_Y4_N20
\e9|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[0]~0_combout\ = (\q4|DOUT\(3) & (\q4|DOUT\(0) & (\q4|DOUT\(1) $ (\q4|DOUT\(2))))) # (!\q4|DOUT\(3) & (!\q4|DOUT\(1) & (\q4|DOUT\(0) $ (\q4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(1),
	datab => \q4|DOUT\(0),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(2),
	combout => \e9|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X84_Y4_N10
\e9|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[1]~1_combout\ = (\q4|DOUT\(1) & ((\q4|DOUT\(0) & (\q4|DOUT\(3))) # (!\q4|DOUT\(0) & ((\q4|DOUT\(2)))))) # (!\q4|DOUT\(1) & (\q4|DOUT\(2) & (\q4|DOUT\(0) $ (\q4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(1),
	datab => \q4|DOUT\(0),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(2),
	combout => \e9|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X84_Y4_N28
\e9|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[2]~2_combout\ = (\q4|DOUT\(3) & (((!\q4|DOUT\(1) & \q4|DOUT\(0))) # (!\q4|DOUT\(2)))) # (!\q4|DOUT\(3) & (((\q4|DOUT\(0)) # (\q4|DOUT\(2))) # (!\q4|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(1),
	datab => \q4|DOUT\(0),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(2),
	combout => \e9|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X77_Y4_N10
\e9|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[3]~3_combout\ = (\q4|DOUT\(1) & ((\q4|DOUT\(2) & ((\q4|DOUT\(0)))) # (!\q4|DOUT\(2) & (\q4|DOUT\(3) & !\q4|DOUT\(0))))) # (!\q4|DOUT\(1) & (!\q4|DOUT\(3) & (\q4|DOUT\(2) $ (\q4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(2),
	datab => \q4|DOUT\(1),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(0),
	combout => \e9|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X77_Y4_N28
\e9|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[4]~4_combout\ = (\q4|DOUT\(1) & (((!\q4|DOUT\(3) & \q4|DOUT\(0))))) # (!\q4|DOUT\(1) & ((\q4|DOUT\(2) & (!\q4|DOUT\(3))) # (!\q4|DOUT\(2) & ((\q4|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(2),
	datab => \q4|DOUT\(1),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(0),
	combout => \e9|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X77_Y4_N26
\e9|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[5]~5_combout\ = (\q4|DOUT\(2) & (\q4|DOUT\(0) & (\q4|DOUT\(1) $ (\q4|DOUT\(3))))) # (!\q4|DOUT\(2) & (!\q4|DOUT\(3) & ((\q4|DOUT\(1)) # (\q4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(2),
	datab => \q4|DOUT\(1),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(0),
	combout => \e9|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X77_Y4_N24
\e9|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e9|rascSaida7seg[6]~6_combout\ = (\q4|DOUT\(0) & (!\q4|DOUT\(3) & (\q4|DOUT\(2) $ (!\q4|DOUT\(1))))) # (!\q4|DOUT\(0) & (!\q4|DOUT\(1) & (\q4|DOUT\(2) $ (!\q4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4|DOUT\(2),
	datab => \q4|DOUT\(1),
	datac => \q4|DOUT\(3),
	datad => \q4|DOUT\(0),
	combout => \e9|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X79_Y4_N8
\e10|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[0]~0_combout\ = (\q5|DOUT\(3) & (\q5|DOUT\(0) & (\q5|DOUT\(1) $ (\q5|DOUT\(2))))) # (!\q5|DOUT\(3) & (!\q5|DOUT\(1) & (\q5|DOUT\(2) $ (\q5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X79_Y4_N2
\e10|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[1]~1_combout\ = (\q5|DOUT\(3) & ((\q5|DOUT\(0) & (\q5|DOUT\(1))) # (!\q5|DOUT\(0) & ((\q5|DOUT\(2)))))) # (!\q5|DOUT\(3) & (\q5|DOUT\(2) & (\q5|DOUT\(1) $ (\q5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X79_Y4_N24
\e10|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[2]~2_combout\ = (\q5|DOUT\(3) & (((!\q5|DOUT\(1) & \q5|DOUT\(0))) # (!\q5|DOUT\(2)))) # (!\q5|DOUT\(3) & (((\q5|DOUT\(2)) # (\q5|DOUT\(0))) # (!\q5|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X79_Y4_N22
\e10|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[3]~3_combout\ = (\q5|DOUT\(1) & ((\q5|DOUT\(2) & ((\q5|DOUT\(0)))) # (!\q5|DOUT\(2) & (\q5|DOUT\(3) & !\q5|DOUT\(0))))) # (!\q5|DOUT\(1) & (!\q5|DOUT\(3) & (\q5|DOUT\(2) $ (\q5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X79_Y4_N4
\e10|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[4]~4_combout\ = (\q5|DOUT\(1) & (!\q5|DOUT\(3) & ((\q5|DOUT\(0))))) # (!\q5|DOUT\(1) & ((\q5|DOUT\(2) & (!\q5|DOUT\(3))) # (!\q5|DOUT\(2) & ((\q5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X79_Y4_N30
\e10|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[5]~5_combout\ = (\q5|DOUT\(1) & (!\q5|DOUT\(3) & ((\q5|DOUT\(0)) # (!\q5|DOUT\(2))))) # (!\q5|DOUT\(1) & (\q5|DOUT\(0) & (\q5|DOUT\(3) $ (!\q5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X79_Y4_N28
\e10|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e10|rascSaida7seg[6]~6_combout\ = (\q5|DOUT\(0) & (!\q5|DOUT\(3) & (\q5|DOUT\(1) $ (!\q5|DOUT\(2))))) # (!\q5|DOUT\(0) & (!\q5|DOUT\(1) & (\q5|DOUT\(3) $ (!\q5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q5|DOUT\(3),
	datab => \q5|DOUT\(1),
	datac => \q5|DOUT\(2),
	datad => \q5|DOUT\(0),
	combout => \e10|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X81_Y3_N4
\e11|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[0]~0_combout\ = (\q6|DOUT\(2) & (!\q6|DOUT\(1) & (\q6|DOUT\(0) $ (!\q6|DOUT\(3))))) # (!\q6|DOUT\(2) & (\q6|DOUT\(0) & (\q6|DOUT\(1) $ (!\q6|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X81_Y3_N22
\e11|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[1]~1_combout\ = (\q6|DOUT\(1) & ((\q6|DOUT\(0) & ((\q6|DOUT\(3)))) # (!\q6|DOUT\(0) & (\q6|DOUT\(2))))) # (!\q6|DOUT\(1) & (\q6|DOUT\(2) & (\q6|DOUT\(0) $ (\q6|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X81_Y3_N16
\e11|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[2]~2_combout\ = (\q6|DOUT\(2) & (((\q6|DOUT\(0) & !\q6|DOUT\(1))) # (!\q6|DOUT\(3)))) # (!\q6|DOUT\(2) & ((\q6|DOUT\(0)) # ((\q6|DOUT\(3)) # (!\q6|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X81_Y3_N6
\e11|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[3]~3_combout\ = (\q6|DOUT\(1) & ((\q6|DOUT\(0) & (\q6|DOUT\(2))) # (!\q6|DOUT\(0) & (!\q6|DOUT\(2) & \q6|DOUT\(3))))) # (!\q6|DOUT\(1) & (!\q6|DOUT\(3) & (\q6|DOUT\(0) $ (\q6|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X81_Y3_N12
\e11|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[4]~4_combout\ = (\q6|DOUT\(1) & (\q6|DOUT\(0) & ((!\q6|DOUT\(3))))) # (!\q6|DOUT\(1) & ((\q6|DOUT\(2) & ((!\q6|DOUT\(3)))) # (!\q6|DOUT\(2) & (\q6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X81_Y3_N30
\e11|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[5]~5_combout\ = (\q6|DOUT\(0) & (\q6|DOUT\(3) $ (((\q6|DOUT\(1)) # (!\q6|DOUT\(2)))))) # (!\q6|DOUT\(0) & (!\q6|DOUT\(2) & (\q6|DOUT\(1) & !\q6|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X81_Y3_N28
\e11|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e11|rascSaida7seg[6]~6_combout\ = (\q6|DOUT\(0) & (!\q6|DOUT\(3) & (\q6|DOUT\(2) $ (!\q6|DOUT\(1))))) # (!\q6|DOUT\(0) & (!\q6|DOUT\(1) & (\q6|DOUT\(2) $ (!\q6|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q6|DOUT\(2),
	datac => \q6|DOUT\(1),
	datad => \q6|DOUT\(3),
	combout => \e11|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X76_Y4_N24
\e1|content~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~8_combout\ = ((pc(3) & pc(2))) # (!pc(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datac => pc(2),
	datad => pc(0),
	combout => \e1|content~8_combout\);

-- Location: LCCOMB_X77_Y4_N4
\e1|content~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~9_combout\ = (pc(0) & (pc(1) & !pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datac => pc(1),
	datad => pc(3),
	combout => \e1|content~9_combout\);

-- Location: LCCOMB_X76_Y4_N16
\e1|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~3_combout\ = (pc(0) & (!pc(1) & ((!pc(3)) # (!pc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \e1|content~3_combout\);

-- Location: LCCOMB_X76_Y4_N22
\e1|content~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~10_combout\ = (pc(3) & !pc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datac => pc(2),
	combout => \e1|content~10_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_r1debug(0) <= \r1debug[0]~output_o\;

ww_r1debug(1) <= \r1debug[1]~output_o\;

ww_r1debug(2) <= \r1debug[2]~output_o\;

ww_r1debug(3) <= \r1debug[3]~output_o\;

ww_aluflagdebug <= \aluflagdebug~output_o\;

ww_outputdebug(0) <= \outputdebug[0]~output_o\;

ww_outputdebug(1) <= \outputdebug[1]~output_o\;

ww_outputdebug(2) <= \outputdebug[2]~output_o\;

ww_outputdebug(3) <= \outputdebug[3]~output_o\;

ww_outputdebug(4) <= \outputdebug[4]~output_o\;

ww_outputdebug(5) <= \outputdebug[5]~output_o\;

ww_outputdebug(6) <= \outputdebug[6]~output_o\;

ww_outputdebug(7) <= \outputdebug[7]~output_o\;

ww_outputdebug(8) <= \outputdebug[8]~output_o\;

ww_outputdebug(9) <= \outputdebug[9]~output_o\;

ww_outputdebug(10) <= \outputdebug[10]~output_o\;

ww_outputdebug(11) <= \outputdebug[11]~output_o\;

ww_aluresultDebug(0) <= \aluresultDebug[0]~output_o\;

ww_aluresultDebug(1) <= \aluresultDebug[1]~output_o\;

ww_aluresultDebug(2) <= \aluresultDebug[2]~output_o\;

ww_aluresultDebug(3) <= \aluresultDebug[3]~output_o\;

ww_regA(0) <= \regA[0]~output_o\;

ww_regA(1) <= \regA[1]~output_o\;

ww_regA(2) <= \regA[2]~output_o\;

ww_regA(3) <= \regA[3]~output_o\;

ww_regB(0) <= \regB[0]~output_o\;

ww_regB(1) <= \regB[1]~output_o\;

ww_regB(2) <= \regB[2]~output_o\;

ww_regB(3) <= \regB[3]~output_o\;
END structure;


