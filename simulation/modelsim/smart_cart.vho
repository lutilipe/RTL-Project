-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/12/2022 21:36:14"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	comparador_saldo IS
    PORT (
	valor_total : IN std_logic_vector(31 DOWNTO 0);
	saldo_cartao : IN std_logic_vector(31 DOWNTO 0);
	saldo_lt_total : OUT std_logic
	);
END comparador_saldo;

-- Design Ports Information
-- saldo_lt_total	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[31]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[31]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[30]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[30]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[29]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[29]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[28]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[28]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[27]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[27]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[26]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[26]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[25]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[25]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[24]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[24]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[23]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[23]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[22]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[21]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[20]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[19]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[18]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[18]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[17]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[16]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[16]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[15]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[14]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[14]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[13]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[12]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[10]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[8]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[8]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[5]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_total[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador_saldo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_valor_total : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saldo_cartao : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saldo_lt_total : std_logic;
SIGNAL \saldo_lt_total~output_o\ : std_logic;
SIGNAL \valor_total[31]~input_o\ : std_logic;
SIGNAL \saldo_cartao[31]~input_o\ : std_logic;
SIGNAL \valor_total[30]~input_o\ : std_logic;
SIGNAL \saldo_cartao[30]~input_o\ : std_logic;
SIGNAL \valor_total[29]~input_o\ : std_logic;
SIGNAL \saldo_cartao[29]~input_o\ : std_logic;
SIGNAL \valor_total[28]~input_o\ : std_logic;
SIGNAL \saldo_cartao[28]~input_o\ : std_logic;
SIGNAL \saldo_cartao[27]~input_o\ : std_logic;
SIGNAL \valor_total[27]~input_o\ : std_logic;
SIGNAL \valor_total[26]~input_o\ : std_logic;
SIGNAL \saldo_cartao[26]~input_o\ : std_logic;
SIGNAL \valor_total[25]~input_o\ : std_logic;
SIGNAL \saldo_cartao[25]~input_o\ : std_logic;
SIGNAL \saldo_cartao[24]~input_o\ : std_logic;
SIGNAL \valor_total[24]~input_o\ : std_logic;
SIGNAL \valor_total[23]~input_o\ : std_logic;
SIGNAL \saldo_cartao[23]~input_o\ : std_logic;
SIGNAL \valor_total[22]~input_o\ : std_logic;
SIGNAL \saldo_cartao[22]~input_o\ : std_logic;
SIGNAL \valor_total[21]~input_o\ : std_logic;
SIGNAL \saldo_cartao[21]~input_o\ : std_logic;
SIGNAL \valor_total[20]~input_o\ : std_logic;
SIGNAL \saldo_cartao[20]~input_o\ : std_logic;
SIGNAL \saldo_cartao[19]~input_o\ : std_logic;
SIGNAL \valor_total[19]~input_o\ : std_logic;
SIGNAL \valor_total[18]~input_o\ : std_logic;
SIGNAL \saldo_cartao[18]~input_o\ : std_logic;
SIGNAL \saldo_cartao[17]~input_o\ : std_logic;
SIGNAL \valor_total[17]~input_o\ : std_logic;
SIGNAL \saldo_cartao[16]~input_o\ : std_logic;
SIGNAL \valor_total[16]~input_o\ : std_logic;
SIGNAL \saldo_cartao[15]~input_o\ : std_logic;
SIGNAL \valor_total[15]~input_o\ : std_logic;
SIGNAL \saldo_cartao[14]~input_o\ : std_logic;
SIGNAL \valor_total[14]~input_o\ : std_logic;
SIGNAL \saldo_cartao[13]~input_o\ : std_logic;
SIGNAL \valor_total[13]~input_o\ : std_logic;
SIGNAL \valor_total[12]~input_o\ : std_logic;
SIGNAL \saldo_cartao[12]~input_o\ : std_logic;
SIGNAL \saldo_cartao[11]~input_o\ : std_logic;
SIGNAL \valor_total[11]~input_o\ : std_logic;
SIGNAL \saldo_cartao[10]~input_o\ : std_logic;
SIGNAL \valor_total[10]~input_o\ : std_logic;
SIGNAL \valor_total[9]~input_o\ : std_logic;
SIGNAL \saldo_cartao[9]~input_o\ : std_logic;
SIGNAL \valor_total[8]~input_o\ : std_logic;
SIGNAL \saldo_cartao[8]~input_o\ : std_logic;
SIGNAL \valor_total[7]~input_o\ : std_logic;
SIGNAL \saldo_cartao[7]~input_o\ : std_logic;
SIGNAL \saldo_cartao[6]~input_o\ : std_logic;
SIGNAL \valor_total[6]~input_o\ : std_logic;
SIGNAL \saldo_cartao[5]~input_o\ : std_logic;
SIGNAL \valor_total[5]~input_o\ : std_logic;
SIGNAL \saldo_cartao[4]~input_o\ : std_logic;
SIGNAL \valor_total[4]~input_o\ : std_logic;
SIGNAL \saldo_cartao[3]~input_o\ : std_logic;
SIGNAL \valor_total[3]~input_o\ : std_logic;
SIGNAL \valor_total[2]~input_o\ : std_logic;
SIGNAL \saldo_cartao[2]~input_o\ : std_logic;
SIGNAL \saldo_cartao[1]~input_o\ : std_logic;
SIGNAL \valor_total[1]~input_o\ : std_logic;
SIGNAL \valor_total[0]~input_o\ : std_logic;
SIGNAL \saldo_cartao[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_valor_total <= valor_total;
ww_saldo_cartao <= saldo_cartao;
saldo_lt_total <= ww_saldo_lt_total;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y0_N2
\saldo_lt_total~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~62_combout\,
	devoe => ww_devoe,
	o => \saldo_lt_total~output_o\);

-- Location: IOIBUF_X9_Y0_N1
\valor_total[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(31),
	o => \valor_total[31]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\saldo_cartao[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(31),
	o => \saldo_cartao[31]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\valor_total[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(30),
	o => \valor_total[30]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\saldo_cartao[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(30),
	o => \saldo_cartao[30]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\valor_total[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(29),
	o => \valor_total[29]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\saldo_cartao[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(29),
	o => \saldo_cartao[29]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\valor_total[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(28),
	o => \valor_total[28]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\saldo_cartao[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(28),
	o => \saldo_cartao[28]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\saldo_cartao[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(27),
	o => \saldo_cartao[27]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\valor_total[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(27),
	o => \valor_total[27]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\valor_total[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(26),
	o => \valor_total[26]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\saldo_cartao[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(26),
	o => \saldo_cartao[26]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\valor_total[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(25),
	o => \valor_total[25]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\saldo_cartao[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(25),
	o => \saldo_cartao[25]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\saldo_cartao[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(24),
	o => \saldo_cartao[24]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\valor_total[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(24),
	o => \valor_total[24]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\valor_total[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(23),
	o => \valor_total[23]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\saldo_cartao[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(23),
	o => \saldo_cartao[23]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\valor_total[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(22),
	o => \valor_total[22]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\saldo_cartao[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(22),
	o => \saldo_cartao[22]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\valor_total[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(21),
	o => \valor_total[21]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\saldo_cartao[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(21),
	o => \saldo_cartao[21]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\valor_total[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(20),
	o => \valor_total[20]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\saldo_cartao[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(20),
	o => \saldo_cartao[20]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\saldo_cartao[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(19),
	o => \saldo_cartao[19]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\valor_total[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(19),
	o => \valor_total[19]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\valor_total[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(18),
	o => \valor_total[18]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\saldo_cartao[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(18),
	o => \saldo_cartao[18]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\saldo_cartao[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(17),
	o => \saldo_cartao[17]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\valor_total[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(17),
	o => \valor_total[17]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\saldo_cartao[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(16),
	o => \saldo_cartao[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\valor_total[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(16),
	o => \valor_total[16]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\saldo_cartao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(15),
	o => \saldo_cartao[15]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\valor_total[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(15),
	o => \valor_total[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\saldo_cartao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(14),
	o => \saldo_cartao[14]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\valor_total[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(14),
	o => \valor_total[14]~input_o\);

-- Location: IOIBUF_X11_Y24_N22
\saldo_cartao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(13),
	o => \saldo_cartao[13]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\valor_total[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(13),
	o => \valor_total[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\valor_total[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(12),
	o => \valor_total[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\saldo_cartao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(12),
	o => \saldo_cartao[12]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\saldo_cartao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(11),
	o => \saldo_cartao[11]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\valor_total[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(11),
	o => \valor_total[11]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\saldo_cartao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(10),
	o => \saldo_cartao[10]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\valor_total[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(10),
	o => \valor_total[10]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\valor_total[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(9),
	o => \valor_total[9]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\saldo_cartao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(9),
	o => \saldo_cartao[9]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\valor_total[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(8),
	o => \valor_total[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\saldo_cartao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(8),
	o => \saldo_cartao[8]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\valor_total[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(7),
	o => \valor_total[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\saldo_cartao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(7),
	o => \saldo_cartao[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\saldo_cartao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(6),
	o => \saldo_cartao[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\valor_total[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(6),
	o => \valor_total[6]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\saldo_cartao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(5),
	o => \saldo_cartao[5]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\valor_total[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(5),
	o => \valor_total[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\saldo_cartao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(4),
	o => \saldo_cartao[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\valor_total[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(4),
	o => \valor_total[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\saldo_cartao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(3),
	o => \saldo_cartao[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\valor_total[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(3),
	o => \valor_total[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\valor_total[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(2),
	o => \valor_total[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\saldo_cartao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(2),
	o => \saldo_cartao[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\saldo_cartao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(1),
	o => \saldo_cartao[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\valor_total[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(1),
	o => \valor_total[1]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\valor_total[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_total(0),
	o => \valor_total[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\saldo_cartao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(0),
	o => \saldo_cartao[0]~input_o\);

-- Location: LCCOMB_X13_Y4_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\valor_total[0]~input_o\ & \saldo_cartao[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[0]~input_o\,
	datab => \saldo_cartao[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y4_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\saldo_cartao[1]~input_o\ & (\valor_total[1]~input_o\ & !\LessThan0~1_cout\)) # (!\saldo_cartao[1]~input_o\ & ((\valor_total[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[1]~input_o\,
	datab => \valor_total[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y4_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\valor_total[2]~input_o\ & (\saldo_cartao[2]~input_o\ & !\LessThan0~3_cout\)) # (!\valor_total[2]~input_o\ & ((\saldo_cartao[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[2]~input_o\,
	datab => \saldo_cartao[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y4_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\saldo_cartao[3]~input_o\ & (\valor_total[3]~input_o\ & !\LessThan0~5_cout\)) # (!\saldo_cartao[3]~input_o\ & ((\valor_total[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[3]~input_o\,
	datab => \valor_total[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y4_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\saldo_cartao[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\valor_total[4]~input_o\))) # (!\saldo_cartao[4]~input_o\ & (!\valor_total[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[4]~input_o\,
	datab => \valor_total[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y4_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\saldo_cartao[5]~input_o\ & (\valor_total[5]~input_o\ & !\LessThan0~9_cout\)) # (!\saldo_cartao[5]~input_o\ & ((\valor_total[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[5]~input_o\,
	datab => \valor_total[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y4_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\saldo_cartao[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\valor_total[6]~input_o\))) # (!\saldo_cartao[6]~input_o\ & (!\valor_total[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[6]~input_o\,
	datab => \valor_total[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y4_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\valor_total[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\saldo_cartao[7]~input_o\))) # (!\valor_total[7]~input_o\ & (!\saldo_cartao[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[7]~input_o\,
	datab => \saldo_cartao[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X13_Y4_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\valor_total[8]~input_o\ & (\saldo_cartao[8]~input_o\ & !\LessThan0~15_cout\)) # (!\valor_total[8]~input_o\ & ((\saldo_cartao[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[8]~input_o\,
	datab => \saldo_cartao[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X13_Y4_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\valor_total[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\saldo_cartao[9]~input_o\))) # (!\valor_total[9]~input_o\ & (!\saldo_cartao[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[9]~input_o\,
	datab => \saldo_cartao[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X13_Y4_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\saldo_cartao[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\valor_total[10]~input_o\))) # (!\saldo_cartao[10]~input_o\ & (!\valor_total[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[10]~input_o\,
	datab => \valor_total[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X13_Y4_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\saldo_cartao[11]~input_o\ & (\valor_total[11]~input_o\ & !\LessThan0~21_cout\)) # (!\saldo_cartao[11]~input_o\ & ((\valor_total[11]~input_o\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[11]~input_o\,
	datab => \valor_total[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X13_Y4_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\valor_total[12]~input_o\ & (\saldo_cartao[12]~input_o\ & !\LessThan0~23_cout\)) # (!\valor_total[12]~input_o\ & ((\saldo_cartao[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[12]~input_o\,
	datab => \saldo_cartao[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X13_Y4_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\saldo_cartao[13]~input_o\ & (\valor_total[13]~input_o\ & !\LessThan0~25_cout\)) # (!\saldo_cartao[13]~input_o\ & ((\valor_total[13]~input_o\) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[13]~input_o\,
	datab => \valor_total[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X13_Y4_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\saldo_cartao[14]~input_o\ & ((!\LessThan0~27_cout\) # (!\valor_total[14]~input_o\))) # (!\saldo_cartao[14]~input_o\ & (!\valor_total[14]~input_o\ & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[14]~input_o\,
	datab => \valor_total[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X13_Y4_N30
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\saldo_cartao[15]~input_o\ & (\valor_total[15]~input_o\ & !\LessThan0~29_cout\)) # (!\saldo_cartao[15]~input_o\ & ((\valor_total[15]~input_o\) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[15]~input_o\,
	datab => \valor_total[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X13_Y3_N0
\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\saldo_cartao[16]~input_o\ & ((!\LessThan0~31_cout\) # (!\valor_total[16]~input_o\))) # (!\saldo_cartao[16]~input_o\ & (!\valor_total[16]~input_o\ & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[16]~input_o\,
	datab => \valor_total[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X13_Y3_N2
\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\saldo_cartao[17]~input_o\ & (\valor_total[17]~input_o\ & !\LessThan0~33_cout\)) # (!\saldo_cartao[17]~input_o\ & ((\valor_total[17]~input_o\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[17]~input_o\,
	datab => \valor_total[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X13_Y3_N4
\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\valor_total[18]~input_o\ & (\saldo_cartao[18]~input_o\ & !\LessThan0~35_cout\)) # (!\valor_total[18]~input_o\ & ((\saldo_cartao[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[18]~input_o\,
	datab => \saldo_cartao[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X13_Y3_N6
\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\saldo_cartao[19]~input_o\ & (\valor_total[19]~input_o\ & !\LessThan0~37_cout\)) # (!\saldo_cartao[19]~input_o\ & ((\valor_total[19]~input_o\) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[19]~input_o\,
	datab => \valor_total[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X13_Y3_N8
\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\valor_total[20]~input_o\ & (\saldo_cartao[20]~input_o\ & !\LessThan0~39_cout\)) # (!\valor_total[20]~input_o\ & ((\saldo_cartao[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[20]~input_o\,
	datab => \saldo_cartao[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X13_Y3_N10
\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\valor_total[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\saldo_cartao[21]~input_o\))) # (!\valor_total[21]~input_o\ & (!\saldo_cartao[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[21]~input_o\,
	datab => \saldo_cartao[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X13_Y3_N12
\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\valor_total[22]~input_o\ & (\saldo_cartao[22]~input_o\ & !\LessThan0~43_cout\)) # (!\valor_total[22]~input_o\ & ((\saldo_cartao[22]~input_o\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[22]~input_o\,
	datab => \saldo_cartao[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X13_Y3_N14
\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\valor_total[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\saldo_cartao[23]~input_o\))) # (!\valor_total[23]~input_o\ & (!\saldo_cartao[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[23]~input_o\,
	datab => \saldo_cartao[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X13_Y3_N16
\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\saldo_cartao[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\valor_total[24]~input_o\))) # (!\saldo_cartao[24]~input_o\ & (!\valor_total[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[24]~input_o\,
	datab => \valor_total[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X13_Y3_N18
\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\valor_total[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\saldo_cartao[25]~input_o\))) # (!\valor_total[25]~input_o\ & (!\saldo_cartao[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[25]~input_o\,
	datab => \saldo_cartao[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X13_Y3_N20
\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\valor_total[26]~input_o\ & (\saldo_cartao[26]~input_o\ & !\LessThan0~51_cout\)) # (!\valor_total[26]~input_o\ & ((\saldo_cartao[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[26]~input_o\,
	datab => \saldo_cartao[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X13_Y3_N22
\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\saldo_cartao[27]~input_o\ & (\valor_total[27]~input_o\ & !\LessThan0~53_cout\)) # (!\saldo_cartao[27]~input_o\ & ((\valor_total[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[27]~input_o\,
	datab => \valor_total[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X13_Y3_N24
\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\valor_total[28]~input_o\ & (\saldo_cartao[28]~input_o\ & !\LessThan0~55_cout\)) # (!\valor_total[28]~input_o\ & ((\saldo_cartao[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[28]~input_o\,
	datab => \saldo_cartao[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X13_Y3_N26
\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\valor_total[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\saldo_cartao[29]~input_o\))) # (!\valor_total[29]~input_o\ & (!\saldo_cartao[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[29]~input_o\,
	datab => \saldo_cartao[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X13_Y3_N28
\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\valor_total[30]~input_o\ & (\saldo_cartao[30]~input_o\ & !\LessThan0~59_cout\)) # (!\valor_total[30]~input_o\ & ((\saldo_cartao[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[30]~input_o\,
	datab => \saldo_cartao[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X13_Y3_N30
\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\valor_total[31]~input_o\ & (\LessThan0~61_cout\ & \saldo_cartao[31]~input_o\)) # (!\valor_total[31]~input_o\ & ((\LessThan0~61_cout\) # (\saldo_cartao[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_total[31]~input_o\,
	datad => \saldo_cartao[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

ww_saldo_lt_total <= \saldo_lt_total~output_o\;
END structure;


