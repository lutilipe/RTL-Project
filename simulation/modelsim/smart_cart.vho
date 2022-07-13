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

-- DATE "07/13/2022 08:41:24"

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

ENTITY 	mux_4_1 IS
    PORT (
	in0 : IN std_logic_vector(6 DOWNTO 0);
	in1 : IN std_logic_vector(6 DOWNTO 0);
	in2 : IN std_logic_vector(6 DOWNTO 0);
	in3 : IN std_logic_vector(6 DOWNTO 0);
	s0 : IN std_logic;
	s1 : IN std_logic;
	out1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mux_4_1;

-- Design Ports Information
-- out1[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[5]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_4_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_in1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_in3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_out1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \out1[0]~output_o\ : std_logic;
SIGNAL \out1[1]~output_o\ : std_logic;
SIGNAL \out1[2]~output_o\ : std_logic;
SIGNAL \out1[3]~output_o\ : std_logic;
SIGNAL \out1[4]~output_o\ : std_logic;
SIGNAL \out1[5]~output_o\ : std_logic;
SIGNAL \out1[6]~output_o\ : std_logic;
SIGNAL \in3[0]~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \out1~1_combout\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \out1~0_combout\ : std_logic;
SIGNAL \out1~2_combout\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \out1~3_combout\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \in3[1]~input_o\ : std_logic;
SIGNAL \out1~4_combout\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \in3[2]~input_o\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \in0[2]~input_o\ : std_logic;
SIGNAL \out1~5_combout\ : std_logic;
SIGNAL \out1~6_combout\ : std_logic;
SIGNAL \in3[3]~input_o\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \out1~7_combout\ : std_logic;
SIGNAL \in0[3]~input_o\ : std_logic;
SIGNAL \out1~8_combout\ : std_logic;
SIGNAL \in3[4]~input_o\ : std_logic;
SIGNAL \in2[4]~input_o\ : std_logic;
SIGNAL \in0[4]~input_o\ : std_logic;
SIGNAL \out1~9_combout\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \out1~10_combout\ : std_logic;
SIGNAL \in0[5]~input_o\ : std_logic;
SIGNAL \in3[5]~input_o\ : std_logic;
SIGNAL \in2[5]~input_o\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \out1~11_combout\ : std_logic;
SIGNAL \out1~12_combout\ : std_logic;
SIGNAL \in2[6]~input_o\ : std_logic;
SIGNAL \in0[6]~input_o\ : std_logic;
SIGNAL \out1~13_combout\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \in3[6]~input_o\ : std_logic;
SIGNAL \out1~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_in0 <= in0;
ww_in1 <= in1;
ww_in2 <= in2;
ww_in3 <= in3;
ww_s0 <= s0;
ww_s1 <= s1;
out1 <= ww_out1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~2_combout\,
	devoe => ww_devoe,
	o => \out1[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~4_combout\,
	devoe => ww_devoe,
	o => \out1[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~6_combout\,
	devoe => ww_devoe,
	o => \out1[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~8_combout\,
	devoe => ww_devoe,
	o => \out1[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\out1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~10_combout\,
	devoe => ww_devoe,
	o => \out1[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\out1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~12_combout\,
	devoe => ww_devoe,
	o => \out1[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\out1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~14_combout\,
	devoe => ww_devoe,
	o => \out1[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\in3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(0),
	o => \in3[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\s0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\in1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\in2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: LCCOMB_X12_Y4_N2
\out1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~1_combout\ = (\s0~input_o\ & ((\in1[0]~input_o\) # ((\s1~input_o\)))) # (!\s0~input_o\ & (((\s1~input_o\ & \in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in1[0]~input_o\,
	datac => \s1~input_o\,
	datad => \in2[0]~input_o\,
	combout => \out1~1_combout\);

-- Location: IOIBUF_X1_Y0_N22
\in0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(0),
	o => \in0[0]~input_o\);

-- Location: LCCOMB_X12_Y4_N16
\out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~0_combout\ = \s0~input_o\ $ (\s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datac => \s1~input_o\,
	combout => \out1~0_combout\);

-- Location: LCCOMB_X12_Y4_N12
\out1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~2_combout\ = (\out1~1_combout\ & ((\in3[0]~input_o\) # ((\out1~0_combout\)))) # (!\out1~1_combout\ & (((\in0[0]~input_o\ & !\out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[0]~input_o\,
	datab => \out1~1_combout\,
	datac => \in0[0]~input_o\,
	datad => \out1~0_combout\,
	combout => \out1~2_combout\);

-- Location: IOIBUF_X30_Y0_N1
\in2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\in1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: LCCOMB_X12_Y4_N6
\out1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~3_combout\ = (\s0~input_o\ & (((\s1~input_o\) # (\in1[1]~input_o\)))) # (!\s0~input_o\ & (\in2[1]~input_o\ & (\s1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in2[1]~input_o\,
	datac => \s1~input_o\,
	datad => \in1[1]~input_o\,
	combout => \out1~3_combout\);

-- Location: IOIBUF_X30_Y0_N22
\in0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(1),
	o => \in0[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\in3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(1),
	o => \in3[1]~input_o\);

-- Location: LCCOMB_X12_Y4_N8
\out1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~4_combout\ = (\out1~3_combout\ & (((\in3[1]~input_o\) # (\out1~0_combout\)))) # (!\out1~3_combout\ & (\in0[1]~input_o\ & ((!\out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~3_combout\,
	datab => \in0[1]~input_o\,
	datac => \in3[1]~input_o\,
	datad => \out1~0_combout\,
	combout => \out1~4_combout\);

-- Location: IOIBUF_X1_Y0_N15
\in1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\in3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(2),
	o => \in3[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\in2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\in0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(2),
	o => \in0[2]~input_o\);

-- Location: LCCOMB_X12_Y4_N10
\out1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~5_combout\ = (\s0~input_o\ & (((\s1~input_o\)))) # (!\s0~input_o\ & ((\s1~input_o\ & (\in2[2]~input_o\)) # (!\s1~input_o\ & ((\in0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in2[2]~input_o\,
	datac => \s1~input_o\,
	datad => \in0[2]~input_o\,
	combout => \out1~5_combout\);

-- Location: LCCOMB_X12_Y4_N20
\out1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~6_combout\ = (\s0~input_o\ & ((\out1~5_combout\ & ((\in3[2]~input_o\))) # (!\out1~5_combout\ & (\in1[2]~input_o\)))) # (!\s0~input_o\ & (((\out1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[2]~input_o\,
	datab => \in3[2]~input_o\,
	datac => \s0~input_o\,
	datad => \out1~5_combout\,
	combout => \out1~6_combout\);

-- Location: IOIBUF_X25_Y0_N1
\in3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(3),
	o => \in3[3]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\in2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\in1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: LCCOMB_X12_Y4_N30
\out1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~7_combout\ = (\s0~input_o\ & (((\s1~input_o\) # (\in1[3]~input_o\)))) # (!\s0~input_o\ & (\in2[3]~input_o\ & (\s1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in2[3]~input_o\,
	datac => \s1~input_o\,
	datad => \in1[3]~input_o\,
	combout => \out1~7_combout\);

-- Location: IOIBUF_X34_Y9_N1
\in0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(3),
	o => \in0[3]~input_o\);

-- Location: LCCOMB_X12_Y4_N24
\out1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~8_combout\ = (\out1~0_combout\ & (((\out1~7_combout\)))) # (!\out1~0_combout\ & ((\out1~7_combout\ & (\in3[3]~input_o\)) # (!\out1~7_combout\ & ((\in0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[3]~input_o\,
	datab => \out1~0_combout\,
	datac => \out1~7_combout\,
	datad => \in0[3]~input_o\,
	combout => \out1~8_combout\);

-- Location: IOIBUF_X3_Y0_N1
\in3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(4),
	o => \in3[4]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\in2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(4),
	o => \in2[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\in0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(4),
	o => \in0[4]~input_o\);

-- Location: LCCOMB_X12_Y4_N26
\out1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~9_combout\ = (\s0~input_o\ & (((\s1~input_o\)))) # (!\s0~input_o\ & ((\s1~input_o\ & (\in2[4]~input_o\)) # (!\s1~input_o\ & ((\in0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in2[4]~input_o\,
	datac => \s1~input_o\,
	datad => \in0[4]~input_o\,
	combout => \out1~9_combout\);

-- Location: IOIBUF_X5_Y0_N22
\in1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: LCCOMB_X12_Y4_N28
\out1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~10_combout\ = (\s0~input_o\ & ((\out1~9_combout\ & (\in3[4]~input_o\)) # (!\out1~9_combout\ & ((\in1[4]~input_o\))))) # (!\s0~input_o\ & (((\out1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in3[4]~input_o\,
	datac => \out1~9_combout\,
	datad => \in1[4]~input_o\,
	combout => \out1~10_combout\);

-- Location: IOIBUF_X16_Y0_N8
\in0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(5),
	o => \in0[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\in3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(5),
	o => \in3[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\in2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(5),
	o => \in2[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\in1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X12_Y4_N22
\out1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~11_combout\ = (\s1~input_o\ & ((\in2[5]~input_o\) # ((\s0~input_o\)))) # (!\s1~input_o\ & (((\s0~input_o\ & \in1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \in2[5]~input_o\,
	datac => \s0~input_o\,
	datad => \in1[5]~input_o\,
	combout => \out1~11_combout\);

-- Location: LCCOMB_X12_Y4_N0
\out1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~12_combout\ = (\out1~11_combout\ & (((\in3[5]~input_o\) # (\out1~0_combout\)))) # (!\out1~11_combout\ & (\in0[5]~input_o\ & ((!\out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[5]~input_o\,
	datab => \in3[5]~input_o\,
	datac => \out1~11_combout\,
	datad => \out1~0_combout\,
	combout => \out1~12_combout\);

-- Location: IOIBUF_X13_Y0_N1
\in2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(6),
	o => \in2[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\in0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(6),
	o => \in0[6]~input_o\);

-- Location: LCCOMB_X12_Y4_N18
\out1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~13_combout\ = (\s0~input_o\ & (((\s1~input_o\)))) # (!\s0~input_o\ & ((\s1~input_o\ & (\in2[6]~input_o\)) # (!\s1~input_o\ & ((\in0[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \in2[6]~input_o\,
	datac => \s1~input_o\,
	datad => \in0[6]~input_o\,
	combout => \out1~13_combout\);

-- Location: IOIBUF_X0_Y11_N22
\in1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\in3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(6),
	o => \in3[6]~input_o\);

-- Location: LCCOMB_X12_Y4_N4
\out1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~14_combout\ = (\s0~input_o\ & ((\out1~13_combout\ & ((\in3[6]~input_o\))) # (!\out1~13_combout\ & (\in1[6]~input_o\)))) # (!\s0~input_o\ & (\out1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~input_o\,
	datab => \out1~13_combout\,
	datac => \in1[6]~input_o\,
	datad => \in3[6]~input_o\,
	combout => \out1~14_combout\);

ww_out1(0) <= \out1[0]~output_o\;

ww_out1(1) <= \out1[1]~output_o\;

ww_out1(2) <= \out1[2]~output_o\;

ww_out1(3) <= \out1[3]~output_o\;

ww_out1(4) <= \out1[4]~output_o\;

ww_out1(5) <= \out1[5]~output_o\;

ww_out1(6) <= \out1[6]~output_o\;
END structure;


