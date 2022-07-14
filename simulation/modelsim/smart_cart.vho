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

-- DATE "07/13/2022 21:00:48"

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
	ld_total : BUFFER std_logic;
	clr_total : BUFFER std_logic;
	ld_total_itens : BUFFER std_logic;
	clr_total_itens : BUFFER std_logic;
	erro : BUFFER std_logic;
	concluido : BUFFER std_logic;
	desconta : BUFFER std_logic;
	ler_pagamento : BUFFER std_logic
	);
END Controladora;

-- Design Ports Information
-- ld_total	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_total	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_total_itens	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_total_itens	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- concluido	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- desconta	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler_pagamento	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_itens_lt_32	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- del	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicia_compra	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_lt_total	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_compra	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cartao_lido	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cancelar	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finaliza_compra	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \erro~output_o\ : std_logic;
SIGNAL \concluido~output_o\ : std_logic;
SIGNAL \desconta~output_o\ : std_logic;
SIGNAL \ler_pagamento~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \total_itens_lt_32~input_o\ : std_logic;
SIGNAL \finaliza_compra~input_o\ : std_logic;
SIGNAL \del~input_o\ : std_logic;
SIGNAL \add~input_o\ : std_logic;
SIGNAL \proximo_estado.verifica_saldo~0_combout\ : std_logic;
SIGNAL \pagar_compra~input_o\ : std_logic;
SIGNAL \cancelar~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.confirma~q\ : std_logic;
SIGNAL \cartao_lido~input_o\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \saldo_lt_total~input_o\ : std_logic;
SIGNAL \proximo_estado.verifica_saldo~1_combout\ : std_logic;
SIGNAL \estado_atual.verifica_saldo~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \estado_atual.pagar~q\ : std_logic;
SIGNAL \proximo_estado.confere_adicao~0_combout\ : std_logic;
SIGNAL \estado_atual.confere_adicao~q\ : std_logic;
SIGNAL \proximo_estado.error~0_combout\ : std_logic;
SIGNAL \estado_atual.error~q\ : std_logic;
SIGNAL \inicia_compra~input_o\ : std_logic;
SIGNAL \proximo_estado.sucesso~0_combout\ : std_logic;
SIGNAL \estado_atual.sucesso~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual.inicio~q\ : std_logic;
SIGNAL \proximo_estado.adiciona~0_combout\ : std_logic;
SIGNAL \estado_atual.adiciona~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \estado_atual.edicao_da_compra~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_atual.remove~q\ : std_logic;
SIGNAL \ld_total~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.inicio~q\ : std_logic;
SIGNAL \ALT_INV_ld_total~0_combout\ : std_logic;
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;

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
erro <= ww_erro;
concluido <= ww_concluido;
desconta <= ww_desconta;
ler_pagamento <= ww_ler_pagamento;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_estado_atual.inicio~q\ <= NOT \estado_atual.inicio~q\;
\ALT_INV_ld_total~0_combout\ <= NOT \ld_total~0_combout\;
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N2
\erro~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.error~q\,
	devoe => ww_devoe,
	o => \erro~output_o\);

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: IOIBUF_X30_Y0_N22
\total_itens_lt_32~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_itens_lt_32,
	o => \total_itens_lt_32~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\finaliza_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finaliza_compra,
	o => \finaliza_compra~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\del~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_del,
	o => \del~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add,
	o => \add~input_o\);

-- Location: LCCOMB_X32_Y3_N24
\proximo_estado.verifica_saldo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.verifica_saldo~0_combout\ = (!\del~input_o\ & !\add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \del~input_o\,
	datad => \add~input_o\,
	combout => \proximo_estado.verifica_saldo~0_combout\);

-- Location: IOIBUF_X34_Y2_N22
\pagar_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_compra,
	o => \pagar_compra~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\cancelar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cancelar,
	o => \cancelar~input_o\);

-- Location: LCCOMB_X31_Y3_N18
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\pagar_compra~input_o\ & (!\cancelar~input_o\ & \estado_atual.confirma~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pagar_compra~input_o\,
	datac => \cancelar~input_o\,
	datad => \estado_atual.confirma~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X31_Y3_N16
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\proximo_estado.verifica_saldo~0_combout\ & ((\Selector3~0_combout\) # ((\finaliza_compra~input_o\ & \estado_atual.edicao_da_compra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finaliza_compra~input_o\,
	datab => \proximo_estado.verifica_saldo~0_combout\,
	datac => \estado_atual.edicao_da_compra~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

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

-- Location: FF_X31_Y3_N17
\estado_atual.confirma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.confirma~q\);

-- Location: IOIBUF_X32_Y0_N22
\cartao_lido~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cartao_lido,
	o => \cartao_lido~input_o\);

-- Location: LCCOMB_X31_Y3_N4
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\cartao_lido~input_o\ & (\pagar_compra~input_o\ & ((\estado_atual.confirma~q\)))) # (!\cartao_lido~input_o\ & ((\estado_atual.pagar~q\) # ((\pagar_compra~input_o\ & \estado_atual.confirma~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cartao_lido~input_o\,
	datab => \pagar_compra~input_o\,
	datac => \estado_atual.pagar~q\,
	datad => \estado_atual.confirma~q\,
	combout => \Selector4~1_combout\);

-- Location: IOIBUF_X30_Y0_N8
\saldo_lt_total~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_lt_total,
	o => \saldo_lt_total~input_o\);

-- Location: LCCOMB_X31_Y3_N12
\proximo_estado.verifica_saldo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.verifica_saldo~1_combout\ = (\cartao_lido~input_o\ & (\proximo_estado.verifica_saldo~0_combout\ & (!\cancelar~input_o\ & \estado_atual.pagar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cartao_lido~input_o\,
	datab => \proximo_estado.verifica_saldo~0_combout\,
	datac => \cancelar~input_o\,
	datad => \estado_atual.pagar~q\,
	combout => \proximo_estado.verifica_saldo~1_combout\);

-- Location: FF_X31_Y3_N13
\estado_atual.verifica_saldo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \proximo_estado.verifica_saldo~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.verifica_saldo~q\);

-- Location: LCCOMB_X31_Y3_N10
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\saldo_lt_total~input_o\ & \estado_atual.verifica_saldo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saldo_lt_total~input_o\,
	datad => \estado_atual.verifica_saldo~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X31_Y3_N14
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~0_combout\) # ((!\cancelar~input_o\ & (\proximo_estado.verifica_saldo~0_combout\ & \Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancelar~input_o\,
	datab => \proximo_estado.verifica_saldo~0_combout\,
	datac => \Selector4~1_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X31_Y3_N15
\estado_atual.pagar\ : dffeas
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
	q => \estado_atual.pagar~q\);

-- Location: LCCOMB_X31_Y3_N20
\proximo_estado.confere_adicao~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.confere_adicao~0_combout\ = (\add~input_o\ & ((\estado_atual.confirma~q\) # ((\estado_atual.edicao_da_compra~q\) # (\estado_atual.pagar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.confirma~q\,
	datab => \add~input_o\,
	datac => \estado_atual.edicao_da_compra~q\,
	datad => \estado_atual.pagar~q\,
	combout => \proximo_estado.confere_adicao~0_combout\);

-- Location: FF_X31_Y3_N21
\estado_atual.confere_adicao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \proximo_estado.confere_adicao~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.confere_adicao~q\);

-- Location: LCCOMB_X31_Y3_N26
\proximo_estado.error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.error~0_combout\ = (!\total_itens_lt_32~input_o\ & \estado_atual.confere_adicao~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \total_itens_lt_32~input_o\,
	datad => \estado_atual.confere_adicao~q\,
	combout => \proximo_estado.error~0_combout\);

-- Location: FF_X31_Y3_N27
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

-- Location: IOIBUF_X32_Y0_N8
\inicia_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicia_compra,
	o => \inicia_compra~input_o\);

-- Location: LCCOMB_X31_Y3_N8
\proximo_estado.sucesso~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.sucesso~0_combout\ = (!\saldo_lt_total~input_o\ & \estado_atual.verifica_saldo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saldo_lt_total~input_o\,
	datad => \estado_atual.verifica_saldo~q\,
	combout => \proximo_estado.sucesso~0_combout\);

-- Location: FF_X31_Y3_N9
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

-- Location: LCCOMB_X31_Y3_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado_atual.sucesso~q\ & ((\inicia_compra~input_o\) # (\estado_atual.inicio~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inicia_compra~input_o\,
	datac => \estado_atual.inicio~q\,
	datad => \estado_atual.sucesso~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X31_Y3_N1
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

-- Location: LCCOMB_X31_Y3_N24
\proximo_estado.adiciona~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.adiciona~0_combout\ = (\total_itens_lt_32~input_o\ & \estado_atual.confere_adicao~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \total_itens_lt_32~input_o\,
	datad => \estado_atual.confere_adicao~q\,
	combout => \proximo_estado.adiciona~0_combout\);

-- Location: FF_X31_Y3_N25
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

-- Location: LCCOMB_X31_Y3_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado_atual.remove~q\) # ((\estado_atual.adiciona~q\) # ((\inicia_compra~input_o\ & !\estado_atual.inicio~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inicia_compra~input_o\,
	datab => \estado_atual.inicio~q\,
	datac => \estado_atual.remove~q\,
	datad => \estado_atual.adiciona~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X31_Y3_N2
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\estado_atual.pagar~q\ & !\estado_atual.confirma~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.pagar~q\,
	datad => \estado_atual.confirma~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y3_N28
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\estado_atual.edicao_da_compra~q\ & (((\cancelar~input_o\ & !\WideOr3~0_combout\)) # (!\finaliza_compra~input_o\))) # (!\estado_atual.edicao_da_compra~q\ & (((\cancelar~input_o\ & !\WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.edicao_da_compra~q\,
	datab => \finaliza_compra~input_o\,
	datac => \cancelar~input_o\,
	datad => \WideOr3~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X31_Y3_N6
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\estado_atual.error~q\) # ((\Selector1~0_combout\) # ((\proximo_estado.verifica_saldo~0_combout\ & \Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.error~q\,
	datab => \proximo_estado.verifica_saldo~0_combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X31_Y3_N7
\estado_atual.edicao_da_compra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.edicao_da_compra~q\);

-- Location: LCCOMB_X31_Y3_N30
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\del~input_o\ & (!\add~input_o\ & ((\estado_atual.edicao_da_compra~q\) # (!\WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.edicao_da_compra~q\,
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \WideOr3~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X31_Y3_N31
\estado_atual.remove\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.remove~q\);

-- Location: LCCOMB_X30_Y3_N16
\ld_total~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_total~0_combout\ = (!\estado_atual.remove~q\ & !\estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.remove~q\,
	datad => \estado_atual.adiciona~q\,
	combout => \ld_total~0_combout\);

ww_ld_total <= \ld_total~output_o\;

ww_clr_total <= \clr_total~output_o\;

ww_ld_total_itens <= \ld_total_itens~output_o\;

ww_clr_total_itens <= \clr_total_itens~output_o\;

ww_erro <= \erro~output_o\;

ww_concluido <= \concluido~output_o\;

ww_desconta <= \desconta~output_o\;

ww_ler_pagamento <= \ler_pagamento~output_o\;
END structure;


