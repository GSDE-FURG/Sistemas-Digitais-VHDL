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
-- Generated on "05/15/2021 18:27:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Circuit_C10
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Circuit_C10_vhd_vec_tst IS
END Circuit_C10_vhd_vec_tst;
ARCHITECTURE Circuit_C10_arch OF Circuit_C10_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL G1gat : STD_LOGIC;
SIGNAL G2gat : STD_LOGIC;
SIGNAL G3gat : STD_LOGIC;
SIGNAL G4gat : STD_LOGIC;
SIGNAL G5gat : STD_LOGIC;
SIGNAL G6gat : STD_LOGIC;
SIGNAL G7gat : STD_LOGIC;
SIGNAL G8gat : STD_LOGIC;
SIGNAL Saida_x : STD_LOGIC;
COMPONENT Circuit_C10
	PORT (
	G1gat : IN STD_LOGIC;
	G2gat : IN STD_LOGIC;
	G3gat : IN STD_LOGIC;
	G4gat : IN STD_LOGIC;
	G5gat : IN STD_LOGIC;
	G6gat : IN STD_LOGIC;
	G7gat : IN STD_LOGIC;
	G8gat : IN STD_LOGIC;
	Saida_x : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Circuit_C10
	PORT MAP (
-- list connections between master ports and signals
	G1gat => G1gat,
	G2gat => G2gat,
	G3gat => G3gat,
	G4gat => G4gat,
	G5gat => G5gat,
	G6gat => G6gat,
	G7gat => G7gat,
	G8gat => G8gat,
	Saida_x => Saida_x
	);

-- G1gat
t_prcs_G1gat: PROCESS
BEGIN
	G1gat <= '0';
WAIT;
END PROCESS t_prcs_G1gat;

-- G2gat
t_prcs_G2gat: PROCESS
BEGIN
	G2gat <= '0';
WAIT;
END PROCESS t_prcs_G2gat;

-- G3gat
t_prcs_G3gat: PROCESS
BEGIN
	G3gat <= '0';
WAIT;
END PROCESS t_prcs_G3gat;

-- G4gat
t_prcs_G4gat: PROCESS
BEGIN
	G4gat <= '0';
WAIT;
END PROCESS t_prcs_G4gat;

-- G5gat
t_prcs_G5gat: PROCESS
BEGIN
	G5gat <= '0';
WAIT;
END PROCESS t_prcs_G5gat;

-- G6gat
t_prcs_G6gat: PROCESS
BEGIN
	G6gat <= '1';
WAIT;
END PROCESS t_prcs_G6gat;

-- G7gat
t_prcs_G7gat: PROCESS
BEGIN
	G7gat <= '1';
WAIT;
END PROCESS t_prcs_G7gat;

-- G8gat
t_prcs_G8gat: PROCESS
BEGIN
	G8gat <= '0';
WAIT;
END PROCESS t_prcs_G8gat;
END Circuit_C10_arch;
