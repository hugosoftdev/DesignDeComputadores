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

-- DATE "09/25/2018 16:11:35"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	aluDebug : OUT std_logic_vector(3 DOWNTO 0);
	outputDebug : OUT std_logic_vector(8 DOWNTO 0);
	zeroFlagDebug : OUT std_logic;
	zeroDisplayDebug : OUT std_logic;
	pcDebug : OUT std_logic_vector(3 DOWNTO 0)
	);
END relogio;

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
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_aluDebug : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outputDebug : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_zeroFlagDebug : std_logic;
SIGNAL ww_zeroDisplayDebug : std_logic;
SIGNAL ww_pcDebug : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \aluDebug[0]~output_o\ : std_logic;
SIGNAL \aluDebug[1]~output_o\ : std_logic;
SIGNAL \aluDebug[2]~output_o\ : std_logic;
SIGNAL \aluDebug[3]~output_o\ : std_logic;
SIGNAL \outputDebug[0]~output_o\ : std_logic;
SIGNAL \outputDebug[1]~output_o\ : std_logic;
SIGNAL \outputDebug[2]~output_o\ : std_logic;
SIGNAL \outputDebug[3]~output_o\ : std_logic;
SIGNAL \outputDebug[4]~output_o\ : std_logic;
SIGNAL \outputDebug[5]~output_o\ : std_logic;
SIGNAL \outputDebug[6]~output_o\ : std_logic;
SIGNAL \outputDebug[7]~output_o\ : std_logic;
SIGNAL \outputDebug[8]~output_o\ : std_logic;
SIGNAL \zeroFlagDebug~output_o\ : std_logic;
SIGNAL \zeroDisplayDebug~output_o\ : std_logic;
SIGNAL \pcDebug[0]~output_o\ : std_logic;
SIGNAL \pcDebug[1]~output_o\ : std_logic;
SIGNAL \pcDebug[2]~output_o\ : std_logic;
SIGNAL \pcDebug[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \q8|Add0~1_combout\ : std_logic;
SIGNAL \q8|pcOut~6_combout\ : std_logic;
SIGNAL \e1|content~0_combout\ : std_logic;
SIGNAL \zeroDisplay~q\ : std_logic;
SIGNAL \e1|content~4_combout\ : std_logic;
SIGNAL \e3|Add0~8_combout\ : std_logic;
SIGNAL \t1|result[2]~2_combout\ : std_logic;
SIGNAL \e1|content~8_combout\ : std_logic;
SIGNAL \e1|content~6_combout\ : std_logic;
SIGNAL \e1|content~7_combout\ : std_logic;
SIGNAL \e6|Equal0~5_combout\ : std_logic;
SIGNAL \e6|Equal0~4_combout\ : std_logic;
SIGNAL \e2|selected[2]~9_combout\ : std_logic;
SIGNAL \e6|Equal0~1_combout\ : std_logic;
SIGNAL \e6|Equal0~2_combout\ : std_logic;
SIGNAL \e6|Equal0~0_combout\ : std_logic;
SIGNAL \e2|selected[2]~10_combout\ : std_logic;
SIGNAL \e6|Equal0~3_combout\ : std_logic;
SIGNAL \e2|selected[2]~11_combout\ : std_logic;
SIGNAL \e2|selected[2]~12_combout\ : std_logic;
SIGNAL \e2|selected[3]~4_combout\ : std_logic;
SIGNAL \t1|result[1]~0_combout\ : std_logic;
SIGNAL \e2|selected[1]~5_combout\ : std_logic;
SIGNAL \e2|selected[1]~6_combout\ : std_logic;
SIGNAL \e2|selected[1]~7_combout\ : std_logic;
SIGNAL \e2|selected[1]~8_combout\ : std_logic;
SIGNAL \t1|result[0]~1_combout\ : std_logic;
SIGNAL \e2|selected[0]~0_combout\ : std_logic;
SIGNAL \e2|selected[0]~1_combout\ : std_logic;
SIGNAL \e2|selected[0]~2_combout\ : std_logic;
SIGNAL \e2|selected[0]~3_combout\ : std_logic;
SIGNAL \e3|Add0~2_cout\ : std_logic;
SIGNAL \e3|Add0~4\ : std_logic;
SIGNAL \e3|Add0~7\ : std_logic;
SIGNAL \e3|Add0~9_combout\ : std_logic;
SIGNAL \e1|content~5_combout\ : std_logic;
SIGNAL \e3|Add0~11_combout\ : std_logic;
SIGNAL \t1|result[3]~3_combout\ : std_logic;
SIGNAL \e2|selected[3]~13_combout\ : std_logic;
SIGNAL \e2|selected[3]~14_combout\ : std_logic;
SIGNAL \e2|selected[3]~15_combout\ : std_logic;
SIGNAL \e2|selected[3]~16_combout\ : std_logic;
SIGNAL \e3|Add0~10\ : std_logic;
SIGNAL \e3|Add0~12_combout\ : std_logic;
SIGNAL \q8|pcOut~7_combout\ : std_logic;
SIGNAL \q8|pcOut~4_combout\ : std_logic;
SIGNAL \q8|pcOut~5_combout\ : std_logic;
SIGNAL \q8|Equal0~0_combout\ : std_logic;
SIGNAL \q8|Add0~0_combout\ : std_logic;
SIGNAL \q8|pcOut~3_combout\ : std_logic;
SIGNAL \e1|content~2_combout\ : std_logic;
SIGNAL \registerBValue[0]~0_combout\ : std_logic;
SIGNAL \e3|Add0~0_combout\ : std_logic;
SIGNAL \e3|Add0~3_combout\ : std_logic;
SIGNAL \e3|Equal0~0_combout\ : std_logic;
SIGNAL \q8|pcOut~2_combout\ : std_logic;
SIGNAL \e1|content~1_combout\ : std_logic;
SIGNAL \func~0_combout\ : std_logic;
SIGNAL \func~q\ : std_logic;
SIGNAL \e1|content~3_combout\ : std_logic;
SIGNAL \e3|Add0~5_combout\ : std_logic;
SIGNAL \e3|Add0~6_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[0]~16_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[0]~29_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[1]~26_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[2]~19_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[2]~30_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[3]~27_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[4]~22_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[4]~31_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[5]~28_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[6]~25_combout\ : std_logic;
SIGNAL \e4|rascSaida7seg[6]~32_combout\ : std_logic;
SIGNAL \q2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e5|o1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL registerBValue : std_logic_vector(3 DOWNTO 0);
SIGNAL \e6|o1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \q7|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL address : std_logic_vector(31 DOWNTO 0);
SIGNAL \q1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e5|o2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL whichDisplay : std_logic_vector(2 DOWNTO 0);
SIGNAL \e6|o6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \q6|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q8|pcOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e6|o2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \e6|o3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \e6|o4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \e6|o5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \e2|selected\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e5|o6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e5|o5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e5|o3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e5|o4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e1|ALT_INV_content~2_combout\ : std_logic;
SIGNAL \e1|ALT_INV_content~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
aluDebug <= ww_aluDebug;
outputDebug <= ww_outputDebug;
zeroFlagDebug <= ww_zeroFlagDebug;
zeroDisplayDebug <= ww_zeroDisplayDebug;
pcDebug <= ww_pcDebug;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\e1|ALT_INV_content~2_combout\ <= NOT \e1|content~2_combout\;
\e1|ALT_INV_content~1_combout\ <= NOT \e1|content~1_combout\;

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o1\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(0),
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(5),
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o2\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(0),
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(1),
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(2),
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(3),
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(4),
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(5),
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o3\(6),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(0),
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(1),
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(2),
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(3),
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(4),
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(5),
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o4\(6),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(0),
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(1),
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(2),
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(3),
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(4),
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(5),
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o5\(6),
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(0),
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(1),
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(2),
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(3),
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(4),
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(5),
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e6|o6\(6),
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

\aluDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~3_combout\,
	devoe => ww_devoe,
	o => \aluDebug[0]~output_o\);

\aluDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~6_combout\,
	devoe => ww_devoe,
	o => \aluDebug[1]~output_o\);

\aluDebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~9_combout\,
	devoe => ww_devoe,
	o => \aluDebug[2]~output_o\);

\aluDebug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Add0~12_combout\,
	devoe => ww_devoe,
	o => \aluDebug[3]~output_o\);

\outputDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~0_combout\,
	devoe => ww_devoe,
	o => \outputDebug[0]~output_o\);

\outputDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~1_combout\,
	devoe => ww_devoe,
	o => \outputDebug[1]~output_o\);

\outputDebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|ALT_INV_content~2_combout\,
	devoe => ww_devoe,
	o => \outputDebug[2]~output_o\);

\outputDebug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~3_combout\,
	devoe => ww_devoe,
	o => \outputDebug[3]~output_o\);

\outputDebug[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~4_combout\,
	devoe => ww_devoe,
	o => \outputDebug[4]~output_o\);

\outputDebug[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~5_combout\,
	devoe => ww_devoe,
	o => \outputDebug[5]~output_o\);

\outputDebug[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~6_combout\,
	devoe => ww_devoe,
	o => \outputDebug[6]~output_o\);

\outputDebug[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~7_combout\,
	devoe => ww_devoe,
	o => \outputDebug[7]~output_o\);

\outputDebug[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1|content~8_combout\,
	devoe => ww_devoe,
	o => \outputDebug[8]~output_o\);

\zeroFlagDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \zeroFlagDebug~output_o\);

\zeroDisplayDebug~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zeroDisplay~q\,
	devoe => ww_devoe,
	o => \zeroDisplayDebug~output_o\);

\pcDebug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q7|DOUT\(0),
	devoe => ww_devoe,
	o => \pcDebug[0]~output_o\);

\pcDebug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q7|DOUT\(1),
	devoe => ww_devoe,
	o => \pcDebug[1]~output_o\);

\pcDebug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q7|DOUT\(2),
	devoe => ww_devoe,
	o => \pcDebug[2]~output_o\);

\pcDebug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q7|DOUT\(3),
	devoe => ww_devoe,
	o => \pcDebug[3]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q7|DOUT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(2));

\q8|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|Add0~1_combout\ = \q7|DOUT\(3) $ (((\q7|DOUT\(0) & (\q7|DOUT\(1) & \q7|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q7|DOUT\(3),
	datab => \q7|DOUT\(0),
	datac => \q7|DOUT\(1),
	datad => \q7|DOUT\(2),
	combout => \q8|Add0~1_combout\);

\q8|pcOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|pcOut~6_combout\ = (\q8|Equal0~0_combout\ & (\q8|Add0~1_combout\ & ((\e3|Equal0~0_combout\) # (\zeroDisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q8|Equal0~0_combout\,
	datab => \q8|Add0~1_combout\,
	datac => \e3|Equal0~0_combout\,
	datad => \zeroDisplay~q\,
	combout => \q8|pcOut~6_combout\);

\q8|pcOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q8|pcOut\(3));

\q7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q7|DOUT\(3));

\address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q7|DOUT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(3));

\e1|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~0_combout\ = (address(0) & ((address(1) & (!address(2) & address(3))) # (!address(1) & (address(2) & !address(3))))) # (!address(0) & ((address(1) & (address(2) $ (!address(3)))) # (!address(1) & (!address(2) & address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~0_combout\);

zeroDisplay : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zeroDisplay~q\);

\e1|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~4_combout\ = (!address(0) & ((address(1) & (!address(2) & address(3))) # (!address(1) & (address(2) & !address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~4_combout\);

\registerBValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registerBValue(2));

\e3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~8_combout\ = \func~q\ $ (registerBValue(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~q\,
	datad => registerBValue(2),
	combout => \e3|Add0~8_combout\);

\t1|result[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|result[2]~2_combout\ = (\e3|Add0~9_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~9_combout\,
	datad => \zeroDisplay~q\,
	combout => \t1|result[2]~2_combout\);

\e1|content~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~8_combout\ = (address(2) & address(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	combout => \e1|content~8_combout\);

\whichDisplay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => whichDisplay(2));

\e1|content~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~6_combout\ = (address(1) & ((address(0) & ((address(3)) # (!address(2)))) # (!address(0) & (!address(2) & address(3))))) # (!address(1) & ((address(2) & ((!address(3)))) # (!address(2) & (address(0) & address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~6_combout\);

\whichDisplay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => whichDisplay(0));

\e1|content~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~7_combout\ = (address(3) & ((!address(2)))) # (!address(3) & (address(1) & address(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datac => address(3),
	datad => address(2),
	combout => \e1|content~7_combout\);

\whichDisplay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => whichDisplay(1));

\e6|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|Equal0~5_combout\ = (whichDisplay(2) & (whichDisplay(0) & !whichDisplay(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(2),
	datab => whichDisplay(0),
	datad => whichDisplay(1),
	combout => \e6|Equal0~5_combout\);

\e5|o6[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o6\(2) = (\e6|Equal0~5_combout\ & (\t1|result[2]~2_combout\)) # (!\e6|Equal0~5_combout\ & ((\e5|o6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[2]~2_combout\,
	datac => \e5|o6\(2),
	datad => \e6|Equal0~5_combout\,
	combout => \e5|o6\(2));

\q6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o6\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(2));

\e6|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|Equal0~4_combout\ = (whichDisplay(2) & (!whichDisplay(1) & !whichDisplay(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(2),
	datac => whichDisplay(1),
	datad => whichDisplay(0),
	combout => \e6|Equal0~4_combout\);

\e5|o5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o5\(2) = (\e6|Equal0~4_combout\ & (\t1|result[2]~2_combout\)) # (!\e6|Equal0~4_combout\ & ((\e5|o5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[2]~2_combout\,
	datac => \e5|o5\(2),
	datad => \e6|Equal0~4_combout\,
	combout => \e5|o5\(2));

\q5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o5\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(2));

\e2|selected[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~9_combout\ = (whichDisplay(1) & (\q6|DOUT\(2))) # (!whichDisplay(1) & ((whichDisplay(0) & (\q6|DOUT\(2))) # (!whichDisplay(0) & ((\q5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(2),
	datab => \q5|DOUT\(2),
	datac => whichDisplay(1),
	datad => whichDisplay(0),
	combout => \e2|selected[2]~9_combout\);

\e6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|Equal0~1_combout\ = (whichDisplay(0) & (!whichDisplay(2) & !whichDisplay(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(0),
	datac => whichDisplay(2),
	datad => whichDisplay(1),
	combout => \e6|Equal0~1_combout\);

\e5|o2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o2\(2) = (\e6|Equal0~1_combout\ & (\t1|result[2]~2_combout\)) # (!\e6|Equal0~1_combout\ & ((\e5|o2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[2]~2_combout\,
	datac => \e5|o2\(2),
	datad => \e6|Equal0~1_combout\,
	combout => \e5|o2\(2));

\q2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(2));

\e6|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|Equal0~2_combout\ = (whichDisplay(1) & (!whichDisplay(2) & !whichDisplay(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(1),
	datac => whichDisplay(2),
	datad => whichDisplay(0),
	combout => \e6|Equal0~2_combout\);

\e5|o3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o3\(2) = (\e6|Equal0~2_combout\ & (\t1|result[2]~2_combout\)) # (!\e6|Equal0~2_combout\ & ((\e5|o3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[2]~2_combout\,
	datac => \e5|o3\(2),
	datad => \e6|Equal0~2_combout\,
	combout => \e5|o3\(2));

\q3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o3\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(2));

\e6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|Equal0~0_combout\ = (!whichDisplay(2) & (!whichDisplay(1) & !whichDisplay(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => whichDisplay(2),
	datac => whichDisplay(1),
	datad => whichDisplay(0),
	combout => \e6|Equal0~0_combout\);

\e5|o1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o1\(2) = (\e6|Equal0~0_combout\ & (\t1|result[2]~2_combout\)) # (!\e6|Equal0~0_combout\ & ((\e5|o1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[2]~2_combout\,
	datac => \e5|o1\(2),
	datad => \e6|Equal0~0_combout\,
	combout => \e5|o1\(2));

\q1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(2));

\e2|selected[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~10_combout\ = (whichDisplay(0) & (((whichDisplay(1))))) # (!whichDisplay(0) & ((whichDisplay(1) & (\q3|DOUT\(2))) # (!whichDisplay(1) & ((\q1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(0),
	datab => \q3|DOUT\(2),
	datac => whichDisplay(1),
	datad => \q1|DOUT\(2),
	combout => \e2|selected[2]~10_combout\);

\e6|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|Equal0~3_combout\ = (whichDisplay(1) & (whichDisplay(0) & !whichDisplay(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(1),
	datab => whichDisplay(0),
	datad => whichDisplay(2),
	combout => \e6|Equal0~3_combout\);

\e5|o4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o4\(2) = (\e6|Equal0~3_combout\ & (\t1|result[2]~2_combout\)) # (!\e6|Equal0~3_combout\ & ((\e5|o4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[2]~2_combout\,
	datac => \e5|o4\(2),
	datad => \e6|Equal0~3_combout\,
	combout => \e5|o4\(2));

\q4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(2));

\e2|selected[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~11_combout\ = (whichDisplay(0) & ((\e2|selected[2]~10_combout\ & ((\q4|DOUT\(2)))) # (!\e2|selected[2]~10_combout\ & (\q2|DOUT\(2))))) # (!whichDisplay(0) & (((\e2|selected[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(2),
	datab => whichDisplay(0),
	datac => \e2|selected[2]~10_combout\,
	datad => \q4|DOUT\(2),
	combout => \e2|selected[2]~11_combout\);

\e2|selected[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[2]~12_combout\ = (whichDisplay(2) & (\e2|selected[2]~9_combout\)) # (!whichDisplay(2) & ((\e2|selected[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[2]~9_combout\,
	datab => \e2|selected[2]~11_combout\,
	datad => whichDisplay(2),
	combout => \e2|selected[2]~12_combout\);

\e2|selected[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~4_combout\ = (!whichDisplay(1)) # (!whichDisplay(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => whichDisplay(2),
	datad => whichDisplay(1),
	combout => \e2|selected[3]~4_combout\);

\e2|selected[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected\(2) = (\e2|selected[3]~4_combout\ & (\e2|selected[2]~12_combout\)) # (!\e2|selected[3]~4_combout\ & ((\e2|selected\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e2|selected[2]~12_combout\,
	datac => \e2|selected\(2),
	datad => \e2|selected[3]~4_combout\,
	combout => \e2|selected\(2));

\t1|result[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|result[1]~0_combout\ = (\e3|Add0~6_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~6_combout\,
	datad => \zeroDisplay~q\,
	combout => \t1|result[1]~0_combout\);

\e5|o6[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o6\(1) = (\e6|Equal0~5_combout\ & (\t1|result[1]~0_combout\)) # (!\e6|Equal0~5_combout\ & ((\e5|o6\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[1]~0_combout\,
	datac => \e5|o6\(1),
	datad => \e6|Equal0~5_combout\,
	combout => \e5|o6\(1));

\q6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o6\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(1));

\e5|o5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o5\(1) = (\e6|Equal0~4_combout\ & (\t1|result[1]~0_combout\)) # (!\e6|Equal0~4_combout\ & ((\e5|o5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[1]~0_combout\,
	datac => \e5|o5\(1),
	datad => \e6|Equal0~4_combout\,
	combout => \e5|o5\(1));

\q5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o5\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(1));

\e2|selected[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~5_combout\ = (whichDisplay(1) & (\q6|DOUT\(1))) # (!whichDisplay(1) & ((whichDisplay(0) & (\q6|DOUT\(1))) # (!whichDisplay(0) & ((\q5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(1),
	datab => \q5|DOUT\(1),
	datac => whichDisplay(1),
	datad => whichDisplay(0),
	combout => \e2|selected[1]~5_combout\);

\e5|o3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o3\(1) = (\e6|Equal0~2_combout\ & (\t1|result[1]~0_combout\)) # (!\e6|Equal0~2_combout\ & ((\e5|o3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[1]~0_combout\,
	datac => \e5|o3\(1),
	datad => \e6|Equal0~2_combout\,
	combout => \e5|o3\(1));

\q3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(1));

\e5|o2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o2\(1) = (\e6|Equal0~1_combout\ & (\t1|result[1]~0_combout\)) # (!\e6|Equal0~1_combout\ & ((\e5|o2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[1]~0_combout\,
	datac => \e5|o2\(1),
	datad => \e6|Equal0~1_combout\,
	combout => \e5|o2\(1));

\q2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(1));

\e5|o1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o1\(1) = (\e6|Equal0~0_combout\ & (\t1|result[1]~0_combout\)) # (!\e6|Equal0~0_combout\ & ((\e5|o1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[1]~0_combout\,
	datac => \e5|o1\(1),
	datad => \e6|Equal0~0_combout\,
	combout => \e5|o1\(1));

\q1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(1));

\e2|selected[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~6_combout\ = (whichDisplay(1) & (((whichDisplay(0))))) # (!whichDisplay(1) & ((whichDisplay(0) & (\q2|DOUT\(1))) # (!whichDisplay(0) & ((\q1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(1),
	datab => \q2|DOUT\(1),
	datac => whichDisplay(0),
	datad => \q1|DOUT\(1),
	combout => \e2|selected[1]~6_combout\);

\e5|o4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o4\(1) = (\e6|Equal0~3_combout\ & (\t1|result[1]~0_combout\)) # (!\e6|Equal0~3_combout\ & ((\e5|o4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[1]~0_combout\,
	datac => \e5|o4\(1),
	datad => \e6|Equal0~3_combout\,
	combout => \e5|o4\(1));

\q4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(1));

\e2|selected[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~7_combout\ = (whichDisplay(1) & ((\e2|selected[1]~6_combout\ & ((\q4|DOUT\(1)))) # (!\e2|selected[1]~6_combout\ & (\q3|DOUT\(1))))) # (!whichDisplay(1) & (((\e2|selected[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(1),
	datab => whichDisplay(1),
	datac => \e2|selected[1]~6_combout\,
	datad => \q4|DOUT\(1),
	combout => \e2|selected[1]~7_combout\);

\e2|selected[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[1]~8_combout\ = (whichDisplay(2) & (\e2|selected[1]~5_combout\)) # (!whichDisplay(2) & ((\e2|selected[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[1]~5_combout\,
	datab => \e2|selected[1]~7_combout\,
	datad => whichDisplay(2),
	combout => \e2|selected[1]~8_combout\);

\e2|selected[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected\(1) = (\e2|selected[3]~4_combout\ & (\e2|selected[1]~8_combout\)) # (!\e2|selected[3]~4_combout\ & ((\e2|selected\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e2|selected[1]~8_combout\,
	datac => \e2|selected\(1),
	datad => \e2|selected[3]~4_combout\,
	combout => \e2|selected\(1));

\t1|result[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|result[0]~1_combout\ = (\e3|Add0~3_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~3_combout\,
	datad => \zeroDisplay~q\,
	combout => \t1|result[0]~1_combout\);

\e5|o6[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o6\(0) = (\e6|Equal0~5_combout\ & (\t1|result[0]~1_combout\)) # (!\e6|Equal0~5_combout\ & ((\e5|o6\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[0]~1_combout\,
	datac => \e5|o6\(0),
	datad => \e6|Equal0~5_combout\,
	combout => \e5|o6\(0));

\q6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o6\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(0));

\e5|o5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o5\(0) = (\e6|Equal0~4_combout\ & (\t1|result[0]~1_combout\)) # (!\e6|Equal0~4_combout\ & ((\e5|o5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[0]~1_combout\,
	datac => \e5|o5\(0),
	datad => \e6|Equal0~4_combout\,
	combout => \e5|o5\(0));

\q5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o5\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(0));

\e2|selected[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~0_combout\ = (whichDisplay(1) & (\q6|DOUT\(0))) # (!whichDisplay(1) & ((whichDisplay(0) & (\q6|DOUT\(0))) # (!whichDisplay(0) & ((\q5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(0),
	datab => \q5|DOUT\(0),
	datac => whichDisplay(1),
	datad => whichDisplay(0),
	combout => \e2|selected[0]~0_combout\);

\e5|o2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o2\(0) = (\e6|Equal0~1_combout\ & (\t1|result[0]~1_combout\)) # (!\e6|Equal0~1_combout\ & ((\e5|o2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[0]~1_combout\,
	datac => \e5|o2\(0),
	datad => \e6|Equal0~1_combout\,
	combout => \e5|o2\(0));

\q2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(0));

\e5|o3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o3\(0) = (\e6|Equal0~2_combout\ & (\t1|result[0]~1_combout\)) # (!\e6|Equal0~2_combout\ & ((\e5|o3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[0]~1_combout\,
	datac => \e5|o3\(0),
	datad => \e6|Equal0~2_combout\,
	combout => \e5|o3\(0));

\q3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(0));

\e5|o1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o1\(0) = (\e6|Equal0~0_combout\ & (\t1|result[0]~1_combout\)) # (!\e6|Equal0~0_combout\ & ((\e5|o1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[0]~1_combout\,
	datac => \e5|o1\(0),
	datad => \e6|Equal0~0_combout\,
	combout => \e5|o1\(0));

\q1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(0));

\e2|selected[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~1_combout\ = (whichDisplay(0) & (((whichDisplay(1))))) # (!whichDisplay(0) & ((whichDisplay(1) & (\q3|DOUT\(0))) # (!whichDisplay(1) & ((\q1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(0),
	datab => \q3|DOUT\(0),
	datac => whichDisplay(1),
	datad => \q1|DOUT\(0),
	combout => \e2|selected[0]~1_combout\);

\e5|o4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o4\(0) = (\e6|Equal0~3_combout\ & (\t1|result[0]~1_combout\)) # (!\e6|Equal0~3_combout\ & ((\e5|o4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[0]~1_combout\,
	datac => \e5|o4\(0),
	datad => \e6|Equal0~3_combout\,
	combout => \e5|o4\(0));

\q4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(0));

\e2|selected[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~2_combout\ = (whichDisplay(0) & ((\e2|selected[0]~1_combout\ & ((\q4|DOUT\(0)))) # (!\e2|selected[0]~1_combout\ & (\q2|DOUT\(0))))) # (!whichDisplay(0) & (((\e2|selected[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2|DOUT\(0),
	datab => whichDisplay(0),
	datac => \e2|selected[0]~1_combout\,
	datad => \q4|DOUT\(0),
	combout => \e2|selected[0]~2_combout\);

\e2|selected[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[0]~3_combout\ = (whichDisplay(2) & (\e2|selected[0]~0_combout\)) # (!whichDisplay(2) & ((\e2|selected[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[0]~0_combout\,
	datab => \e2|selected[0]~2_combout\,
	datad => whichDisplay(2),
	combout => \e2|selected[0]~3_combout\);

\e2|selected[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected\(0) = (\e2|selected[3]~4_combout\ & (\e2|selected[0]~3_combout\)) # (!\e2|selected[3]~4_combout\ & ((\e2|selected\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e2|selected[0]~3_combout\,
	datac => \e2|selected\(0),
	datad => \e2|selected[3]~4_combout\,
	combout => \e2|selected\(0));

\e3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~2_cout\ = CARRY(!\func~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func~q\,
	datad => VCC,
	cout => \e3|Add0~2_cout\);

\e3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~3_combout\ = (\e3|Add0~0_combout\ & ((\e2|selected\(0) & (!\e3|Add0~2_cout\)) # (!\e2|selected\(0) & ((\e3|Add0~2_cout\) # (GND))))) # (!\e3|Add0~0_combout\ & ((\e2|selected\(0) & (\e3|Add0~2_cout\ & VCC)) # (!\e2|selected\(0) & 
-- (!\e3|Add0~2_cout\))))
-- \e3|Add0~4\ = CARRY((\e3|Add0~0_combout\ & ((!\e3|Add0~2_cout\) # (!\e2|selected\(0)))) # (!\e3|Add0~0_combout\ & (!\e2|selected\(0) & !\e3|Add0~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~0_combout\,
	datab => \e2|selected\(0),
	datad => VCC,
	cin => \e3|Add0~2_cout\,
	combout => \e3|Add0~3_combout\,
	cout => \e3|Add0~4\);

\e3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~6_combout\ = ((\e3|Add0~5_combout\ $ (\e2|selected\(1) $ (\e3|Add0~4\)))) # (GND)
-- \e3|Add0~7\ = CARRY((\e3|Add0~5_combout\ & (\e2|selected\(1) & !\e3|Add0~4\)) # (!\e3|Add0~5_combout\ & ((\e2|selected\(1)) # (!\e3|Add0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~5_combout\,
	datab => \e2|selected\(1),
	datad => VCC,
	cin => \e3|Add0~4\,
	combout => \e3|Add0~6_combout\,
	cout => \e3|Add0~7\);

\e3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~9_combout\ = (\e3|Add0~8_combout\ & ((\e2|selected\(2) & (!\e3|Add0~7\)) # (!\e2|selected\(2) & ((\e3|Add0~7\) # (GND))))) # (!\e3|Add0~8_combout\ & ((\e2|selected\(2) & (\e3|Add0~7\ & VCC)) # (!\e2|selected\(2) & (!\e3|Add0~7\))))
-- \e3|Add0~10\ = CARRY((\e3|Add0~8_combout\ & ((!\e3|Add0~7\) # (!\e2|selected\(2)))) # (!\e3|Add0~8_combout\ & (!\e2|selected\(2) & !\e3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~8_combout\,
	datab => \e2|selected\(2),
	datad => VCC,
	cin => \e3|Add0~7\,
	combout => \e3|Add0~9_combout\,
	cout => \e3|Add0~10\);

\e1|content~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~5_combout\ = (address(0) & ((address(1) & (address(2) & !address(3))) # (!address(1) & (address(2) $ (!address(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~5_combout\);

\registerBValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registerBValue(3));

\e3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~11_combout\ = \func~q\ $ (registerBValue(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~q\,
	datad => registerBValue(3),
	combout => \e3|Add0~11_combout\);

\t1|result[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|result[3]~3_combout\ = (\e3|Add0~12_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~12_combout\,
	datad => \zeroDisplay~q\,
	combout => \t1|result[3]~3_combout\);

\e5|o6[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o6\(3) = (\e6|Equal0~5_combout\ & (\t1|result[3]~3_combout\)) # (!\e6|Equal0~5_combout\ & ((\e5|o6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[3]~3_combout\,
	datac => \e5|o6\(3),
	datad => \e6|Equal0~5_combout\,
	combout => \e5|o6\(3));

\q6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o6\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q6|DOUT\(3));

\e5|o5[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o5\(3) = (\e6|Equal0~4_combout\ & (\t1|result[3]~3_combout\)) # (!\e6|Equal0~4_combout\ & ((\e5|o5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[3]~3_combout\,
	datac => \e5|o5\(3),
	datad => \e6|Equal0~4_combout\,
	combout => \e5|o5\(3));

\q5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o5\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q5|DOUT\(3));

\e2|selected[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~13_combout\ = (whichDisplay(1) & (\q6|DOUT\(3))) # (!whichDisplay(1) & ((whichDisplay(0) & (\q6|DOUT\(3))) # (!whichDisplay(0) & ((\q5|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q6|DOUT\(3),
	datab => \q5|DOUT\(3),
	datac => whichDisplay(1),
	datad => whichDisplay(0),
	combout => \e2|selected[3]~13_combout\);

\e5|o3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o3\(3) = (\e6|Equal0~2_combout\ & (\t1|result[3]~3_combout\)) # (!\e6|Equal0~2_combout\ & ((\e5|o3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[3]~3_combout\,
	datac => \e5|o3\(3),
	datad => \e6|Equal0~2_combout\,
	combout => \e5|o3\(3));

\q3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q3|DOUT\(3));

\e5|o2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o2\(3) = (\e6|Equal0~1_combout\ & (\t1|result[3]~3_combout\)) # (!\e6|Equal0~1_combout\ & ((\e5|o2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[3]~3_combout\,
	datac => \e5|o2\(3),
	datad => \e6|Equal0~1_combout\,
	combout => \e5|o2\(3));

\q2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2|DOUT\(3));

\e5|o1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o1\(3) = (\e6|Equal0~0_combout\ & (\t1|result[3]~3_combout\)) # (!\e6|Equal0~0_combout\ & ((\e5|o1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[3]~3_combout\,
	datac => \e5|o1\(3),
	datad => \e6|Equal0~0_combout\,
	combout => \e5|o1\(3));

\q1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1|DOUT\(3));

\e2|selected[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~14_combout\ = (whichDisplay(1) & (((whichDisplay(0))))) # (!whichDisplay(1) & ((whichDisplay(0) & (\q2|DOUT\(3))) # (!whichDisplay(0) & ((\q1|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => whichDisplay(1),
	datab => \q2|DOUT\(3),
	datac => whichDisplay(0),
	datad => \q1|DOUT\(3),
	combout => \e2|selected[3]~14_combout\);

\e5|o4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e5|o4\(3) = (\e6|Equal0~3_combout\ & (\t1|result[3]~3_combout\)) # (!\e6|Equal0~3_combout\ & ((\e5|o4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|result[3]~3_combout\,
	datac => \e5|o4\(3),
	datad => \e6|Equal0~3_combout\,
	combout => \e5|o4\(3));

\q4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e5|o4\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q4|DOUT\(3));

\e2|selected[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~15_combout\ = (whichDisplay(1) & ((\e2|selected[3]~14_combout\ & ((\q4|DOUT\(3)))) # (!\e2|selected[3]~14_combout\ & (\q3|DOUT\(3))))) # (!whichDisplay(1) & (((\e2|selected[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3|DOUT\(3),
	datab => whichDisplay(1),
	datac => \e2|selected[3]~14_combout\,
	datad => \q4|DOUT\(3),
	combout => \e2|selected[3]~15_combout\);

\e2|selected[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected[3]~16_combout\ = (whichDisplay(2) & (\e2|selected[3]~13_combout\)) # (!whichDisplay(2) & ((\e2|selected[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e2|selected[3]~13_combout\,
	datab => \e2|selected[3]~15_combout\,
	datad => whichDisplay(2),
	combout => \e2|selected[3]~16_combout\);

\e2|selected[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|selected\(3) = (\e2|selected[3]~4_combout\ & (\e2|selected[3]~16_combout\)) # (!\e2|selected[3]~4_combout\ & ((\e2|selected\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e2|selected[3]~16_combout\,
	datac => \e2|selected\(3),
	datad => \e2|selected[3]~4_combout\,
	combout => \e2|selected\(3));

\e3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~12_combout\ = \e3|Add0~11_combout\ $ (\e2|selected\(3) $ (\e3|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~11_combout\,
	datab => \e2|selected\(3),
	cin => \e3|Add0~10\,
	combout => \e3|Add0~12_combout\);

\q8|pcOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|pcOut~7_combout\ = \q7|DOUT\(2) $ (((\q7|DOUT\(0) & \q7|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q7|DOUT\(0),
	datab => \q7|DOUT\(1),
	datac => \q7|DOUT\(2),
	combout => \q8|pcOut~7_combout\);

\q8|pcOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|pcOut~4_combout\ = (\q8|pcOut~7_combout\ & ((\zeroDisplay~q\) # ((!\e3|Add0~3_combout\ & !\e3|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zeroDisplay~q\,
	datab => \e3|Add0~3_combout\,
	datac => \e3|Add0~6_combout\,
	datad => \q8|pcOut~7_combout\,
	combout => \q8|pcOut~4_combout\);

\q8|pcOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|pcOut~5_combout\ = (\q8|pcOut~4_combout\ & ((\zeroDisplay~q\) # ((!\e3|Add0~9_combout\ & !\e3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zeroDisplay~q\,
	datab => \e3|Add0~9_combout\,
	datac => \e3|Add0~12_combout\,
	datad => \q8|pcOut~4_combout\,
	combout => \q8|pcOut~5_combout\);

\q8|pcOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q8|pcOut\(2));

\q7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q7|DOUT\(2));

\q8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|Equal0~0_combout\ = (\q7|DOUT\(0)) # ((\q7|DOUT\(1)) # ((\q7|DOUT\(2)) # (!\q7|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q7|DOUT\(0),
	datab => \q7|DOUT\(1),
	datac => \q7|DOUT\(2),
	datad => \q7|DOUT\(3),
	combout => \q8|Equal0~0_combout\);

\q8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|Add0~0_combout\ = \q7|DOUT\(0) $ (\q7|DOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q7|DOUT\(0),
	datad => \q7|DOUT\(1),
	combout => \q8|Add0~0_combout\);

\q8|pcOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|pcOut~3_combout\ = (\q8|Equal0~0_combout\ & (\q8|Add0~0_combout\ & ((\e3|Equal0~0_combout\) # (\zeroDisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q8|Equal0~0_combout\,
	datab => \q8|Add0~0_combout\,
	datac => \e3|Equal0~0_combout\,
	datad => \zeroDisplay~q\,
	combout => \q8|pcOut~3_combout\);

\q8|pcOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q8|pcOut\(1));

\q7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q7|DOUT\(1));

\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q7|DOUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

\e1|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~2_combout\ = (address(0) & ((address(1) & (address(2) $ (address(3)))) # (!address(1) & ((address(2)) # (!address(3)))))) # (!address(0) & ((address(1) & ((address(3)) # (!address(2)))) # (!address(1) & (address(2) $ (address(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~2_combout\);

\registerBValue[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBValue[0]~0_combout\ = !\e1|content~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~2_combout\,
	combout => \registerBValue[0]~0_combout\);

\registerBValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \registerBValue[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registerBValue(0));

\e3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~0_combout\ = registerBValue(0) $ (\func~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => registerBValue(0),
	datad => \func~q\,
	combout => \e3|Add0~0_combout\);

\e3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Equal0~0_combout\ = (!\e3|Add0~3_combout\ & (!\e3|Add0~6_combout\ & (!\e3|Add0~9_combout\ & !\e3|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~3_combout\,
	datab => \e3|Add0~6_combout\,
	datac => \e3|Add0~9_combout\,
	datad => \e3|Add0~12_combout\,
	combout => \e3|Equal0~0_combout\);

\q8|pcOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q8|pcOut~2_combout\ = (!\q7|DOUT\(0) & (\q8|Equal0~0_combout\ & ((\e3|Equal0~0_combout\) # (\zeroDisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q7|DOUT\(0),
	datab => \e3|Equal0~0_combout\,
	datac => \zeroDisplay~q\,
	datad => \q8|Equal0~0_combout\,
	combout => \q8|pcOut~2_combout\);

\q8|pcOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q8|pcOut\(0));

\q7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q8|pcOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q7|DOUT\(0));

\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \q7|DOUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

\e1|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~1_combout\ = (address(0) & (address(1) $ (((address(2)) # (!address(3)))))) # (!address(0) & ((address(1) & ((address(3)) # (!address(2)))) # (!address(1) & (address(2) $ (address(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~1_combout\);

\func~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func~0_combout\ = !\e1|content~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1|content~1_combout\,
	combout => \func~0_combout\);

func : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \func~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \func~q\);

\e1|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|content~3_combout\ = (address(0) & ((address(1) & (address(2) & !address(3))) # (!address(1) & (address(2) $ (!address(3)))))) # (!address(0) & ((address(1) & (!address(2) & address(3))) # (!address(1) & (address(2) & !address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => address(1),
	datac => address(2),
	datad => address(3),
	combout => \e1|content~3_combout\);

\registerBValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \e1|content~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registerBValue(1));

\e3|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|Add0~5_combout\ = \func~q\ $ (registerBValue(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~q\,
	datad => registerBValue(1),
	combout => \e3|Add0~5_combout\);

\e4|rascSaida7seg[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[0]~16_combout\ = (\e3|Add0~9_combout\ & (!\e3|Add0~6_combout\ & (\e3|Add0~3_combout\ $ (!\e3|Add0~12_combout\)))) # (!\e3|Add0~9_combout\ & (\e3|Add0~3_combout\ & (\e3|Add0~6_combout\ $ (!\e3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~6_combout\,
	datab => \e3|Add0~3_combout\,
	datac => \e3|Add0~9_combout\,
	datad => \e3|Add0~12_combout\,
	combout => \e4|rascSaida7seg[0]~16_combout\);

\e4|rascSaida7seg[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[0]~29_combout\ = (\e4|rascSaida7seg[0]~16_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|rascSaida7seg[0]~16_combout\,
	datab => \zeroDisplay~q\,
	combout => \e4|rascSaida7seg[0]~29_combout\);

\e6|o1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(0) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[0]~29_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[0]~29_combout\,
	datac => \e6|o1\(0),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(0));

\e4|rascSaida7seg[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[1]~26_combout\ = (\t1|result[3]~3_combout\ & ((\t1|result[0]~1_combout\ & (\t1|result[1]~0_combout\)) # (!\t1|result[0]~1_combout\ & ((\t1|result[2]~2_combout\))))) # (!\t1|result[3]~3_combout\ & (\t1|result[2]~2_combout\ & 
-- (\t1|result[1]~0_combout\ $ (\t1|result[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|result[3]~3_combout\,
	datab => \t1|result[1]~0_combout\,
	datac => \t1|result[2]~2_combout\,
	datad => \t1|result[0]~1_combout\,
	combout => \e4|rascSaida7seg[1]~26_combout\);

\e6|o1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(1) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[1]~26_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[1]~26_combout\,
	datac => \e6|o1\(1),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(1));

\e4|rascSaida7seg[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[2]~19_combout\ = (\e3|Add0~12_combout\ & (\e3|Add0~9_combout\ & ((\e3|Add0~6_combout\) # (!\e3|Add0~3_combout\)))) # (!\e3|Add0~12_combout\ & (!\e3|Add0~9_combout\ & (\e3|Add0~6_combout\ & !\e3|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~12_combout\,
	datab => \e3|Add0~9_combout\,
	datac => \e3|Add0~6_combout\,
	datad => \e3|Add0~3_combout\,
	combout => \e4|rascSaida7seg[2]~19_combout\);

\e4|rascSaida7seg[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[2]~30_combout\ = (\e4|rascSaida7seg[2]~19_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|rascSaida7seg[2]~19_combout\,
	datab => \zeroDisplay~q\,
	combout => \e4|rascSaida7seg[2]~30_combout\);

\e6|o1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(2) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[2]~30_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[2]~30_combout\,
	datac => \e6|o1\(2),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(2));

\e4|rascSaida7seg[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[3]~27_combout\ = (\t1|result[1]~0_combout\ & ((\t1|result[0]~1_combout\ & (\t1|result[2]~2_combout\)) # (!\t1|result[0]~1_combout\ & (!\t1|result[2]~2_combout\ & \t1|result[3]~3_combout\)))) # (!\t1|result[1]~0_combout\ & 
-- (!\t1|result[3]~3_combout\ & (\t1|result[0]~1_combout\ $ (\t1|result[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|result[0]~1_combout\,
	datab => \t1|result[1]~0_combout\,
	datac => \t1|result[2]~2_combout\,
	datad => \t1|result[3]~3_combout\,
	combout => \e4|rascSaida7seg[3]~27_combout\);

\e6|o1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(3) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[3]~27_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[3]~27_combout\,
	datac => \e6|o1\(3),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(3));

\e4|rascSaida7seg[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[4]~22_combout\ = (\e3|Add0~6_combout\ & (\e3|Add0~3_combout\ & (!\e3|Add0~12_combout\))) # (!\e3|Add0~6_combout\ & ((\e3|Add0~9_combout\ & ((!\e3|Add0~12_combout\))) # (!\e3|Add0~9_combout\ & (\e3|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~3_combout\,
	datab => \e3|Add0~12_combout\,
	datac => \e3|Add0~6_combout\,
	datad => \e3|Add0~9_combout\,
	combout => \e4|rascSaida7seg[4]~22_combout\);

\e4|rascSaida7seg[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[4]~31_combout\ = (\e4|rascSaida7seg[4]~22_combout\ & !\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|rascSaida7seg[4]~22_combout\,
	datab => \zeroDisplay~q\,
	combout => \e4|rascSaida7seg[4]~31_combout\);

\e6|o1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(4) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[4]~31_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[4]~31_combout\,
	datac => \e6|o1\(4),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(4));

\e4|rascSaida7seg[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[5]~28_combout\ = (\t1|result[2]~2_combout\ & (\t1|result[0]~1_combout\ & (\t1|result[1]~0_combout\ $ (\t1|result[3]~3_combout\)))) # (!\t1|result[2]~2_combout\ & (!\t1|result[3]~3_combout\ & ((\t1|result[0]~1_combout\) # 
-- (\t1|result[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|result[2]~2_combout\,
	datab => \t1|result[0]~1_combout\,
	datac => \t1|result[1]~0_combout\,
	datad => \t1|result[3]~3_combout\,
	combout => \e4|rascSaida7seg[5]~28_combout\);

\e6|o1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(5) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[5]~28_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[5]~28_combout\,
	datac => \e6|o1\(5),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(5));

\e4|rascSaida7seg[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[6]~25_combout\ = (\e3|Add0~3_combout\ & (!\e3|Add0~12_combout\ & (\e3|Add0~6_combout\ $ (!\e3|Add0~9_combout\)))) # (!\e3|Add0~3_combout\ & (!\e3|Add0~6_combout\ & (\e3|Add0~9_combout\ $ (!\e3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e3|Add0~3_combout\,
	datab => \e3|Add0~6_combout\,
	datac => \e3|Add0~9_combout\,
	datad => \e3|Add0~12_combout\,
	combout => \e4|rascSaida7seg[6]~25_combout\);

\e4|rascSaida7seg[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \e4|rascSaida7seg[6]~32_combout\ = (\e4|rascSaida7seg[6]~25_combout\) # (\zeroDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e4|rascSaida7seg[6]~25_combout\,
	datab => \zeroDisplay~q\,
	combout => \e4|rascSaida7seg[6]~32_combout\);

\e6|o1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o1\(6) = (\e6|Equal0~0_combout\ & (\e4|rascSaida7seg[6]~32_combout\)) # (!\e6|Equal0~0_combout\ & ((\e6|o1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[6]~32_combout\,
	datac => \e6|o1\(6),
	datad => \e6|Equal0~0_combout\,
	combout => \e6|o1\(6));

\e6|o2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(0) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[0]~29_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[0]~29_combout\,
	datac => \e6|o2\(0),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(0));

\e6|o2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(1) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[1]~26_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[1]~26_combout\,
	datac => \e6|o2\(1),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(1));

\e6|o2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(2) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[2]~30_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[2]~30_combout\,
	datac => \e6|o2\(2),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(2));

\e6|o2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(3) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[3]~27_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[3]~27_combout\,
	datac => \e6|o2\(3),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(3));

\e6|o2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(4) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[4]~31_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[4]~31_combout\,
	datac => \e6|o2\(4),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(4));

\e6|o2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(5) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[5]~28_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[5]~28_combout\,
	datac => \e6|o2\(5),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(5));

\e6|o2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o2\(6) = (\e6|Equal0~1_combout\ & (\e4|rascSaida7seg[6]~32_combout\)) # (!\e6|Equal0~1_combout\ & ((\e6|o2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[6]~32_combout\,
	datac => \e6|o2\(6),
	datad => \e6|Equal0~1_combout\,
	combout => \e6|o2\(6));

\e6|o3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(0) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[0]~29_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[0]~29_combout\,
	datac => \e6|o3\(0),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(0));

\e6|o3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(1) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[1]~26_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[1]~26_combout\,
	datac => \e6|o3\(1),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(1));

\e6|o3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(2) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[2]~30_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[2]~30_combout\,
	datac => \e6|o3\(2),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(2));

\e6|o3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(3) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[3]~27_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[3]~27_combout\,
	datac => \e6|o3\(3),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(3));

\e6|o3[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(4) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[4]~31_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[4]~31_combout\,
	datac => \e6|o3\(4),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(4));

\e6|o3[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(5) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[5]~28_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[5]~28_combout\,
	datac => \e6|o3\(5),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(5));

\e6|o3[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o3\(6) = (\e6|Equal0~2_combout\ & (\e4|rascSaida7seg[6]~32_combout\)) # (!\e6|Equal0~2_combout\ & ((\e6|o3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[6]~32_combout\,
	datac => \e6|o3\(6),
	datad => \e6|Equal0~2_combout\,
	combout => \e6|o3\(6));

\e6|o4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(0) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[0]~29_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[0]~29_combout\,
	datac => \e6|o4\(0),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(0));

\e6|o4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(1) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[1]~26_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[1]~26_combout\,
	datac => \e6|o4\(1),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(1));

\e6|o4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(2) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[2]~30_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[2]~30_combout\,
	datac => \e6|o4\(2),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(2));

\e6|o4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(3) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[3]~27_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[3]~27_combout\,
	datac => \e6|o4\(3),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(3));

\e6|o4[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(4) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[4]~31_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[4]~31_combout\,
	datac => \e6|o4\(4),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(4));

\e6|o4[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(5) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[5]~28_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[5]~28_combout\,
	datac => \e6|o4\(5),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(5));

\e6|o4[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o4\(6) = (\e6|Equal0~3_combout\ & (\e4|rascSaida7seg[6]~32_combout\)) # (!\e6|Equal0~3_combout\ & ((\e6|o4\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[6]~32_combout\,
	datac => \e6|o4\(6),
	datad => \e6|Equal0~3_combout\,
	combout => \e6|o4\(6));

\e6|o5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(0) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[0]~29_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[0]~29_combout\,
	datac => \e6|o5\(0),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(0));

\e6|o5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(1) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[1]~26_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[1]~26_combout\,
	datac => \e6|o5\(1),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(1));

\e6|o5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(2) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[2]~30_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[2]~30_combout\,
	datac => \e6|o5\(2),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(2));

\e6|o5[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(3) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[3]~27_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[3]~27_combout\,
	datac => \e6|o5\(3),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(3));

\e6|o5[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(4) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[4]~31_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[4]~31_combout\,
	datac => \e6|o5\(4),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(4));

\e6|o5[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(5) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[5]~28_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[5]~28_combout\,
	datac => \e6|o5\(5),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(5));

\e6|o5[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o5\(6) = (\e6|Equal0~4_combout\ & (\e4|rascSaida7seg[6]~32_combout\)) # (!\e6|Equal0~4_combout\ & ((\e6|o5\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[6]~32_combout\,
	datac => \e6|o5\(6),
	datad => \e6|Equal0~4_combout\,
	combout => \e6|o5\(6));

\e6|o6[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(0) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[0]~29_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[0]~29_combout\,
	datac => \e6|o6\(0),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(0));

\e6|o6[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(1) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[1]~26_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[1]~26_combout\,
	datac => \e6|o6\(1),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(1));

\e6|o6[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(2) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[2]~30_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[2]~30_combout\,
	datac => \e6|o6\(2),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(2));

\e6|o6[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(3) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[3]~27_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[3]~27_combout\,
	datac => \e6|o6\(3),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(3));

\e6|o6[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(4) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[4]~31_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[4]~31_combout\,
	datac => \e6|o6\(4),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(4));

\e6|o6[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(5) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[5]~28_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[5]~28_combout\,
	datac => \e6|o6\(5),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(5));

\e6|o6[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e6|o6\(6) = (\e6|Equal0~5_combout\ & (\e4|rascSaida7seg[6]~32_combout\)) # (!\e6|Equal0~5_combout\ & ((\e6|o6\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e4|rascSaida7seg[6]~32_combout\,
	datac => \e6|o6\(6),
	datad => \e6|Equal0~5_combout\,
	combout => \e6|o6\(6));

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

ww_aluDebug(0) <= \aluDebug[0]~output_o\;

ww_aluDebug(1) <= \aluDebug[1]~output_o\;

ww_aluDebug(2) <= \aluDebug[2]~output_o\;

ww_aluDebug(3) <= \aluDebug[3]~output_o\;

ww_outputDebug(0) <= \outputDebug[0]~output_o\;

ww_outputDebug(1) <= \outputDebug[1]~output_o\;

ww_outputDebug(2) <= \outputDebug[2]~output_o\;

ww_outputDebug(3) <= \outputDebug[3]~output_o\;

ww_outputDebug(4) <= \outputDebug[4]~output_o\;

ww_outputDebug(5) <= \outputDebug[5]~output_o\;

ww_outputDebug(6) <= \outputDebug[6]~output_o\;

ww_outputDebug(7) <= \outputDebug[7]~output_o\;

ww_outputDebug(8) <= \outputDebug[8]~output_o\;

ww_zeroFlagDebug <= \zeroFlagDebug~output_o\;

ww_zeroDisplayDebug <= \zeroDisplayDebug~output_o\;

ww_pcDebug(0) <= \pcDebug[0]~output_o\;

ww_pcDebug(1) <= \pcDebug[1]~output_o\;

ww_pcDebug(2) <= \pcDebug[2]~output_o\;

ww_pcDebug(3) <= \pcDebug[3]~output_o\;
END structure;


