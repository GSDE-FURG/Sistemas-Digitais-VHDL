-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/10/2021 17:01:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Flip_Flop_Serie
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Flip_Flop_Serie_vhd_vec_tst IS
END Flip_Flop_Serie_vhd_vec_tst;
ARCHITECTURE Flip_Flop_Serie_arch OF Flip_Flop_Serie_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT Flip_Flop_Serie
	PORT (
	clock : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Flip_Flop_Serie
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	D => D,
	Q => Q
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- D
t_prcs_D: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		D <= '0';
		WAIT FOR 57500 ps;
		D <= '1';
		WAIT FOR 57500 ps;
	END LOOP;
	D <= '0';
	WAIT FOR 57500 ps;
	D <= '1';
WAIT;
END PROCESS t_prcs_D;
END Flip_Flop_Serie_arch;
