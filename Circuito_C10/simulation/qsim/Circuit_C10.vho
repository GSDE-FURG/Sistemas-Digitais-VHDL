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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/15/2021 18:27:27"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Circuit_C10 IS
    PORT (
	G1gat : IN std_logic;
	G2gat : IN std_logic;
	G3gat : IN std_logic;
	G4gat : IN std_logic;
	G5gat : IN std_logic;
	G6gat : IN std_logic;
	G7gat : IN std_logic;
	G8gat : IN std_logic;
	Saida_x : BUFFER std_logic
	);
END Circuit_C10;

ARCHITECTURE structure OF Circuit_C10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_G1gat : std_logic;
SIGNAL ww_G2gat : std_logic;
SIGNAL ww_G3gat : std_logic;
SIGNAL ww_G4gat : std_logic;
SIGNAL ww_G5gat : std_logic;
SIGNAL ww_G6gat : std_logic;
SIGNAL ww_G7gat : std_logic;
SIGNAL ww_G8gat : std_logic;
SIGNAL ww_Saida_x : std_logic;
SIGNAL \Saida_x~output_o\ : std_logic;
SIGNAL \G8gat~input_o\ : std_logic;
SIGNAL \G6gat~input_o\ : std_logic;
SIGNAL \G7gat~input_o\ : std_logic;
SIGNAL \U9|y~0_combout\ : std_logic;
SIGNAL \G5gat~input_o\ : std_logic;
SIGNAL \G1gat~input_o\ : std_logic;
SIGNAL \G2gat~input_o\ : std_logic;
SIGNAL \U9|y~1_combout\ : std_logic;
SIGNAL \G3gat~input_o\ : std_logic;
SIGNAL \G4gat~input_o\ : std_logic;
SIGNAL \U9|y~2_combout\ : std_logic;

BEGIN

ww_G1gat <= G1gat;
ww_G2gat <= G2gat;
ww_G3gat <= G3gat;
ww_G4gat <= G4gat;
ww_G5gat <= G5gat;
ww_G6gat <= G6gat;
ww_G7gat <= G7gat;
ww_G8gat <= G8gat;
Saida_x <= ww_Saida_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Saida_x~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|y~2_combout\,
	devoe => ww_devoe,
	o => \Saida_x~output_o\);

\G8gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G8gat,
	o => \G8gat~input_o\);

\G6gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G6gat,
	o => \G6gat~input_o\);

\G7gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G7gat,
	o => \G7gat~input_o\);

\U9|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|y~0_combout\ = (\G8gat~input_o\) # ((!\G7gat~input_o\) # (!\G6gat~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8gat~input_o\,
	datac => \G6gat~input_o\,
	datad => \G7gat~input_o\,
	combout => \U9|y~0_combout\);

\G5gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G5gat,
	o => \G5gat~input_o\);

\G1gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G1gat,
	o => \G1gat~input_o\);

\G2gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G2gat,
	o => \G2gat~input_o\);

\U9|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|y~1_combout\ = (\G5gat~input_o\) # ((\G1gat~input_o\ & \G2gat~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G5gat~input_o\,
	datab => \G1gat~input_o\,
	datac => \G2gat~input_o\,
	combout => \U9|y~1_combout\);

\G3gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G3gat,
	o => \G3gat~input_o\);

\G4gat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G4gat,
	o => \G4gat~input_o\);

\U9|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|y~2_combout\ = (\U9|y~0_combout\) # ((\U9|y~1_combout\ & ((!\G4gat~input_o\) # (!\G3gat~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|y~0_combout\,
	datab => \U9|y~1_combout\,
	datac => \G3gat~input_o\,
	datad => \G4gat~input_o\,
	combout => \U9|y~2_combout\);

ww_Saida_x <= \Saida_x~output_o\;
END structure;


