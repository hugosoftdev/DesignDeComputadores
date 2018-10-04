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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/26/2018 02:21:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          relogio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY relogio_vhd_vec_tst IS
END relogio_vhd_vec_tst;
ARCHITECTURE relogio_arch OF relogio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aluDebug : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL outputDebug : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pcDebug : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL zeroDisplayDebug : STD_LOGIC;
SIGNAL zeroFlagDebug : STD_LOGIC;
COMPONENT relogio
	PORT (
	aluDebug : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	HEX2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX6 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX7 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	outputDebug : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	pcDebug : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	zeroDisplayDebug : BUFFER STD_LOGIC;
	zeroFlagDebug : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : relogio
	PORT MAP (
-- list connections between master ports and signals
	aluDebug => aluDebug,
	CLOCK_50 => CLOCK_50,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	HEX7 => HEX7,
	outputDebug => outputDebug,
	pcDebug => pcDebug,
	zeroDisplayDebug => zeroDisplayDebug,
	zeroFlagDebug => zeroFlagDebug
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 40000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END relogio_arch;
