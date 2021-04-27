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

-- DATE "04/27/2021 15:01:19"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Circuito_C17 IS
    PORT (
	entrada_1 : IN std_logic;
	entrada_2 : IN std_logic;
	entrada_3 : IN std_logic;
	entrada_4 : IN std_logic;
	entrada_5 : IN std_logic;
	Saida_x : BUFFER std_logic;
	Saida_y : BUFFER std_logic
	);
END Circuito_C17;

-- Design Ports Information
-- Saida_x	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_y	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_5	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_4	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_1	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_2	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_3	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Circuito_C17 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_1 : std_logic;
SIGNAL ww_entrada_2 : std_logic;
SIGNAL ww_entrada_3 : std_logic;
SIGNAL ww_entrada_4 : std_logic;
SIGNAL ww_entrada_5 : std_logic;
SIGNAL ww_Saida_x : std_logic;
SIGNAL ww_Saida_y : std_logic;
SIGNAL \Saida_x~output_o\ : std_logic;
SIGNAL \Saida_y~output_o\ : std_logic;
SIGNAL \entrada_2~input_o\ : std_logic;
SIGNAL \entrada_4~input_o\ : std_logic;
SIGNAL \entrada_1~input_o\ : std_logic;
SIGNAL \entrada_5~input_o\ : std_logic;
SIGNAL \U3|y~0_combout\ : std_logic;
SIGNAL \entrada_3~input_o\ : std_logic;
SIGNAL \U5|y~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada_1 <= entrada_1;
ww_entrada_2 <= entrada_2;
ww_entrada_3 <= entrada_3;
ww_entrada_4 <= entrada_4;
ww_entrada_5 <= entrada_5;
Saida_x <= ww_Saida_x;
Saida_y <= ww_Saida_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\Saida_x~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|y~0_combout\,
	devoe => ww_devoe,
	o => \Saida_x~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Saida_y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|y~0_combout\,
	devoe => ww_devoe,
	o => \Saida_y~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\entrada_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_2,
	o => \entrada_2~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\entrada_4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_4,
	o => \entrada_4~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\entrada_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_1,
	o => \entrada_1~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\entrada_5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_5,
	o => \entrada_5~input_o\);

-- Location: LCCOMB_X1_Y10_N0
\U3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|y~0_combout\ = (\entrada_1~input_o\ & ((\entrada_5~input_o\) # ((!\entrada_2~input_o\ & \entrada_4~input_o\)))) # (!\entrada_1~input_o\ & (((\entrada_4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_2~input_o\,
	datab => \entrada_4~input_o\,
	datac => \entrada_1~input_o\,
	datad => \entrada_5~input_o\,
	combout => \U3|y~0_combout\);

-- Location: IOIBUF_X0_Y9_N8
\entrada_3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_3,
	o => \entrada_3~input_o\);

-- Location: LCCOMB_X1_Y10_N2
\U5|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|y~0_combout\ = (\entrada_2~input_o\ & (!\entrada_1~input_o\ & ((\entrada_4~input_o\) # (\entrada_3~input_o\)))) # (!\entrada_2~input_o\ & ((\entrada_4~input_o\) # ((\entrada_3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_2~input_o\,
	datab => \entrada_4~input_o\,
	datac => \entrada_1~input_o\,
	datad => \entrada_3~input_o\,
	combout => \U5|y~0_combout\);

ww_Saida_x <= \Saida_x~output_o\;

ww_Saida_y <= \Saida_y~output_o\;
END structure;


