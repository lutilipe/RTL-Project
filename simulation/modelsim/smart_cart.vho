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

-- DATE "07/15/2022 17:39:44"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Controladora IS
    PORT (
	inicia_compra : IN std_logic;
	finaliza_compra : IN std_logic;
	cancelar : IN std_logic;
	pagar_compra : IN std_logic;
	cartao_lido : IN std_logic;
	add : IN std_logic;
	del : IN std_logic;
	total_itens_lt_32 : IN std_logic;
	saldo_lt_total : IN std_logic;
	clock : IN std_logic;
	clear : IN std_logic;
	ld_total : OUT std_logic;
	clr_total : OUT std_logic;
	ld_total_itens : OUT std_logic;
	clr_total_itens : OUT std_logic;
	add_sel : OUT std_logic;
	del_sel : OUT std_logic;
	erro : OUT std_logic;
	concluido : OUT std_logic;
	desconta : OUT std_logic;
	ler_pagamento : OUT std_logic
	);
END Controladora;

-- Design Ports Information
-- ld_total	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_total	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_total_itens	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_total_itens	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_sel	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- del_sel	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- concluido	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- desconta	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler_pagamento	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_itens_lt_32	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- del	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicia_compra	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cancelar	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finaliza_compra	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_lt_total	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_compra	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cartao_lido	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Controladora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inicia_compra : std_logic;
SIGNAL ww_finaliza_compra : std_logic;
SIGNAL ww_cancelar : std_logic;
SIGNAL ww_pagar_compra : std_logic;
SIGNAL ww_cartao_lido : std_logic;
SIGNAL ww_add : std_logic;
SIGNAL ww_del : std_logic;
SIGNAL ww_total_itens_lt_32 : std_logic;
SIGNAL ww_saldo_lt_total : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_ld_total : std_logic;
SIGNAL ww_clr_total : std_logic;
SIGNAL ww_ld_total_itens : std_logic;
SIGNAL ww_clr_total_itens : std_logic;
SIGNAL ww_add_sel : std_logic;
SIGNAL ww_del_sel : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_concluido : std_logic;
SIGNAL ww_desconta : std_logic;
SIGNAL ww_ler_pagamento : std_logic;
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ld_total~output_o\ : std_logic;
SIGNAL \clr_total~output_o\ : std_logic;
SIGNAL \ld_total_itens~output_o\ : std_logic;
SIGNAL \clr_total_itens~output_o\ : std_logic;
SIGNAL \add_sel~output_o\ : std_logic;
SIGNAL \del_sel~output_o\ : std_logic;
SIGNAL \erro~output_o\ : std_logic;
SIGNAL \concluido~output_o\ : std_logic;
SIGNAL \desconta~output_o\ : std_logic;
SIGNAL \ler_pagamento~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \del~input_o\ : std_logic;
SIGNAL \aux_del~feeder_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \aux_del~q\ : std_logic;
SIGNAL \inicia_compra~input_o\ : std_logic;
SIGNAL \aux_inicia_compra~q\ : std_logic;
SIGNAL \add~input_o\ : std_logic;
SIGNAL \aux_add~q\ : std_logic;
SIGNAL \proximo_estado.verifica_saldo~0_combout\ : std_logic;
SIGNAL \finaliza_compra~input_o\ : std_logic;
SIGNAL \aux_finaliza_compra~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \cancelar~input_o\ : std_logic;
SIGNAL \pagar_compra~input_o\ : std_logic;
SIGNAL \aux_pagar_compra~feeder_combout\ : std_logic;
SIGNAL \aux_pagar_compra~q\ : std_logic;
SIGNAL \aux_cancelar~feeder_combout\ : std_logic;
SIGNAL \aux_cancelar~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.confirma~q\ : std_logic;
SIGNAL \saldo_lt_total~input_o\ : std_logic;
SIGNAL \cartao_lido~input_o\ : std_logic;
SIGNAL \aux_cartao_lido~feeder_combout\ : std_logic;
SIGNAL \aux_cartao_lido~q\ : std_logic;
SIGNAL \proximo_estado.verifica_saldo~2_combout\ : std_logic;
SIGNAL \proximo_estado.verifica_saldo~3_combout\ : std_logic;
SIGNAL \estado_atual.verifica_saldo~q\ : std_logic;
SIGNAL \proximo_estado.verifica_saldo~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \estado_atual.pagar~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \estado_atual.confere_adicao~q\ : std_logic;
SIGNAL \total_itens_lt_32~input_o\ : std_logic;
SIGNAL \proximo_estado.error~0_combout\ : std_logic;
SIGNAL \estado_atual.error~q\ : std_logic;
SIGNAL \proximo_estado.sucesso~0_combout\ : std_logic;
SIGNAL \estado_atual.sucesso~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual.inicio~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \estado_atual.edicao_da_compra~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_atual.remove~q\ : std_logic;
SIGNAL \proximo_estado.adiciona~0_combout\ : std_logic;
SIGNAL \estado_atual.adiciona~q\ : std_logic;
SIGNAL \ld_total~0_combout\ : std_logic;
SIGNAL \erro~2_combout\ : std_logic;
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_atual.inicio~q\ : std_logic;
SIGNAL \ALT_INV_ld_total~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inicia_compra <= inicia_compra;
ww_finaliza_compra <= finaliza_compra;
ww_cancelar <= cancelar;
ww_pagar_compra <= pagar_compra;
ww_cartao_lido <= cartao_lido;
ww_add <= add;
ww_del <= del;
ww_total_itens_lt_32 <= total_itens_lt_32;
ww_saldo_lt_total <= saldo_lt_total;
ww_clock <= clock;
ww_clear <= clear;
ld_total <= ww_ld_total;
clr_total <= ww_clr_total;
ld_total_itens <= ww_ld_total_itens;
clr_total_itens <= ww_clr_total_itens;
add_sel <= ww_add_sel;
del_sel <= ww_del_sel;
erro <= ww_erro;
concluido <= ww_concluido;
desconta <= ww_desconta;
ler_pagamento <= ww_ler_pagamento;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_estado_atual.inicio~q\ <= NOT \estado_atual.inicio~q\;
\ALT_INV_ld_total~0_combout\ <= NOT \ld_total~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N2
\ld_total~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ld_total~0_combout\,
	devoe => ww_devoe,
	o => \ld_total~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\clr_total~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_atual.inicio~q\,
	devoe => ww_devoe,
	o => \clr_total~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\ld_total_itens~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ld_total~0_combout\,
	devoe => ww_devoe,
	o => \ld_total_itens~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\clr_total_itens~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_atual.inicio~q\,
	devoe => ww_devoe,
	o => \clr_total_itens~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\add_sel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.adiciona~q\,
	devoe => ww_devoe,
	o => \add_sel~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\del_sel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.remove~q\,
	devoe => ww_devoe,
	o => \del_sel~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\erro~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \erro~2_combout\,
	devoe => ww_devoe,
	o => \erro~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\concluido~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.sucesso~q\,
	devoe => ww_devoe,
	o => \concluido~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\desconta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.sucesso~q\,
	devoe => ww_devoe,
	o => \desconta~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ler_pagamento~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.pagar~q\,
	devoe => ww_devoe,
	o => \ler_pagamento~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N22
\del~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_del,
	o => \del~input_o\);

-- Location: LCCOMB_X17_Y4_N30
\aux_del~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_del~feeder_combout\ = \del~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \del~input_o\,
	combout => \aux_del~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X17_Y4_N31
aux_del : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \aux_del~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_del~q\);

-- Location: IOIBUF_X16_Y24_N8
\inicia_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicia_compra,
	o => \inicia_compra~input_o\);

-- Location: FF_X16_Y4_N27
aux_inicia_compra : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inicia_compra~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_inicia_compra~q\);

-- Location: IOIBUF_X18_Y24_N15
\add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add,
	o => \add~input_o\);

-- Location: FF_X17_Y4_N3
aux_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \add~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_add~q\);

-- Location: LCCOMB_X17_Y4_N20
\proximo_estado.verifica_saldo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.verifica_saldo~0_combout\ = (\del~input_o\ & (\aux_del~q\ & ((\aux_add~q\) # (!\add~input_o\)))) # (!\del~input_o\ & (((\aux_add~q\)) # (!\add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datab => \add~input_o\,
	datac => \aux_del~q\,
	datad => \aux_add~q\,
	combout => \proximo_estado.verifica_saldo~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\finaliza_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finaliza_compra,
	o => \finaliza_compra~input_o\);

-- Location: FF_X16_Y4_N21
aux_finaliza_compra : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \finaliza_compra~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_finaliza_compra~q\);

-- Location: LCCOMB_X16_Y4_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\aux_finaliza_compra~q\ & (\finaliza_compra~input_o\ & \estado_atual.edicao_da_compra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux_finaliza_compra~q\,
	datac => \finaliza_compra~input_o\,
	datad => \estado_atual.edicao_da_compra~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\cancelar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cancelar,
	o => \cancelar~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\pagar_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_compra,
	o => \pagar_compra~input_o\);

-- Location: LCCOMB_X17_Y4_N12
\aux_pagar_compra~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_pagar_compra~feeder_combout\ = \pagar_compra~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pagar_compra~input_o\,
	combout => \aux_pagar_compra~feeder_combout\);

-- Location: FF_X17_Y4_N13
aux_pagar_compra : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \aux_pagar_compra~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_pagar_compra~q\);

-- Location: LCCOMB_X16_Y4_N2
\aux_cancelar~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_cancelar~feeder_combout\ = \cancelar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cancelar~input_o\,
	combout => \aux_cancelar~feeder_combout\);

-- Location: FF_X16_Y4_N3
aux_cancelar : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \aux_cancelar~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_cancelar~q\);

-- Location: LCCOMB_X16_Y4_N18
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\cancelar~input_o\ & (\aux_cancelar~q\ & ((\aux_pagar_compra~q\) # (!\pagar_compra~input_o\)))) # (!\cancelar~input_o\ & (((\aux_pagar_compra~q\)) # (!\pagar_compra~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancelar~input_o\,
	datab => \pagar_compra~input_o\,
	datac => \aux_pagar_compra~q\,
	datad => \aux_cancelar~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X16_Y4_N14
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\proximo_estado.verifica_saldo~0_combout\ & ((\Selector4~0_combout\) # ((\estado_atual.confirma~q\ & \Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.verifica_saldo~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \estado_atual.confirma~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: CLKCTRL_G4
\clear~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: FF_X16_Y4_N15
\estado_atual.confirma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.confirma~q\);

-- Location: IOIBUF_X21_Y0_N8
\saldo_lt_total~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_lt_total,
	o => \saldo_lt_total~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\cartao_lido~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cartao_lido,
	o => \cartao_lido~input_o\);

-- Location: LCCOMB_X17_Y4_N28
\aux_cartao_lido~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_cartao_lido~feeder_combout\ = \cartao_lido~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cartao_lido~input_o\,
	combout => \aux_cartao_lido~feeder_combout\);

-- Location: FF_X17_Y4_N29
aux_cartao_lido : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \aux_cartao_lido~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_cartao_lido~q\);

-- Location: LCCOMB_X17_Y4_N26
\proximo_estado.verifica_saldo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.verifica_saldo~2_combout\ = (\cartao_lido~input_o\ & ((\aux_cancelar~q\) # (!\cancelar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cartao_lido~input_o\,
	datac => \cancelar~input_o\,
	datad => \aux_cancelar~q\,
	combout => \proximo_estado.verifica_saldo~2_combout\);

-- Location: LCCOMB_X17_Y4_N14
\proximo_estado.verifica_saldo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.verifica_saldo~3_combout\ = (\estado_atual.pagar~q\ & (!\aux_cartao_lido~q\ & (\proximo_estado.verifica_saldo~2_combout\ & \proximo_estado.verifica_saldo~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.pagar~q\,
	datab => \aux_cartao_lido~q\,
	datac => \proximo_estado.verifica_saldo~2_combout\,
	datad => \proximo_estado.verifica_saldo~0_combout\,
	combout => \proximo_estado.verifica_saldo~3_combout\);

-- Location: FF_X17_Y4_N15
\estado_atual.verifica_saldo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \proximo_estado.verifica_saldo~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.verifica_saldo~q\);

-- Location: LCCOMB_X17_Y4_N4
\proximo_estado.verifica_saldo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.verifica_saldo~1_combout\ = (\proximo_estado.verifica_saldo~0_combout\ & ((\aux_cancelar~q\) # (!\cancelar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_cancelar~q\,
	datab => \cancelar~input_o\,
	datad => \proximo_estado.verifica_saldo~0_combout\,
	combout => \proximo_estado.verifica_saldo~1_combout\);

-- Location: LCCOMB_X17_Y4_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\aux_pagar_compra~q\ & (\pagar_compra~input_o\ & \estado_atual.confirma~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_pagar_compra~q\,
	datab => \pagar_compra~input_o\,
	datad => \estado_atual.confirma~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X17_Y4_N18
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\estado_atual.pagar~q\ & ((\aux_cartao_lido~q\) # (!\cartao_lido~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cartao_lido~input_o\,
	datab => \aux_cartao_lido~q\,
	datac => \estado_atual.pagar~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X17_Y4_N22
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\saldo_lt_total~input_o\ & ((\estado_atual.verifica_saldo~q\) # ((\proximo_estado.verifica_saldo~1_combout\ & \Selector5~1_combout\)))) # (!\saldo_lt_total~input_o\ & (((\proximo_estado.verifica_saldo~1_combout\ & 
-- \Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_lt_total~input_o\,
	datab => \estado_atual.verifica_saldo~q\,
	datac => \proximo_estado.verifica_saldo~1_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X17_Y4_N23
\estado_atual.pagar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.pagar~q\);

-- Location: LCCOMB_X17_Y4_N24
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\add~input_o\ & !\aux_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add~input_o\,
	datad => \aux_add~q\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X17_Y4_N8
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\process_1~0_combout\ & ((\estado_atual.confirma~q\) # ((\estado_atual.edicao_da_compra~q\) # (\estado_atual.pagar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.confirma~q\,
	datab => \estado_atual.edicao_da_compra~q\,
	datac => \estado_atual.pagar~q\,
	datad => \process_1~0_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X17_Y4_N9
\estado_atual.confere_adicao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.confere_adicao~q\);

-- Location: IOIBUF_X16_Y0_N1
\total_itens_lt_32~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_itens_lt_32,
	o => \total_itens_lt_32~input_o\);

-- Location: LCCOMB_X16_Y4_N30
\proximo_estado.error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.error~0_combout\ = (\estado_atual.confere_adicao~q\ & !\total_itens_lt_32~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.confere_adicao~q\,
	datad => \total_itens_lt_32~input_o\,
	combout => \proximo_estado.error~0_combout\);

-- Location: FF_X16_Y4_N31
\estado_atual.error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \proximo_estado.error~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.error~q\);

-- Location: LCCOMB_X17_Y4_N16
\proximo_estado.sucesso~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.sucesso~0_combout\ = (!\saldo_lt_total~input_o\ & \estado_atual.verifica_saldo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_lt_total~input_o\,
	datac => \estado_atual.verifica_saldo~q\,
	combout => \proximo_estado.sucesso~0_combout\);

-- Location: FF_X17_Y4_N17
\estado_atual.sucesso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \proximo_estado.sucesso~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.sucesso~q\);

-- Location: LCCOMB_X16_Y4_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado_atual.sucesso~q\ & ((\estado_atual.inicio~q\) # ((!\aux_inicia_compra~q\ & \inicia_compra~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_inicia_compra~q\,
	datab => \inicia_compra~input_o\,
	datac => \estado_atual.inicio~q\,
	datad => \estado_atual.sucesso~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X16_Y4_N7
\estado_atual.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.inicio~q\);

-- Location: LCCOMB_X16_Y4_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado_atual.error~q\) # ((!\aux_inicia_compra~q\ & (\inicia_compra~input_o\ & !\estado_atual.inicio~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_inicia_compra~q\,
	datab => \inicia_compra~input_o\,
	datac => \estado_atual.error~q\,
	datad => \estado_atual.inicio~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X16_Y4_N16
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\cancelar~input_o\ & (!\aux_cancelar~q\ & ((\estado_atual.confirma~q\) # (\estado_atual.pagar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancelar~input_o\,
	datab => \aux_cancelar~q\,
	datac => \estado_atual.confirma~q\,
	datad => \estado_atual.pagar~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X16_Y4_N10
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((\estado_atual.edicao_da_compra~q\ & ((\aux_finaliza_compra~q\) # (!\finaliza_compra~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_finaliza_compra~q\,
	datab => \estado_atual.edicao_da_compra~q\,
	datac => \finaliza_compra~input_o\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X16_Y4_N24
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = ((\Selector1~0_combout\) # ((\proximo_estado.verifica_saldo~0_combout\ & \Selector1~2_combout\))) # (!\ld_total~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_total~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \proximo_estado.verifica_saldo~0_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X16_Y4_N25
\estado_atual.edicao_da_compra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.edicao_da_compra~q\);

-- Location: LCCOMB_X16_Y4_N8
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\estado_atual.edicao_da_compra~q\) # ((\estado_atual.confirma~q\) # (\estado_atual.pagar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.edicao_da_compra~q\,
	datac => \estado_atual.confirma~q\,
	datad => \estado_atual.pagar~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X16_Y4_N22
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\aux_del~q\ & (\del~input_o\ & (\WideOr3~0_combout\ & !\process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_del~q\,
	datab => \del~input_o\,
	datac => \WideOr3~0_combout\,
	datad => \process_1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X16_Y4_N23
\estado_atual.remove\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.remove~q\);

-- Location: LCCOMB_X16_Y4_N0
\proximo_estado.adiciona~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.adiciona~0_combout\ = (\estado_atual.confere_adicao~q\ & \total_itens_lt_32~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.confere_adicao~q\,
	datad => \total_itens_lt_32~input_o\,
	combout => \proximo_estado.adiciona~0_combout\);

-- Location: FF_X16_Y4_N1
\estado_atual.adiciona\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \proximo_estado.adiciona~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.adiciona~q\);

-- Location: LCCOMB_X16_Y4_N12
\ld_total~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_total~0_combout\ = (!\estado_atual.remove~q\ & !\estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.remove~q\,
	datad => \estado_atual.adiciona~q\,
	combout => \ld_total~0_combout\);

-- Location: LCCOMB_X16_Y4_N20
\erro~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \erro~2_combout\ = (\estado_atual.error~q\) # (\estado_atual.edicao_da_compra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.error~q\,
	datad => \estado_atual.edicao_da_compra~q\,
	combout => \erro~2_combout\);

ww_ld_total <= \ld_total~output_o\;

ww_clr_total <= \clr_total~output_o\;

ww_ld_total_itens <= \ld_total_itens~output_o\;

ww_clr_total_itens <= \clr_total_itens~output_o\;

ww_add_sel <= \add_sel~output_o\;

ww_del_sel <= \del_sel~output_o\;

ww_erro <= \erro~output_o\;

ww_concluido <= \concluido~output_o\;

ww_desconta <= \desconta~output_o\;

ww_ler_pagamento <= \ler_pagamento~output_o\;
END structure;


