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

-- DATE "07/15/2022 16:21:34"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	smart_cart IS
    PORT (
	inicia_compra : IN std_logic;
	finaliza_compra : IN std_logic;
	cancelar : IN std_logic;
	pagar_compra : IN std_logic;
	cartao_lido : IN std_logic;
	add : IN std_logic;
	del : IN std_logic;
	clock : IN std_logic;
	clear_controladora : IN std_logic;
	valor_produto : IN std_logic_vector(31 DOWNTO 0);
	saldo_cartao : IN std_logic_vector(31 DOWNTO 0);
	saldo_restante : BUFFER std_logic_vector(31 DOWNTO 0);
	valor_compra : BUFFER std_logic_vector(31 DOWNTO 0);
	quantidade_itens : BUFFER std_logic_vector(6 DOWNTO 0);
	erro : BUFFER std_logic;
	concluido : BUFFER std_logic;
	desconta : BUFFER std_logic;
	ler_pagamento : BUFFER std_logic
	);
END smart_cart;

-- Design Ports Information
-- saldo_restante[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[16]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[17]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[18]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[19]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[20]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[21]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[23]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[24]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[25]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[26]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[27]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[28]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[29]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[30]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[31]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[9]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[12]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[14]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[16]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[17]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[18]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[19]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[20]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[21]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[22]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[23]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[24]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[25]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[26]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[27]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[28]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[29]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[30]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[31]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- concluido	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- desconta	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler_pagamento	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[10]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[14]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[15]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[16]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[17]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[20]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[21]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[23]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[24]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[25]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[26]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[27]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[29]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[30]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[31]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[5]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[6]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[10]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[11]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[16]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[17]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[18]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[19]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[20]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[21]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[22]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[23]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[24]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[25]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[26]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[27]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[28]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[29]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[31]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_controladora	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_compra	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cartao_lido	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- del	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cancelar	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicia_compra	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finaliza_compra	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF smart_cart IS
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
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear_controladora : std_logic;
SIGNAL ww_valor_produto : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saldo_cartao : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saldo_restante : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_valor_compra : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_quantidade_itens : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_erro : std_logic;
SIGNAL ww_concluido : std_logic;
SIGNAL ww_desconta : std_logic;
SIGNAL ww_ler_pagamento : std_logic;
SIGNAL \clear_controladora~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saldo_restante[0]~output_o\ : std_logic;
SIGNAL \saldo_restante[1]~output_o\ : std_logic;
SIGNAL \saldo_restante[2]~output_o\ : std_logic;
SIGNAL \saldo_restante[3]~output_o\ : std_logic;
SIGNAL \saldo_restante[4]~output_o\ : std_logic;
SIGNAL \saldo_restante[5]~output_o\ : std_logic;
SIGNAL \saldo_restante[6]~output_o\ : std_logic;
SIGNAL \saldo_restante[7]~output_o\ : std_logic;
SIGNAL \saldo_restante[8]~output_o\ : std_logic;
SIGNAL \saldo_restante[9]~output_o\ : std_logic;
SIGNAL \saldo_restante[10]~output_o\ : std_logic;
SIGNAL \saldo_restante[11]~output_o\ : std_logic;
SIGNAL \saldo_restante[12]~output_o\ : std_logic;
SIGNAL \saldo_restante[13]~output_o\ : std_logic;
SIGNAL \saldo_restante[14]~output_o\ : std_logic;
SIGNAL \saldo_restante[15]~output_o\ : std_logic;
SIGNAL \saldo_restante[16]~output_o\ : std_logic;
SIGNAL \saldo_restante[17]~output_o\ : std_logic;
SIGNAL \saldo_restante[18]~output_o\ : std_logic;
SIGNAL \saldo_restante[19]~output_o\ : std_logic;
SIGNAL \saldo_restante[20]~output_o\ : std_logic;
SIGNAL \saldo_restante[21]~output_o\ : std_logic;
SIGNAL \saldo_restante[22]~output_o\ : std_logic;
SIGNAL \saldo_restante[23]~output_o\ : std_logic;
SIGNAL \saldo_restante[24]~output_o\ : std_logic;
SIGNAL \saldo_restante[25]~output_o\ : std_logic;
SIGNAL \saldo_restante[26]~output_o\ : std_logic;
SIGNAL \saldo_restante[27]~output_o\ : std_logic;
SIGNAL \saldo_restante[28]~output_o\ : std_logic;
SIGNAL \saldo_restante[29]~output_o\ : std_logic;
SIGNAL \saldo_restante[30]~output_o\ : std_logic;
SIGNAL \saldo_restante[31]~output_o\ : std_logic;
SIGNAL \valor_compra[0]~output_o\ : std_logic;
SIGNAL \valor_compra[1]~output_o\ : std_logic;
SIGNAL \valor_compra[2]~output_o\ : std_logic;
SIGNAL \valor_compra[3]~output_o\ : std_logic;
SIGNAL \valor_compra[4]~output_o\ : std_logic;
SIGNAL \valor_compra[5]~output_o\ : std_logic;
SIGNAL \valor_compra[6]~output_o\ : std_logic;
SIGNAL \valor_compra[7]~output_o\ : std_logic;
SIGNAL \valor_compra[8]~output_o\ : std_logic;
SIGNAL \valor_compra[9]~output_o\ : std_logic;
SIGNAL \valor_compra[10]~output_o\ : std_logic;
SIGNAL \valor_compra[11]~output_o\ : std_logic;
SIGNAL \valor_compra[12]~output_o\ : std_logic;
SIGNAL \valor_compra[13]~output_o\ : std_logic;
SIGNAL \valor_compra[14]~output_o\ : std_logic;
SIGNAL \valor_compra[15]~output_o\ : std_logic;
SIGNAL \valor_compra[16]~output_o\ : std_logic;
SIGNAL \valor_compra[17]~output_o\ : std_logic;
SIGNAL \valor_compra[18]~output_o\ : std_logic;
SIGNAL \valor_compra[19]~output_o\ : std_logic;
SIGNAL \valor_compra[20]~output_o\ : std_logic;
SIGNAL \valor_compra[21]~output_o\ : std_logic;
SIGNAL \valor_compra[22]~output_o\ : std_logic;
SIGNAL \valor_compra[23]~output_o\ : std_logic;
SIGNAL \valor_compra[24]~output_o\ : std_logic;
SIGNAL \valor_compra[25]~output_o\ : std_logic;
SIGNAL \valor_compra[26]~output_o\ : std_logic;
SIGNAL \valor_compra[27]~output_o\ : std_logic;
SIGNAL \valor_compra[28]~output_o\ : std_logic;
SIGNAL \valor_compra[29]~output_o\ : std_logic;
SIGNAL \valor_compra[30]~output_o\ : std_logic;
SIGNAL \valor_compra[31]~output_o\ : std_logic;
SIGNAL \quantidade_itens[0]~output_o\ : std_logic;
SIGNAL \quantidade_itens[1]~output_o\ : std_logic;
SIGNAL \quantidade_itens[2]~output_o\ : std_logic;
SIGNAL \quantidade_itens[3]~output_o\ : std_logic;
SIGNAL \quantidade_itens[4]~output_o\ : std_logic;
SIGNAL \quantidade_itens[5]~output_o\ : std_logic;
SIGNAL \quantidade_itens[6]~output_o\ : std_logic;
SIGNAL \erro~output_o\ : std_logic;
SIGNAL \concluido~output_o\ : std_logic;
SIGNAL \desconta~output_o\ : std_logic;
SIGNAL \ler_pagamento~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \valor_produto[0]~input_o\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~7_combout\ : std_logic;
SIGNAL \inicia_compra~input_o\ : std_logic;
SIGNAL \clear_controladora~input_o\ : std_logic;
SIGNAL \A_Controladora|aux_inicia_compra~q\ : std_logic;
SIGNAL \cancelar~input_o\ : std_logic;
SIGNAL \A_Controladora|aux_cancelar~q\ : std_logic;
SIGNAL \add~input_o\ : std_logic;
SIGNAL \A_Controladora|aux_add~q\ : std_logic;
SIGNAL \del~input_o\ : std_logic;
SIGNAL \A_Controladora|aux_del~q\ : std_logic;
SIGNAL \A_Controladora|proximo_estado.verifica_saldo~0_combout\ : std_logic;
SIGNAL \A_Controladora|proximo_estado.verifica_saldo~1_combout\ : std_logic;
SIGNAL \cartao_lido~input_o\ : std_logic;
SIGNAL \A_Controladora|aux_cartao_lido~q\ : std_logic;
SIGNAL \finaliza_compra~input_o\ : std_logic;
SIGNAL \A_Controladora|process_1~0_combout\ : std_logic;
SIGNAL \A_Controladora|WideOr3~0_combout\ : std_logic;
SIGNAL \A_Controladora|Selector3~0_combout\ : std_logic;
SIGNAL \clear_controladora~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_Controladora|estado_atual.remove~q\ : std_logic;
SIGNAL \A_Controladora|ld_total_itens~0_combout\ : std_logic;
SIGNAL \A_Controladora|Selector2~4_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.confere_adicao~q\ : std_logic;
SIGNAL \A_Controladora|proximo_estado.error~0_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.error~q\ : std_logic;
SIGNAL \A_Controladora|Selector1~0_combout\ : std_logic;
SIGNAL \A_Controladora|aux_finaliza_compra~q\ : std_logic;
SIGNAL \A_Controladora|Selector1~1_combout\ : std_logic;
SIGNAL \A_Controladora|Selector1~2_combout\ : std_logic;
SIGNAL \A_Controladora|Selector1~3_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.edicao_da_compra~q\ : std_logic;
SIGNAL \A_Controladora|Selector4~0_combout\ : std_logic;
SIGNAL \pagar_compra~input_o\ : std_logic;
SIGNAL \A_Controladora|aux_pagar_compra~q\ : std_logic;
SIGNAL \A_Controladora|Selector4~1_combout\ : std_logic;
SIGNAL \A_Controladora|Selector4~2_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.confirma~q\ : std_logic;
SIGNAL \A_Controladora|Selector5~0_combout\ : std_logic;
SIGNAL \A_Controladora|Selector5~1_combout\ : std_logic;
SIGNAL \saldo_cartao[31]~input_o\ : std_logic;
SIGNAL \valor_produto[31]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~31_combout\ : std_logic;
SIGNAL \valor_produto[30]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~30_combout\ : std_logic;
SIGNAL \valor_produto[29]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~29_combout\ : std_logic;
SIGNAL \valor_produto[28]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~28_combout\ : std_logic;
SIGNAL \valor_produto[27]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~27_combout\ : std_logic;
SIGNAL \valor_produto[26]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~26_combout\ : std_logic;
SIGNAL \valor_produto[25]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~25_combout\ : std_logic;
SIGNAL \valor_produto[24]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~24_combout\ : std_logic;
SIGNAL \valor_produto[23]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~23_combout\ : std_logic;
SIGNAL \valor_produto[22]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~22_combout\ : std_logic;
SIGNAL \valor_produto[21]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~21_combout\ : std_logic;
SIGNAL \valor_produto[20]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~20_combout\ : std_logic;
SIGNAL \valor_produto[19]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~19_combout\ : std_logic;
SIGNAL \valor_produto[18]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~18_combout\ : std_logic;
SIGNAL \valor_produto[17]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~17_combout\ : std_logic;
SIGNAL \valor_produto[16]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~16_combout\ : std_logic;
SIGNAL \valor_produto[15]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~15_combout\ : std_logic;
SIGNAL \valor_produto[14]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~14_combout\ : std_logic;
SIGNAL \valor_produto[13]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~13_combout\ : std_logic;
SIGNAL \valor_produto[12]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~12_combout\ : std_logic;
SIGNAL \valor_produto[11]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~11_combout\ : std_logic;
SIGNAL \valor_produto[10]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~10_combout\ : std_logic;
SIGNAL \valor_produto[9]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~9_combout\ : std_logic;
SIGNAL \valor_produto[8]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~8_combout\ : std_logic;
SIGNAL \valor_produto[7]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~7_combout\ : std_logic;
SIGNAL \valor_produto[6]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~6_combout\ : std_logic;
SIGNAL \valor_produto[5]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~5_combout\ : std_logic;
SIGNAL \valor_produto[4]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~4_combout\ : std_logic;
SIGNAL \valor_produto[3]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~3_combout\ : std_logic;
SIGNAL \valor_produto[2]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~2_combout\ : std_logic;
SIGNAL \valor_produto[1]~input_o\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~1_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[0]~35\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[1]~36_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[1]~37\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[2]~38_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[2]~39\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[3]~40_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[3]~41\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[4]~42_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[4]~43\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[5]~44_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[5]~45\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[6]~46_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[6]~47\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[7]~48_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[7]~49\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[8]~50_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[8]~51\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[9]~52_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[9]~53\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[10]~54_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[10]~55\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[11]~56_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[11]~57\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[12]~58_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[12]~59\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[13]~60_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[13]~61\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[14]~62_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[14]~63\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[15]~64_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[15]~65\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[16]~66_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[16]~67\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[17]~68_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[17]~69\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[18]~70_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[18]~71\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[19]~72_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[19]~73\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[20]~74_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[20]~75\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[21]~76_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[21]~77\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[22]~78_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[22]~79\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[23]~80_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[23]~81\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[24]~82_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[24]~83\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[25]~84_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[25]~85\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[26]~86_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[26]~87\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[27]~88_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[27]~89\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[28]~90_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[28]~91\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[29]~92_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[29]~93\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[30]~94_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[30]~95\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[31]~96_combout\ : std_logic;
SIGNAL \saldo_cartao[30]~input_o\ : std_logic;
SIGNAL \saldo_cartao[29]~input_o\ : std_logic;
SIGNAL \saldo_cartao[28]~input_o\ : std_logic;
SIGNAL \saldo_cartao[27]~input_o\ : std_logic;
SIGNAL \saldo_cartao[26]~input_o\ : std_logic;
SIGNAL \saldo_cartao[25]~input_o\ : std_logic;
SIGNAL \saldo_cartao[24]~input_o\ : std_logic;
SIGNAL \saldo_cartao[23]~input_o\ : std_logic;
SIGNAL \saldo_cartao[22]~input_o\ : std_logic;
SIGNAL \saldo_cartao[21]~input_o\ : std_logic;
SIGNAL \saldo_cartao[20]~input_o\ : std_logic;
SIGNAL \saldo_cartao[19]~input_o\ : std_logic;
SIGNAL \saldo_cartao[18]~input_o\ : std_logic;
SIGNAL \saldo_cartao[17]~input_o\ : std_logic;
SIGNAL \saldo_cartao[16]~input_o\ : std_logic;
SIGNAL \saldo_cartao[15]~input_o\ : std_logic;
SIGNAL \saldo_cartao[14]~input_o\ : std_logic;
SIGNAL \saldo_cartao[13]~input_o\ : std_logic;
SIGNAL \saldo_cartao[12]~input_o\ : std_logic;
SIGNAL \saldo_cartao[11]~input_o\ : std_logic;
SIGNAL \saldo_cartao[10]~input_o\ : std_logic;
SIGNAL \saldo_cartao[9]~input_o\ : std_logic;
SIGNAL \saldo_cartao[8]~input_o\ : std_logic;
SIGNAL \saldo_cartao[7]~input_o\ : std_logic;
SIGNAL \saldo_cartao[6]~input_o\ : std_logic;
SIGNAL \saldo_cartao[5]~input_o\ : std_logic;
SIGNAL \saldo_cartao[4]~input_o\ : std_logic;
SIGNAL \saldo_cartao[3]~input_o\ : std_logic;
SIGNAL \saldo_cartao[2]~input_o\ : std_logic;
SIGNAL \saldo_cartao[1]~input_o\ : std_logic;
SIGNAL \saldo_cartao[0]~input_o\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~1_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~3_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~5_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~7_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~9_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~11_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~13_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~15_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~17_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~19_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~21_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~23_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~25_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~27_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~29_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~31_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~33_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~35_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~37_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~39_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~41_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~43_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~45_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~47_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~49_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~51_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~53_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~55_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~57_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~59_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~61_cout\ : std_logic;
SIGNAL \B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\ : std_logic;
SIGNAL \A_Controladora|Selector5~2_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.pagar~q\ : std_logic;
SIGNAL \A_Controladora|proximo_estado.verifica_saldo~2_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.verifica_saldo~q\ : std_logic;
SIGNAL \A_Controladora|proximo_estado.sucesso~0_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.sucesso~q\ : std_logic;
SIGNAL \A_Controladora|Selector0~0_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.inicio~q\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~9_combout\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~11_combout\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~13_combout\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~15_combout\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~17_combout\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~18\ : std_logic;
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens[6]~19_combout\ : std_logic;
SIGNAL \A_Controladora|proximo_estado.adiciona~0_combout\ : std_logic;
SIGNAL \A_Controladora|estado_atual.adiciona~q\ : std_logic;
SIGNAL \B_DataPath|B_Subtrator_1|Add0~0_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra[0]~34_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[0]~0_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[0]~1\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[1]~2_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[1]~3\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[2]~4_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[2]~5\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[3]~6_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[3]~7\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[4]~8_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[4]~9\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[5]~10_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[5]~11\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[6]~12_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[6]~13\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[7]~14_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[7]~15\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[8]~16_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[8]~17\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[9]~18_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[9]~19\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[10]~20_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[10]~21\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[11]~22_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[11]~23\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[12]~24_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[12]~25\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[13]~26_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[13]~27\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[14]~28_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[14]~29\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[15]~30_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[15]~31\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[16]~32_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[16]~33\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[17]~34_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[17]~35\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[18]~36_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[18]~37\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[19]~38_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[19]~39\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[20]~40_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[20]~41\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[21]~42_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[21]~43\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[22]~44_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[22]~45\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[23]~46_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[23]~47\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[24]~48_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[24]~49\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[25]~50_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[25]~51\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[26]~52_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[26]~53\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[27]~54_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[27]~55\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[28]~56_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[28]~57\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[29]~58_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[29]~59\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[30]~60_combout\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[30]~61\ : std_logic;
SIGNAL \B_DataPath|E_Subtrator_2|s[31]~62_combout\ : std_logic;
SIGNAL \B_DataPath|D_Total_Reg|valor_compra\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B_DataPath|J_Total_Itens_Reg|quantidade_itens\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_clear_controladora~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clear_controladora~input_o\ : std_logic;

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
ww_clock <= clock;
ww_clear_controladora <= clear_controladora;
ww_valor_produto <= valor_produto;
ww_saldo_cartao <= saldo_cartao;
saldo_restante <= ww_saldo_restante;
valor_compra <= ww_valor_compra;
quantidade_itens <= ww_quantidade_itens;
erro <= ww_erro;
concluido <= ww_concluido;
desconta <= ww_desconta;
ler_pagamento <= ww_ler_pagamento;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear_controladora~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear_controladora~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clear_controladora~inputclkctrl_outclk\ <= NOT \clear_controladora~inputclkctrl_outclk\;
\ALT_INV_clear_controladora~input_o\ <= NOT \clear_controladora~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N9
\saldo_restante[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\saldo_restante[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[1]~2_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\saldo_restante[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[2]~4_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\saldo_restante[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[3]~6_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\saldo_restante[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[4]~8_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\saldo_restante[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[5]~10_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\saldo_restante[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[6]~12_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[6]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\saldo_restante[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[7]~14_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\saldo_restante[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[8]~16_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\saldo_restante[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[9]~18_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\saldo_restante[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[10]~20_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[10]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\saldo_restante[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[11]~22_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\saldo_restante[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[12]~24_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[12]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\saldo_restante[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[13]~26_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[13]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\saldo_restante[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[14]~28_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[14]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\saldo_restante[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[15]~30_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[15]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\saldo_restante[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[16]~32_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[16]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\saldo_restante[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[17]~34_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[17]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\saldo_restante[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[18]~36_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[18]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\saldo_restante[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[19]~38_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[19]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\saldo_restante[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[20]~40_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[20]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\saldo_restante[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[21]~42_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[21]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\saldo_restante[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[22]~44_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[22]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\saldo_restante[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[23]~46_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[23]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\saldo_restante[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[24]~48_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[24]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\saldo_restante[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[25]~50_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[25]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\saldo_restante[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[26]~52_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[26]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\saldo_restante[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[27]~54_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[27]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\saldo_restante[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[28]~56_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[28]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\saldo_restante[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[29]~58_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[29]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\saldo_restante[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[30]~60_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[30]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\saldo_restante[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|E_Subtrator_2|s[31]~62_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[31]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\valor_compra[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(0),
	devoe => ww_devoe,
	o => \valor_compra[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\valor_compra[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(1),
	devoe => ww_devoe,
	o => \valor_compra[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\valor_compra[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(2),
	devoe => ww_devoe,
	o => \valor_compra[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\valor_compra[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(3),
	devoe => ww_devoe,
	o => \valor_compra[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\valor_compra[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(4),
	devoe => ww_devoe,
	o => \valor_compra[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\valor_compra[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(5),
	devoe => ww_devoe,
	o => \valor_compra[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\valor_compra[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(6),
	devoe => ww_devoe,
	o => \valor_compra[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\valor_compra[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(7),
	devoe => ww_devoe,
	o => \valor_compra[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\valor_compra[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(8),
	devoe => ww_devoe,
	o => \valor_compra[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\valor_compra[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(9),
	devoe => ww_devoe,
	o => \valor_compra[9]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\valor_compra[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(10),
	devoe => ww_devoe,
	o => \valor_compra[10]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\valor_compra[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(11),
	devoe => ww_devoe,
	o => \valor_compra[11]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\valor_compra[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(12),
	devoe => ww_devoe,
	o => \valor_compra[12]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\valor_compra[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(13),
	devoe => ww_devoe,
	o => \valor_compra[13]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\valor_compra[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(14),
	devoe => ww_devoe,
	o => \valor_compra[14]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\valor_compra[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(15),
	devoe => ww_devoe,
	o => \valor_compra[15]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\valor_compra[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(16),
	devoe => ww_devoe,
	o => \valor_compra[16]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\valor_compra[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(17),
	devoe => ww_devoe,
	o => \valor_compra[17]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\valor_compra[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(18),
	devoe => ww_devoe,
	o => \valor_compra[18]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\valor_compra[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(19),
	devoe => ww_devoe,
	o => \valor_compra[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\valor_compra[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(20),
	devoe => ww_devoe,
	o => \valor_compra[20]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\valor_compra[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(21),
	devoe => ww_devoe,
	o => \valor_compra[21]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\valor_compra[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(22),
	devoe => ww_devoe,
	o => \valor_compra[22]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\valor_compra[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(23),
	devoe => ww_devoe,
	o => \valor_compra[23]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\valor_compra[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(24),
	devoe => ww_devoe,
	o => \valor_compra[24]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\valor_compra[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(25),
	devoe => ww_devoe,
	o => \valor_compra[25]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\valor_compra[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(26),
	devoe => ww_devoe,
	o => \valor_compra[26]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\valor_compra[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(27),
	devoe => ww_devoe,
	o => \valor_compra[27]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\valor_compra[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(28),
	devoe => ww_devoe,
	o => \valor_compra[28]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\valor_compra[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(29),
	devoe => ww_devoe,
	o => \valor_compra[29]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\valor_compra[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(30),
	devoe => ww_devoe,
	o => \valor_compra[30]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\valor_compra[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|D_Total_Reg|valor_compra\(31),
	devoe => ww_devoe,
	o => \valor_compra[31]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\quantidade_itens[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(0),
	devoe => ww_devoe,
	o => \quantidade_itens[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\quantidade_itens[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1),
	devoe => ww_devoe,
	o => \quantidade_itens[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\quantidade_itens[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(2),
	devoe => ww_devoe,
	o => \quantidade_itens[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\quantidade_itens[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3),
	devoe => ww_devoe,
	o => \quantidade_itens[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\quantidade_itens[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(4),
	devoe => ww_devoe,
	o => \quantidade_itens[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\quantidade_itens[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5),
	devoe => ww_devoe,
	o => \quantidade_itens[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\quantidade_itens[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6),
	devoe => ww_devoe,
	o => \quantidade_itens[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\erro~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Controladora|estado_atual.error~q\,
	devoe => ww_devoe,
	o => \erro~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\concluido~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Controladora|estado_atual.sucesso~q\,
	devoe => ww_devoe,
	o => \concluido~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\desconta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Controladora|estado_atual.sucesso~q\,
	devoe => ww_devoe,
	o => \desconta~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\ler_pagamento~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Controladora|estado_atual.pagar~q\,
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

-- Location: IOIBUF_X11_Y0_N15
\valor_produto[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(0),
	o => \valor_produto[0]~input_o\);

-- Location: LCCOMB_X10_Y12_N4
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~7_combout\ = \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(0) $ (VCC)
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\ = CARRY(\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(0),
	datad => VCC,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~7_combout\,
	cout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\);

-- Location: IOIBUF_X16_Y0_N15
\inicia_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicia_compra,
	o => \inicia_compra~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\clear_controladora~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_controladora,
	o => \clear_controladora~input_o\);

-- Location: FF_X11_Y12_N21
\A_Controladora|aux_inicia_compra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inicia_compra~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_inicia_compra~q\);

-- Location: IOIBUF_X18_Y0_N1
\cancelar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cancelar,
	o => \cancelar~input_o\);

-- Location: FF_X14_Y12_N5
\A_Controladora|aux_cancelar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \cancelar~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_cancelar~q\);

-- Location: IOIBUF_X34_Y8_N8
\add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add,
	o => \add~input_o\);

-- Location: FF_X14_Y12_N31
\A_Controladora|aux_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \add~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_add~q\);

-- Location: IOIBUF_X18_Y0_N8
\del~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_del,
	o => \del~input_o\);

-- Location: FF_X14_Y12_N17
\A_Controladora|aux_del\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \del~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_del~q\);

-- Location: LCCOMB_X14_Y12_N16
\A_Controladora|proximo_estado.verifica_saldo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|proximo_estado.verifica_saldo~0_combout\ = (\A_Controladora|aux_add~q\ & (((\A_Controladora|aux_del~q\)) # (!\del~input_o\))) # (!\A_Controladora|aux_add~q\ & (!\add~input_o\ & ((\A_Controladora|aux_del~q\) # (!\del~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|aux_add~q\,
	datab => \del~input_o\,
	datac => \A_Controladora|aux_del~q\,
	datad => \add~input_o\,
	combout => \A_Controladora|proximo_estado.verifica_saldo~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\A_Controladora|proximo_estado.verifica_saldo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|proximo_estado.verifica_saldo~1_combout\ = (\A_Controladora|proximo_estado.verifica_saldo~0_combout\ & ((\A_Controladora|aux_cancelar~q\) # (!\cancelar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancelar~input_o\,
	datab => \A_Controladora|aux_cancelar~q\,
	datad => \A_Controladora|proximo_estado.verifica_saldo~0_combout\,
	combout => \A_Controladora|proximo_estado.verifica_saldo~1_combout\);

-- Location: IOIBUF_X34_Y8_N22
\cartao_lido~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cartao_lido,
	o => \cartao_lido~input_o\);

-- Location: FF_X14_Y12_N15
\A_Controladora|aux_cartao_lido\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \cartao_lido~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_cartao_lido~q\);

-- Location: IOIBUF_X34_Y12_N8
\finaliza_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finaliza_compra,
	o => \finaliza_compra~input_o\);

-- Location: LCCOMB_X14_Y12_N4
\A_Controladora|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|process_1~0_combout\ = (!\A_Controladora|aux_add~q\ & \add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|aux_add~q\,
	datad => \add~input_o\,
	combout => \A_Controladora|process_1~0_combout\);

-- Location: LCCOMB_X14_Y12_N6
\A_Controladora|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|WideOr3~0_combout\ = (\A_Controladora|estado_atual.edicao_da_compra~q\) # ((\A_Controladora|estado_atual.confirma~q\) # (\A_Controladora|estado_atual.pagar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.edicao_da_compra~q\,
	datac => \A_Controladora|estado_atual.confirma~q\,
	datad => \A_Controladora|estado_atual.pagar~q\,
	combout => \A_Controladora|WideOr3~0_combout\);

-- Location: LCCOMB_X14_Y12_N24
\A_Controladora|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector3~0_combout\ = (\del~input_o\ & (!\A_Controladora|aux_del~q\ & (!\A_Controladora|process_1~0_combout\ & \A_Controladora|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datab => \A_Controladora|aux_del~q\,
	datac => \A_Controladora|process_1~0_combout\,
	datad => \A_Controladora|WideOr3~0_combout\,
	combout => \A_Controladora|Selector3~0_combout\);

-- Location: CLKCTRL_G4
\clear_controladora~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear_controladora~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear_controladora~inputclkctrl_outclk\);

-- Location: FF_X14_Y12_N25
\A_Controladora|estado_atual.remove\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|Selector3~0_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.remove~q\);

-- Location: LCCOMB_X11_Y12_N0
\A_Controladora|ld_total_itens~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|ld_total_itens~0_combout\ = (\A_Controladora|estado_atual.adiciona~q\) # (\A_Controladora|estado_atual.remove~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_Controladora|estado_atual.adiciona~q\,
	datad => \A_Controladora|estado_atual.remove~q\,
	combout => \A_Controladora|ld_total_itens~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
\A_Controladora|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector2~4_combout\ = (\A_Controladora|WideOr3~0_combout\ & (!\A_Controladora|aux_add~q\ & \add~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|WideOr3~0_combout\,
	datac => \A_Controladora|aux_add~q\,
	datad => \add~input_o\,
	combout => \A_Controladora|Selector2~4_combout\);

-- Location: FF_X14_Y12_N19
\A_Controladora|estado_atual.confere_adicao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|Selector2~4_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.confere_adicao~q\);

-- Location: LCCOMB_X10_Y12_N0
\A_Controladora|proximo_estado.error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|proximo_estado.error~0_combout\ = (\A_Controladora|estado_atual.confere_adicao~q\ & ((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6)) # (\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6),
	datac => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5),
	datad => \A_Controladora|estado_atual.confere_adicao~q\,
	combout => \A_Controladora|proximo_estado.error~0_combout\);

-- Location: FF_X10_Y12_N1
\A_Controladora|estado_atual.error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|proximo_estado.error~0_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.error~q\);

-- Location: LCCOMB_X10_Y12_N28
\A_Controladora|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector1~0_combout\ = (\A_Controladora|estado_atual.error~q\) # ((!\A_Controladora|aux_inicia_compra~q\ & (!\A_Controladora|estado_atual.inicio~q\ & \inicia_compra~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|aux_inicia_compra~q\,
	datab => \A_Controladora|estado_atual.error~q\,
	datac => \A_Controladora|estado_atual.inicio~q\,
	datad => \inicia_compra~input_o\,
	combout => \A_Controladora|Selector1~0_combout\);

-- Location: FF_X14_Y12_N1
\A_Controladora|aux_finaliza_compra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \finaliza_compra~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_finaliza_compra~q\);

-- Location: LCCOMB_X14_Y12_N2
\A_Controladora|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector1~1_combout\ = (\cancelar~input_o\ & (!\A_Controladora|aux_cancelar~q\ & ((\A_Controladora|estado_atual.confirma~q\) # (\A_Controladora|estado_atual.pagar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancelar~input_o\,
	datab => \A_Controladora|aux_cancelar~q\,
	datac => \A_Controladora|estado_atual.confirma~q\,
	datad => \A_Controladora|estado_atual.pagar~q\,
	combout => \A_Controladora|Selector1~1_combout\);

-- Location: LCCOMB_X14_Y12_N0
\A_Controladora|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector1~2_combout\ = (\A_Controladora|Selector1~1_combout\) # ((\A_Controladora|estado_atual.edicao_da_compra~q\ & ((\A_Controladora|aux_finaliza_compra~q\) # (!\finaliza_compra~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finaliza_compra~input_o\,
	datab => \A_Controladora|estado_atual.edicao_da_compra~q\,
	datac => \A_Controladora|aux_finaliza_compra~q\,
	datad => \A_Controladora|Selector1~1_combout\,
	combout => \A_Controladora|Selector1~2_combout\);

-- Location: LCCOMB_X11_Y12_N14
\A_Controladora|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector1~3_combout\ = (\A_Controladora|ld_total_itens~0_combout\) # ((\A_Controladora|Selector1~0_combout\) # ((\A_Controladora|proximo_estado.verifica_saldo~0_combout\ & \A_Controladora|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|ld_total_itens~0_combout\,
	datab => \A_Controladora|Selector1~0_combout\,
	datac => \A_Controladora|proximo_estado.verifica_saldo~0_combout\,
	datad => \A_Controladora|Selector1~2_combout\,
	combout => \A_Controladora|Selector1~3_combout\);

-- Location: FF_X11_Y12_N15
\A_Controladora|estado_atual.edicao_da_compra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|Selector1~3_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.edicao_da_compra~q\);

-- Location: LCCOMB_X14_Y12_N22
\A_Controladora|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector4~0_combout\ = (\finaliza_compra~input_o\ & (\A_Controladora|estado_atual.edicao_da_compra~q\ & !\A_Controladora|aux_finaliza_compra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finaliza_compra~input_o\,
	datac => \A_Controladora|estado_atual.edicao_da_compra~q\,
	datad => \A_Controladora|aux_finaliza_compra~q\,
	combout => \A_Controladora|Selector4~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\pagar_compra~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_compra,
	o => \pagar_compra~input_o\);

-- Location: FF_X14_Y12_N13
\A_Controladora|aux_pagar_compra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \pagar_compra~input_o\,
	sload => VCC,
	ena => \ALT_INV_clear_controladora~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|aux_pagar_compra~q\);

-- Location: LCCOMB_X14_Y12_N28
\A_Controladora|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector4~1_combout\ = (\cancelar~input_o\ & (\A_Controladora|aux_cancelar~q\ & ((\A_Controladora|aux_pagar_compra~q\) # (!\pagar_compra~input_o\)))) # (!\cancelar~input_o\ & (((\A_Controladora|aux_pagar_compra~q\) # 
-- (!\pagar_compra~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancelar~input_o\,
	datab => \A_Controladora|aux_cancelar~q\,
	datac => \pagar_compra~input_o\,
	datad => \A_Controladora|aux_pagar_compra~q\,
	combout => \A_Controladora|Selector4~1_combout\);

-- Location: LCCOMB_X14_Y12_N26
\A_Controladora|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector4~2_combout\ = (\A_Controladora|proximo_estado.verifica_saldo~0_combout\ & ((\A_Controladora|Selector4~0_combout\) # ((\A_Controladora|Selector4~1_combout\ & \A_Controladora|estado_atual.confirma~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|Selector4~0_combout\,
	datab => \A_Controladora|Selector4~1_combout\,
	datac => \A_Controladora|estado_atual.confirma~q\,
	datad => \A_Controladora|proximo_estado.verifica_saldo~0_combout\,
	combout => \A_Controladora|Selector4~2_combout\);

-- Location: FF_X14_Y12_N27
\A_Controladora|estado_atual.confirma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|Selector4~2_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.confirma~q\);

-- Location: LCCOMB_X14_Y12_N12
\A_Controladora|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector5~0_combout\ = (\A_Controladora|estado_atual.confirma~q\ & (\pagar_compra~input_o\ & !\A_Controladora|aux_pagar_compra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|estado_atual.confirma~q\,
	datab => \pagar_compra~input_o\,
	datac => \A_Controladora|aux_pagar_compra~q\,
	combout => \A_Controladora|Selector5~0_combout\);

-- Location: LCCOMB_X14_Y12_N14
\A_Controladora|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector5~1_combout\ = (\A_Controladora|Selector5~0_combout\) # ((\A_Controladora|estado_atual.pagar~q\ & ((\A_Controladora|aux_cartao_lido~q\) # (!\cartao_lido~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|Selector5~0_combout\,
	datab => \cartao_lido~input_o\,
	datac => \A_Controladora|aux_cartao_lido~q\,
	datad => \A_Controladora|estado_atual.pagar~q\,
	combout => \A_Controladora|Selector5~1_combout\);

-- Location: IOIBUF_X34_Y11_N1
\saldo_cartao[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(31),
	o => \saldo_cartao[31]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\valor_produto[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(31),
	o => \valor_produto[31]~input_o\);

-- Location: LCCOMB_X12_Y11_N18
\B_DataPath|B_Subtrator_1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~31_combout\ = \A_Controladora|estado_atual.adiciona~q\ $ (\valor_produto[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => \valor_produto[31]~input_o\,
	combout => \B_DataPath|B_Subtrator_1|Add0~31_combout\);

-- Location: IOIBUF_X0_Y8_N22
\valor_produto[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(30),
	o => \valor_produto[30]~input_o\);

-- Location: LCCOMB_X11_Y11_N14
\B_DataPath|B_Subtrator_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~30_combout\ = \valor_produto[30]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \valor_produto[30]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~30_combout\);

-- Location: IOIBUF_X11_Y0_N22
\valor_produto[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(29),
	o => \valor_produto[29]~input_o\);

-- Location: LCCOMB_X12_Y11_N20
\B_DataPath|B_Subtrator_1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~29_combout\ = \valor_produto[29]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[29]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~29_combout\);

-- Location: IOIBUF_X7_Y0_N15
\valor_produto[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(28),
	o => \valor_produto[28]~input_o\);

-- Location: LCCOMB_X11_Y11_N4
\B_DataPath|B_Subtrator_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~28_combout\ = \valor_produto[28]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[28]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~28_combout\);

-- Location: IOIBUF_X16_Y0_N22
\valor_produto[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(27),
	o => \valor_produto[27]~input_o\);

-- Location: LCCOMB_X12_Y11_N26
\B_DataPath|B_Subtrator_1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~27_combout\ = \A_Controladora|estado_atual.adiciona~q\ $ (\valor_produto[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => \valor_produto[27]~input_o\,
	combout => \B_DataPath|B_Subtrator_1|Add0~27_combout\);

-- Location: IOIBUF_X28_Y0_N1
\valor_produto[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(26),
	o => \valor_produto[26]~input_o\);

-- Location: LCCOMB_X12_Y11_N24
\B_DataPath|B_Subtrator_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~26_combout\ = \valor_produto[26]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[26]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~26_combout\);

-- Location: IOIBUF_X7_Y0_N8
\valor_produto[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(25),
	o => \valor_produto[25]~input_o\);

-- Location: LCCOMB_X12_Y11_N22
\B_DataPath|B_Subtrator_1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~25_combout\ = \A_Controladora|estado_atual.adiciona~q\ $ (\valor_produto[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => \valor_produto[25]~input_o\,
	combout => \B_DataPath|B_Subtrator_1|Add0~25_combout\);

-- Location: IOIBUF_X11_Y0_N8
\valor_produto[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(24),
	o => \valor_produto[24]~input_o\);

-- Location: LCCOMB_X12_Y11_N28
\B_DataPath|B_Subtrator_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~24_combout\ = \A_Controladora|estado_atual.adiciona~q\ $ (\valor_produto[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => \valor_produto[24]~input_o\,
	combout => \B_DataPath|B_Subtrator_1|Add0~24_combout\);

-- Location: IOIBUF_X9_Y0_N15
\valor_produto[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(23),
	o => \valor_produto[23]~input_o\);

-- Location: LCCOMB_X12_Y11_N30
\B_DataPath|B_Subtrator_1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~23_combout\ = \valor_produto[23]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[23]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~23_combout\);

-- Location: IOIBUF_X1_Y0_N15
\valor_produto[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(22),
	o => \valor_produto[22]~input_o\);

-- Location: LCCOMB_X10_Y12_N20
\B_DataPath|B_Subtrator_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~22_combout\ = \valor_produto[22]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[22]~input_o\,
	datac => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~22_combout\);

-- Location: IOIBUF_X0_Y8_N15
\valor_produto[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(21),
	o => \valor_produto[21]~input_o\);

-- Location: LCCOMB_X11_Y12_N4
\B_DataPath|B_Subtrator_1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~21_combout\ = \valor_produto[21]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[21]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~21_combout\);

-- Location: IOIBUF_X0_Y11_N22
\valor_produto[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(20),
	o => \valor_produto[20]~input_o\);

-- Location: LCCOMB_X10_Y12_N22
\B_DataPath|B_Subtrator_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~20_combout\ = \valor_produto[20]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[20]~input_o\,
	datac => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~20_combout\);

-- Location: IOIBUF_X0_Y9_N1
\valor_produto[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(19),
	o => \valor_produto[19]~input_o\);

-- Location: LCCOMB_X10_Y12_N18
\B_DataPath|B_Subtrator_1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~19_combout\ = \A_Controladora|estado_atual.adiciona~q\ $ (\valor_produto[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_Controladora|estado_atual.adiciona~q\,
	datad => \valor_produto[19]~input_o\,
	combout => \B_DataPath|B_Subtrator_1|Add0~19_combout\);

-- Location: IOIBUF_X11_Y0_N1
\valor_produto[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(18),
	o => \valor_produto[18]~input_o\);

-- Location: LCCOMB_X11_Y12_N6
\B_DataPath|B_Subtrator_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~18_combout\ = \valor_produto[18]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[18]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~18_combout\);

-- Location: IOIBUF_X3_Y24_N15
\valor_produto[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(17),
	o => \valor_produto[17]~input_o\);

-- Location: LCCOMB_X11_Y12_N16
\B_DataPath|B_Subtrator_1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~17_combout\ = \valor_produto[17]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[17]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~17_combout\);

-- Location: IOIBUF_X0_Y6_N22
\valor_produto[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(16),
	o => \valor_produto[16]~input_o\);

-- Location: LCCOMB_X11_Y12_N2
\B_DataPath|B_Subtrator_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~16_combout\ = \valor_produto[16]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[16]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~16_combout\);

-- Location: IOIBUF_X0_Y8_N1
\valor_produto[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(15),
	o => \valor_produto[15]~input_o\);

-- Location: LCCOMB_X11_Y12_N8
\B_DataPath|B_Subtrator_1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~15_combout\ = \valor_produto[15]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[15]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~15_combout\);

-- Location: IOIBUF_X0_Y4_N22
\valor_produto[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(14),
	o => \valor_produto[14]~input_o\);

-- Location: LCCOMB_X11_Y12_N26
\B_DataPath|B_Subtrator_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~14_combout\ = \valor_produto[14]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[14]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~14_combout\);

-- Location: IOIBUF_X0_Y9_N8
\valor_produto[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(13),
	o => \valor_produto[13]~input_o\);

-- Location: LCCOMB_X11_Y12_N28
\B_DataPath|B_Subtrator_1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~13_combout\ = \valor_produto[13]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[13]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~13_combout\);

-- Location: IOIBUF_X7_Y0_N1
\valor_produto[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(12),
	o => \valor_produto[12]~input_o\);

-- Location: LCCOMB_X11_Y12_N18
\B_DataPath|B_Subtrator_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~12_combout\ = \valor_produto[12]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[12]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~12_combout\);

-- Location: IOIBUF_X0_Y23_N15
\valor_produto[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(11),
	o => \valor_produto[11]~input_o\);

-- Location: LCCOMB_X11_Y12_N24
\B_DataPath|B_Subtrator_1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~11_combout\ = \valor_produto[11]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[11]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~11_combout\);

-- Location: IOIBUF_X1_Y0_N22
\valor_produto[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(10),
	o => \valor_produto[10]~input_o\);

-- Location: LCCOMB_X11_Y12_N30
\B_DataPath|B_Subtrator_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~10_combout\ = \valor_produto[10]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[10]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~10_combout\);

-- Location: IOIBUF_X0_Y8_N8
\valor_produto[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(9),
	o => \valor_produto[9]~input_o\);

-- Location: LCCOMB_X11_Y12_N20
\B_DataPath|B_Subtrator_1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~9_combout\ = \valor_produto[9]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \valor_produto[9]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~9_combout\);

-- Location: IOIBUF_X7_Y0_N22
\valor_produto[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(8),
	o => \valor_produto[8]~input_o\);

-- Location: LCCOMB_X11_Y12_N10
\B_DataPath|B_Subtrator_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~8_combout\ = \valor_produto[8]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[8]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~8_combout\);

-- Location: IOIBUF_X0_Y7_N22
\valor_produto[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(7),
	o => \valor_produto[7]~input_o\);

-- Location: LCCOMB_X11_Y12_N12
\B_DataPath|B_Subtrator_1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~7_combout\ = \valor_produto[7]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[7]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~7_combout\);

-- Location: IOIBUF_X11_Y24_N15
\valor_produto[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(6),
	o => \valor_produto[6]~input_o\);

-- Location: LCCOMB_X12_Y13_N0
\B_DataPath|B_Subtrator_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~6_combout\ = \valor_produto[6]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[6]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~6_combout\);

-- Location: IOIBUF_X0_Y6_N15
\valor_produto[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(5),
	o => \valor_produto[5]~input_o\);

-- Location: LCCOMB_X12_Y13_N10
\B_DataPath|B_Subtrator_1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~5_combout\ = \valor_produto[5]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[5]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~5_combout\);

-- Location: IOIBUF_X5_Y24_N22
\valor_produto[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(4),
	o => \valor_produto[4]~input_o\);

-- Location: LCCOMB_X12_Y13_N8
\B_DataPath|B_Subtrator_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~4_combout\ = \valor_produto[4]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[4]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~4_combout\);

-- Location: IOIBUF_X34_Y9_N15
\valor_produto[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(3),
	o => \valor_produto[3]~input_o\);

-- Location: LCCOMB_X12_Y13_N14
\B_DataPath|B_Subtrator_1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~3_combout\ = \valor_produto[3]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[3]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~3_combout\);

-- Location: IOIBUF_X16_Y0_N8
\valor_produto[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(2),
	o => \valor_produto[2]~input_o\);

-- Location: LCCOMB_X12_Y13_N4
\B_DataPath|B_Subtrator_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~2_combout\ = \valor_produto[2]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[2]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~2_combout\);

-- Location: IOIBUF_X34_Y9_N22
\valor_produto[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(1),
	o => \valor_produto[1]~input_o\);

-- Location: LCCOMB_X12_Y13_N6
\B_DataPath|B_Subtrator_1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~1_combout\ = \valor_produto[1]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \valor_produto[1]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~1_combout\);

-- Location: LCCOMB_X12_Y13_N16
\B_DataPath|D_Total_Reg|valor_compra[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\ = CARRY(!\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => VCC,
	cout => \B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\);

-- Location: LCCOMB_X12_Y13_N18
\B_DataPath|D_Total_Reg|valor_compra[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[0]~34_combout\ = (\B_DataPath|B_Subtrator_1|Add0~0_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(0) & (!\B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(0) & 
-- ((\B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\) # (GND))))) # (!\B_DataPath|B_Subtrator_1|Add0~0_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(0) & (\B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\ & VCC)) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(0) & (!\B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\))))
-- \B_DataPath|D_Total_Reg|valor_compra[0]~35\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~0_combout\ & ((!\B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(0)))) # (!\B_DataPath|B_Subtrator_1|Add0~0_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(0) & !\B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~0_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(0),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[0]~33_cout\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[0]~34_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[0]~35\);

-- Location: LCCOMB_X12_Y13_N20
\B_DataPath|D_Total_Reg|valor_compra[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[1]~36_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~1_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(1) $ (\B_DataPath|D_Total_Reg|valor_compra[0]~35\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[1]~37\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~1_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(1) & !\B_DataPath|D_Total_Reg|valor_compra[0]~35\)) # (!\B_DataPath|B_Subtrator_1|Add0~1_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(1)) # (!\B_DataPath|D_Total_Reg|valor_compra[0]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~1_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(1),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[0]~35\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[1]~36_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[1]~37\);

-- Location: FF_X12_Y13_N21
\B_DataPath|D_Total_Reg|valor_compra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[1]~36_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(1));

-- Location: LCCOMB_X12_Y13_N22
\B_DataPath|D_Total_Reg|valor_compra[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[2]~38_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(2) & ((\B_DataPath|B_Subtrator_1|Add0~2_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[1]~37\)) # (!\B_DataPath|B_Subtrator_1|Add0~2_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[1]~37\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(2) & ((\B_DataPath|B_Subtrator_1|Add0~2_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[1]~37\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~2_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra[1]~37\))))
-- \B_DataPath|D_Total_Reg|valor_compra[2]~39\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(2) & (\B_DataPath|B_Subtrator_1|Add0~2_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[1]~37\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(2) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~2_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[1]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(2),
	datab => \B_DataPath|B_Subtrator_1|Add0~2_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[1]~37\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[2]~38_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[2]~39\);

-- Location: FF_X12_Y13_N23
\B_DataPath|D_Total_Reg|valor_compra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[2]~38_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(2));

-- Location: LCCOMB_X12_Y13_N24
\B_DataPath|D_Total_Reg|valor_compra[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[3]~40_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(3) $ (\B_DataPath|B_Subtrator_1|Add0~3_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra[2]~39\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[3]~41\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(3) & ((!\B_DataPath|D_Total_Reg|valor_compra[2]~39\) # (!\B_DataPath|B_Subtrator_1|Add0~3_combout\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(3) & 
-- (!\B_DataPath|B_Subtrator_1|Add0~3_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[2]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(3),
	datab => \B_DataPath|B_Subtrator_1|Add0~3_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[2]~39\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[3]~40_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[3]~41\);

-- Location: FF_X12_Y13_N25
\B_DataPath|D_Total_Reg|valor_compra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[3]~40_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(3));

-- Location: LCCOMB_X12_Y13_N26
\B_DataPath|D_Total_Reg|valor_compra[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[4]~42_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(4) & ((\B_DataPath|B_Subtrator_1|Add0~4_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[3]~41\)) # (!\B_DataPath|B_Subtrator_1|Add0~4_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[3]~41\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(4) & ((\B_DataPath|B_Subtrator_1|Add0~4_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[3]~41\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~4_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra[3]~41\))))
-- \B_DataPath|D_Total_Reg|valor_compra[4]~43\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(4) & (\B_DataPath|B_Subtrator_1|Add0~4_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[3]~41\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(4) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~4_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[3]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(4),
	datab => \B_DataPath|B_Subtrator_1|Add0~4_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[3]~41\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[4]~42_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[4]~43\);

-- Location: FF_X12_Y13_N27
\B_DataPath|D_Total_Reg|valor_compra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[4]~42_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(4));

-- Location: LCCOMB_X12_Y13_N28
\B_DataPath|D_Total_Reg|valor_compra[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[5]~44_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~5_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(5) $ (\B_DataPath|D_Total_Reg|valor_compra[4]~43\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[5]~45\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~5_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(5) & !\B_DataPath|D_Total_Reg|valor_compra[4]~43\)) # (!\B_DataPath|B_Subtrator_1|Add0~5_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(5)) # (!\B_DataPath|D_Total_Reg|valor_compra[4]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~5_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(5),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[4]~43\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[5]~44_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[5]~45\);

-- Location: FF_X12_Y13_N29
\B_DataPath|D_Total_Reg|valor_compra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[5]~44_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(5));

-- Location: LCCOMB_X12_Y13_N30
\B_DataPath|D_Total_Reg|valor_compra[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[6]~46_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(6) & ((\B_DataPath|B_Subtrator_1|Add0~6_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[5]~45\)) # (!\B_DataPath|B_Subtrator_1|Add0~6_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[5]~45\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(6) & ((\B_DataPath|B_Subtrator_1|Add0~6_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[5]~45\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~6_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra[5]~45\))))
-- \B_DataPath|D_Total_Reg|valor_compra[6]~47\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(6) & (\B_DataPath|B_Subtrator_1|Add0~6_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[5]~45\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(6) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~6_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[5]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(6),
	datab => \B_DataPath|B_Subtrator_1|Add0~6_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[5]~45\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[6]~46_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[6]~47\);

-- Location: FF_X12_Y13_N31
\B_DataPath|D_Total_Reg|valor_compra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[6]~46_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(6));

-- Location: LCCOMB_X12_Y12_N0
\B_DataPath|D_Total_Reg|valor_compra[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[7]~48_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~7_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(7) $ (\B_DataPath|D_Total_Reg|valor_compra[6]~47\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[7]~49\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~7_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(7) & !\B_DataPath|D_Total_Reg|valor_compra[6]~47\)) # (!\B_DataPath|B_Subtrator_1|Add0~7_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(7)) # (!\B_DataPath|D_Total_Reg|valor_compra[6]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~7_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(7),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[6]~47\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[7]~48_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[7]~49\);

-- Location: FF_X12_Y12_N1
\B_DataPath|D_Total_Reg|valor_compra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[7]~48_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(7));

-- Location: LCCOMB_X12_Y12_N2
\B_DataPath|D_Total_Reg|valor_compra[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[8]~50_combout\ = (\B_DataPath|B_Subtrator_1|Add0~8_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(8) & (!\B_DataPath|D_Total_Reg|valor_compra[7]~49\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(8) & 
-- ((\B_DataPath|D_Total_Reg|valor_compra[7]~49\) # (GND))))) # (!\B_DataPath|B_Subtrator_1|Add0~8_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(8) & (\B_DataPath|D_Total_Reg|valor_compra[7]~49\ & VCC)) # (!\B_DataPath|D_Total_Reg|valor_compra\(8) & 
-- (!\B_DataPath|D_Total_Reg|valor_compra[7]~49\))))
-- \B_DataPath|D_Total_Reg|valor_compra[8]~51\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~8_combout\ & ((!\B_DataPath|D_Total_Reg|valor_compra[7]~49\) # (!\B_DataPath|D_Total_Reg|valor_compra\(8)))) # (!\B_DataPath|B_Subtrator_1|Add0~8_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(8) & !\B_DataPath|D_Total_Reg|valor_compra[7]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~8_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(8),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[7]~49\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[8]~50_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[8]~51\);

-- Location: FF_X12_Y12_N3
\B_DataPath|D_Total_Reg|valor_compra[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[8]~50_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(8));

-- Location: LCCOMB_X12_Y12_N4
\B_DataPath|D_Total_Reg|valor_compra[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[9]~52_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(9) $ (\B_DataPath|B_Subtrator_1|Add0~9_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra[8]~51\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[9]~53\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(9) & ((!\B_DataPath|D_Total_Reg|valor_compra[8]~51\) # (!\B_DataPath|B_Subtrator_1|Add0~9_combout\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(9) & 
-- (!\B_DataPath|B_Subtrator_1|Add0~9_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[8]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(9),
	datab => \B_DataPath|B_Subtrator_1|Add0~9_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[8]~51\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[9]~52_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[9]~53\);

-- Location: FF_X12_Y12_N5
\B_DataPath|D_Total_Reg|valor_compra[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[9]~52_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(9));

-- Location: LCCOMB_X12_Y12_N6
\B_DataPath|D_Total_Reg|valor_compra[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[10]~54_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(10) & ((\B_DataPath|B_Subtrator_1|Add0~10_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[9]~53\)) # (!\B_DataPath|B_Subtrator_1|Add0~10_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[9]~53\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(10) & ((\B_DataPath|B_Subtrator_1|Add0~10_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[9]~53\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~10_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra[9]~53\))))
-- \B_DataPath|D_Total_Reg|valor_compra[10]~55\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(10) & (\B_DataPath|B_Subtrator_1|Add0~10_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[9]~53\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(10) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~10_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[9]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(10),
	datab => \B_DataPath|B_Subtrator_1|Add0~10_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[9]~53\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[10]~54_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[10]~55\);

-- Location: FF_X12_Y12_N7
\B_DataPath|D_Total_Reg|valor_compra[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[10]~54_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(10));

-- Location: LCCOMB_X12_Y12_N8
\B_DataPath|D_Total_Reg|valor_compra[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[11]~56_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(11) $ (\B_DataPath|B_Subtrator_1|Add0~11_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra[10]~55\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[11]~57\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(11) & ((!\B_DataPath|D_Total_Reg|valor_compra[10]~55\) # (!\B_DataPath|B_Subtrator_1|Add0~11_combout\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(11) & 
-- (!\B_DataPath|B_Subtrator_1|Add0~11_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[10]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(11),
	datab => \B_DataPath|B_Subtrator_1|Add0~11_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[10]~55\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[11]~56_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[11]~57\);

-- Location: FF_X12_Y12_N9
\B_DataPath|D_Total_Reg|valor_compra[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[11]~56_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(11));

-- Location: LCCOMB_X12_Y12_N10
\B_DataPath|D_Total_Reg|valor_compra[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[12]~58_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(12) & ((\B_DataPath|B_Subtrator_1|Add0~12_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[11]~57\)) # (!\B_DataPath|B_Subtrator_1|Add0~12_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[11]~57\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(12) & ((\B_DataPath|B_Subtrator_1|Add0~12_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[11]~57\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~12_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[11]~57\))))
-- \B_DataPath|D_Total_Reg|valor_compra[12]~59\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(12) & (\B_DataPath|B_Subtrator_1|Add0~12_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[11]~57\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(12) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~12_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[11]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(12),
	datab => \B_DataPath|B_Subtrator_1|Add0~12_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[11]~57\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[12]~58_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[12]~59\);

-- Location: FF_X12_Y12_N11
\B_DataPath|D_Total_Reg|valor_compra[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[12]~58_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(12));

-- Location: LCCOMB_X12_Y12_N12
\B_DataPath|D_Total_Reg|valor_compra[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[13]~60_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(13) $ (\B_DataPath|B_Subtrator_1|Add0~13_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra[12]~59\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[13]~61\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(13) & ((!\B_DataPath|D_Total_Reg|valor_compra[12]~59\) # (!\B_DataPath|B_Subtrator_1|Add0~13_combout\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(13) & 
-- (!\B_DataPath|B_Subtrator_1|Add0~13_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[12]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(13),
	datab => \B_DataPath|B_Subtrator_1|Add0~13_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[12]~59\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[13]~60_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[13]~61\);

-- Location: FF_X12_Y12_N13
\B_DataPath|D_Total_Reg|valor_compra[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[13]~60_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(13));

-- Location: LCCOMB_X12_Y12_N14
\B_DataPath|D_Total_Reg|valor_compra[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[14]~62_combout\ = (\B_DataPath|B_Subtrator_1|Add0~14_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(14) & (!\B_DataPath|D_Total_Reg|valor_compra[13]~61\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(14) & 
-- ((\B_DataPath|D_Total_Reg|valor_compra[13]~61\) # (GND))))) # (!\B_DataPath|B_Subtrator_1|Add0~14_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(14) & (\B_DataPath|D_Total_Reg|valor_compra[13]~61\ & VCC)) # (!\B_DataPath|D_Total_Reg|valor_compra\(14) 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[13]~61\))))
-- \B_DataPath|D_Total_Reg|valor_compra[14]~63\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~14_combout\ & ((!\B_DataPath|D_Total_Reg|valor_compra[13]~61\) # (!\B_DataPath|D_Total_Reg|valor_compra\(14)))) # (!\B_DataPath|B_Subtrator_1|Add0~14_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(14) & !\B_DataPath|D_Total_Reg|valor_compra[13]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~14_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(14),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[13]~61\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[14]~62_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[14]~63\);

-- Location: FF_X12_Y12_N15
\B_DataPath|D_Total_Reg|valor_compra[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[14]~62_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(14));

-- Location: LCCOMB_X12_Y12_N16
\B_DataPath|D_Total_Reg|valor_compra[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[15]~64_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~15_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(15) $ (\B_DataPath|D_Total_Reg|valor_compra[14]~63\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[15]~65\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~15_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(15) & !\B_DataPath|D_Total_Reg|valor_compra[14]~63\)) # (!\B_DataPath|B_Subtrator_1|Add0~15_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(15)) # (!\B_DataPath|D_Total_Reg|valor_compra[14]~63\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~15_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(15),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[14]~63\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[15]~64_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[15]~65\);

-- Location: FF_X12_Y12_N17
\B_DataPath|D_Total_Reg|valor_compra[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[15]~64_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(15));

-- Location: LCCOMB_X12_Y12_N18
\B_DataPath|D_Total_Reg|valor_compra[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[16]~66_combout\ = (\B_DataPath|B_Subtrator_1|Add0~16_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(16) & (!\B_DataPath|D_Total_Reg|valor_compra[15]~65\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(16) & 
-- ((\B_DataPath|D_Total_Reg|valor_compra[15]~65\) # (GND))))) # (!\B_DataPath|B_Subtrator_1|Add0~16_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(16) & (\B_DataPath|D_Total_Reg|valor_compra[15]~65\ & VCC)) # (!\B_DataPath|D_Total_Reg|valor_compra\(16) 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[15]~65\))))
-- \B_DataPath|D_Total_Reg|valor_compra[16]~67\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~16_combout\ & ((!\B_DataPath|D_Total_Reg|valor_compra[15]~65\) # (!\B_DataPath|D_Total_Reg|valor_compra\(16)))) # (!\B_DataPath|B_Subtrator_1|Add0~16_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(16) & !\B_DataPath|D_Total_Reg|valor_compra[15]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~16_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(16),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[15]~65\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[16]~66_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[16]~67\);

-- Location: FF_X12_Y12_N19
\B_DataPath|D_Total_Reg|valor_compra[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[16]~66_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(16));

-- Location: LCCOMB_X12_Y12_N20
\B_DataPath|D_Total_Reg|valor_compra[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[17]~68_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~17_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(17) $ (\B_DataPath|D_Total_Reg|valor_compra[16]~67\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[17]~69\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~17_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(17) & !\B_DataPath|D_Total_Reg|valor_compra[16]~67\)) # (!\B_DataPath|B_Subtrator_1|Add0~17_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(17)) # (!\B_DataPath|D_Total_Reg|valor_compra[16]~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~17_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(17),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[16]~67\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[17]~68_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[17]~69\);

-- Location: FF_X12_Y12_N21
\B_DataPath|D_Total_Reg|valor_compra[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[17]~68_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(17));

-- Location: LCCOMB_X12_Y12_N22
\B_DataPath|D_Total_Reg|valor_compra[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[18]~70_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(18) & ((\B_DataPath|B_Subtrator_1|Add0~18_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[17]~69\)) # (!\B_DataPath|B_Subtrator_1|Add0~18_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[17]~69\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(18) & ((\B_DataPath|B_Subtrator_1|Add0~18_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[17]~69\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~18_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[17]~69\))))
-- \B_DataPath|D_Total_Reg|valor_compra[18]~71\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(18) & (\B_DataPath|B_Subtrator_1|Add0~18_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[17]~69\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(18) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~18_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[17]~69\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(18),
	datab => \B_DataPath|B_Subtrator_1|Add0~18_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[17]~69\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[18]~70_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[18]~71\);

-- Location: FF_X12_Y12_N23
\B_DataPath|D_Total_Reg|valor_compra[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[18]~70_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(18));

-- Location: LCCOMB_X12_Y12_N24
\B_DataPath|D_Total_Reg|valor_compra[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[19]~72_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~19_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(19) $ (\B_DataPath|D_Total_Reg|valor_compra[18]~71\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[19]~73\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~19_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(19) & !\B_DataPath|D_Total_Reg|valor_compra[18]~71\)) # (!\B_DataPath|B_Subtrator_1|Add0~19_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(19)) # (!\B_DataPath|D_Total_Reg|valor_compra[18]~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~19_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(19),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[18]~71\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[19]~72_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[19]~73\);

-- Location: FF_X12_Y12_N25
\B_DataPath|D_Total_Reg|valor_compra[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[19]~72_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(19));

-- Location: LCCOMB_X12_Y12_N26
\B_DataPath|D_Total_Reg|valor_compra[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[20]~74_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(20) & ((\B_DataPath|B_Subtrator_1|Add0~20_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[19]~73\)) # (!\B_DataPath|B_Subtrator_1|Add0~20_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[19]~73\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(20) & ((\B_DataPath|B_Subtrator_1|Add0~20_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[19]~73\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~20_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[19]~73\))))
-- \B_DataPath|D_Total_Reg|valor_compra[20]~75\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(20) & (\B_DataPath|B_Subtrator_1|Add0~20_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[19]~73\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(20) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~20_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[19]~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(20),
	datab => \B_DataPath|B_Subtrator_1|Add0~20_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[19]~73\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[20]~74_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[20]~75\);

-- Location: FF_X12_Y12_N27
\B_DataPath|D_Total_Reg|valor_compra[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[20]~74_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(20));

-- Location: LCCOMB_X12_Y12_N28
\B_DataPath|D_Total_Reg|valor_compra[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[21]~76_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~21_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(21) $ (\B_DataPath|D_Total_Reg|valor_compra[20]~75\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[21]~77\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~21_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(21) & !\B_DataPath|D_Total_Reg|valor_compra[20]~75\)) # (!\B_DataPath|B_Subtrator_1|Add0~21_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(21)) # (!\B_DataPath|D_Total_Reg|valor_compra[20]~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~21_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(21),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[20]~75\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[21]~76_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[21]~77\);

-- Location: FF_X12_Y12_N29
\B_DataPath|D_Total_Reg|valor_compra[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[21]~76_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(21));

-- Location: LCCOMB_X12_Y12_N30
\B_DataPath|D_Total_Reg|valor_compra[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[22]~78_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(22) & ((\B_DataPath|B_Subtrator_1|Add0~22_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[21]~77\)) # (!\B_DataPath|B_Subtrator_1|Add0~22_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[21]~77\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(22) & ((\B_DataPath|B_Subtrator_1|Add0~22_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[21]~77\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~22_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[21]~77\))))
-- \B_DataPath|D_Total_Reg|valor_compra[22]~79\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(22) & (\B_DataPath|B_Subtrator_1|Add0~22_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[21]~77\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(22) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~22_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[21]~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(22),
	datab => \B_DataPath|B_Subtrator_1|Add0~22_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[21]~77\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[22]~78_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[22]~79\);

-- Location: FF_X12_Y12_N31
\B_DataPath|D_Total_Reg|valor_compra[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[22]~78_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(22));

-- Location: LCCOMB_X12_Y11_N0
\B_DataPath|D_Total_Reg|valor_compra[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[23]~80_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~23_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(23) $ (\B_DataPath|D_Total_Reg|valor_compra[22]~79\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[23]~81\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~23_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(23) & !\B_DataPath|D_Total_Reg|valor_compra[22]~79\)) # (!\B_DataPath|B_Subtrator_1|Add0~23_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(23)) # (!\B_DataPath|D_Total_Reg|valor_compra[22]~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~23_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(23),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[22]~79\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[23]~80_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[23]~81\);

-- Location: FF_X12_Y11_N1
\B_DataPath|D_Total_Reg|valor_compra[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[23]~80_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(23));

-- Location: LCCOMB_X12_Y11_N2
\B_DataPath|D_Total_Reg|valor_compra[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[24]~82_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(24) & ((\B_DataPath|B_Subtrator_1|Add0~24_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[23]~81\)) # (!\B_DataPath|B_Subtrator_1|Add0~24_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[23]~81\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(24) & ((\B_DataPath|B_Subtrator_1|Add0~24_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[23]~81\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~24_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[23]~81\))))
-- \B_DataPath|D_Total_Reg|valor_compra[24]~83\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(24) & (\B_DataPath|B_Subtrator_1|Add0~24_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[23]~81\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(24) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~24_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[23]~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(24),
	datab => \B_DataPath|B_Subtrator_1|Add0~24_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[23]~81\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[24]~82_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[24]~83\);

-- Location: FF_X12_Y11_N3
\B_DataPath|D_Total_Reg|valor_compra[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[24]~82_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(24));

-- Location: LCCOMB_X12_Y11_N4
\B_DataPath|D_Total_Reg|valor_compra[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[25]~84_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~25_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(25) $ (\B_DataPath|D_Total_Reg|valor_compra[24]~83\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[25]~85\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~25_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(25) & !\B_DataPath|D_Total_Reg|valor_compra[24]~83\)) # (!\B_DataPath|B_Subtrator_1|Add0~25_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(25)) # (!\B_DataPath|D_Total_Reg|valor_compra[24]~83\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~25_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(25),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[24]~83\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[25]~84_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[25]~85\);

-- Location: FF_X12_Y11_N5
\B_DataPath|D_Total_Reg|valor_compra[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[25]~84_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(25));

-- Location: LCCOMB_X12_Y11_N6
\B_DataPath|D_Total_Reg|valor_compra[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[26]~86_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(26) & ((\B_DataPath|B_Subtrator_1|Add0~26_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[25]~85\)) # (!\B_DataPath|B_Subtrator_1|Add0~26_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[25]~85\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(26) & ((\B_DataPath|B_Subtrator_1|Add0~26_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[25]~85\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~26_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[25]~85\))))
-- \B_DataPath|D_Total_Reg|valor_compra[26]~87\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(26) & (\B_DataPath|B_Subtrator_1|Add0~26_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[25]~85\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(26) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~26_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[25]~85\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(26),
	datab => \B_DataPath|B_Subtrator_1|Add0~26_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[25]~85\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[26]~86_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[26]~87\);

-- Location: FF_X12_Y11_N7
\B_DataPath|D_Total_Reg|valor_compra[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[26]~86_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(26));

-- Location: LCCOMB_X12_Y11_N8
\B_DataPath|D_Total_Reg|valor_compra[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[27]~88_combout\ = ((\B_DataPath|B_Subtrator_1|Add0~27_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra\(27) $ (\B_DataPath|D_Total_Reg|valor_compra[26]~87\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[27]~89\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~27_combout\ & (\B_DataPath|D_Total_Reg|valor_compra\(27) & !\B_DataPath|D_Total_Reg|valor_compra[26]~87\)) # (!\B_DataPath|B_Subtrator_1|Add0~27_combout\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(27)) # (!\B_DataPath|D_Total_Reg|valor_compra[26]~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~27_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(27),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[26]~87\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[27]~88_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[27]~89\);

-- Location: FF_X12_Y11_N9
\B_DataPath|D_Total_Reg|valor_compra[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[27]~88_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(27));

-- Location: LCCOMB_X12_Y11_N10
\B_DataPath|D_Total_Reg|valor_compra[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[28]~90_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(28) & ((\B_DataPath|B_Subtrator_1|Add0~28_combout\ & (!\B_DataPath|D_Total_Reg|valor_compra[27]~89\)) # (!\B_DataPath|B_Subtrator_1|Add0~28_combout\ & 
-- (\B_DataPath|D_Total_Reg|valor_compra[27]~89\ & VCC)))) # (!\B_DataPath|D_Total_Reg|valor_compra\(28) & ((\B_DataPath|B_Subtrator_1|Add0~28_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra[27]~89\) # (GND))) # (!\B_DataPath|B_Subtrator_1|Add0~28_combout\ 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[27]~89\))))
-- \B_DataPath|D_Total_Reg|valor_compra[28]~91\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(28) & (\B_DataPath|B_Subtrator_1|Add0~28_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[27]~89\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(28) & 
-- ((\B_DataPath|B_Subtrator_1|Add0~28_combout\) # (!\B_DataPath|D_Total_Reg|valor_compra[27]~89\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(28),
	datab => \B_DataPath|B_Subtrator_1|Add0~28_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[27]~89\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[28]~90_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[28]~91\);

-- Location: FF_X12_Y11_N11
\B_DataPath|D_Total_Reg|valor_compra[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[28]~90_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(28));

-- Location: LCCOMB_X12_Y11_N12
\B_DataPath|D_Total_Reg|valor_compra[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[29]~92_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(29) $ (\B_DataPath|B_Subtrator_1|Add0~29_combout\ $ (\B_DataPath|D_Total_Reg|valor_compra[28]~91\)))) # (GND)
-- \B_DataPath|D_Total_Reg|valor_compra[29]~93\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(29) & ((!\B_DataPath|D_Total_Reg|valor_compra[28]~91\) # (!\B_DataPath|B_Subtrator_1|Add0~29_combout\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(29) & 
-- (!\B_DataPath|B_Subtrator_1|Add0~29_combout\ & !\B_DataPath|D_Total_Reg|valor_compra[28]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(29),
	datab => \B_DataPath|B_Subtrator_1|Add0~29_combout\,
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[28]~91\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[29]~92_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[29]~93\);

-- Location: FF_X12_Y11_N13
\B_DataPath|D_Total_Reg|valor_compra[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[29]~92_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(29));

-- Location: LCCOMB_X12_Y11_N14
\B_DataPath|D_Total_Reg|valor_compra[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[30]~94_combout\ = (\B_DataPath|B_Subtrator_1|Add0~30_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(30) & (!\B_DataPath|D_Total_Reg|valor_compra[29]~93\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(30) & 
-- ((\B_DataPath|D_Total_Reg|valor_compra[29]~93\) # (GND))))) # (!\B_DataPath|B_Subtrator_1|Add0~30_combout\ & ((\B_DataPath|D_Total_Reg|valor_compra\(30) & (\B_DataPath|D_Total_Reg|valor_compra[29]~93\ & VCC)) # (!\B_DataPath|D_Total_Reg|valor_compra\(30) 
-- & (!\B_DataPath|D_Total_Reg|valor_compra[29]~93\))))
-- \B_DataPath|D_Total_Reg|valor_compra[30]~95\ = CARRY((\B_DataPath|B_Subtrator_1|Add0~30_combout\ & ((!\B_DataPath|D_Total_Reg|valor_compra[29]~93\) # (!\B_DataPath|D_Total_Reg|valor_compra\(30)))) # (!\B_DataPath|B_Subtrator_1|Add0~30_combout\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(30) & !\B_DataPath|D_Total_Reg|valor_compra[29]~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|B_Subtrator_1|Add0~30_combout\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(30),
	datad => VCC,
	cin => \B_DataPath|D_Total_Reg|valor_compra[29]~93\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[30]~94_combout\,
	cout => \B_DataPath|D_Total_Reg|valor_compra[30]~95\);

-- Location: FF_X12_Y11_N15
\B_DataPath|D_Total_Reg|valor_compra[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[30]~94_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(30));

-- Location: LCCOMB_X12_Y11_N16
\B_DataPath|D_Total_Reg|valor_compra[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|D_Total_Reg|valor_compra[31]~96_combout\ = \B_DataPath|D_Total_Reg|valor_compra\(31) $ (\B_DataPath|D_Total_Reg|valor_compra[30]~95\ $ (\B_DataPath|B_Subtrator_1|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B_DataPath|D_Total_Reg|valor_compra\(31),
	datad => \B_DataPath|B_Subtrator_1|Add0~31_combout\,
	cin => \B_DataPath|D_Total_Reg|valor_compra[30]~95\,
	combout => \B_DataPath|D_Total_Reg|valor_compra[31]~96_combout\);

-- Location: FF_X12_Y11_N17
\B_DataPath|D_Total_Reg|valor_compra[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[31]~96_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(31));

-- Location: IOIBUF_X28_Y24_N8
\saldo_cartao[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(30),
	o => \saldo_cartao[30]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\saldo_cartao[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(29),
	o => \saldo_cartao[29]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\saldo_cartao[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(28),
	o => \saldo_cartao[28]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\saldo_cartao[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(27),
	o => \saldo_cartao[27]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\saldo_cartao[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(26),
	o => \saldo_cartao[26]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\saldo_cartao[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(25),
	o => \saldo_cartao[25]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\saldo_cartao[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(24),
	o => \saldo_cartao[24]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\saldo_cartao[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(23),
	o => \saldo_cartao[23]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\saldo_cartao[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(22),
	o => \saldo_cartao[22]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\saldo_cartao[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(21),
	o => \saldo_cartao[21]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\saldo_cartao[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(20),
	o => \saldo_cartao[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\saldo_cartao[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(19),
	o => \saldo_cartao[19]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\saldo_cartao[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(18),
	o => \saldo_cartao[18]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\saldo_cartao[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(17),
	o => \saldo_cartao[17]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\saldo_cartao[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(16),
	o => \saldo_cartao[16]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\saldo_cartao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(15),
	o => \saldo_cartao[15]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\saldo_cartao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(14),
	o => \saldo_cartao[14]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\saldo_cartao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(13),
	o => \saldo_cartao[13]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\saldo_cartao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(12),
	o => \saldo_cartao[12]~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\saldo_cartao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(11),
	o => \saldo_cartao[11]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\saldo_cartao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(10),
	o => \saldo_cartao[10]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\saldo_cartao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(9),
	o => \saldo_cartao[9]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\saldo_cartao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(8),
	o => \saldo_cartao[8]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\saldo_cartao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(7),
	o => \saldo_cartao[7]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\saldo_cartao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(6),
	o => \saldo_cartao[6]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\saldo_cartao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(5),
	o => \saldo_cartao[5]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\saldo_cartao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(4),
	o => \saldo_cartao[4]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\saldo_cartao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(3),
	o => \saldo_cartao[3]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\saldo_cartao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(2),
	o => \saldo_cartao[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\saldo_cartao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(1),
	o => \saldo_cartao[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\saldo_cartao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(0),
	o => \saldo_cartao[0]~input_o\);

-- Location: LCCOMB_X13_Y13_N0
\B_DataPath|F_Comparador_Saldo|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~1_cout\ = CARRY((!\saldo_cartao[0]~input_o\ & \B_DataPath|D_Total_Reg|valor_compra\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[0]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(0),
	datad => VCC,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y13_N2
\B_DataPath|F_Comparador_Saldo|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~3_cout\ = CARRY((\saldo_cartao[1]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~1_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(1)))) # (!\saldo_cartao[1]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(1) & !\B_DataPath|F_Comparador_Saldo|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[1]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(1),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~1_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y13_N4
\B_DataPath|F_Comparador_Saldo|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~5_cout\ = CARRY((\saldo_cartao[2]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(2) & !\B_DataPath|F_Comparador_Saldo|LessThan0~3_cout\)) # (!\saldo_cartao[2]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(2)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[2]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(2),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~3_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y13_N6
\B_DataPath|F_Comparador_Saldo|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~7_cout\ = CARRY((\saldo_cartao[3]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~5_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(3)))) # (!\saldo_cartao[3]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(3) & !\B_DataPath|F_Comparador_Saldo|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[3]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(3),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~5_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y13_N8
\B_DataPath|F_Comparador_Saldo|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~9_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(4) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~7_cout\) # (!\saldo_cartao[4]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(4) & 
-- (!\saldo_cartao[4]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(4),
	datab => \saldo_cartao[4]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~7_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y13_N10
\B_DataPath|F_Comparador_Saldo|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~11_cout\ = CARRY((\saldo_cartao[5]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~9_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(5)))) # (!\saldo_cartao[5]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(5) & !\B_DataPath|F_Comparador_Saldo|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[5]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(5),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~9_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y13_N12
\B_DataPath|F_Comparador_Saldo|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~13_cout\ = CARRY((\saldo_cartao[6]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(6) & !\B_DataPath|F_Comparador_Saldo|LessThan0~11_cout\)) # (!\saldo_cartao[6]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(6)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[6]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(6),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~11_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y13_N14
\B_DataPath|F_Comparador_Saldo|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~15_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(7) & (\saldo_cartao[7]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~13_cout\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(7) & 
-- ((\saldo_cartao[7]~input_o\) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(7),
	datab => \saldo_cartao[7]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~13_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~15_cout\);

-- Location: LCCOMB_X13_Y13_N16
\B_DataPath|F_Comparador_Saldo|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~17_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(8) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~15_cout\) # (!\saldo_cartao[8]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(8) & 
-- (!\saldo_cartao[8]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(8),
	datab => \saldo_cartao[8]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~15_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~17_cout\);

-- Location: LCCOMB_X13_Y13_N18
\B_DataPath|F_Comparador_Saldo|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~19_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(9) & (\saldo_cartao[9]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~17_cout\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(9) & 
-- ((\saldo_cartao[9]~input_o\) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(9),
	datab => \saldo_cartao[9]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~17_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~19_cout\);

-- Location: LCCOMB_X13_Y13_N20
\B_DataPath|F_Comparador_Saldo|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~21_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(10) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~19_cout\) # (!\saldo_cartao[10]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(10) & 
-- (!\saldo_cartao[10]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(10),
	datab => \saldo_cartao[10]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~19_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~21_cout\);

-- Location: LCCOMB_X13_Y13_N22
\B_DataPath|F_Comparador_Saldo|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~23_cout\ = CARRY((\saldo_cartao[11]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~21_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(11)))) # (!\saldo_cartao[11]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(11) & !\B_DataPath|F_Comparador_Saldo|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[11]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(11),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~21_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~23_cout\);

-- Location: LCCOMB_X13_Y13_N24
\B_DataPath|F_Comparador_Saldo|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~25_cout\ = CARRY((\saldo_cartao[12]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(12) & !\B_DataPath|F_Comparador_Saldo|LessThan0~23_cout\)) # (!\saldo_cartao[12]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(12)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[12]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(12),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~23_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~25_cout\);

-- Location: LCCOMB_X13_Y13_N26
\B_DataPath|F_Comparador_Saldo|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~27_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(13) & (\saldo_cartao[13]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~25_cout\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(13) & 
-- ((\saldo_cartao[13]~input_o\) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(13),
	datab => \saldo_cartao[13]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~25_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~27_cout\);

-- Location: LCCOMB_X13_Y13_N28
\B_DataPath|F_Comparador_Saldo|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~29_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(14) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~27_cout\) # (!\saldo_cartao[14]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(14) & 
-- (!\saldo_cartao[14]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(14),
	datab => \saldo_cartao[14]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~27_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~29_cout\);

-- Location: LCCOMB_X13_Y13_N30
\B_DataPath|F_Comparador_Saldo|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~31_cout\ = CARRY((\saldo_cartao[15]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~29_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(15)))) # (!\saldo_cartao[15]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(15) & !\B_DataPath|F_Comparador_Saldo|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[15]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(15),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~29_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~31_cout\);

-- Location: LCCOMB_X13_Y12_N0
\B_DataPath|F_Comparador_Saldo|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~33_cout\ = CARRY((\saldo_cartao[16]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(16) & !\B_DataPath|F_Comparador_Saldo|LessThan0~31_cout\)) # (!\saldo_cartao[16]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(16)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[16]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(16),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~31_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~33_cout\);

-- Location: LCCOMB_X13_Y12_N2
\B_DataPath|F_Comparador_Saldo|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~35_cout\ = CARRY((\saldo_cartao[17]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~33_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(17)))) # (!\saldo_cartao[17]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(17) & !\B_DataPath|F_Comparador_Saldo|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[17]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(17),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~33_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~35_cout\);

-- Location: LCCOMB_X13_Y12_N4
\B_DataPath|F_Comparador_Saldo|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~37_cout\ = CARRY((\saldo_cartao[18]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(18) & !\B_DataPath|F_Comparador_Saldo|LessThan0~35_cout\)) # (!\saldo_cartao[18]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(18)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[18]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(18),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~35_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~37_cout\);

-- Location: LCCOMB_X13_Y12_N6
\B_DataPath|F_Comparador_Saldo|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~39_cout\ = CARRY((\saldo_cartao[19]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~37_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(19)))) # (!\saldo_cartao[19]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(19) & !\B_DataPath|F_Comparador_Saldo|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[19]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(19),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~37_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~39_cout\);

-- Location: LCCOMB_X13_Y12_N8
\B_DataPath|F_Comparador_Saldo|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~41_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(20) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~39_cout\) # (!\saldo_cartao[20]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(20) & 
-- (!\saldo_cartao[20]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(20),
	datab => \saldo_cartao[20]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~39_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~41_cout\);

-- Location: LCCOMB_X13_Y12_N10
\B_DataPath|F_Comparador_Saldo|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~43_cout\ = CARRY((\saldo_cartao[21]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~41_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(21)))) # (!\saldo_cartao[21]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(21) & !\B_DataPath|F_Comparador_Saldo|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[21]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(21),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~41_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~43_cout\);

-- Location: LCCOMB_X13_Y12_N12
\B_DataPath|F_Comparador_Saldo|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~45_cout\ = CARRY((\saldo_cartao[22]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(22) & !\B_DataPath|F_Comparador_Saldo|LessThan0~43_cout\)) # (!\saldo_cartao[22]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(22)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[22]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(22),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~43_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~45_cout\);

-- Location: LCCOMB_X13_Y12_N14
\B_DataPath|F_Comparador_Saldo|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~47_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(23) & (\saldo_cartao[23]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~45_cout\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(23) & 
-- ((\saldo_cartao[23]~input_o\) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(23),
	datab => \saldo_cartao[23]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~45_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~47_cout\);

-- Location: LCCOMB_X13_Y12_N16
\B_DataPath|F_Comparador_Saldo|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~49_cout\ = CARRY((\saldo_cartao[24]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(24) & !\B_DataPath|F_Comparador_Saldo|LessThan0~47_cout\)) # (!\saldo_cartao[24]~input_o\ & 
-- ((\B_DataPath|D_Total_Reg|valor_compra\(24)) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[24]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(24),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~47_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~49_cout\);

-- Location: LCCOMB_X13_Y12_N18
\B_DataPath|F_Comparador_Saldo|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~51_cout\ = CARRY((\saldo_cartao[25]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~49_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(25)))) # (!\saldo_cartao[25]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(25) & !\B_DataPath|F_Comparador_Saldo|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[25]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(25),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~49_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~51_cout\);

-- Location: LCCOMB_X13_Y12_N20
\B_DataPath|F_Comparador_Saldo|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~53_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(26) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~51_cout\) # (!\saldo_cartao[26]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(26) & 
-- (!\saldo_cartao[26]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(26),
	datab => \saldo_cartao[26]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~51_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~53_cout\);

-- Location: LCCOMB_X13_Y12_N22
\B_DataPath|F_Comparador_Saldo|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~55_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(27) & (\saldo_cartao[27]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~53_cout\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(27) & 
-- ((\saldo_cartao[27]~input_o\) # (!\B_DataPath|F_Comparador_Saldo|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(27),
	datab => \saldo_cartao[27]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~53_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~55_cout\);

-- Location: LCCOMB_X13_Y12_N24
\B_DataPath|F_Comparador_Saldo|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~57_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(28) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~55_cout\) # (!\saldo_cartao[28]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(28) & 
-- (!\saldo_cartao[28]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(28),
	datab => \saldo_cartao[28]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~55_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~57_cout\);

-- Location: LCCOMB_X13_Y12_N26
\B_DataPath|F_Comparador_Saldo|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~59_cout\ = CARRY((\saldo_cartao[29]~input_o\ & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~57_cout\) # (!\B_DataPath|D_Total_Reg|valor_compra\(29)))) # (!\saldo_cartao[29]~input_o\ & 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(29) & !\B_DataPath|F_Comparador_Saldo|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[29]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(29),
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~57_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~59_cout\);

-- Location: LCCOMB_X13_Y12_N28
\B_DataPath|F_Comparador_Saldo|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~61_cout\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(30) & ((!\B_DataPath|F_Comparador_Saldo|LessThan0~59_cout\) # (!\saldo_cartao[30]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(30) & 
-- (!\saldo_cartao[30]~input_o\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(30),
	datab => \saldo_cartao[30]~input_o\,
	datad => VCC,
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~59_cout\,
	cout => \B_DataPath|F_Comparador_Saldo|LessThan0~61_cout\);

-- Location: LCCOMB_X13_Y12_N30
\B_DataPath|F_Comparador_Saldo|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\ = (\saldo_cartao[31]~input_o\ & (\B_DataPath|F_Comparador_Saldo|LessThan0~61_cout\ & \B_DataPath|D_Total_Reg|valor_compra\(31))) # (!\saldo_cartao[31]~input_o\ & 
-- ((\B_DataPath|F_Comparador_Saldo|LessThan0~61_cout\) # (\B_DataPath|D_Total_Reg|valor_compra\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saldo_cartao[31]~input_o\,
	datad => \B_DataPath|D_Total_Reg|valor_compra\(31),
	cin => \B_DataPath|F_Comparador_Saldo|LessThan0~61_cout\,
	combout => \B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\);

-- Location: LCCOMB_X14_Y12_N10
\A_Controladora|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector5~2_combout\ = (\A_Controladora|proximo_estado.verifica_saldo~1_combout\ & ((\A_Controladora|Selector5~1_combout\) # ((\A_Controladora|estado_atual.verifica_saldo~q\ & \B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\)))) # 
-- (!\A_Controladora|proximo_estado.verifica_saldo~1_combout\ & (\A_Controladora|estado_atual.verifica_saldo~q\ & ((\B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|proximo_estado.verifica_saldo~1_combout\,
	datab => \A_Controladora|estado_atual.verifica_saldo~q\,
	datac => \A_Controladora|Selector5~1_combout\,
	datad => \B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\,
	combout => \A_Controladora|Selector5~2_combout\);

-- Location: FF_X14_Y12_N11
\A_Controladora|estado_atual.pagar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|Selector5~2_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.pagar~q\);

-- Location: LCCOMB_X14_Y12_N8
\A_Controladora|proximo_estado.verifica_saldo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|proximo_estado.verifica_saldo~2_combout\ = (\A_Controladora|proximo_estado.verifica_saldo~1_combout\ & (!\A_Controladora|aux_cartao_lido~q\ & (\cartao_lido~input_o\ & \A_Controladora|estado_atual.pagar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Controladora|proximo_estado.verifica_saldo~1_combout\,
	datab => \A_Controladora|aux_cartao_lido~q\,
	datac => \cartao_lido~input_o\,
	datad => \A_Controladora|estado_atual.pagar~q\,
	combout => \A_Controladora|proximo_estado.verifica_saldo~2_combout\);

-- Location: FF_X14_Y12_N9
\A_Controladora|estado_atual.verifica_saldo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|proximo_estado.verifica_saldo~2_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.verifica_saldo~q\);

-- Location: LCCOMB_X14_Y12_N20
\A_Controladora|proximo_estado.sucesso~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|proximo_estado.sucesso~0_combout\ = (\A_Controladora|estado_atual.verifica_saldo~q\ & !\B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_Controladora|estado_atual.verifica_saldo~q\,
	datad => \B_DataPath|F_Comparador_Saldo|LessThan0~62_combout\,
	combout => \A_Controladora|proximo_estado.sucesso~0_combout\);

-- Location: FF_X14_Y12_N21
\A_Controladora|estado_atual.sucesso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|proximo_estado.sucesso~0_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.sucesso~q\);

-- Location: LCCOMB_X11_Y12_N22
\A_Controladora|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|Selector0~0_combout\ = (!\A_Controladora|estado_atual.sucesso~q\ & ((\A_Controladora|estado_atual.inicio~q\) # ((\inicia_compra~input_o\ & !\A_Controladora|aux_inicia_compra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inicia_compra~input_o\,
	datab => \A_Controladora|aux_inicia_compra~q\,
	datac => \A_Controladora|estado_atual.inicio~q\,
	datad => \A_Controladora|estado_atual.sucesso~q\,
	combout => \A_Controladora|Selector0~0_combout\);

-- Location: FF_X11_Y12_N23
\A_Controladora|estado_atual.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Controladora|Selector0~0_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.inicio~q\);

-- Location: FF_X10_Y12_N5
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~7_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(0));

-- Location: LCCOMB_X10_Y12_N6
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~9_combout\ = (\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1) & ((\A_Controladora|estado_atual.adiciona~q\ & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\)) # 
-- (!\A_Controladora|estado_atual.adiciona~q\ & (\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\ & VCC)))) # (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1) & ((\A_Controladora|estado_atual.adiciona~q\ & 
-- ((\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\) # (GND))) # (!\A_Controladora|estado_atual.adiciona~q\ & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\))))
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\ = CARRY((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1) & (\A_Controladora|estado_atual.adiciona~q\ & !\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\)) # 
-- (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1) & ((\A_Controladora|estado_atual.adiciona~q\) # (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1),
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => VCC,
	cin => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[0]~8\,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~9_combout\,
	cout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\);

-- Location: FF_X10_Y12_N7
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~9_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(1));

-- Location: LCCOMB_X10_Y12_N8
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~11_combout\ = ((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(2) $ (\A_Controladora|estado_atual.adiciona~q\ $ (\B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\)))) # (GND)
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\ = CARRY((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(2) & ((!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\) # (!\A_Controladora|estado_atual.adiciona~q\))) # 
-- (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(2) & (!\A_Controladora|estado_atual.adiciona~q\ & !\B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(2),
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => VCC,
	cin => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[1]~10\,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~11_combout\,
	cout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\);

-- Location: FF_X10_Y12_N9
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~11_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(2));

-- Location: LCCOMB_X10_Y12_N10
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~13_combout\ = (\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3) & ((\A_Controladora|estado_atual.adiciona~q\ & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\)) # 
-- (!\A_Controladora|estado_atual.adiciona~q\ & (\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\ & VCC)))) # (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3) & ((\A_Controladora|estado_atual.adiciona~q\ & 
-- ((\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\) # (GND))) # (!\A_Controladora|estado_atual.adiciona~q\ & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\))))
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\ = CARRY((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3) & (\A_Controladora|estado_atual.adiciona~q\ & !\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\)) # 
-- (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3) & ((\A_Controladora|estado_atual.adiciona~q\) # (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3),
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => VCC,
	cin => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[2]~12\,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~13_combout\,
	cout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\);

-- Location: FF_X10_Y12_N11
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~13_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(3));

-- Location: LCCOMB_X10_Y12_N12
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~15_combout\ = ((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(4) $ (\A_Controladora|estado_atual.adiciona~q\ $ (\B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\)))) # (GND)
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\ = CARRY((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(4) & ((!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\) # (!\A_Controladora|estado_atual.adiciona~q\))) # 
-- (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(4) & (!\A_Controladora|estado_atual.adiciona~q\ & !\B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(4),
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => VCC,
	cin => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[3]~14\,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~15_combout\,
	cout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\);

-- Location: FF_X10_Y12_N13
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~15_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(4));

-- Location: LCCOMB_X10_Y12_N14
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~17_combout\ = (\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5) & ((\A_Controladora|estado_atual.adiciona~q\ & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\)) # 
-- (!\A_Controladora|estado_atual.adiciona~q\ & (\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\ & VCC)))) # (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5) & ((\A_Controladora|estado_atual.adiciona~q\ & 
-- ((\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\) # (GND))) # (!\A_Controladora|estado_atual.adiciona~q\ & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\))))
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~18\ = CARRY((\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5) & (\A_Controladora|estado_atual.adiciona~q\ & !\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\)) # 
-- (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5) & ((\A_Controladora|estado_atual.adiciona~q\) # (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5),
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => VCC,
	cin => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[4]~16\,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~17_combout\,
	cout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~18\);

-- Location: FF_X10_Y12_N15
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~17_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5));

-- Location: LCCOMB_X10_Y12_N16
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|J_Total_Itens_Reg|quantidade_itens[6]~19_combout\ = \A_Controladora|estado_atual.adiciona~q\ $ (\B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~18\ $ (\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_Controladora|estado_atual.adiciona~q\,
	datad => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6),
	cin => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[5]~18\,
	combout => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[6]~19_combout\);

-- Location: FF_X10_Y12_N17
\B_DataPath|J_Total_Itens_Reg|quantidade_itens[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|J_Total_Itens_Reg|quantidade_itens[6]~19_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6));

-- Location: LCCOMB_X10_Y12_N26
\A_Controladora|proximo_estado.adiciona~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Controladora|proximo_estado.adiciona~0_combout\ = (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6) & (!\B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5) & \A_Controladora|estado_atual.confere_adicao~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(6),
	datac => \B_DataPath|J_Total_Itens_Reg|quantidade_itens\(5),
	datad => \A_Controladora|estado_atual.confere_adicao~q\,
	combout => \A_Controladora|proximo_estado.adiciona~0_combout\);

-- Location: FF_X11_Y12_N1
\A_Controladora|estado_atual.adiciona\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \A_Controladora|proximo_estado.adiciona~0_combout\,
	clrn => \ALT_INV_clear_controladora~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_Controladora|estado_atual.adiciona~q\);

-- Location: LCCOMB_X12_Y13_N12
\B_DataPath|B_Subtrator_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|B_Subtrator_1|Add0~0_combout\ = \valor_produto[0]~input_o\ $ (\A_Controladora|estado_atual.adiciona~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_produto[0]~input_o\,
	datad => \A_Controladora|estado_atual.adiciona~q\,
	combout => \B_DataPath|B_Subtrator_1|Add0~0_combout\);

-- Location: FF_X12_Y13_N19
\B_DataPath|D_Total_Reg|valor_compra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B_DataPath|D_Total_Reg|valor_compra[0]~34_combout\,
	clrn => \A_Controladora|estado_atual.inicio~q\,
	ena => \A_Controladora|ld_total_itens~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_DataPath|D_Total_Reg|valor_compra\(0));

-- Location: LCCOMB_X13_Y17_N0
\B_DataPath|E_Subtrator_2|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[0]~0_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(0) & (\saldo_cartao[0]~input_o\ $ (VCC))) # (!\B_DataPath|D_Total_Reg|valor_compra\(0) & ((\saldo_cartao[0]~input_o\) # (GND)))
-- \B_DataPath|E_Subtrator_2|s[0]~1\ = CARRY((\saldo_cartao[0]~input_o\) # (!\B_DataPath|D_Total_Reg|valor_compra\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(0),
	datab => \saldo_cartao[0]~input_o\,
	datad => VCC,
	combout => \B_DataPath|E_Subtrator_2|s[0]~0_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[0]~1\);

-- Location: LCCOMB_X13_Y17_N2
\B_DataPath|E_Subtrator_2|s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[1]~2_combout\ = (\saldo_cartao[1]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(1) & (!\B_DataPath|E_Subtrator_2|s[0]~1\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(1) & (\B_DataPath|E_Subtrator_2|s[0]~1\ & VCC)))) # 
-- (!\saldo_cartao[1]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(1) & ((\B_DataPath|E_Subtrator_2|s[0]~1\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(1) & (!\B_DataPath|E_Subtrator_2|s[0]~1\))))
-- \B_DataPath|E_Subtrator_2|s[1]~3\ = CARRY((\saldo_cartao[1]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(1) & !\B_DataPath|E_Subtrator_2|s[0]~1\)) # (!\saldo_cartao[1]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(1)) # 
-- (!\B_DataPath|E_Subtrator_2|s[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[1]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(1),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[0]~1\,
	combout => \B_DataPath|E_Subtrator_2|s[1]~2_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[1]~3\);

-- Location: LCCOMB_X13_Y17_N4
\B_DataPath|E_Subtrator_2|s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[2]~4_combout\ = ((\saldo_cartao[2]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(2) $ (\B_DataPath|E_Subtrator_2|s[1]~3\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[2]~5\ = CARRY((\saldo_cartao[2]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[1]~3\) # (!\B_DataPath|D_Total_Reg|valor_compra\(2)))) # (!\saldo_cartao[2]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(2) & 
-- !\B_DataPath|E_Subtrator_2|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[2]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(2),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[1]~3\,
	combout => \B_DataPath|E_Subtrator_2|s[2]~4_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[2]~5\);

-- Location: LCCOMB_X13_Y17_N6
\B_DataPath|E_Subtrator_2|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[3]~6_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(3) & ((\saldo_cartao[3]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[2]~5\)) # (!\saldo_cartao[3]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[2]~5\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(3) & ((\saldo_cartao[3]~input_o\ & (\B_DataPath|E_Subtrator_2|s[2]~5\ & VCC)) # (!\saldo_cartao[3]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[2]~5\))))
-- \B_DataPath|E_Subtrator_2|s[3]~7\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(3) & ((!\B_DataPath|E_Subtrator_2|s[2]~5\) # (!\saldo_cartao[3]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(3) & (!\saldo_cartao[3]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(3),
	datab => \saldo_cartao[3]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[2]~5\,
	combout => \B_DataPath|E_Subtrator_2|s[3]~6_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[3]~7\);

-- Location: LCCOMB_X13_Y17_N8
\B_DataPath|E_Subtrator_2|s[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[4]~8_combout\ = ((\saldo_cartao[4]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(4) $ (\B_DataPath|E_Subtrator_2|s[3]~7\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[4]~9\ = CARRY((\saldo_cartao[4]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[3]~7\) # (!\B_DataPath|D_Total_Reg|valor_compra\(4)))) # (!\saldo_cartao[4]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(4) & 
-- !\B_DataPath|E_Subtrator_2|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[4]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(4),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[3]~7\,
	combout => \B_DataPath|E_Subtrator_2|s[4]~8_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[4]~9\);

-- Location: LCCOMB_X13_Y17_N10
\B_DataPath|E_Subtrator_2|s[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[5]~10_combout\ = (\saldo_cartao[5]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(5) & (!\B_DataPath|E_Subtrator_2|s[4]~9\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(5) & (\B_DataPath|E_Subtrator_2|s[4]~9\ & VCC)))) # 
-- (!\saldo_cartao[5]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(5) & ((\B_DataPath|E_Subtrator_2|s[4]~9\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(5) & (!\B_DataPath|E_Subtrator_2|s[4]~9\))))
-- \B_DataPath|E_Subtrator_2|s[5]~11\ = CARRY((\saldo_cartao[5]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(5) & !\B_DataPath|E_Subtrator_2|s[4]~9\)) # (!\saldo_cartao[5]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(5)) # 
-- (!\B_DataPath|E_Subtrator_2|s[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[5]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(5),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[4]~9\,
	combout => \B_DataPath|E_Subtrator_2|s[5]~10_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[5]~11\);

-- Location: LCCOMB_X13_Y17_N12
\B_DataPath|E_Subtrator_2|s[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[6]~12_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(6) $ (\saldo_cartao[6]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[5]~11\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[6]~13\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(6) & (\saldo_cartao[6]~input_o\ & !\B_DataPath|E_Subtrator_2|s[5]~11\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(6) & ((\saldo_cartao[6]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(6),
	datab => \saldo_cartao[6]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[5]~11\,
	combout => \B_DataPath|E_Subtrator_2|s[6]~12_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[6]~13\);

-- Location: LCCOMB_X13_Y17_N14
\B_DataPath|E_Subtrator_2|s[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[7]~14_combout\ = (\saldo_cartao[7]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(7) & (!\B_DataPath|E_Subtrator_2|s[6]~13\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(7) & (\B_DataPath|E_Subtrator_2|s[6]~13\ & VCC)))) # 
-- (!\saldo_cartao[7]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(7) & ((\B_DataPath|E_Subtrator_2|s[6]~13\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(7) & (!\B_DataPath|E_Subtrator_2|s[6]~13\))))
-- \B_DataPath|E_Subtrator_2|s[7]~15\ = CARRY((\saldo_cartao[7]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(7) & !\B_DataPath|E_Subtrator_2|s[6]~13\)) # (!\saldo_cartao[7]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(7)) # 
-- (!\B_DataPath|E_Subtrator_2|s[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[7]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(7),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[6]~13\,
	combout => \B_DataPath|E_Subtrator_2|s[7]~14_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[7]~15\);

-- Location: LCCOMB_X13_Y17_N16
\B_DataPath|E_Subtrator_2|s[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[8]~16_combout\ = ((\saldo_cartao[8]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(8) $ (\B_DataPath|E_Subtrator_2|s[7]~15\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[8]~17\ = CARRY((\saldo_cartao[8]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[7]~15\) # (!\B_DataPath|D_Total_Reg|valor_compra\(8)))) # (!\saldo_cartao[8]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(8) & 
-- !\B_DataPath|E_Subtrator_2|s[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[8]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(8),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[7]~15\,
	combout => \B_DataPath|E_Subtrator_2|s[8]~16_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[8]~17\);

-- Location: LCCOMB_X13_Y17_N18
\B_DataPath|E_Subtrator_2|s[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[9]~18_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(9) & ((\saldo_cartao[9]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[8]~17\)) # (!\saldo_cartao[9]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[8]~17\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(9) & ((\saldo_cartao[9]~input_o\ & (\B_DataPath|E_Subtrator_2|s[8]~17\ & VCC)) # (!\saldo_cartao[9]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[8]~17\))))
-- \B_DataPath|E_Subtrator_2|s[9]~19\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(9) & ((!\B_DataPath|E_Subtrator_2|s[8]~17\) # (!\saldo_cartao[9]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(9) & (!\saldo_cartao[9]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(9),
	datab => \saldo_cartao[9]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[8]~17\,
	combout => \B_DataPath|E_Subtrator_2|s[9]~18_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[9]~19\);

-- Location: LCCOMB_X13_Y17_N20
\B_DataPath|E_Subtrator_2|s[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[10]~20_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(10) $ (\saldo_cartao[10]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[9]~19\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[10]~21\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(10) & (\saldo_cartao[10]~input_o\ & !\B_DataPath|E_Subtrator_2|s[9]~19\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(10) & ((\saldo_cartao[10]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(10),
	datab => \saldo_cartao[10]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[9]~19\,
	combout => \B_DataPath|E_Subtrator_2|s[10]~20_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[10]~21\);

-- Location: LCCOMB_X13_Y17_N22
\B_DataPath|E_Subtrator_2|s[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[11]~22_combout\ = (\saldo_cartao[11]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(11) & (!\B_DataPath|E_Subtrator_2|s[10]~21\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(11) & (\B_DataPath|E_Subtrator_2|s[10]~21\ & 
-- VCC)))) # (!\saldo_cartao[11]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(11) & ((\B_DataPath|E_Subtrator_2|s[10]~21\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(11) & (!\B_DataPath|E_Subtrator_2|s[10]~21\))))
-- \B_DataPath|E_Subtrator_2|s[11]~23\ = CARRY((\saldo_cartao[11]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(11) & !\B_DataPath|E_Subtrator_2|s[10]~21\)) # (!\saldo_cartao[11]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(11)) # 
-- (!\B_DataPath|E_Subtrator_2|s[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[11]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(11),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[10]~21\,
	combout => \B_DataPath|E_Subtrator_2|s[11]~22_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[11]~23\);

-- Location: LCCOMB_X13_Y17_N24
\B_DataPath|E_Subtrator_2|s[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[12]~24_combout\ = ((\saldo_cartao[12]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(12) $ (\B_DataPath|E_Subtrator_2|s[11]~23\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[12]~25\ = CARRY((\saldo_cartao[12]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[11]~23\) # (!\B_DataPath|D_Total_Reg|valor_compra\(12)))) # (!\saldo_cartao[12]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(12) & 
-- !\B_DataPath|E_Subtrator_2|s[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[12]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(12),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[11]~23\,
	combout => \B_DataPath|E_Subtrator_2|s[12]~24_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[12]~25\);

-- Location: LCCOMB_X13_Y17_N26
\B_DataPath|E_Subtrator_2|s[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[13]~26_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(13) & ((\saldo_cartao[13]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[12]~25\)) # (!\saldo_cartao[13]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[12]~25\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(13) & ((\saldo_cartao[13]~input_o\ & (\B_DataPath|E_Subtrator_2|s[12]~25\ & VCC)) # (!\saldo_cartao[13]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[12]~25\))))
-- \B_DataPath|E_Subtrator_2|s[13]~27\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(13) & ((!\B_DataPath|E_Subtrator_2|s[12]~25\) # (!\saldo_cartao[13]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(13) & (!\saldo_cartao[13]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(13),
	datab => \saldo_cartao[13]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[12]~25\,
	combout => \B_DataPath|E_Subtrator_2|s[13]~26_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[13]~27\);

-- Location: LCCOMB_X13_Y17_N28
\B_DataPath|E_Subtrator_2|s[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[14]~28_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(14) $ (\saldo_cartao[14]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[13]~27\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[14]~29\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(14) & (\saldo_cartao[14]~input_o\ & !\B_DataPath|E_Subtrator_2|s[13]~27\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(14) & ((\saldo_cartao[14]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(14),
	datab => \saldo_cartao[14]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[13]~27\,
	combout => \B_DataPath|E_Subtrator_2|s[14]~28_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[14]~29\);

-- Location: LCCOMB_X13_Y17_N30
\B_DataPath|E_Subtrator_2|s[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[15]~30_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(15) & ((\saldo_cartao[15]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[14]~29\)) # (!\saldo_cartao[15]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[14]~29\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(15) & ((\saldo_cartao[15]~input_o\ & (\B_DataPath|E_Subtrator_2|s[14]~29\ & VCC)) # (!\saldo_cartao[15]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[14]~29\))))
-- \B_DataPath|E_Subtrator_2|s[15]~31\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(15) & ((!\B_DataPath|E_Subtrator_2|s[14]~29\) # (!\saldo_cartao[15]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(15) & (!\saldo_cartao[15]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(15),
	datab => \saldo_cartao[15]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[14]~29\,
	combout => \B_DataPath|E_Subtrator_2|s[15]~30_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[15]~31\);

-- Location: LCCOMB_X13_Y16_N0
\B_DataPath|E_Subtrator_2|s[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[16]~32_combout\ = ((\saldo_cartao[16]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(16) $ (\B_DataPath|E_Subtrator_2|s[15]~31\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[16]~33\ = CARRY((\saldo_cartao[16]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[15]~31\) # (!\B_DataPath|D_Total_Reg|valor_compra\(16)))) # (!\saldo_cartao[16]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(16) & 
-- !\B_DataPath|E_Subtrator_2|s[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[16]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(16),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[15]~31\,
	combout => \B_DataPath|E_Subtrator_2|s[16]~32_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[16]~33\);

-- Location: LCCOMB_X13_Y16_N2
\B_DataPath|E_Subtrator_2|s[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[17]~34_combout\ = (\saldo_cartao[17]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(17) & (!\B_DataPath|E_Subtrator_2|s[16]~33\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(17) & (\B_DataPath|E_Subtrator_2|s[16]~33\ & 
-- VCC)))) # (!\saldo_cartao[17]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(17) & ((\B_DataPath|E_Subtrator_2|s[16]~33\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(17) & (!\B_DataPath|E_Subtrator_2|s[16]~33\))))
-- \B_DataPath|E_Subtrator_2|s[17]~35\ = CARRY((\saldo_cartao[17]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(17) & !\B_DataPath|E_Subtrator_2|s[16]~33\)) # (!\saldo_cartao[17]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(17)) # 
-- (!\B_DataPath|E_Subtrator_2|s[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[17]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(17),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[16]~33\,
	combout => \B_DataPath|E_Subtrator_2|s[17]~34_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[17]~35\);

-- Location: LCCOMB_X13_Y16_N4
\B_DataPath|E_Subtrator_2|s[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[18]~36_combout\ = ((\saldo_cartao[18]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(18) $ (\B_DataPath|E_Subtrator_2|s[17]~35\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[18]~37\ = CARRY((\saldo_cartao[18]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[17]~35\) # (!\B_DataPath|D_Total_Reg|valor_compra\(18)))) # (!\saldo_cartao[18]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(18) & 
-- !\B_DataPath|E_Subtrator_2|s[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[18]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(18),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[17]~35\,
	combout => \B_DataPath|E_Subtrator_2|s[18]~36_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[18]~37\);

-- Location: LCCOMB_X13_Y16_N6
\B_DataPath|E_Subtrator_2|s[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[19]~38_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(19) & ((\saldo_cartao[19]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[18]~37\)) # (!\saldo_cartao[19]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[18]~37\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(19) & ((\saldo_cartao[19]~input_o\ & (\B_DataPath|E_Subtrator_2|s[18]~37\ & VCC)) # (!\saldo_cartao[19]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[18]~37\))))
-- \B_DataPath|E_Subtrator_2|s[19]~39\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(19) & ((!\B_DataPath|E_Subtrator_2|s[18]~37\) # (!\saldo_cartao[19]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(19) & (!\saldo_cartao[19]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[18]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(19),
	datab => \saldo_cartao[19]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[18]~37\,
	combout => \B_DataPath|E_Subtrator_2|s[19]~38_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[19]~39\);

-- Location: LCCOMB_X13_Y16_N8
\B_DataPath|E_Subtrator_2|s[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[20]~40_combout\ = ((\saldo_cartao[20]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(20) $ (\B_DataPath|E_Subtrator_2|s[19]~39\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[20]~41\ = CARRY((\saldo_cartao[20]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[19]~39\) # (!\B_DataPath|D_Total_Reg|valor_compra\(20)))) # (!\saldo_cartao[20]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(20) & 
-- !\B_DataPath|E_Subtrator_2|s[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[20]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(20),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[19]~39\,
	combout => \B_DataPath|E_Subtrator_2|s[20]~40_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[20]~41\);

-- Location: LCCOMB_X13_Y16_N10
\B_DataPath|E_Subtrator_2|s[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[21]~42_combout\ = (\saldo_cartao[21]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(21) & (!\B_DataPath|E_Subtrator_2|s[20]~41\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(21) & (\B_DataPath|E_Subtrator_2|s[20]~41\ & 
-- VCC)))) # (!\saldo_cartao[21]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(21) & ((\B_DataPath|E_Subtrator_2|s[20]~41\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(21) & (!\B_DataPath|E_Subtrator_2|s[20]~41\))))
-- \B_DataPath|E_Subtrator_2|s[21]~43\ = CARRY((\saldo_cartao[21]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(21) & !\B_DataPath|E_Subtrator_2|s[20]~41\)) # (!\saldo_cartao[21]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(21)) # 
-- (!\B_DataPath|E_Subtrator_2|s[20]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[21]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(21),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[20]~41\,
	combout => \B_DataPath|E_Subtrator_2|s[21]~42_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[21]~43\);

-- Location: LCCOMB_X13_Y16_N12
\B_DataPath|E_Subtrator_2|s[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[22]~44_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(22) $ (\saldo_cartao[22]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[21]~43\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[22]~45\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(22) & (\saldo_cartao[22]~input_o\ & !\B_DataPath|E_Subtrator_2|s[21]~43\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(22) & ((\saldo_cartao[22]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[21]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(22),
	datab => \saldo_cartao[22]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[21]~43\,
	combout => \B_DataPath|E_Subtrator_2|s[22]~44_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[22]~45\);

-- Location: LCCOMB_X13_Y16_N14
\B_DataPath|E_Subtrator_2|s[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[23]~46_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(23) & ((\saldo_cartao[23]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[22]~45\)) # (!\saldo_cartao[23]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[22]~45\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(23) & ((\saldo_cartao[23]~input_o\ & (\B_DataPath|E_Subtrator_2|s[22]~45\ & VCC)) # (!\saldo_cartao[23]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[22]~45\))))
-- \B_DataPath|E_Subtrator_2|s[23]~47\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(23) & ((!\B_DataPath|E_Subtrator_2|s[22]~45\) # (!\saldo_cartao[23]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(23) & (!\saldo_cartao[23]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[22]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(23),
	datab => \saldo_cartao[23]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[22]~45\,
	combout => \B_DataPath|E_Subtrator_2|s[23]~46_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[23]~47\);

-- Location: LCCOMB_X13_Y16_N16
\B_DataPath|E_Subtrator_2|s[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[24]~48_combout\ = ((\saldo_cartao[24]~input_o\ $ (\B_DataPath|D_Total_Reg|valor_compra\(24) $ (\B_DataPath|E_Subtrator_2|s[23]~47\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[24]~49\ = CARRY((\saldo_cartao[24]~input_o\ & ((!\B_DataPath|E_Subtrator_2|s[23]~47\) # (!\B_DataPath|D_Total_Reg|valor_compra\(24)))) # (!\saldo_cartao[24]~input_o\ & (!\B_DataPath|D_Total_Reg|valor_compra\(24) & 
-- !\B_DataPath|E_Subtrator_2|s[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[24]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(24),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[23]~47\,
	combout => \B_DataPath|E_Subtrator_2|s[24]~48_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[24]~49\);

-- Location: LCCOMB_X13_Y16_N18
\B_DataPath|E_Subtrator_2|s[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[25]~50_combout\ = (\saldo_cartao[25]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(25) & (!\B_DataPath|E_Subtrator_2|s[24]~49\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(25) & (\B_DataPath|E_Subtrator_2|s[24]~49\ & 
-- VCC)))) # (!\saldo_cartao[25]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(25) & ((\B_DataPath|E_Subtrator_2|s[24]~49\) # (GND))) # (!\B_DataPath|D_Total_Reg|valor_compra\(25) & (!\B_DataPath|E_Subtrator_2|s[24]~49\))))
-- \B_DataPath|E_Subtrator_2|s[25]~51\ = CARRY((\saldo_cartao[25]~input_o\ & (\B_DataPath|D_Total_Reg|valor_compra\(25) & !\B_DataPath|E_Subtrator_2|s[24]~49\)) # (!\saldo_cartao[25]~input_o\ & ((\B_DataPath|D_Total_Reg|valor_compra\(25)) # 
-- (!\B_DataPath|E_Subtrator_2|s[24]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[25]~input_o\,
	datab => \B_DataPath|D_Total_Reg|valor_compra\(25),
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[24]~49\,
	combout => \B_DataPath|E_Subtrator_2|s[25]~50_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[25]~51\);

-- Location: LCCOMB_X13_Y16_N20
\B_DataPath|E_Subtrator_2|s[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[26]~52_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(26) $ (\saldo_cartao[26]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[25]~51\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[26]~53\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(26) & (\saldo_cartao[26]~input_o\ & !\B_DataPath|E_Subtrator_2|s[25]~51\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(26) & ((\saldo_cartao[26]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[25]~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(26),
	datab => \saldo_cartao[26]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[25]~51\,
	combout => \B_DataPath|E_Subtrator_2|s[26]~52_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[26]~53\);

-- Location: LCCOMB_X13_Y16_N22
\B_DataPath|E_Subtrator_2|s[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[27]~54_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(27) & ((\saldo_cartao[27]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[26]~53\)) # (!\saldo_cartao[27]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[26]~53\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(27) & ((\saldo_cartao[27]~input_o\ & (\B_DataPath|E_Subtrator_2|s[26]~53\ & VCC)) # (!\saldo_cartao[27]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[26]~53\))))
-- \B_DataPath|E_Subtrator_2|s[27]~55\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(27) & ((!\B_DataPath|E_Subtrator_2|s[26]~53\) # (!\saldo_cartao[27]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(27) & (!\saldo_cartao[27]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[26]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(27),
	datab => \saldo_cartao[27]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[26]~53\,
	combout => \B_DataPath|E_Subtrator_2|s[27]~54_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[27]~55\);

-- Location: LCCOMB_X13_Y16_N24
\B_DataPath|E_Subtrator_2|s[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[28]~56_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(28) $ (\saldo_cartao[28]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[27]~55\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[28]~57\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(28) & (\saldo_cartao[28]~input_o\ & !\B_DataPath|E_Subtrator_2|s[27]~55\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(28) & ((\saldo_cartao[28]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(28),
	datab => \saldo_cartao[28]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[27]~55\,
	combout => \B_DataPath|E_Subtrator_2|s[28]~56_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[28]~57\);

-- Location: LCCOMB_X13_Y16_N26
\B_DataPath|E_Subtrator_2|s[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[29]~58_combout\ = (\B_DataPath|D_Total_Reg|valor_compra\(29) & ((\saldo_cartao[29]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[28]~57\)) # (!\saldo_cartao[29]~input_o\ & ((\B_DataPath|E_Subtrator_2|s[28]~57\) # (GND))))) # 
-- (!\B_DataPath|D_Total_Reg|valor_compra\(29) & ((\saldo_cartao[29]~input_o\ & (\B_DataPath|E_Subtrator_2|s[28]~57\ & VCC)) # (!\saldo_cartao[29]~input_o\ & (!\B_DataPath|E_Subtrator_2|s[28]~57\))))
-- \B_DataPath|E_Subtrator_2|s[29]~59\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(29) & ((!\B_DataPath|E_Subtrator_2|s[28]~57\) # (!\saldo_cartao[29]~input_o\))) # (!\B_DataPath|D_Total_Reg|valor_compra\(29) & (!\saldo_cartao[29]~input_o\ & 
-- !\B_DataPath|E_Subtrator_2|s[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(29),
	datab => \saldo_cartao[29]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[28]~57\,
	combout => \B_DataPath|E_Subtrator_2|s[29]~58_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[29]~59\);

-- Location: LCCOMB_X13_Y16_N28
\B_DataPath|E_Subtrator_2|s[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[30]~60_combout\ = ((\B_DataPath|D_Total_Reg|valor_compra\(30) $ (\saldo_cartao[30]~input_o\ $ (\B_DataPath|E_Subtrator_2|s[29]~59\)))) # (GND)
-- \B_DataPath|E_Subtrator_2|s[30]~61\ = CARRY((\B_DataPath|D_Total_Reg|valor_compra\(30) & (\saldo_cartao[30]~input_o\ & !\B_DataPath|E_Subtrator_2|s[29]~59\)) # (!\B_DataPath|D_Total_Reg|valor_compra\(30) & ((\saldo_cartao[30]~input_o\) # 
-- (!\B_DataPath|E_Subtrator_2|s[29]~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_DataPath|D_Total_Reg|valor_compra\(30),
	datab => \saldo_cartao[30]~input_o\,
	datad => VCC,
	cin => \B_DataPath|E_Subtrator_2|s[29]~59\,
	combout => \B_DataPath|E_Subtrator_2|s[30]~60_combout\,
	cout => \B_DataPath|E_Subtrator_2|s[30]~61\);

-- Location: LCCOMB_X13_Y16_N30
\B_DataPath|E_Subtrator_2|s[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_DataPath|E_Subtrator_2|s[31]~62_combout\ = \B_DataPath|D_Total_Reg|valor_compra\(31) $ (\B_DataPath|E_Subtrator_2|s[30]~61\ $ (!\saldo_cartao[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B_DataPath|D_Total_Reg|valor_compra\(31),
	datad => \saldo_cartao[31]~input_o\,
	cin => \B_DataPath|E_Subtrator_2|s[30]~61\,
	combout => \B_DataPath|E_Subtrator_2|s[31]~62_combout\);

ww_saldo_restante(0) <= \saldo_restante[0]~output_o\;

ww_saldo_restante(1) <= \saldo_restante[1]~output_o\;

ww_saldo_restante(2) <= \saldo_restante[2]~output_o\;

ww_saldo_restante(3) <= \saldo_restante[3]~output_o\;

ww_saldo_restante(4) <= \saldo_restante[4]~output_o\;

ww_saldo_restante(5) <= \saldo_restante[5]~output_o\;

ww_saldo_restante(6) <= \saldo_restante[6]~output_o\;

ww_saldo_restante(7) <= \saldo_restante[7]~output_o\;

ww_saldo_restante(8) <= \saldo_restante[8]~output_o\;

ww_saldo_restante(9) <= \saldo_restante[9]~output_o\;

ww_saldo_restante(10) <= \saldo_restante[10]~output_o\;

ww_saldo_restante(11) <= \saldo_restante[11]~output_o\;

ww_saldo_restante(12) <= \saldo_restante[12]~output_o\;

ww_saldo_restante(13) <= \saldo_restante[13]~output_o\;

ww_saldo_restante(14) <= \saldo_restante[14]~output_o\;

ww_saldo_restante(15) <= \saldo_restante[15]~output_o\;

ww_saldo_restante(16) <= \saldo_restante[16]~output_o\;

ww_saldo_restante(17) <= \saldo_restante[17]~output_o\;

ww_saldo_restante(18) <= \saldo_restante[18]~output_o\;

ww_saldo_restante(19) <= \saldo_restante[19]~output_o\;

ww_saldo_restante(20) <= \saldo_restante[20]~output_o\;

ww_saldo_restante(21) <= \saldo_restante[21]~output_o\;

ww_saldo_restante(22) <= \saldo_restante[22]~output_o\;

ww_saldo_restante(23) <= \saldo_restante[23]~output_o\;

ww_saldo_restante(24) <= \saldo_restante[24]~output_o\;

ww_saldo_restante(25) <= \saldo_restante[25]~output_o\;

ww_saldo_restante(26) <= \saldo_restante[26]~output_o\;

ww_saldo_restante(27) <= \saldo_restante[27]~output_o\;

ww_saldo_restante(28) <= \saldo_restante[28]~output_o\;

ww_saldo_restante(29) <= \saldo_restante[29]~output_o\;

ww_saldo_restante(30) <= \saldo_restante[30]~output_o\;

ww_saldo_restante(31) <= \saldo_restante[31]~output_o\;

ww_valor_compra(0) <= \valor_compra[0]~output_o\;

ww_valor_compra(1) <= \valor_compra[1]~output_o\;

ww_valor_compra(2) <= \valor_compra[2]~output_o\;

ww_valor_compra(3) <= \valor_compra[3]~output_o\;

ww_valor_compra(4) <= \valor_compra[4]~output_o\;

ww_valor_compra(5) <= \valor_compra[5]~output_o\;

ww_valor_compra(6) <= \valor_compra[6]~output_o\;

ww_valor_compra(7) <= \valor_compra[7]~output_o\;

ww_valor_compra(8) <= \valor_compra[8]~output_o\;

ww_valor_compra(9) <= \valor_compra[9]~output_o\;

ww_valor_compra(10) <= \valor_compra[10]~output_o\;

ww_valor_compra(11) <= \valor_compra[11]~output_o\;

ww_valor_compra(12) <= \valor_compra[12]~output_o\;

ww_valor_compra(13) <= \valor_compra[13]~output_o\;

ww_valor_compra(14) <= \valor_compra[14]~output_o\;

ww_valor_compra(15) <= \valor_compra[15]~output_o\;

ww_valor_compra(16) <= \valor_compra[16]~output_o\;

ww_valor_compra(17) <= \valor_compra[17]~output_o\;

ww_valor_compra(18) <= \valor_compra[18]~output_o\;

ww_valor_compra(19) <= \valor_compra[19]~output_o\;

ww_valor_compra(20) <= \valor_compra[20]~output_o\;

ww_valor_compra(21) <= \valor_compra[21]~output_o\;

ww_valor_compra(22) <= \valor_compra[22]~output_o\;

ww_valor_compra(23) <= \valor_compra[23]~output_o\;

ww_valor_compra(24) <= \valor_compra[24]~output_o\;

ww_valor_compra(25) <= \valor_compra[25]~output_o\;

ww_valor_compra(26) <= \valor_compra[26]~output_o\;

ww_valor_compra(27) <= \valor_compra[27]~output_o\;

ww_valor_compra(28) <= \valor_compra[28]~output_o\;

ww_valor_compra(29) <= \valor_compra[29]~output_o\;

ww_valor_compra(30) <= \valor_compra[30]~output_o\;

ww_valor_compra(31) <= \valor_compra[31]~output_o\;

ww_quantidade_itens(0) <= \quantidade_itens[0]~output_o\;

ww_quantidade_itens(1) <= \quantidade_itens[1]~output_o\;

ww_quantidade_itens(2) <= \quantidade_itens[2]~output_o\;

ww_quantidade_itens(3) <= \quantidade_itens[3]~output_o\;

ww_quantidade_itens(4) <= \quantidade_itens[4]~output_o\;

ww_quantidade_itens(5) <= \quantidade_itens[5]~output_o\;

ww_quantidade_itens(6) <= \quantidade_itens[6]~output_o\;

ww_erro <= \erro~output_o\;

ww_concluido <= \concluido~output_o\;

ww_desconta <= \desconta~output_o\;

ww_ler_pagamento <= \ler_pagamento~output_o\;
END structure;


