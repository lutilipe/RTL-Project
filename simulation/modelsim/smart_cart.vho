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

-- DATE "07/13/2022 13:25:55"

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

ENTITY 	DataPath IS
    PORT (
	valor_produto : IN std_logic_vector(31 DOWNTO 0);
	saldo_cartao : IN std_logic_vector(31 DOWNTO 0);
	ld_total : IN std_logic;
	clr_total : IN std_logic;
	ld_total_itens : IN std_logic;
	clr_total_itens : IN std_logic;
	add : IN std_logic;
	del : IN std_logic;
	clock : IN std_logic;
	saldo_restante : BUFFER std_logic_vector(31 DOWNTO 0);
	valor_compra : BUFFER std_logic_vector(31 DOWNTO 0);
	quantidade_itens : BUFFER std_logic_vector(6 DOWNTO 0);
	total_itens_lt_32 : BUFFER std_logic;
	saldo_lt_total : BUFFER std_logic
	);
END DataPath;

-- Design Ports Information
-- saldo_restante[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[16]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[17]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[18]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[19]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[20]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[21]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[22]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[23]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[25]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[26]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[28]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[29]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[30]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_restante[31]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[9]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[12]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[13]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[14]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[15]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[16]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[17]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[19]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[20]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[21]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[22]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[23]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[24]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[25]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[26]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[27]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[28]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[29]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[30]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_compra[31]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quantidade_itens[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_itens_lt_32	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_lt_total	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[12]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[13]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[14]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[16]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[17]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[18]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[19]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[20]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[21]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[22]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[23]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[24]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[25]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[27]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[28]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[29]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[30]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_cartao[31]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- del	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_total	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_total	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[2]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[13]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[16]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[17]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[18]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[21]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[22]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[24]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[25]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[26]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[27]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[28]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[29]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[30]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_produto[31]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_total_itens	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_total_itens	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DataPath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_valor_produto : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saldo_cartao : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ld_total : std_logic;
SIGNAL ww_clr_total : std_logic;
SIGNAL ww_ld_total_itens : std_logic;
SIGNAL ww_clr_total_itens : std_logic;
SIGNAL ww_add : std_logic;
SIGNAL ww_del : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_saldo_restante : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_valor_compra : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_quantidade_itens : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_total_itens_lt_32 : std_logic;
SIGNAL ww_saldo_lt_total : std_logic;
SIGNAL \clr_total_itens~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr_total~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \total_itens_lt_32~output_o\ : std_logic;
SIGNAL \saldo_lt_total~output_o\ : std_logic;
SIGNAL \saldo_cartao[0]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \add~input_o\ : std_logic;
SIGNAL \valor_produto[0]~input_o\ : std_logic;
SIGNAL \del~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~0_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[0]~33_cout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[0]~34_combout\ : std_logic;
SIGNAL \clr_total~input_o\ : std_logic;
SIGNAL \clr_total~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld_total~input_o\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[31]~36_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[0]~0_combout\ : std_logic;
SIGNAL \valor_produto[1]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~1_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[0]~35\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[1]~37_combout\ : std_logic;
SIGNAL \saldo_cartao[1]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[0]~1\ : std_logic;
SIGNAL \E_Subtrator_2|s[1]~2_combout\ : std_logic;
SIGNAL \saldo_cartao[2]~input_o\ : std_logic;
SIGNAL \valor_produto[2]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~2_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[1]~38\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[2]~39_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[1]~3\ : std_logic;
SIGNAL \E_Subtrator_2|s[2]~4_combout\ : std_logic;
SIGNAL \saldo_cartao[3]~input_o\ : std_logic;
SIGNAL \valor_produto[3]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~3_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[2]~40\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[3]~41_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[2]~5\ : std_logic;
SIGNAL \E_Subtrator_2|s[3]~6_combout\ : std_logic;
SIGNAL \saldo_cartao[4]~input_o\ : std_logic;
SIGNAL \valor_produto[4]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~4_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[3]~42\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[4]~43_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[3]~7\ : std_logic;
SIGNAL \E_Subtrator_2|s[4]~8_combout\ : std_logic;
SIGNAL \valor_produto[5]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~5_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[4]~44\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[5]~45_combout\ : std_logic;
SIGNAL \saldo_cartao[5]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[4]~9\ : std_logic;
SIGNAL \E_Subtrator_2|s[5]~10_combout\ : std_logic;
SIGNAL \saldo_cartao[6]~input_o\ : std_logic;
SIGNAL \valor_produto[6]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~6_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[5]~46\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[6]~47_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[5]~11\ : std_logic;
SIGNAL \E_Subtrator_2|s[6]~12_combout\ : std_logic;
SIGNAL \valor_produto[7]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~7_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[6]~48\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[7]~49_combout\ : std_logic;
SIGNAL \saldo_cartao[7]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[6]~13\ : std_logic;
SIGNAL \E_Subtrator_2|s[7]~14_combout\ : std_logic;
SIGNAL \valor_produto[8]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~8_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[7]~50\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[8]~51_combout\ : std_logic;
SIGNAL \saldo_cartao[8]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[7]~15\ : std_logic;
SIGNAL \E_Subtrator_2|s[8]~16_combout\ : std_logic;
SIGNAL \saldo_cartao[9]~input_o\ : std_logic;
SIGNAL \valor_produto[9]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~9_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[8]~52\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[9]~53_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[8]~17\ : std_logic;
SIGNAL \E_Subtrator_2|s[9]~18_combout\ : std_logic;
SIGNAL \saldo_cartao[10]~input_o\ : std_logic;
SIGNAL \valor_produto[10]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~10_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[9]~54\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[10]~55_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[9]~19\ : std_logic;
SIGNAL \E_Subtrator_2|s[10]~20_combout\ : std_logic;
SIGNAL \saldo_cartao[11]~input_o\ : std_logic;
SIGNAL \valor_produto[11]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~11_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[10]~56\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[11]~57_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[10]~21\ : std_logic;
SIGNAL \E_Subtrator_2|s[11]~22_combout\ : std_logic;
SIGNAL \saldo_cartao[12]~input_o\ : std_logic;
SIGNAL \valor_produto[12]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~12_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[11]~58\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[12]~59_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[11]~23\ : std_logic;
SIGNAL \E_Subtrator_2|s[12]~24_combout\ : std_logic;
SIGNAL \saldo_cartao[13]~input_o\ : std_logic;
SIGNAL \valor_produto[13]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~13_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[12]~60\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[13]~61_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[12]~25\ : std_logic;
SIGNAL \E_Subtrator_2|s[13]~26_combout\ : std_logic;
SIGNAL \valor_produto[14]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~14_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[13]~62\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[14]~63_combout\ : std_logic;
SIGNAL \saldo_cartao[14]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[13]~27\ : std_logic;
SIGNAL \E_Subtrator_2|s[14]~28_combout\ : std_logic;
SIGNAL \saldo_cartao[15]~input_o\ : std_logic;
SIGNAL \valor_produto[15]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~15_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[14]~64\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[15]~65_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[14]~29\ : std_logic;
SIGNAL \E_Subtrator_2|s[15]~30_combout\ : std_logic;
SIGNAL \valor_produto[16]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~16_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[15]~66\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[16]~67_combout\ : std_logic;
SIGNAL \saldo_cartao[16]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[15]~31\ : std_logic;
SIGNAL \E_Subtrator_2|s[16]~32_combout\ : std_logic;
SIGNAL \valor_produto[17]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~17_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[16]~68\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[17]~69_combout\ : std_logic;
SIGNAL \saldo_cartao[17]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[16]~33\ : std_logic;
SIGNAL \E_Subtrator_2|s[17]~34_combout\ : std_logic;
SIGNAL \saldo_cartao[18]~input_o\ : std_logic;
SIGNAL \valor_produto[18]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~18_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[17]~70\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[18]~71_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[17]~35\ : std_logic;
SIGNAL \E_Subtrator_2|s[18]~36_combout\ : std_logic;
SIGNAL \valor_produto[19]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~19_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[18]~72\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[19]~73_combout\ : std_logic;
SIGNAL \saldo_cartao[19]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[18]~37\ : std_logic;
SIGNAL \E_Subtrator_2|s[19]~38_combout\ : std_logic;
SIGNAL \saldo_cartao[20]~input_o\ : std_logic;
SIGNAL \valor_produto[20]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~20_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[19]~74\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[20]~75_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[19]~39\ : std_logic;
SIGNAL \E_Subtrator_2|s[20]~40_combout\ : std_logic;
SIGNAL \valor_produto[21]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~21_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[20]~76\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[21]~77_combout\ : std_logic;
SIGNAL \saldo_cartao[21]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[20]~41\ : std_logic;
SIGNAL \E_Subtrator_2|s[21]~42_combout\ : std_logic;
SIGNAL \saldo_cartao[22]~input_o\ : std_logic;
SIGNAL \valor_produto[22]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~22_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[21]~78\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[22]~79_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[21]~43\ : std_logic;
SIGNAL \E_Subtrator_2|s[22]~44_combout\ : std_logic;
SIGNAL \saldo_cartao[23]~input_o\ : std_logic;
SIGNAL \valor_produto[23]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~23_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[22]~80\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[23]~81_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[22]~45\ : std_logic;
SIGNAL \E_Subtrator_2|s[23]~46_combout\ : std_logic;
SIGNAL \saldo_cartao[24]~input_o\ : std_logic;
SIGNAL \valor_produto[24]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~24_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[23]~82\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[24]~83_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[23]~47\ : std_logic;
SIGNAL \E_Subtrator_2|s[24]~48_combout\ : std_logic;
SIGNAL \saldo_cartao[25]~input_o\ : std_logic;
SIGNAL \valor_produto[25]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~25_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[24]~84\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[25]~85_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[24]~49\ : std_logic;
SIGNAL \E_Subtrator_2|s[25]~50_combout\ : std_logic;
SIGNAL \saldo_cartao[26]~input_o\ : std_logic;
SIGNAL \valor_produto[26]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~26_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[25]~86\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[26]~87_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[25]~51\ : std_logic;
SIGNAL \E_Subtrator_2|s[26]~52_combout\ : std_logic;
SIGNAL \saldo_cartao[27]~input_o\ : std_logic;
SIGNAL \valor_produto[27]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~27_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[26]~88\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[27]~89_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[26]~53\ : std_logic;
SIGNAL \E_Subtrator_2|s[27]~54_combout\ : std_logic;
SIGNAL \valor_produto[28]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~28_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[27]~90\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[28]~91_combout\ : std_logic;
SIGNAL \saldo_cartao[28]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[27]~55\ : std_logic;
SIGNAL \E_Subtrator_2|s[28]~56_combout\ : std_logic;
SIGNAL \valor_produto[29]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~29_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[28]~92\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[29]~93_combout\ : std_logic;
SIGNAL \saldo_cartao[29]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[28]~57\ : std_logic;
SIGNAL \E_Subtrator_2|s[29]~58_combout\ : std_logic;
SIGNAL \saldo_cartao[30]~input_o\ : std_logic;
SIGNAL \valor_produto[30]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~30_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[29]~94\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[30]~95_combout\ : std_logic;
SIGNAL \E_Subtrator_2|s[29]~59\ : std_logic;
SIGNAL \E_Subtrator_2|s[30]~60_combout\ : std_logic;
SIGNAL \valor_produto[31]~input_o\ : std_logic;
SIGNAL \B_Subtrator_1|Add0~31_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[30]~96\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra[31]~97_combout\ : std_logic;
SIGNAL \saldo_cartao[31]~input_o\ : std_logic;
SIGNAL \E_Subtrator_2|s[30]~61\ : std_logic;
SIGNAL \E_Subtrator_2|s[31]~62_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[0]~7_combout\ : std_logic;
SIGNAL \clr_total_itens~input_o\ : std_logic;
SIGNAL \clr_total_itens~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld_total_itens~input_o\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\ : std_logic;
SIGNAL \I_Mux_4_1_7_bits|mux1~0_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[0]~8\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[1]~10_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[1]~11\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[2]~12_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[2]~13\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[3]~14_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[3]~15\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[4]~16_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[4]~17\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[5]~18_combout\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[5]~19\ : std_logic;
SIGNAL \J_Total_Itens_Reg|quantidade_itens[6]~20_combout\ : std_logic;
SIGNAL \K_Comparador_Itens|LessThan0~0_combout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~1_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~3_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~5_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~7_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~9_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~11_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~13_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~15_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~17_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~19_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~21_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~23_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~25_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~27_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~29_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~31_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~33_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~35_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~37_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~39_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~41_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~43_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~45_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~47_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~49_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~51_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~53_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~55_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~57_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~59_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~61_cout\ : std_logic;
SIGNAL \F_Comparador_Saldo|LessThan0~62_combout\ : std_logic;
SIGNAL \D_Total_Reg|valor_compra\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \J_Total_Itens_Reg|quantidade_itens\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \K_Comparador_Itens|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_clr_total~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clr_total_itens~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_valor_produto <= valor_produto;
ww_saldo_cartao <= saldo_cartao;
ww_ld_total <= ld_total;
ww_clr_total <= clr_total;
ww_ld_total_itens <= ld_total_itens;
ww_clr_total_itens <= clr_total_itens;
ww_add <= add;
ww_del <= del;
ww_clock <= clock;
saldo_restante <= ww_saldo_restante;
valor_compra <= ww_valor_compra;
quantidade_itens <= ww_quantidade_itens;
total_itens_lt_32 <= ww_total_itens_lt_32;
saldo_lt_total <= ww_saldo_lt_total;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr_total_itens~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr_total_itens~input_o\);

\clr_total~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr_total~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\K_Comparador_Itens|ALT_INV_LessThan0~0_combout\ <= NOT \K_Comparador_Itens|LessThan0~0_combout\;
\ALT_INV_clr_total~inputclkctrl_outclk\ <= NOT \clr_total~inputclkctrl_outclk\;
\ALT_INV_clr_total_itens~inputclkctrl_outclk\ <= NOT \clr_total_itens~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y19_N9
\saldo_restante[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\saldo_restante[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[1]~2_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\saldo_restante[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[2]~4_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\saldo_restante[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[3]~6_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[3]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\saldo_restante[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[4]~8_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[4]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\saldo_restante[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[5]~10_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\saldo_restante[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[6]~12_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[6]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\saldo_restante[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[7]~14_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\saldo_restante[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[8]~16_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[8]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\saldo_restante[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[9]~18_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[9]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\saldo_restante[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[10]~20_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[10]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\saldo_restante[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[11]~22_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[11]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\saldo_restante[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[12]~24_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[12]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\saldo_restante[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[13]~26_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[13]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\saldo_restante[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[14]~28_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[14]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\saldo_restante[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[15]~30_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[15]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\saldo_restante[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[16]~32_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[16]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\saldo_restante[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[17]~34_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[17]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\saldo_restante[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[18]~36_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[18]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\saldo_restante[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[19]~38_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[19]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\saldo_restante[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[20]~40_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[20]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\saldo_restante[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[21]~42_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[21]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\saldo_restante[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[22]~44_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[22]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\saldo_restante[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[23]~46_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[23]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\saldo_restante[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[24]~48_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[24]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\saldo_restante[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[25]~50_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[25]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\saldo_restante[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[26]~52_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[26]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\saldo_restante[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[27]~54_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[27]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\saldo_restante[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[28]~56_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[28]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\saldo_restante[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[29]~58_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[29]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\saldo_restante[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[30]~60_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[30]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\saldo_restante[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_Subtrator_2|s[31]~62_combout\,
	devoe => ww_devoe,
	o => \saldo_restante[31]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\valor_compra[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(0),
	devoe => ww_devoe,
	o => \valor_compra[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\valor_compra[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(1),
	devoe => ww_devoe,
	o => \valor_compra[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\valor_compra[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(2),
	devoe => ww_devoe,
	o => \valor_compra[2]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\valor_compra[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(3),
	devoe => ww_devoe,
	o => \valor_compra[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\valor_compra[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(4),
	devoe => ww_devoe,
	o => \valor_compra[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\valor_compra[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(5),
	devoe => ww_devoe,
	o => \valor_compra[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\valor_compra[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(6),
	devoe => ww_devoe,
	o => \valor_compra[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\valor_compra[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(7),
	devoe => ww_devoe,
	o => \valor_compra[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\valor_compra[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(8),
	devoe => ww_devoe,
	o => \valor_compra[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\valor_compra[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(9),
	devoe => ww_devoe,
	o => \valor_compra[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\valor_compra[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(10),
	devoe => ww_devoe,
	o => \valor_compra[10]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\valor_compra[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(11),
	devoe => ww_devoe,
	o => \valor_compra[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\valor_compra[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(12),
	devoe => ww_devoe,
	o => \valor_compra[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\valor_compra[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(13),
	devoe => ww_devoe,
	o => \valor_compra[13]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\valor_compra[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(14),
	devoe => ww_devoe,
	o => \valor_compra[14]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\valor_compra[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(15),
	devoe => ww_devoe,
	o => \valor_compra[15]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\valor_compra[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(16),
	devoe => ww_devoe,
	o => \valor_compra[16]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\valor_compra[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(17),
	devoe => ww_devoe,
	o => \valor_compra[17]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\valor_compra[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(18),
	devoe => ww_devoe,
	o => \valor_compra[18]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\valor_compra[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(19),
	devoe => ww_devoe,
	o => \valor_compra[19]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\valor_compra[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(20),
	devoe => ww_devoe,
	o => \valor_compra[20]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\valor_compra[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(21),
	devoe => ww_devoe,
	o => \valor_compra[21]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\valor_compra[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(22),
	devoe => ww_devoe,
	o => \valor_compra[22]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\valor_compra[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(23),
	devoe => ww_devoe,
	o => \valor_compra[23]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\valor_compra[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(24),
	devoe => ww_devoe,
	o => \valor_compra[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\valor_compra[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(25),
	devoe => ww_devoe,
	o => \valor_compra[25]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\valor_compra[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(26),
	devoe => ww_devoe,
	o => \valor_compra[26]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\valor_compra[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(27),
	devoe => ww_devoe,
	o => \valor_compra[27]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\valor_compra[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(28),
	devoe => ww_devoe,
	o => \valor_compra[28]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\valor_compra[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(29),
	devoe => ww_devoe,
	o => \valor_compra[29]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\valor_compra[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(30),
	devoe => ww_devoe,
	o => \valor_compra[30]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\valor_compra[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_Total_Reg|valor_compra\(31),
	devoe => ww_devoe,
	o => \valor_compra[31]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\quantidade_itens[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(0),
	devoe => ww_devoe,
	o => \quantidade_itens[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\quantidade_itens[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(1),
	devoe => ww_devoe,
	o => \quantidade_itens[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\quantidade_itens[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(2),
	devoe => ww_devoe,
	o => \quantidade_itens[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\quantidade_itens[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(3),
	devoe => ww_devoe,
	o => \quantidade_itens[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\quantidade_itens[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(4),
	devoe => ww_devoe,
	o => \quantidade_itens[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\quantidade_itens[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(5),
	devoe => ww_devoe,
	o => \quantidade_itens[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\quantidade_itens[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J_Total_Itens_Reg|quantidade_itens\(6),
	devoe => ww_devoe,
	o => \quantidade_itens[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\total_itens_lt_32~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \K_Comparador_Itens|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \total_itens_lt_32~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\saldo_lt_total~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_Comparador_Saldo|LessThan0~62_combout\,
	devoe => ww_devoe,
	o => \saldo_lt_total~output_o\);

-- Location: IOIBUF_X34_Y8_N22
\saldo_cartao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(0),
	o => \saldo_cartao[0]~input_o\);

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

-- Location: IOIBUF_X9_Y0_N15
\add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add,
	o => \add~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\valor_produto[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(0),
	o => \valor_produto[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\del~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_del,
	o => \del~input_o\);

-- Location: LCCOMB_X22_Y8_N8
\B_Subtrator_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~0_combout\ = \valor_produto[0]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \valor_produto[0]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\D_Total_Reg|valor_compra[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[0]~33_cout\ = CARRY((\del~input_o\) # (!\add~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datab => \add~input_o\,
	datad => VCC,
	cout => \D_Total_Reg|valor_compra[0]~33_cout\);

-- Location: LCCOMB_X22_Y8_N18
\D_Total_Reg|valor_compra[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[0]~34_combout\ = (\B_Subtrator_1|Add0~0_combout\ & ((\D_Total_Reg|valor_compra\(0) & (!\D_Total_Reg|valor_compra[0]~33_cout\)) # (!\D_Total_Reg|valor_compra\(0) & ((\D_Total_Reg|valor_compra[0]~33_cout\) # (GND))))) # 
-- (!\B_Subtrator_1|Add0~0_combout\ & ((\D_Total_Reg|valor_compra\(0) & (\D_Total_Reg|valor_compra[0]~33_cout\ & VCC)) # (!\D_Total_Reg|valor_compra\(0) & (!\D_Total_Reg|valor_compra[0]~33_cout\))))
-- \D_Total_Reg|valor_compra[0]~35\ = CARRY((\B_Subtrator_1|Add0~0_combout\ & ((!\D_Total_Reg|valor_compra[0]~33_cout\) # (!\D_Total_Reg|valor_compra\(0)))) # (!\B_Subtrator_1|Add0~0_combout\ & (!\D_Total_Reg|valor_compra\(0) & 
-- !\D_Total_Reg|valor_compra[0]~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~0_combout\,
	datab => \D_Total_Reg|valor_compra\(0),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[0]~33_cout\,
	combout => \D_Total_Reg|valor_compra[0]~34_combout\,
	cout => \D_Total_Reg|valor_compra[0]~35\);

-- Location: IOIBUF_X0_Y11_N15
\clr_total~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr_total,
	o => \clr_total~input_o\);

-- Location: CLKCTRL_G4
\clr_total~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr_total~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr_total~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y24_N15
\ld_total~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_total,
	o => \ld_total~input_o\);

-- Location: LCCOMB_X22_Y8_N6
\D_Total_Reg|valor_compra[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[31]~36_combout\ = (\ld_total~input_o\ & (\del~input_o\ $ (\add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datac => \add~input_o\,
	datad => \ld_total~input_o\,
	combout => \D_Total_Reg|valor_compra[31]~36_combout\);

-- Location: FF_X22_Y8_N19
\D_Total_Reg|valor_compra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[0]~34_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(0));

-- Location: LCCOMB_X26_Y8_N0
\E_Subtrator_2|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[0]~0_combout\ = (\saldo_cartao[0]~input_o\ & ((GND) # (!\D_Total_Reg|valor_compra\(0)))) # (!\saldo_cartao[0]~input_o\ & (\D_Total_Reg|valor_compra\(0) $ (GND)))
-- \E_Subtrator_2|s[0]~1\ = CARRY((\saldo_cartao[0]~input_o\) # (!\D_Total_Reg|valor_compra\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[0]~input_o\,
	datab => \D_Total_Reg|valor_compra\(0),
	datad => VCC,
	combout => \E_Subtrator_2|s[0]~0_combout\,
	cout => \E_Subtrator_2|s[0]~1\);

-- Location: IOIBUF_X11_Y24_N1
\valor_produto[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(1),
	o => \valor_produto[1]~input_o\);

-- Location: LCCOMB_X22_Y8_N12
\B_Subtrator_1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~1_combout\ = \valor_produto[1]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[1]~input_o\,
	combout => \B_Subtrator_1|Add0~1_combout\);

-- Location: LCCOMB_X22_Y8_N20
\D_Total_Reg|valor_compra[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[1]~37_combout\ = ((\B_Subtrator_1|Add0~1_combout\ $ (\D_Total_Reg|valor_compra\(1) $ (\D_Total_Reg|valor_compra[0]~35\)))) # (GND)
-- \D_Total_Reg|valor_compra[1]~38\ = CARRY((\B_Subtrator_1|Add0~1_combout\ & (\D_Total_Reg|valor_compra\(1) & !\D_Total_Reg|valor_compra[0]~35\)) # (!\B_Subtrator_1|Add0~1_combout\ & ((\D_Total_Reg|valor_compra\(1)) # (!\D_Total_Reg|valor_compra[0]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~1_combout\,
	datab => \D_Total_Reg|valor_compra\(1),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[0]~35\,
	combout => \D_Total_Reg|valor_compra[1]~37_combout\,
	cout => \D_Total_Reg|valor_compra[1]~38\);

-- Location: FF_X22_Y8_N21
\D_Total_Reg|valor_compra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[1]~37_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(1));

-- Location: IOIBUF_X0_Y9_N8
\saldo_cartao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(1),
	o => \saldo_cartao[1]~input_o\);

-- Location: LCCOMB_X26_Y8_N2
\E_Subtrator_2|s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[1]~2_combout\ = (\D_Total_Reg|valor_compra\(1) & ((\saldo_cartao[1]~input_o\ & (!\E_Subtrator_2|s[0]~1\)) # (!\saldo_cartao[1]~input_o\ & ((\E_Subtrator_2|s[0]~1\) # (GND))))) # (!\D_Total_Reg|valor_compra\(1) & 
-- ((\saldo_cartao[1]~input_o\ & (\E_Subtrator_2|s[0]~1\ & VCC)) # (!\saldo_cartao[1]~input_o\ & (!\E_Subtrator_2|s[0]~1\))))
-- \E_Subtrator_2|s[1]~3\ = CARRY((\D_Total_Reg|valor_compra\(1) & ((!\E_Subtrator_2|s[0]~1\) # (!\saldo_cartao[1]~input_o\))) # (!\D_Total_Reg|valor_compra\(1) & (!\saldo_cartao[1]~input_o\ & !\E_Subtrator_2|s[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(1),
	datab => \saldo_cartao[1]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[0]~1\,
	combout => \E_Subtrator_2|s[1]~2_combout\,
	cout => \E_Subtrator_2|s[1]~3\);

-- Location: IOIBUF_X34_Y12_N22
\saldo_cartao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(2),
	o => \saldo_cartao[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\valor_produto[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(2),
	o => \valor_produto[2]~input_o\);

-- Location: LCCOMB_X22_Y8_N2
\B_Subtrator_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~2_combout\ = \valor_produto[2]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \valor_produto[2]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~2_combout\);

-- Location: LCCOMB_X22_Y8_N22
\D_Total_Reg|valor_compra[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[2]~39_combout\ = (\D_Total_Reg|valor_compra\(2) & ((\B_Subtrator_1|Add0~2_combout\ & (!\D_Total_Reg|valor_compra[1]~38\)) # (!\B_Subtrator_1|Add0~2_combout\ & (\D_Total_Reg|valor_compra[1]~38\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(2) & ((\B_Subtrator_1|Add0~2_combout\ & ((\D_Total_Reg|valor_compra[1]~38\) # (GND))) # (!\B_Subtrator_1|Add0~2_combout\ & (!\D_Total_Reg|valor_compra[1]~38\))))
-- \D_Total_Reg|valor_compra[2]~40\ = CARRY((\D_Total_Reg|valor_compra\(2) & (\B_Subtrator_1|Add0~2_combout\ & !\D_Total_Reg|valor_compra[1]~38\)) # (!\D_Total_Reg|valor_compra\(2) & ((\B_Subtrator_1|Add0~2_combout\) # (!\D_Total_Reg|valor_compra[1]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(2),
	datab => \B_Subtrator_1|Add0~2_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[1]~38\,
	combout => \D_Total_Reg|valor_compra[2]~39_combout\,
	cout => \D_Total_Reg|valor_compra[2]~40\);

-- Location: FF_X22_Y8_N23
\D_Total_Reg|valor_compra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[2]~39_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(2));

-- Location: LCCOMB_X26_Y8_N4
\E_Subtrator_2|s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[2]~4_combout\ = ((\saldo_cartao[2]~input_o\ $ (\D_Total_Reg|valor_compra\(2) $ (\E_Subtrator_2|s[1]~3\)))) # (GND)
-- \E_Subtrator_2|s[2]~5\ = CARRY((\saldo_cartao[2]~input_o\ & ((!\E_Subtrator_2|s[1]~3\) # (!\D_Total_Reg|valor_compra\(2)))) # (!\saldo_cartao[2]~input_o\ & (!\D_Total_Reg|valor_compra\(2) & !\E_Subtrator_2|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[2]~input_o\,
	datab => \D_Total_Reg|valor_compra\(2),
	datad => VCC,
	cin => \E_Subtrator_2|s[1]~3\,
	combout => \E_Subtrator_2|s[2]~4_combout\,
	cout => \E_Subtrator_2|s[2]~5\);

-- Location: IOIBUF_X34_Y12_N15
\saldo_cartao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(3),
	o => \saldo_cartao[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\valor_produto[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(3),
	o => \valor_produto[3]~input_o\);

-- Location: LCCOMB_X22_Y8_N4
\B_Subtrator_1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~3_combout\ = \valor_produto[3]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[3]~input_o\,
	combout => \B_Subtrator_1|Add0~3_combout\);

-- Location: LCCOMB_X22_Y8_N24
\D_Total_Reg|valor_compra[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[3]~41_combout\ = ((\B_Subtrator_1|Add0~3_combout\ $ (\D_Total_Reg|valor_compra\(3) $ (\D_Total_Reg|valor_compra[2]~40\)))) # (GND)
-- \D_Total_Reg|valor_compra[3]~42\ = CARRY((\B_Subtrator_1|Add0~3_combout\ & (\D_Total_Reg|valor_compra\(3) & !\D_Total_Reg|valor_compra[2]~40\)) # (!\B_Subtrator_1|Add0~3_combout\ & ((\D_Total_Reg|valor_compra\(3)) # (!\D_Total_Reg|valor_compra[2]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~3_combout\,
	datab => \D_Total_Reg|valor_compra\(3),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[2]~40\,
	combout => \D_Total_Reg|valor_compra[3]~41_combout\,
	cout => \D_Total_Reg|valor_compra[3]~42\);

-- Location: FF_X22_Y8_N25
\D_Total_Reg|valor_compra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[3]~41_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(3));

-- Location: LCCOMB_X26_Y8_N6
\E_Subtrator_2|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[3]~6_combout\ = (\saldo_cartao[3]~input_o\ & ((\D_Total_Reg|valor_compra\(3) & (!\E_Subtrator_2|s[2]~5\)) # (!\D_Total_Reg|valor_compra\(3) & (\E_Subtrator_2|s[2]~5\ & VCC)))) # (!\saldo_cartao[3]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(3) & ((\E_Subtrator_2|s[2]~5\) # (GND))) # (!\D_Total_Reg|valor_compra\(3) & (!\E_Subtrator_2|s[2]~5\))))
-- \E_Subtrator_2|s[3]~7\ = CARRY((\saldo_cartao[3]~input_o\ & (\D_Total_Reg|valor_compra\(3) & !\E_Subtrator_2|s[2]~5\)) # (!\saldo_cartao[3]~input_o\ & ((\D_Total_Reg|valor_compra\(3)) # (!\E_Subtrator_2|s[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[3]~input_o\,
	datab => \D_Total_Reg|valor_compra\(3),
	datad => VCC,
	cin => \E_Subtrator_2|s[2]~5\,
	combout => \E_Subtrator_2|s[3]~6_combout\,
	cout => \E_Subtrator_2|s[3]~7\);

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

-- Location: IOIBUF_X21_Y24_N15
\valor_produto[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(4),
	o => \valor_produto[4]~input_o\);

-- Location: LCCOMB_X22_Y8_N10
\B_Subtrator_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~4_combout\ = \valor_produto[4]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[4]~input_o\,
	combout => \B_Subtrator_1|Add0~4_combout\);

-- Location: LCCOMB_X22_Y8_N26
\D_Total_Reg|valor_compra[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[4]~43_combout\ = (\D_Total_Reg|valor_compra\(4) & ((\B_Subtrator_1|Add0~4_combout\ & (!\D_Total_Reg|valor_compra[3]~42\)) # (!\B_Subtrator_1|Add0~4_combout\ & (\D_Total_Reg|valor_compra[3]~42\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(4) & ((\B_Subtrator_1|Add0~4_combout\ & ((\D_Total_Reg|valor_compra[3]~42\) # (GND))) # (!\B_Subtrator_1|Add0~4_combout\ & (!\D_Total_Reg|valor_compra[3]~42\))))
-- \D_Total_Reg|valor_compra[4]~44\ = CARRY((\D_Total_Reg|valor_compra\(4) & (\B_Subtrator_1|Add0~4_combout\ & !\D_Total_Reg|valor_compra[3]~42\)) # (!\D_Total_Reg|valor_compra\(4) & ((\B_Subtrator_1|Add0~4_combout\) # (!\D_Total_Reg|valor_compra[3]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(4),
	datab => \B_Subtrator_1|Add0~4_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[3]~42\,
	combout => \D_Total_Reg|valor_compra[4]~43_combout\,
	cout => \D_Total_Reg|valor_compra[4]~44\);

-- Location: FF_X22_Y8_N27
\D_Total_Reg|valor_compra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[4]~43_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(4));

-- Location: LCCOMB_X26_Y8_N8
\E_Subtrator_2|s[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[4]~8_combout\ = ((\saldo_cartao[4]~input_o\ $ (\D_Total_Reg|valor_compra\(4) $ (\E_Subtrator_2|s[3]~7\)))) # (GND)
-- \E_Subtrator_2|s[4]~9\ = CARRY((\saldo_cartao[4]~input_o\ & ((!\E_Subtrator_2|s[3]~7\) # (!\D_Total_Reg|valor_compra\(4)))) # (!\saldo_cartao[4]~input_o\ & (!\D_Total_Reg|valor_compra\(4) & !\E_Subtrator_2|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[4]~input_o\,
	datab => \D_Total_Reg|valor_compra\(4),
	datad => VCC,
	cin => \E_Subtrator_2|s[3]~7\,
	combout => \E_Subtrator_2|s[4]~8_combout\,
	cout => \E_Subtrator_2|s[4]~9\);

-- Location: IOIBUF_X16_Y24_N15
\valor_produto[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(5),
	o => \valor_produto[5]~input_o\);

-- Location: LCCOMB_X22_Y8_N0
\B_Subtrator_1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~5_combout\ = \valor_produto[5]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[5]~input_o\,
	combout => \B_Subtrator_1|Add0~5_combout\);

-- Location: LCCOMB_X22_Y8_N28
\D_Total_Reg|valor_compra[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[5]~45_combout\ = ((\B_Subtrator_1|Add0~5_combout\ $ (\D_Total_Reg|valor_compra\(5) $ (\D_Total_Reg|valor_compra[4]~44\)))) # (GND)
-- \D_Total_Reg|valor_compra[5]~46\ = CARRY((\B_Subtrator_1|Add0~5_combout\ & (\D_Total_Reg|valor_compra\(5) & !\D_Total_Reg|valor_compra[4]~44\)) # (!\B_Subtrator_1|Add0~5_combout\ & ((\D_Total_Reg|valor_compra\(5)) # (!\D_Total_Reg|valor_compra[4]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~5_combout\,
	datab => \D_Total_Reg|valor_compra\(5),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[4]~44\,
	combout => \D_Total_Reg|valor_compra[5]~45_combout\,
	cout => \D_Total_Reg|valor_compra[5]~46\);

-- Location: FF_X22_Y8_N29
\D_Total_Reg|valor_compra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[5]~45_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(5));

-- Location: IOIBUF_X34_Y17_N15
\saldo_cartao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(5),
	o => \saldo_cartao[5]~input_o\);

-- Location: LCCOMB_X26_Y8_N10
\E_Subtrator_2|s[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[5]~10_combout\ = (\D_Total_Reg|valor_compra\(5) & ((\saldo_cartao[5]~input_o\ & (!\E_Subtrator_2|s[4]~9\)) # (!\saldo_cartao[5]~input_o\ & ((\E_Subtrator_2|s[4]~9\) # (GND))))) # (!\D_Total_Reg|valor_compra\(5) & 
-- ((\saldo_cartao[5]~input_o\ & (\E_Subtrator_2|s[4]~9\ & VCC)) # (!\saldo_cartao[5]~input_o\ & (!\E_Subtrator_2|s[4]~9\))))
-- \E_Subtrator_2|s[5]~11\ = CARRY((\D_Total_Reg|valor_compra\(5) & ((!\E_Subtrator_2|s[4]~9\) # (!\saldo_cartao[5]~input_o\))) # (!\D_Total_Reg|valor_compra\(5) & (!\saldo_cartao[5]~input_o\ & !\E_Subtrator_2|s[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(5),
	datab => \saldo_cartao[5]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[4]~9\,
	combout => \E_Subtrator_2|s[5]~10_combout\,
	cout => \E_Subtrator_2|s[5]~11\);

-- Location: IOIBUF_X25_Y24_N22
\saldo_cartao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(6),
	o => \saldo_cartao[6]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\valor_produto[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(6),
	o => \valor_produto[6]~input_o\);

-- Location: LCCOMB_X22_Y8_N14
\B_Subtrator_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~6_combout\ = \valor_produto[6]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \valor_produto[6]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~6_combout\);

-- Location: LCCOMB_X22_Y8_N30
\D_Total_Reg|valor_compra[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[6]~47_combout\ = (\D_Total_Reg|valor_compra\(6) & ((\B_Subtrator_1|Add0~6_combout\ & (!\D_Total_Reg|valor_compra[5]~46\)) # (!\B_Subtrator_1|Add0~6_combout\ & (\D_Total_Reg|valor_compra[5]~46\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(6) & ((\B_Subtrator_1|Add0~6_combout\ & ((\D_Total_Reg|valor_compra[5]~46\) # (GND))) # (!\B_Subtrator_1|Add0~6_combout\ & (!\D_Total_Reg|valor_compra[5]~46\))))
-- \D_Total_Reg|valor_compra[6]~48\ = CARRY((\D_Total_Reg|valor_compra\(6) & (\B_Subtrator_1|Add0~6_combout\ & !\D_Total_Reg|valor_compra[5]~46\)) # (!\D_Total_Reg|valor_compra\(6) & ((\B_Subtrator_1|Add0~6_combout\) # (!\D_Total_Reg|valor_compra[5]~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(6),
	datab => \B_Subtrator_1|Add0~6_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[5]~46\,
	combout => \D_Total_Reg|valor_compra[6]~47_combout\,
	cout => \D_Total_Reg|valor_compra[6]~48\);

-- Location: FF_X22_Y8_N31
\D_Total_Reg|valor_compra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[6]~47_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(6));

-- Location: LCCOMB_X26_Y8_N12
\E_Subtrator_2|s[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[6]~12_combout\ = ((\saldo_cartao[6]~input_o\ $ (\D_Total_Reg|valor_compra\(6) $ (\E_Subtrator_2|s[5]~11\)))) # (GND)
-- \E_Subtrator_2|s[6]~13\ = CARRY((\saldo_cartao[6]~input_o\ & ((!\E_Subtrator_2|s[5]~11\) # (!\D_Total_Reg|valor_compra\(6)))) # (!\saldo_cartao[6]~input_o\ & (!\D_Total_Reg|valor_compra\(6) & !\E_Subtrator_2|s[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[6]~input_o\,
	datab => \D_Total_Reg|valor_compra\(6),
	datad => VCC,
	cin => \E_Subtrator_2|s[5]~11\,
	combout => \E_Subtrator_2|s[6]~12_combout\,
	cout => \E_Subtrator_2|s[6]~13\);

-- Location: IOIBUF_X11_Y24_N8
\valor_produto[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(7),
	o => \valor_produto[7]~input_o\);

-- Location: LCCOMB_X21_Y7_N16
\B_Subtrator_1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~7_combout\ = \valor_produto[7]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[7]~input_o\,
	combout => \B_Subtrator_1|Add0~7_combout\);

-- Location: LCCOMB_X22_Y7_N0
\D_Total_Reg|valor_compra[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[7]~49_combout\ = ((\B_Subtrator_1|Add0~7_combout\ $ (\D_Total_Reg|valor_compra\(7) $ (\D_Total_Reg|valor_compra[6]~48\)))) # (GND)
-- \D_Total_Reg|valor_compra[7]~50\ = CARRY((\B_Subtrator_1|Add0~7_combout\ & (\D_Total_Reg|valor_compra\(7) & !\D_Total_Reg|valor_compra[6]~48\)) # (!\B_Subtrator_1|Add0~7_combout\ & ((\D_Total_Reg|valor_compra\(7)) # (!\D_Total_Reg|valor_compra[6]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~7_combout\,
	datab => \D_Total_Reg|valor_compra\(7),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[6]~48\,
	combout => \D_Total_Reg|valor_compra[7]~49_combout\,
	cout => \D_Total_Reg|valor_compra[7]~50\);

-- Location: FF_X22_Y7_N1
\D_Total_Reg|valor_compra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[7]~49_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(7));

-- Location: IOIBUF_X34_Y9_N15
\saldo_cartao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(7),
	o => \saldo_cartao[7]~input_o\);

-- Location: LCCOMB_X26_Y8_N14
\E_Subtrator_2|s[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[7]~14_combout\ = (\D_Total_Reg|valor_compra\(7) & ((\saldo_cartao[7]~input_o\ & (!\E_Subtrator_2|s[6]~13\)) # (!\saldo_cartao[7]~input_o\ & ((\E_Subtrator_2|s[6]~13\) # (GND))))) # (!\D_Total_Reg|valor_compra\(7) & 
-- ((\saldo_cartao[7]~input_o\ & (\E_Subtrator_2|s[6]~13\ & VCC)) # (!\saldo_cartao[7]~input_o\ & (!\E_Subtrator_2|s[6]~13\))))
-- \E_Subtrator_2|s[7]~15\ = CARRY((\D_Total_Reg|valor_compra\(7) & ((!\E_Subtrator_2|s[6]~13\) # (!\saldo_cartao[7]~input_o\))) # (!\D_Total_Reg|valor_compra\(7) & (!\saldo_cartao[7]~input_o\ & !\E_Subtrator_2|s[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(7),
	datab => \saldo_cartao[7]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[6]~13\,
	combout => \E_Subtrator_2|s[7]~14_combout\,
	cout => \E_Subtrator_2|s[7]~15\);

-- Location: IOIBUF_X13_Y0_N22
\valor_produto[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(8),
	o => \valor_produto[8]~input_o\);

-- Location: LCCOMB_X21_Y7_N10
\B_Subtrator_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~8_combout\ = \valor_produto[8]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[8]~input_o\,
	combout => \B_Subtrator_1|Add0~8_combout\);

-- Location: LCCOMB_X22_Y7_N2
\D_Total_Reg|valor_compra[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[8]~51_combout\ = (\B_Subtrator_1|Add0~8_combout\ & ((\D_Total_Reg|valor_compra\(8) & (!\D_Total_Reg|valor_compra[7]~50\)) # (!\D_Total_Reg|valor_compra\(8) & ((\D_Total_Reg|valor_compra[7]~50\) # (GND))))) # 
-- (!\B_Subtrator_1|Add0~8_combout\ & ((\D_Total_Reg|valor_compra\(8) & (\D_Total_Reg|valor_compra[7]~50\ & VCC)) # (!\D_Total_Reg|valor_compra\(8) & (!\D_Total_Reg|valor_compra[7]~50\))))
-- \D_Total_Reg|valor_compra[8]~52\ = CARRY((\B_Subtrator_1|Add0~8_combout\ & ((!\D_Total_Reg|valor_compra[7]~50\) # (!\D_Total_Reg|valor_compra\(8)))) # (!\B_Subtrator_1|Add0~8_combout\ & (!\D_Total_Reg|valor_compra\(8) & 
-- !\D_Total_Reg|valor_compra[7]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~8_combout\,
	datab => \D_Total_Reg|valor_compra\(8),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[7]~50\,
	combout => \D_Total_Reg|valor_compra[8]~51_combout\,
	cout => \D_Total_Reg|valor_compra[8]~52\);

-- Location: FF_X22_Y7_N3
\D_Total_Reg|valor_compra[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[8]~51_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(8));

-- Location: IOIBUF_X34_Y9_N1
\saldo_cartao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(8),
	o => \saldo_cartao[8]~input_o\);

-- Location: LCCOMB_X26_Y8_N16
\E_Subtrator_2|s[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[8]~16_combout\ = ((\D_Total_Reg|valor_compra\(8) $ (\saldo_cartao[8]~input_o\ $ (\E_Subtrator_2|s[7]~15\)))) # (GND)
-- \E_Subtrator_2|s[8]~17\ = CARRY((\D_Total_Reg|valor_compra\(8) & (\saldo_cartao[8]~input_o\ & !\E_Subtrator_2|s[7]~15\)) # (!\D_Total_Reg|valor_compra\(8) & ((\saldo_cartao[8]~input_o\) # (!\E_Subtrator_2|s[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(8),
	datab => \saldo_cartao[8]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[7]~15\,
	combout => \E_Subtrator_2|s[8]~16_combout\,
	cout => \E_Subtrator_2|s[8]~17\);

-- Location: IOIBUF_X25_Y24_N15
\saldo_cartao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(9),
	o => \saldo_cartao[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\valor_produto[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(9),
	o => \valor_produto[9]~input_o\);

-- Location: LCCOMB_X21_Y7_N24
\B_Subtrator_1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~9_combout\ = \valor_produto[9]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[9]~input_o\,
	combout => \B_Subtrator_1|Add0~9_combout\);

-- Location: LCCOMB_X22_Y7_N4
\D_Total_Reg|valor_compra[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[9]~53_combout\ = ((\B_Subtrator_1|Add0~9_combout\ $ (\D_Total_Reg|valor_compra\(9) $ (\D_Total_Reg|valor_compra[8]~52\)))) # (GND)
-- \D_Total_Reg|valor_compra[9]~54\ = CARRY((\B_Subtrator_1|Add0~9_combout\ & (\D_Total_Reg|valor_compra\(9) & !\D_Total_Reg|valor_compra[8]~52\)) # (!\B_Subtrator_1|Add0~9_combout\ & ((\D_Total_Reg|valor_compra\(9)) # (!\D_Total_Reg|valor_compra[8]~52\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~9_combout\,
	datab => \D_Total_Reg|valor_compra\(9),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[8]~52\,
	combout => \D_Total_Reg|valor_compra[9]~53_combout\,
	cout => \D_Total_Reg|valor_compra[9]~54\);

-- Location: FF_X22_Y7_N5
\D_Total_Reg|valor_compra[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[9]~53_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(9));

-- Location: LCCOMB_X26_Y8_N18
\E_Subtrator_2|s[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[9]~18_combout\ = (\saldo_cartao[9]~input_o\ & ((\D_Total_Reg|valor_compra\(9) & (!\E_Subtrator_2|s[8]~17\)) # (!\D_Total_Reg|valor_compra\(9) & (\E_Subtrator_2|s[8]~17\ & VCC)))) # (!\saldo_cartao[9]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(9) & ((\E_Subtrator_2|s[8]~17\) # (GND))) # (!\D_Total_Reg|valor_compra\(9) & (!\E_Subtrator_2|s[8]~17\))))
-- \E_Subtrator_2|s[9]~19\ = CARRY((\saldo_cartao[9]~input_o\ & (\D_Total_Reg|valor_compra\(9) & !\E_Subtrator_2|s[8]~17\)) # (!\saldo_cartao[9]~input_o\ & ((\D_Total_Reg|valor_compra\(9)) # (!\E_Subtrator_2|s[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[9]~input_o\,
	datab => \D_Total_Reg|valor_compra\(9),
	datad => VCC,
	cin => \E_Subtrator_2|s[8]~17\,
	combout => \E_Subtrator_2|s[9]~18_combout\,
	cout => \E_Subtrator_2|s[9]~19\);

-- Location: IOIBUF_X28_Y24_N15
\saldo_cartao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(10),
	o => \saldo_cartao[10]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\valor_produto[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(10),
	o => \valor_produto[10]~input_o\);

-- Location: LCCOMB_X8_Y4_N30
\B_Subtrator_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~10_combout\ = \valor_produto[10]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \valor_produto[10]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~10_combout\);

-- Location: LCCOMB_X22_Y7_N6
\D_Total_Reg|valor_compra[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[10]~55_combout\ = (\D_Total_Reg|valor_compra\(10) & ((\B_Subtrator_1|Add0~10_combout\ & (!\D_Total_Reg|valor_compra[9]~54\)) # (!\B_Subtrator_1|Add0~10_combout\ & (\D_Total_Reg|valor_compra[9]~54\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(10) & ((\B_Subtrator_1|Add0~10_combout\ & ((\D_Total_Reg|valor_compra[9]~54\) # (GND))) # (!\B_Subtrator_1|Add0~10_combout\ & (!\D_Total_Reg|valor_compra[9]~54\))))
-- \D_Total_Reg|valor_compra[10]~56\ = CARRY((\D_Total_Reg|valor_compra\(10) & (\B_Subtrator_1|Add0~10_combout\ & !\D_Total_Reg|valor_compra[9]~54\)) # (!\D_Total_Reg|valor_compra\(10) & ((\B_Subtrator_1|Add0~10_combout\) # 
-- (!\D_Total_Reg|valor_compra[9]~54\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(10),
	datab => \B_Subtrator_1|Add0~10_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[9]~54\,
	combout => \D_Total_Reg|valor_compra[10]~55_combout\,
	cout => \D_Total_Reg|valor_compra[10]~56\);

-- Location: FF_X22_Y7_N7
\D_Total_Reg|valor_compra[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[10]~55_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(10));

-- Location: LCCOMB_X26_Y8_N20
\E_Subtrator_2|s[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[10]~20_combout\ = ((\saldo_cartao[10]~input_o\ $ (\D_Total_Reg|valor_compra\(10) $ (\E_Subtrator_2|s[9]~19\)))) # (GND)
-- \E_Subtrator_2|s[10]~21\ = CARRY((\saldo_cartao[10]~input_o\ & ((!\E_Subtrator_2|s[9]~19\) # (!\D_Total_Reg|valor_compra\(10)))) # (!\saldo_cartao[10]~input_o\ & (!\D_Total_Reg|valor_compra\(10) & !\E_Subtrator_2|s[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[10]~input_o\,
	datab => \D_Total_Reg|valor_compra\(10),
	datad => VCC,
	cin => \E_Subtrator_2|s[9]~19\,
	combout => \E_Subtrator_2|s[10]~20_combout\,
	cout => \E_Subtrator_2|s[10]~21\);

-- Location: IOIBUF_X28_Y24_N8
\saldo_cartao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(11),
	o => \saldo_cartao[11]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\valor_produto[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(11),
	o => \valor_produto[11]~input_o\);

-- Location: LCCOMB_X21_Y7_N26
\B_Subtrator_1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~11_combout\ = \valor_produto[11]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[11]~input_o\,
	combout => \B_Subtrator_1|Add0~11_combout\);

-- Location: LCCOMB_X22_Y7_N8
\D_Total_Reg|valor_compra[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[11]~57_combout\ = ((\B_Subtrator_1|Add0~11_combout\ $ (\D_Total_Reg|valor_compra\(11) $ (\D_Total_Reg|valor_compra[10]~56\)))) # (GND)
-- \D_Total_Reg|valor_compra[11]~58\ = CARRY((\B_Subtrator_1|Add0~11_combout\ & (\D_Total_Reg|valor_compra\(11) & !\D_Total_Reg|valor_compra[10]~56\)) # (!\B_Subtrator_1|Add0~11_combout\ & ((\D_Total_Reg|valor_compra\(11)) # 
-- (!\D_Total_Reg|valor_compra[10]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~11_combout\,
	datab => \D_Total_Reg|valor_compra\(11),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[10]~56\,
	combout => \D_Total_Reg|valor_compra[11]~57_combout\,
	cout => \D_Total_Reg|valor_compra[11]~58\);

-- Location: FF_X22_Y7_N9
\D_Total_Reg|valor_compra[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[11]~57_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(11));

-- Location: LCCOMB_X26_Y8_N22
\E_Subtrator_2|s[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[11]~22_combout\ = (\saldo_cartao[11]~input_o\ & ((\D_Total_Reg|valor_compra\(11) & (!\E_Subtrator_2|s[10]~21\)) # (!\D_Total_Reg|valor_compra\(11) & (\E_Subtrator_2|s[10]~21\ & VCC)))) # (!\saldo_cartao[11]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(11) & ((\E_Subtrator_2|s[10]~21\) # (GND))) # (!\D_Total_Reg|valor_compra\(11) & (!\E_Subtrator_2|s[10]~21\))))
-- \E_Subtrator_2|s[11]~23\ = CARRY((\saldo_cartao[11]~input_o\ & (\D_Total_Reg|valor_compra\(11) & !\E_Subtrator_2|s[10]~21\)) # (!\saldo_cartao[11]~input_o\ & ((\D_Total_Reg|valor_compra\(11)) # (!\E_Subtrator_2|s[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[11]~input_o\,
	datab => \D_Total_Reg|valor_compra\(11),
	datad => VCC,
	cin => \E_Subtrator_2|s[10]~21\,
	combout => \E_Subtrator_2|s[11]~22_combout\,
	cout => \E_Subtrator_2|s[11]~23\);

-- Location: IOIBUF_X0_Y9_N1
\saldo_cartao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(12),
	o => \saldo_cartao[12]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\valor_produto[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(12),
	o => \valor_produto[12]~input_o\);

-- Location: LCCOMB_X21_Y7_N20
\B_Subtrator_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~12_combout\ = \valor_produto[12]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[12]~input_o\,
	datab => \del~input_o\,
	datac => \add~input_o\,
	combout => \B_Subtrator_1|Add0~12_combout\);

-- Location: LCCOMB_X22_Y7_N10
\D_Total_Reg|valor_compra[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[12]~59_combout\ = (\D_Total_Reg|valor_compra\(12) & ((\B_Subtrator_1|Add0~12_combout\ & (!\D_Total_Reg|valor_compra[11]~58\)) # (!\B_Subtrator_1|Add0~12_combout\ & (\D_Total_Reg|valor_compra[11]~58\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(12) & ((\B_Subtrator_1|Add0~12_combout\ & ((\D_Total_Reg|valor_compra[11]~58\) # (GND))) # (!\B_Subtrator_1|Add0~12_combout\ & (!\D_Total_Reg|valor_compra[11]~58\))))
-- \D_Total_Reg|valor_compra[12]~60\ = CARRY((\D_Total_Reg|valor_compra\(12) & (\B_Subtrator_1|Add0~12_combout\ & !\D_Total_Reg|valor_compra[11]~58\)) # (!\D_Total_Reg|valor_compra\(12) & ((\B_Subtrator_1|Add0~12_combout\) # 
-- (!\D_Total_Reg|valor_compra[11]~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(12),
	datab => \B_Subtrator_1|Add0~12_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[11]~58\,
	combout => \D_Total_Reg|valor_compra[12]~59_combout\,
	cout => \D_Total_Reg|valor_compra[12]~60\);

-- Location: FF_X22_Y7_N11
\D_Total_Reg|valor_compra[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[12]~59_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(12));

-- Location: LCCOMB_X26_Y8_N24
\E_Subtrator_2|s[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[12]~24_combout\ = ((\saldo_cartao[12]~input_o\ $ (\D_Total_Reg|valor_compra\(12) $ (\E_Subtrator_2|s[11]~23\)))) # (GND)
-- \E_Subtrator_2|s[12]~25\ = CARRY((\saldo_cartao[12]~input_o\ & ((!\E_Subtrator_2|s[11]~23\) # (!\D_Total_Reg|valor_compra\(12)))) # (!\saldo_cartao[12]~input_o\ & (!\D_Total_Reg|valor_compra\(12) & !\E_Subtrator_2|s[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[12]~input_o\,
	datab => \D_Total_Reg|valor_compra\(12),
	datad => VCC,
	cin => \E_Subtrator_2|s[11]~23\,
	combout => \E_Subtrator_2|s[12]~24_combout\,
	cout => \E_Subtrator_2|s[12]~25\);

-- Location: IOIBUF_X34_Y8_N15
\saldo_cartao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(13),
	o => \saldo_cartao[13]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\valor_produto[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(13),
	o => \valor_produto[13]~input_o\);

-- Location: LCCOMB_X21_Y7_N30
\B_Subtrator_1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~13_combout\ = \valor_produto[13]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[13]~input_o\,
	combout => \B_Subtrator_1|Add0~13_combout\);

-- Location: LCCOMB_X22_Y7_N12
\D_Total_Reg|valor_compra[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[13]~61_combout\ = ((\D_Total_Reg|valor_compra\(13) $ (\B_Subtrator_1|Add0~13_combout\ $ (\D_Total_Reg|valor_compra[12]~60\)))) # (GND)
-- \D_Total_Reg|valor_compra[13]~62\ = CARRY((\D_Total_Reg|valor_compra\(13) & ((!\D_Total_Reg|valor_compra[12]~60\) # (!\B_Subtrator_1|Add0~13_combout\))) # (!\D_Total_Reg|valor_compra\(13) & (!\B_Subtrator_1|Add0~13_combout\ & 
-- !\D_Total_Reg|valor_compra[12]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(13),
	datab => \B_Subtrator_1|Add0~13_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[12]~60\,
	combout => \D_Total_Reg|valor_compra[13]~61_combout\,
	cout => \D_Total_Reg|valor_compra[13]~62\);

-- Location: FF_X22_Y7_N13
\D_Total_Reg|valor_compra[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[13]~61_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(13));

-- Location: LCCOMB_X26_Y8_N26
\E_Subtrator_2|s[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[13]~26_combout\ = (\saldo_cartao[13]~input_o\ & ((\D_Total_Reg|valor_compra\(13) & (!\E_Subtrator_2|s[12]~25\)) # (!\D_Total_Reg|valor_compra\(13) & (\E_Subtrator_2|s[12]~25\ & VCC)))) # (!\saldo_cartao[13]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(13) & ((\E_Subtrator_2|s[12]~25\) # (GND))) # (!\D_Total_Reg|valor_compra\(13) & (!\E_Subtrator_2|s[12]~25\))))
-- \E_Subtrator_2|s[13]~27\ = CARRY((\saldo_cartao[13]~input_o\ & (\D_Total_Reg|valor_compra\(13) & !\E_Subtrator_2|s[12]~25\)) # (!\saldo_cartao[13]~input_o\ & ((\D_Total_Reg|valor_compra\(13)) # (!\E_Subtrator_2|s[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[13]~input_o\,
	datab => \D_Total_Reg|valor_compra\(13),
	datad => VCC,
	cin => \E_Subtrator_2|s[12]~25\,
	combout => \E_Subtrator_2|s[13]~26_combout\,
	cout => \E_Subtrator_2|s[13]~27\);

-- Location: IOIBUF_X34_Y12_N1
\valor_produto[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(14),
	o => \valor_produto[14]~input_o\);

-- Location: LCCOMB_X21_Y7_N4
\B_Subtrator_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~14_combout\ = \valor_produto[14]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[14]~input_o\,
	combout => \B_Subtrator_1|Add0~14_combout\);

-- Location: LCCOMB_X22_Y7_N14
\D_Total_Reg|valor_compra[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[14]~63_combout\ = (\B_Subtrator_1|Add0~14_combout\ & ((\D_Total_Reg|valor_compra\(14) & (!\D_Total_Reg|valor_compra[13]~62\)) # (!\D_Total_Reg|valor_compra\(14) & ((\D_Total_Reg|valor_compra[13]~62\) # (GND))))) # 
-- (!\B_Subtrator_1|Add0~14_combout\ & ((\D_Total_Reg|valor_compra\(14) & (\D_Total_Reg|valor_compra[13]~62\ & VCC)) # (!\D_Total_Reg|valor_compra\(14) & (!\D_Total_Reg|valor_compra[13]~62\))))
-- \D_Total_Reg|valor_compra[14]~64\ = CARRY((\B_Subtrator_1|Add0~14_combout\ & ((!\D_Total_Reg|valor_compra[13]~62\) # (!\D_Total_Reg|valor_compra\(14)))) # (!\B_Subtrator_1|Add0~14_combout\ & (!\D_Total_Reg|valor_compra\(14) & 
-- !\D_Total_Reg|valor_compra[13]~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~14_combout\,
	datab => \D_Total_Reg|valor_compra\(14),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[13]~62\,
	combout => \D_Total_Reg|valor_compra[14]~63_combout\,
	cout => \D_Total_Reg|valor_compra[14]~64\);

-- Location: FF_X22_Y7_N15
\D_Total_Reg|valor_compra[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[14]~63_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(14));

-- Location: IOIBUF_X30_Y24_N8
\saldo_cartao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(14),
	o => \saldo_cartao[14]~input_o\);

-- Location: LCCOMB_X26_Y8_N28
\E_Subtrator_2|s[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[14]~28_combout\ = ((\D_Total_Reg|valor_compra\(14) $ (\saldo_cartao[14]~input_o\ $ (\E_Subtrator_2|s[13]~27\)))) # (GND)
-- \E_Subtrator_2|s[14]~29\ = CARRY((\D_Total_Reg|valor_compra\(14) & (\saldo_cartao[14]~input_o\ & !\E_Subtrator_2|s[13]~27\)) # (!\D_Total_Reg|valor_compra\(14) & ((\saldo_cartao[14]~input_o\) # (!\E_Subtrator_2|s[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(14),
	datab => \saldo_cartao[14]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[13]~27\,
	combout => \E_Subtrator_2|s[14]~28_combout\,
	cout => \E_Subtrator_2|s[14]~29\);

-- Location: IOIBUF_X25_Y24_N8
\saldo_cartao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(15),
	o => \saldo_cartao[15]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\valor_produto[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(15),
	o => \valor_produto[15]~input_o\);

-- Location: LCCOMB_X21_Y7_N14
\B_Subtrator_1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~15_combout\ = \valor_produto[15]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[15]~input_o\,
	combout => \B_Subtrator_1|Add0~15_combout\);

-- Location: LCCOMB_X22_Y7_N16
\D_Total_Reg|valor_compra[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[15]~65_combout\ = ((\B_Subtrator_1|Add0~15_combout\ $ (\D_Total_Reg|valor_compra\(15) $ (\D_Total_Reg|valor_compra[14]~64\)))) # (GND)
-- \D_Total_Reg|valor_compra[15]~66\ = CARRY((\B_Subtrator_1|Add0~15_combout\ & (\D_Total_Reg|valor_compra\(15) & !\D_Total_Reg|valor_compra[14]~64\)) # (!\B_Subtrator_1|Add0~15_combout\ & ((\D_Total_Reg|valor_compra\(15)) # 
-- (!\D_Total_Reg|valor_compra[14]~64\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~15_combout\,
	datab => \D_Total_Reg|valor_compra\(15),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[14]~64\,
	combout => \D_Total_Reg|valor_compra[15]~65_combout\,
	cout => \D_Total_Reg|valor_compra[15]~66\);

-- Location: FF_X22_Y7_N17
\D_Total_Reg|valor_compra[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[15]~65_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(15));

-- Location: LCCOMB_X26_Y8_N30
\E_Subtrator_2|s[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[15]~30_combout\ = (\saldo_cartao[15]~input_o\ & ((\D_Total_Reg|valor_compra\(15) & (!\E_Subtrator_2|s[14]~29\)) # (!\D_Total_Reg|valor_compra\(15) & (\E_Subtrator_2|s[14]~29\ & VCC)))) # (!\saldo_cartao[15]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(15) & ((\E_Subtrator_2|s[14]~29\) # (GND))) # (!\D_Total_Reg|valor_compra\(15) & (!\E_Subtrator_2|s[14]~29\))))
-- \E_Subtrator_2|s[15]~31\ = CARRY((\saldo_cartao[15]~input_o\ & (\D_Total_Reg|valor_compra\(15) & !\E_Subtrator_2|s[14]~29\)) # (!\saldo_cartao[15]~input_o\ & ((\D_Total_Reg|valor_compra\(15)) # (!\E_Subtrator_2|s[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[15]~input_o\,
	datab => \D_Total_Reg|valor_compra\(15),
	datad => VCC,
	cin => \E_Subtrator_2|s[14]~29\,
	combout => \E_Subtrator_2|s[15]~30_combout\,
	cout => \E_Subtrator_2|s[15]~31\);

-- Location: IOIBUF_X5_Y0_N15
\valor_produto[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(16),
	o => \valor_produto[16]~input_o\);

-- Location: LCCOMB_X8_Y4_N4
\B_Subtrator_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~16_combout\ = \valor_produto[16]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \valor_produto[16]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~16_combout\);

-- Location: LCCOMB_X22_Y7_N18
\D_Total_Reg|valor_compra[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[16]~67_combout\ = (\B_Subtrator_1|Add0~16_combout\ & ((\D_Total_Reg|valor_compra\(16) & (!\D_Total_Reg|valor_compra[15]~66\)) # (!\D_Total_Reg|valor_compra\(16) & ((\D_Total_Reg|valor_compra[15]~66\) # (GND))))) # 
-- (!\B_Subtrator_1|Add0~16_combout\ & ((\D_Total_Reg|valor_compra\(16) & (\D_Total_Reg|valor_compra[15]~66\ & VCC)) # (!\D_Total_Reg|valor_compra\(16) & (!\D_Total_Reg|valor_compra[15]~66\))))
-- \D_Total_Reg|valor_compra[16]~68\ = CARRY((\B_Subtrator_1|Add0~16_combout\ & ((!\D_Total_Reg|valor_compra[15]~66\) # (!\D_Total_Reg|valor_compra\(16)))) # (!\B_Subtrator_1|Add0~16_combout\ & (!\D_Total_Reg|valor_compra\(16) & 
-- !\D_Total_Reg|valor_compra[15]~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~16_combout\,
	datab => \D_Total_Reg|valor_compra\(16),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[15]~66\,
	combout => \D_Total_Reg|valor_compra[16]~67_combout\,
	cout => \D_Total_Reg|valor_compra[16]~68\);

-- Location: FF_X22_Y7_N19
\D_Total_Reg|valor_compra[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[16]~67_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(16));

-- Location: IOIBUF_X28_Y0_N8
\saldo_cartao[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(16),
	o => \saldo_cartao[16]~input_o\);

-- Location: LCCOMB_X26_Y7_N0
\E_Subtrator_2|s[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[16]~32_combout\ = ((\D_Total_Reg|valor_compra\(16) $ (\saldo_cartao[16]~input_o\ $ (\E_Subtrator_2|s[15]~31\)))) # (GND)
-- \E_Subtrator_2|s[16]~33\ = CARRY((\D_Total_Reg|valor_compra\(16) & (\saldo_cartao[16]~input_o\ & !\E_Subtrator_2|s[15]~31\)) # (!\D_Total_Reg|valor_compra\(16) & ((\saldo_cartao[16]~input_o\) # (!\E_Subtrator_2|s[15]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(16),
	datab => \saldo_cartao[16]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[15]~31\,
	combout => \E_Subtrator_2|s[16]~32_combout\,
	cout => \E_Subtrator_2|s[16]~33\);

-- Location: IOIBUF_X16_Y0_N15
\valor_produto[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(17),
	o => \valor_produto[17]~input_o\);

-- Location: LCCOMB_X21_Y7_N12
\B_Subtrator_1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~17_combout\ = \valor_produto[17]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[17]~input_o\,
	combout => \B_Subtrator_1|Add0~17_combout\);

-- Location: LCCOMB_X22_Y7_N20
\D_Total_Reg|valor_compra[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[17]~69_combout\ = ((\B_Subtrator_1|Add0~17_combout\ $ (\D_Total_Reg|valor_compra\(17) $ (\D_Total_Reg|valor_compra[16]~68\)))) # (GND)
-- \D_Total_Reg|valor_compra[17]~70\ = CARRY((\B_Subtrator_1|Add0~17_combout\ & (\D_Total_Reg|valor_compra\(17) & !\D_Total_Reg|valor_compra[16]~68\)) # (!\B_Subtrator_1|Add0~17_combout\ & ((\D_Total_Reg|valor_compra\(17)) # 
-- (!\D_Total_Reg|valor_compra[16]~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~17_combout\,
	datab => \D_Total_Reg|valor_compra\(17),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[16]~68\,
	combout => \D_Total_Reg|valor_compra[17]~69_combout\,
	cout => \D_Total_Reg|valor_compra[17]~70\);

-- Location: FF_X22_Y7_N21
\D_Total_Reg|valor_compra[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[17]~69_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(17));

-- Location: IOIBUF_X32_Y0_N1
\saldo_cartao[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(17),
	o => \saldo_cartao[17]~input_o\);

-- Location: LCCOMB_X26_Y7_N2
\E_Subtrator_2|s[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[17]~34_combout\ = (\D_Total_Reg|valor_compra\(17) & ((\saldo_cartao[17]~input_o\ & (!\E_Subtrator_2|s[16]~33\)) # (!\saldo_cartao[17]~input_o\ & ((\E_Subtrator_2|s[16]~33\) # (GND))))) # (!\D_Total_Reg|valor_compra\(17) & 
-- ((\saldo_cartao[17]~input_o\ & (\E_Subtrator_2|s[16]~33\ & VCC)) # (!\saldo_cartao[17]~input_o\ & (!\E_Subtrator_2|s[16]~33\))))
-- \E_Subtrator_2|s[17]~35\ = CARRY((\D_Total_Reg|valor_compra\(17) & ((!\E_Subtrator_2|s[16]~33\) # (!\saldo_cartao[17]~input_o\))) # (!\D_Total_Reg|valor_compra\(17) & (!\saldo_cartao[17]~input_o\ & !\E_Subtrator_2|s[16]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(17),
	datab => \saldo_cartao[17]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[16]~33\,
	combout => \E_Subtrator_2|s[17]~34_combout\,
	cout => \E_Subtrator_2|s[17]~35\);

-- Location: IOIBUF_X0_Y4_N15
\saldo_cartao[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(18),
	o => \saldo_cartao[18]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\valor_produto[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(18),
	o => \valor_produto[18]~input_o\);

-- Location: LCCOMB_X21_Y7_N22
\B_Subtrator_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~18_combout\ = \valor_produto[18]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[18]~input_o\,
	combout => \B_Subtrator_1|Add0~18_combout\);

-- Location: LCCOMB_X22_Y7_N22
\D_Total_Reg|valor_compra[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[18]~71_combout\ = (\D_Total_Reg|valor_compra\(18) & ((\B_Subtrator_1|Add0~18_combout\ & (!\D_Total_Reg|valor_compra[17]~70\)) # (!\B_Subtrator_1|Add0~18_combout\ & (\D_Total_Reg|valor_compra[17]~70\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(18) & ((\B_Subtrator_1|Add0~18_combout\ & ((\D_Total_Reg|valor_compra[17]~70\) # (GND))) # (!\B_Subtrator_1|Add0~18_combout\ & (!\D_Total_Reg|valor_compra[17]~70\))))
-- \D_Total_Reg|valor_compra[18]~72\ = CARRY((\D_Total_Reg|valor_compra\(18) & (\B_Subtrator_1|Add0~18_combout\ & !\D_Total_Reg|valor_compra[17]~70\)) # (!\D_Total_Reg|valor_compra\(18) & ((\B_Subtrator_1|Add0~18_combout\) # 
-- (!\D_Total_Reg|valor_compra[17]~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(18),
	datab => \B_Subtrator_1|Add0~18_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[17]~70\,
	combout => \D_Total_Reg|valor_compra[18]~71_combout\,
	cout => \D_Total_Reg|valor_compra[18]~72\);

-- Location: FF_X22_Y7_N23
\D_Total_Reg|valor_compra[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[18]~71_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(18));

-- Location: LCCOMB_X26_Y7_N4
\E_Subtrator_2|s[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[18]~36_combout\ = ((\saldo_cartao[18]~input_o\ $ (\D_Total_Reg|valor_compra\(18) $ (\E_Subtrator_2|s[17]~35\)))) # (GND)
-- \E_Subtrator_2|s[18]~37\ = CARRY((\saldo_cartao[18]~input_o\ & ((!\E_Subtrator_2|s[17]~35\) # (!\D_Total_Reg|valor_compra\(18)))) # (!\saldo_cartao[18]~input_o\ & (!\D_Total_Reg|valor_compra\(18) & !\E_Subtrator_2|s[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[18]~input_o\,
	datab => \D_Total_Reg|valor_compra\(18),
	datad => VCC,
	cin => \E_Subtrator_2|s[17]~35\,
	combout => \E_Subtrator_2|s[18]~36_combout\,
	cout => \E_Subtrator_2|s[18]~37\);

-- Location: IOIBUF_X13_Y24_N8
\valor_produto[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(19),
	o => \valor_produto[19]~input_o\);

-- Location: LCCOMB_X21_Y7_N0
\B_Subtrator_1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~19_combout\ = \valor_produto[19]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datab => \del~input_o\,
	datac => \valor_produto[19]~input_o\,
	combout => \B_Subtrator_1|Add0~19_combout\);

-- Location: LCCOMB_X22_Y7_N24
\D_Total_Reg|valor_compra[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[19]~73_combout\ = ((\B_Subtrator_1|Add0~19_combout\ $ (\D_Total_Reg|valor_compra\(19) $ (\D_Total_Reg|valor_compra[18]~72\)))) # (GND)
-- \D_Total_Reg|valor_compra[19]~74\ = CARRY((\B_Subtrator_1|Add0~19_combout\ & (\D_Total_Reg|valor_compra\(19) & !\D_Total_Reg|valor_compra[18]~72\)) # (!\B_Subtrator_1|Add0~19_combout\ & ((\D_Total_Reg|valor_compra\(19)) # 
-- (!\D_Total_Reg|valor_compra[18]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~19_combout\,
	datab => \D_Total_Reg|valor_compra\(19),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[18]~72\,
	combout => \D_Total_Reg|valor_compra[19]~73_combout\,
	cout => \D_Total_Reg|valor_compra[19]~74\);

-- Location: FF_X22_Y7_N25
\D_Total_Reg|valor_compra[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[19]~73_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(19));

-- Location: IOIBUF_X25_Y0_N1
\saldo_cartao[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(19),
	o => \saldo_cartao[19]~input_o\);

-- Location: LCCOMB_X26_Y7_N6
\E_Subtrator_2|s[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[19]~38_combout\ = (\D_Total_Reg|valor_compra\(19) & ((\saldo_cartao[19]~input_o\ & (!\E_Subtrator_2|s[18]~37\)) # (!\saldo_cartao[19]~input_o\ & ((\E_Subtrator_2|s[18]~37\) # (GND))))) # (!\D_Total_Reg|valor_compra\(19) & 
-- ((\saldo_cartao[19]~input_o\ & (\E_Subtrator_2|s[18]~37\ & VCC)) # (!\saldo_cartao[19]~input_o\ & (!\E_Subtrator_2|s[18]~37\))))
-- \E_Subtrator_2|s[19]~39\ = CARRY((\D_Total_Reg|valor_compra\(19) & ((!\E_Subtrator_2|s[18]~37\) # (!\saldo_cartao[19]~input_o\))) # (!\D_Total_Reg|valor_compra\(19) & (!\saldo_cartao[19]~input_o\ & !\E_Subtrator_2|s[18]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(19),
	datab => \saldo_cartao[19]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[18]~37\,
	combout => \E_Subtrator_2|s[19]~38_combout\,
	cout => \E_Subtrator_2|s[19]~39\);

-- Location: IOIBUF_X32_Y24_N22
\saldo_cartao[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(20),
	o => \saldo_cartao[20]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\valor_produto[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(20),
	o => \valor_produto[20]~input_o\);

-- Location: LCCOMB_X21_Y7_N18
\B_Subtrator_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~20_combout\ = \valor_produto[20]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datab => \del~input_o\,
	datac => \valor_produto[20]~input_o\,
	combout => \B_Subtrator_1|Add0~20_combout\);

-- Location: LCCOMB_X22_Y7_N26
\D_Total_Reg|valor_compra[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[20]~75_combout\ = (\D_Total_Reg|valor_compra\(20) & ((\B_Subtrator_1|Add0~20_combout\ & (!\D_Total_Reg|valor_compra[19]~74\)) # (!\B_Subtrator_1|Add0~20_combout\ & (\D_Total_Reg|valor_compra[19]~74\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(20) & ((\B_Subtrator_1|Add0~20_combout\ & ((\D_Total_Reg|valor_compra[19]~74\) # (GND))) # (!\B_Subtrator_1|Add0~20_combout\ & (!\D_Total_Reg|valor_compra[19]~74\))))
-- \D_Total_Reg|valor_compra[20]~76\ = CARRY((\D_Total_Reg|valor_compra\(20) & (\B_Subtrator_1|Add0~20_combout\ & !\D_Total_Reg|valor_compra[19]~74\)) # (!\D_Total_Reg|valor_compra\(20) & ((\B_Subtrator_1|Add0~20_combout\) # 
-- (!\D_Total_Reg|valor_compra[19]~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(20),
	datab => \B_Subtrator_1|Add0~20_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[19]~74\,
	combout => \D_Total_Reg|valor_compra[20]~75_combout\,
	cout => \D_Total_Reg|valor_compra[20]~76\);

-- Location: FF_X22_Y7_N27
\D_Total_Reg|valor_compra[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[20]~75_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(20));

-- Location: LCCOMB_X26_Y7_N8
\E_Subtrator_2|s[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[20]~40_combout\ = ((\saldo_cartao[20]~input_o\ $ (\D_Total_Reg|valor_compra\(20) $ (\E_Subtrator_2|s[19]~39\)))) # (GND)
-- \E_Subtrator_2|s[20]~41\ = CARRY((\saldo_cartao[20]~input_o\ & ((!\E_Subtrator_2|s[19]~39\) # (!\D_Total_Reg|valor_compra\(20)))) # (!\saldo_cartao[20]~input_o\ & (!\D_Total_Reg|valor_compra\(20) & !\E_Subtrator_2|s[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[20]~input_o\,
	datab => \D_Total_Reg|valor_compra\(20),
	datad => VCC,
	cin => \E_Subtrator_2|s[19]~39\,
	combout => \E_Subtrator_2|s[20]~40_combout\,
	cout => \E_Subtrator_2|s[20]~41\);

-- Location: IOIBUF_X16_Y24_N1
\valor_produto[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(21),
	o => \valor_produto[21]~input_o\);

-- Location: LCCOMB_X21_Y7_N8
\B_Subtrator_1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~21_combout\ = \valor_produto[21]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[21]~input_o\,
	combout => \B_Subtrator_1|Add0~21_combout\);

-- Location: LCCOMB_X22_Y7_N28
\D_Total_Reg|valor_compra[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[21]~77_combout\ = ((\B_Subtrator_1|Add0~21_combout\ $ (\D_Total_Reg|valor_compra\(21) $ (\D_Total_Reg|valor_compra[20]~76\)))) # (GND)
-- \D_Total_Reg|valor_compra[21]~78\ = CARRY((\B_Subtrator_1|Add0~21_combout\ & (\D_Total_Reg|valor_compra\(21) & !\D_Total_Reg|valor_compra[20]~76\)) # (!\B_Subtrator_1|Add0~21_combout\ & ((\D_Total_Reg|valor_compra\(21)) # 
-- (!\D_Total_Reg|valor_compra[20]~76\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~21_combout\,
	datab => \D_Total_Reg|valor_compra\(21),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[20]~76\,
	combout => \D_Total_Reg|valor_compra[21]~77_combout\,
	cout => \D_Total_Reg|valor_compra[21]~78\);

-- Location: FF_X22_Y7_N29
\D_Total_Reg|valor_compra[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[21]~77_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(21));

-- Location: IOIBUF_X28_Y24_N1
\saldo_cartao[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(21),
	o => \saldo_cartao[21]~input_o\);

-- Location: LCCOMB_X26_Y7_N10
\E_Subtrator_2|s[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[21]~42_combout\ = (\D_Total_Reg|valor_compra\(21) & ((\saldo_cartao[21]~input_o\ & (!\E_Subtrator_2|s[20]~41\)) # (!\saldo_cartao[21]~input_o\ & ((\E_Subtrator_2|s[20]~41\) # (GND))))) # (!\D_Total_Reg|valor_compra\(21) & 
-- ((\saldo_cartao[21]~input_o\ & (\E_Subtrator_2|s[20]~41\ & VCC)) # (!\saldo_cartao[21]~input_o\ & (!\E_Subtrator_2|s[20]~41\))))
-- \E_Subtrator_2|s[21]~43\ = CARRY((\D_Total_Reg|valor_compra\(21) & ((!\E_Subtrator_2|s[20]~41\) # (!\saldo_cartao[21]~input_o\))) # (!\D_Total_Reg|valor_compra\(21) & (!\saldo_cartao[21]~input_o\ & !\E_Subtrator_2|s[20]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(21),
	datab => \saldo_cartao[21]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[20]~41\,
	combout => \E_Subtrator_2|s[21]~42_combout\,
	cout => \E_Subtrator_2|s[21]~43\);

-- Location: IOIBUF_X34_Y2_N22
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
\valor_produto[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(22),
	o => \valor_produto[22]~input_o\);

-- Location: LCCOMB_X8_Y4_N26
\B_Subtrator_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~22_combout\ = \valor_produto[22]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \valor_produto[22]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~22_combout\);

-- Location: LCCOMB_X22_Y7_N30
\D_Total_Reg|valor_compra[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[22]~79_combout\ = (\D_Total_Reg|valor_compra\(22) & ((\B_Subtrator_1|Add0~22_combout\ & (!\D_Total_Reg|valor_compra[21]~78\)) # (!\B_Subtrator_1|Add0~22_combout\ & (\D_Total_Reg|valor_compra[21]~78\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(22) & ((\B_Subtrator_1|Add0~22_combout\ & ((\D_Total_Reg|valor_compra[21]~78\) # (GND))) # (!\B_Subtrator_1|Add0~22_combout\ & (!\D_Total_Reg|valor_compra[21]~78\))))
-- \D_Total_Reg|valor_compra[22]~80\ = CARRY((\D_Total_Reg|valor_compra\(22) & (\B_Subtrator_1|Add0~22_combout\ & !\D_Total_Reg|valor_compra[21]~78\)) # (!\D_Total_Reg|valor_compra\(22) & ((\B_Subtrator_1|Add0~22_combout\) # 
-- (!\D_Total_Reg|valor_compra[21]~78\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(22),
	datab => \B_Subtrator_1|Add0~22_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[21]~78\,
	combout => \D_Total_Reg|valor_compra[22]~79_combout\,
	cout => \D_Total_Reg|valor_compra[22]~80\);

-- Location: FF_X22_Y7_N31
\D_Total_Reg|valor_compra[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[22]~79_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(22));

-- Location: LCCOMB_X26_Y7_N12
\E_Subtrator_2|s[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[22]~44_combout\ = ((\saldo_cartao[22]~input_o\ $ (\D_Total_Reg|valor_compra\(22) $ (\E_Subtrator_2|s[21]~43\)))) # (GND)
-- \E_Subtrator_2|s[22]~45\ = CARRY((\saldo_cartao[22]~input_o\ & ((!\E_Subtrator_2|s[21]~43\) # (!\D_Total_Reg|valor_compra\(22)))) # (!\saldo_cartao[22]~input_o\ & (!\D_Total_Reg|valor_compra\(22) & !\E_Subtrator_2|s[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[22]~input_o\,
	datab => \D_Total_Reg|valor_compra\(22),
	datad => VCC,
	cin => \E_Subtrator_2|s[21]~43\,
	combout => \E_Subtrator_2|s[22]~44_combout\,
	cout => \E_Subtrator_2|s[22]~45\);

-- Location: IOIBUF_X32_Y0_N22
\saldo_cartao[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(23),
	o => \saldo_cartao[23]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\valor_produto[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(23),
	o => \valor_produto[23]~input_o\);

-- Location: LCCOMB_X22_Y6_N30
\B_Subtrator_1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~23_combout\ = \valor_produto[23]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add~input_o\,
	datac => \valor_produto[23]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~23_combout\);

-- Location: LCCOMB_X22_Y6_N0
\D_Total_Reg|valor_compra[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[23]~81_combout\ = ((\B_Subtrator_1|Add0~23_combout\ $ (\D_Total_Reg|valor_compra\(23) $ (\D_Total_Reg|valor_compra[22]~80\)))) # (GND)
-- \D_Total_Reg|valor_compra[23]~82\ = CARRY((\B_Subtrator_1|Add0~23_combout\ & (\D_Total_Reg|valor_compra\(23) & !\D_Total_Reg|valor_compra[22]~80\)) # (!\B_Subtrator_1|Add0~23_combout\ & ((\D_Total_Reg|valor_compra\(23)) # 
-- (!\D_Total_Reg|valor_compra[22]~80\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~23_combout\,
	datab => \D_Total_Reg|valor_compra\(23),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[22]~80\,
	combout => \D_Total_Reg|valor_compra[23]~81_combout\,
	cout => \D_Total_Reg|valor_compra[23]~82\);

-- Location: FF_X22_Y6_N1
\D_Total_Reg|valor_compra[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[23]~81_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(23));

-- Location: LCCOMB_X26_Y7_N14
\E_Subtrator_2|s[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[23]~46_combout\ = (\saldo_cartao[23]~input_o\ & ((\D_Total_Reg|valor_compra\(23) & (!\E_Subtrator_2|s[22]~45\)) # (!\D_Total_Reg|valor_compra\(23) & (\E_Subtrator_2|s[22]~45\ & VCC)))) # (!\saldo_cartao[23]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(23) & ((\E_Subtrator_2|s[22]~45\) # (GND))) # (!\D_Total_Reg|valor_compra\(23) & (!\E_Subtrator_2|s[22]~45\))))
-- \E_Subtrator_2|s[23]~47\ = CARRY((\saldo_cartao[23]~input_o\ & (\D_Total_Reg|valor_compra\(23) & !\E_Subtrator_2|s[22]~45\)) # (!\saldo_cartao[23]~input_o\ & ((\D_Total_Reg|valor_compra\(23)) # (!\E_Subtrator_2|s[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[23]~input_o\,
	datab => \D_Total_Reg|valor_compra\(23),
	datad => VCC,
	cin => \E_Subtrator_2|s[22]~45\,
	combout => \E_Subtrator_2|s[23]~46_combout\,
	cout => \E_Subtrator_2|s[23]~47\);

-- Location: IOIBUF_X30_Y0_N1
\saldo_cartao[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(24),
	o => \saldo_cartao[24]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\valor_produto[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(24),
	o => \valor_produto[24]~input_o\);

-- Location: LCCOMB_X22_Y6_N24
\B_Subtrator_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~24_combout\ = \valor_produto[24]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[24]~input_o\,
	combout => \B_Subtrator_1|Add0~24_combout\);

-- Location: LCCOMB_X22_Y6_N2
\D_Total_Reg|valor_compra[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[24]~83_combout\ = (\B_Subtrator_1|Add0~24_combout\ & ((\D_Total_Reg|valor_compra\(24) & (!\D_Total_Reg|valor_compra[23]~82\)) # (!\D_Total_Reg|valor_compra\(24) & ((\D_Total_Reg|valor_compra[23]~82\) # (GND))))) # 
-- (!\B_Subtrator_1|Add0~24_combout\ & ((\D_Total_Reg|valor_compra\(24) & (\D_Total_Reg|valor_compra[23]~82\ & VCC)) # (!\D_Total_Reg|valor_compra\(24) & (!\D_Total_Reg|valor_compra[23]~82\))))
-- \D_Total_Reg|valor_compra[24]~84\ = CARRY((\B_Subtrator_1|Add0~24_combout\ & ((!\D_Total_Reg|valor_compra[23]~82\) # (!\D_Total_Reg|valor_compra\(24)))) # (!\B_Subtrator_1|Add0~24_combout\ & (!\D_Total_Reg|valor_compra\(24) & 
-- !\D_Total_Reg|valor_compra[23]~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~24_combout\,
	datab => \D_Total_Reg|valor_compra\(24),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[23]~82\,
	combout => \D_Total_Reg|valor_compra[24]~83_combout\,
	cout => \D_Total_Reg|valor_compra[24]~84\);

-- Location: FF_X22_Y6_N3
\D_Total_Reg|valor_compra[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[24]~83_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(24));

-- Location: LCCOMB_X26_Y7_N16
\E_Subtrator_2|s[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[24]~48_combout\ = ((\saldo_cartao[24]~input_o\ $ (\D_Total_Reg|valor_compra\(24) $ (\E_Subtrator_2|s[23]~47\)))) # (GND)
-- \E_Subtrator_2|s[24]~49\ = CARRY((\saldo_cartao[24]~input_o\ & ((!\E_Subtrator_2|s[23]~47\) # (!\D_Total_Reg|valor_compra\(24)))) # (!\saldo_cartao[24]~input_o\ & (!\D_Total_Reg|valor_compra\(24) & !\E_Subtrator_2|s[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[24]~input_o\,
	datab => \D_Total_Reg|valor_compra\(24),
	datad => VCC,
	cin => \E_Subtrator_2|s[23]~47\,
	combout => \E_Subtrator_2|s[24]~48_combout\,
	cout => \E_Subtrator_2|s[24]~49\);

-- Location: IOIBUF_X34_Y6_N15
\saldo_cartao[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(25),
	o => \saldo_cartao[25]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\valor_produto[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(25),
	o => \valor_produto[25]~input_o\);

-- Location: LCCOMB_X22_Y6_N26
\B_Subtrator_1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~25_combout\ = \valor_produto[25]~input_o\ $ (((\add~input_o\ & !\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add~input_o\,
	datac => \valor_produto[25]~input_o\,
	datad => \del~input_o\,
	combout => \B_Subtrator_1|Add0~25_combout\);

-- Location: LCCOMB_X22_Y6_N4
\D_Total_Reg|valor_compra[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[25]~85_combout\ = ((\B_Subtrator_1|Add0~25_combout\ $ (\D_Total_Reg|valor_compra\(25) $ (\D_Total_Reg|valor_compra[24]~84\)))) # (GND)
-- \D_Total_Reg|valor_compra[25]~86\ = CARRY((\B_Subtrator_1|Add0~25_combout\ & (\D_Total_Reg|valor_compra\(25) & !\D_Total_Reg|valor_compra[24]~84\)) # (!\B_Subtrator_1|Add0~25_combout\ & ((\D_Total_Reg|valor_compra\(25)) # 
-- (!\D_Total_Reg|valor_compra[24]~84\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~25_combout\,
	datab => \D_Total_Reg|valor_compra\(25),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[24]~84\,
	combout => \D_Total_Reg|valor_compra[25]~85_combout\,
	cout => \D_Total_Reg|valor_compra[25]~86\);

-- Location: FF_X22_Y6_N5
\D_Total_Reg|valor_compra[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[25]~85_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(25));

-- Location: LCCOMB_X26_Y7_N18
\E_Subtrator_2|s[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[25]~50_combout\ = (\saldo_cartao[25]~input_o\ & ((\D_Total_Reg|valor_compra\(25) & (!\E_Subtrator_2|s[24]~49\)) # (!\D_Total_Reg|valor_compra\(25) & (\E_Subtrator_2|s[24]~49\ & VCC)))) # (!\saldo_cartao[25]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(25) & ((\E_Subtrator_2|s[24]~49\) # (GND))) # (!\D_Total_Reg|valor_compra\(25) & (!\E_Subtrator_2|s[24]~49\))))
-- \E_Subtrator_2|s[25]~51\ = CARRY((\saldo_cartao[25]~input_o\ & (\D_Total_Reg|valor_compra\(25) & !\E_Subtrator_2|s[24]~49\)) # (!\saldo_cartao[25]~input_o\ & ((\D_Total_Reg|valor_compra\(25)) # (!\E_Subtrator_2|s[24]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[25]~input_o\,
	datab => \D_Total_Reg|valor_compra\(25),
	datad => VCC,
	cin => \E_Subtrator_2|s[24]~49\,
	combout => \E_Subtrator_2|s[25]~50_combout\,
	cout => \E_Subtrator_2|s[25]~51\);

-- Location: IOIBUF_X28_Y24_N22
\saldo_cartao[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(26),
	o => \saldo_cartao[26]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\valor_produto[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(26),
	o => \valor_produto[26]~input_o\);

-- Location: LCCOMB_X22_Y6_N20
\B_Subtrator_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~26_combout\ = \valor_produto[26]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_produto[26]~input_o\,
	datab => \del~input_o\,
	datac => \add~input_o\,
	combout => \B_Subtrator_1|Add0~26_combout\);

-- Location: LCCOMB_X22_Y6_N6
\D_Total_Reg|valor_compra[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[26]~87_combout\ = (\D_Total_Reg|valor_compra\(26) & ((\B_Subtrator_1|Add0~26_combout\ & (!\D_Total_Reg|valor_compra[25]~86\)) # (!\B_Subtrator_1|Add0~26_combout\ & (\D_Total_Reg|valor_compra[25]~86\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(26) & ((\B_Subtrator_1|Add0~26_combout\ & ((\D_Total_Reg|valor_compra[25]~86\) # (GND))) # (!\B_Subtrator_1|Add0~26_combout\ & (!\D_Total_Reg|valor_compra[25]~86\))))
-- \D_Total_Reg|valor_compra[26]~88\ = CARRY((\D_Total_Reg|valor_compra\(26) & (\B_Subtrator_1|Add0~26_combout\ & !\D_Total_Reg|valor_compra[25]~86\)) # (!\D_Total_Reg|valor_compra\(26) & ((\B_Subtrator_1|Add0~26_combout\) # 
-- (!\D_Total_Reg|valor_compra[25]~86\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(26),
	datab => \B_Subtrator_1|Add0~26_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[25]~86\,
	combout => \D_Total_Reg|valor_compra[26]~87_combout\,
	cout => \D_Total_Reg|valor_compra[26]~88\);

-- Location: FF_X22_Y6_N7
\D_Total_Reg|valor_compra[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[26]~87_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(26));

-- Location: LCCOMB_X26_Y7_N20
\E_Subtrator_2|s[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[26]~52_combout\ = ((\saldo_cartao[26]~input_o\ $ (\D_Total_Reg|valor_compra\(26) $ (\E_Subtrator_2|s[25]~51\)))) # (GND)
-- \E_Subtrator_2|s[26]~53\ = CARRY((\saldo_cartao[26]~input_o\ & ((!\E_Subtrator_2|s[25]~51\) # (!\D_Total_Reg|valor_compra\(26)))) # (!\saldo_cartao[26]~input_o\ & (!\D_Total_Reg|valor_compra\(26) & !\E_Subtrator_2|s[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[26]~input_o\,
	datab => \D_Total_Reg|valor_compra\(26),
	datad => VCC,
	cin => \E_Subtrator_2|s[25]~51\,
	combout => \E_Subtrator_2|s[26]~52_combout\,
	cout => \E_Subtrator_2|s[26]~53\);

-- Location: IOIBUF_X30_Y0_N8
\saldo_cartao[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(27),
	o => \saldo_cartao[27]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\valor_produto[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(27),
	o => \valor_produto[27]~input_o\);

-- Location: LCCOMB_X22_Y6_N22
\B_Subtrator_1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~27_combout\ = \valor_produto[27]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[27]~input_o\,
	combout => \B_Subtrator_1|Add0~27_combout\);

-- Location: LCCOMB_X22_Y6_N8
\D_Total_Reg|valor_compra[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[27]~89_combout\ = ((\B_Subtrator_1|Add0~27_combout\ $ (\D_Total_Reg|valor_compra\(27) $ (\D_Total_Reg|valor_compra[26]~88\)))) # (GND)
-- \D_Total_Reg|valor_compra[27]~90\ = CARRY((\B_Subtrator_1|Add0~27_combout\ & (\D_Total_Reg|valor_compra\(27) & !\D_Total_Reg|valor_compra[26]~88\)) # (!\B_Subtrator_1|Add0~27_combout\ & ((\D_Total_Reg|valor_compra\(27)) # 
-- (!\D_Total_Reg|valor_compra[26]~88\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~27_combout\,
	datab => \D_Total_Reg|valor_compra\(27),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[26]~88\,
	combout => \D_Total_Reg|valor_compra[27]~89_combout\,
	cout => \D_Total_Reg|valor_compra[27]~90\);

-- Location: FF_X22_Y6_N9
\D_Total_Reg|valor_compra[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[27]~89_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(27));

-- Location: LCCOMB_X26_Y7_N22
\E_Subtrator_2|s[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[27]~54_combout\ = (\saldo_cartao[27]~input_o\ & ((\D_Total_Reg|valor_compra\(27) & (!\E_Subtrator_2|s[26]~53\)) # (!\D_Total_Reg|valor_compra\(27) & (\E_Subtrator_2|s[26]~53\ & VCC)))) # (!\saldo_cartao[27]~input_o\ & 
-- ((\D_Total_Reg|valor_compra\(27) & ((\E_Subtrator_2|s[26]~53\) # (GND))) # (!\D_Total_Reg|valor_compra\(27) & (!\E_Subtrator_2|s[26]~53\))))
-- \E_Subtrator_2|s[27]~55\ = CARRY((\saldo_cartao[27]~input_o\ & (\D_Total_Reg|valor_compra\(27) & !\E_Subtrator_2|s[26]~53\)) # (!\saldo_cartao[27]~input_o\ & ((\D_Total_Reg|valor_compra\(27)) # (!\E_Subtrator_2|s[26]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[27]~input_o\,
	datab => \D_Total_Reg|valor_compra\(27),
	datad => VCC,
	cin => \E_Subtrator_2|s[26]~53\,
	combout => \E_Subtrator_2|s[27]~54_combout\,
	cout => \E_Subtrator_2|s[27]~55\);

-- Location: IOIBUF_X16_Y0_N1
\valor_produto[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(28),
	o => \valor_produto[28]~input_o\);

-- Location: LCCOMB_X21_Y7_N6
\B_Subtrator_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~28_combout\ = \valor_produto[28]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[28]~input_o\,
	combout => \B_Subtrator_1|Add0~28_combout\);

-- Location: LCCOMB_X22_Y6_N10
\D_Total_Reg|valor_compra[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[28]~91_combout\ = (\D_Total_Reg|valor_compra\(28) & ((\B_Subtrator_1|Add0~28_combout\ & (!\D_Total_Reg|valor_compra[27]~90\)) # (!\B_Subtrator_1|Add0~28_combout\ & (\D_Total_Reg|valor_compra[27]~90\ & VCC)))) # 
-- (!\D_Total_Reg|valor_compra\(28) & ((\B_Subtrator_1|Add0~28_combout\ & ((\D_Total_Reg|valor_compra[27]~90\) # (GND))) # (!\B_Subtrator_1|Add0~28_combout\ & (!\D_Total_Reg|valor_compra[27]~90\))))
-- \D_Total_Reg|valor_compra[28]~92\ = CARRY((\D_Total_Reg|valor_compra\(28) & (\B_Subtrator_1|Add0~28_combout\ & !\D_Total_Reg|valor_compra[27]~90\)) # (!\D_Total_Reg|valor_compra\(28) & ((\B_Subtrator_1|Add0~28_combout\) # 
-- (!\D_Total_Reg|valor_compra[27]~90\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(28),
	datab => \B_Subtrator_1|Add0~28_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[27]~90\,
	combout => \D_Total_Reg|valor_compra[28]~91_combout\,
	cout => \D_Total_Reg|valor_compra[28]~92\);

-- Location: FF_X22_Y6_N11
\D_Total_Reg|valor_compra[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[28]~91_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(28));

-- Location: IOIBUF_X34_Y7_N8
\saldo_cartao[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(28),
	o => \saldo_cartao[28]~input_o\);

-- Location: LCCOMB_X26_Y7_N24
\E_Subtrator_2|s[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[28]~56_combout\ = ((\D_Total_Reg|valor_compra\(28) $ (\saldo_cartao[28]~input_o\ $ (\E_Subtrator_2|s[27]~55\)))) # (GND)
-- \E_Subtrator_2|s[28]~57\ = CARRY((\D_Total_Reg|valor_compra\(28) & (\saldo_cartao[28]~input_o\ & !\E_Subtrator_2|s[27]~55\)) # (!\D_Total_Reg|valor_compra\(28) & ((\saldo_cartao[28]~input_o\) # (!\E_Subtrator_2|s[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(28),
	datab => \saldo_cartao[28]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[27]~55\,
	combout => \E_Subtrator_2|s[28]~56_combout\,
	cout => \E_Subtrator_2|s[28]~57\);

-- Location: IOIBUF_X13_Y24_N1
\valor_produto[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(29),
	o => \valor_produto[29]~input_o\);

-- Location: LCCOMB_X21_Y7_N28
\B_Subtrator_1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~29_combout\ = \valor_produto[29]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[29]~input_o\,
	combout => \B_Subtrator_1|Add0~29_combout\);

-- Location: LCCOMB_X22_Y6_N12
\D_Total_Reg|valor_compra[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[29]~93_combout\ = ((\D_Total_Reg|valor_compra\(29) $ (\B_Subtrator_1|Add0~29_combout\ $ (\D_Total_Reg|valor_compra[28]~92\)))) # (GND)
-- \D_Total_Reg|valor_compra[29]~94\ = CARRY((\D_Total_Reg|valor_compra\(29) & ((!\D_Total_Reg|valor_compra[28]~92\) # (!\B_Subtrator_1|Add0~29_combout\))) # (!\D_Total_Reg|valor_compra\(29) & (!\B_Subtrator_1|Add0~29_combout\ & 
-- !\D_Total_Reg|valor_compra[28]~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(29),
	datab => \B_Subtrator_1|Add0~29_combout\,
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[28]~92\,
	combout => \D_Total_Reg|valor_compra[29]~93_combout\,
	cout => \D_Total_Reg|valor_compra[29]~94\);

-- Location: FF_X22_Y6_N13
\D_Total_Reg|valor_compra[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[29]~93_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(29));

-- Location: IOIBUF_X25_Y0_N8
\saldo_cartao[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(29),
	o => \saldo_cartao[29]~input_o\);

-- Location: LCCOMB_X26_Y7_N26
\E_Subtrator_2|s[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[29]~58_combout\ = (\D_Total_Reg|valor_compra\(29) & ((\saldo_cartao[29]~input_o\ & (!\E_Subtrator_2|s[28]~57\)) # (!\saldo_cartao[29]~input_o\ & ((\E_Subtrator_2|s[28]~57\) # (GND))))) # (!\D_Total_Reg|valor_compra\(29) & 
-- ((\saldo_cartao[29]~input_o\ & (\E_Subtrator_2|s[28]~57\ & VCC)) # (!\saldo_cartao[29]~input_o\ & (!\E_Subtrator_2|s[28]~57\))))
-- \E_Subtrator_2|s[29]~59\ = CARRY((\D_Total_Reg|valor_compra\(29) & ((!\E_Subtrator_2|s[28]~57\) # (!\saldo_cartao[29]~input_o\))) # (!\D_Total_Reg|valor_compra\(29) & (!\saldo_cartao[29]~input_o\ & !\E_Subtrator_2|s[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(29),
	datab => \saldo_cartao[29]~input_o\,
	datad => VCC,
	cin => \E_Subtrator_2|s[28]~57\,
	combout => \E_Subtrator_2|s[29]~58_combout\,
	cout => \E_Subtrator_2|s[29]~59\);

-- Location: IOIBUF_X28_Y0_N1
\saldo_cartao[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(30),
	o => \saldo_cartao[30]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\valor_produto[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(30),
	o => \valor_produto[30]~input_o\);

-- Location: LCCOMB_X22_Y6_N28
\B_Subtrator_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~30_combout\ = \valor_produto[30]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[30]~input_o\,
	combout => \B_Subtrator_1|Add0~30_combout\);

-- Location: LCCOMB_X22_Y6_N14
\D_Total_Reg|valor_compra[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[30]~95_combout\ = (\B_Subtrator_1|Add0~30_combout\ & ((\D_Total_Reg|valor_compra\(30) & (!\D_Total_Reg|valor_compra[29]~94\)) # (!\D_Total_Reg|valor_compra\(30) & ((\D_Total_Reg|valor_compra[29]~94\) # (GND))))) # 
-- (!\B_Subtrator_1|Add0~30_combout\ & ((\D_Total_Reg|valor_compra\(30) & (\D_Total_Reg|valor_compra[29]~94\ & VCC)) # (!\D_Total_Reg|valor_compra\(30) & (!\D_Total_Reg|valor_compra[29]~94\))))
-- \D_Total_Reg|valor_compra[30]~96\ = CARRY((\B_Subtrator_1|Add0~30_combout\ & ((!\D_Total_Reg|valor_compra[29]~94\) # (!\D_Total_Reg|valor_compra\(30)))) # (!\B_Subtrator_1|Add0~30_combout\ & (!\D_Total_Reg|valor_compra\(30) & 
-- !\D_Total_Reg|valor_compra[29]~94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_Subtrator_1|Add0~30_combout\,
	datab => \D_Total_Reg|valor_compra\(30),
	datad => VCC,
	cin => \D_Total_Reg|valor_compra[29]~94\,
	combout => \D_Total_Reg|valor_compra[30]~95_combout\,
	cout => \D_Total_Reg|valor_compra[30]~96\);

-- Location: FF_X22_Y6_N15
\D_Total_Reg|valor_compra[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[30]~95_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(30));

-- Location: LCCOMB_X26_Y7_N28
\E_Subtrator_2|s[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[30]~60_combout\ = ((\saldo_cartao[30]~input_o\ $ (\D_Total_Reg|valor_compra\(30) $ (\E_Subtrator_2|s[29]~59\)))) # (GND)
-- \E_Subtrator_2|s[30]~61\ = CARRY((\saldo_cartao[30]~input_o\ & ((!\E_Subtrator_2|s[29]~59\) # (!\D_Total_Reg|valor_compra\(30)))) # (!\saldo_cartao[30]~input_o\ & (!\D_Total_Reg|valor_compra\(30) & !\E_Subtrator_2|s[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[30]~input_o\,
	datab => \D_Total_Reg|valor_compra\(30),
	datad => VCC,
	cin => \E_Subtrator_2|s[29]~59\,
	combout => \E_Subtrator_2|s[30]~60_combout\,
	cout => \E_Subtrator_2|s[30]~61\);

-- Location: IOIBUF_X11_Y0_N15
\valor_produto[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_produto(31),
	o => \valor_produto[31]~input_o\);

-- Location: LCCOMB_X22_Y6_N18
\B_Subtrator_1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Subtrator_1|Add0~31_combout\ = \valor_produto[31]~input_o\ $ (((!\del~input_o\ & \add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \del~input_o\,
	datac => \add~input_o\,
	datad => \valor_produto[31]~input_o\,
	combout => \B_Subtrator_1|Add0~31_combout\);

-- Location: LCCOMB_X22_Y6_N16
\D_Total_Reg|valor_compra[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_Total_Reg|valor_compra[31]~97_combout\ = \B_Subtrator_1|Add0~31_combout\ $ (\D_Total_Reg|valor_compra[30]~96\ $ (\D_Total_Reg|valor_compra\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B_Subtrator_1|Add0~31_combout\,
	datad => \D_Total_Reg|valor_compra\(31),
	cin => \D_Total_Reg|valor_compra[30]~96\,
	combout => \D_Total_Reg|valor_compra[31]~97_combout\);

-- Location: FF_X22_Y6_N17
\D_Total_Reg|valor_compra[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \D_Total_Reg|valor_compra[31]~97_combout\,
	clrn => \ALT_INV_clr_total~inputclkctrl_outclk\,
	ena => \D_Total_Reg|valor_compra[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_Total_Reg|valor_compra\(31));

-- Location: IOIBUF_X25_Y0_N15
\saldo_cartao[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_cartao(31),
	o => \saldo_cartao[31]~input_o\);

-- Location: LCCOMB_X26_Y7_N30
\E_Subtrator_2|s[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_Subtrator_2|s[31]~62_combout\ = \D_Total_Reg|valor_compra\(31) $ (\E_Subtrator_2|s[30]~61\ $ (!\saldo_cartao[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(31),
	datad => \saldo_cartao[31]~input_o\,
	cin => \E_Subtrator_2|s[30]~61\,
	combout => \E_Subtrator_2|s[31]~62_combout\);

-- Location: LCCOMB_X8_Y4_N12
\J_Total_Itens_Reg|quantidade_itens[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[0]~7_combout\ = \J_Total_Itens_Reg|quantidade_itens\(0) $ (VCC)
-- \J_Total_Itens_Reg|quantidade_itens[0]~8\ = CARRY(\J_Total_Itens_Reg|quantidade_itens\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J_Total_Itens_Reg|quantidade_itens\(0),
	datad => VCC,
	combout => \J_Total_Itens_Reg|quantidade_itens[0]~7_combout\,
	cout => \J_Total_Itens_Reg|quantidade_itens[0]~8\);

-- Location: IOIBUF_X0_Y11_N22
\clr_total_itens~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr_total_itens,
	o => \clr_total_itens~input_o\);

-- Location: CLKCTRL_G3
\clr_total_itens~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr_total_itens~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr_total_itens~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N8
\ld_total_itens~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_total_itens,
	o => \ld_total_itens~input_o\);

-- Location: LCCOMB_X8_Y4_N8
\J_Total_Itens_Reg|quantidade_itens[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\ = (\ld_total_itens~input_o\ & (\add~input_o\ $ (\del~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datac => \ld_total_itens~input_o\,
	datad => \del~input_o\,
	combout => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\);

-- Location: FF_X8_Y4_N13
\J_Total_Itens_Reg|quantidade_itens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[0]~7_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(0));

-- Location: LCCOMB_X8_Y4_N10
\I_Mux_4_1_7_bits|mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_Mux_4_1_7_bits|mux1~0_combout\ = (\add~input_o\ & !\del~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~input_o\,
	datad => \del~input_o\,
	combout => \I_Mux_4_1_7_bits|mux1~0_combout\);

-- Location: LCCOMB_X8_Y4_N14
\J_Total_Itens_Reg|quantidade_itens[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[1]~10_combout\ = (\I_Mux_4_1_7_bits|mux1~0_combout\ & ((\J_Total_Itens_Reg|quantidade_itens\(1) & (!\J_Total_Itens_Reg|quantidade_itens[0]~8\)) # (!\J_Total_Itens_Reg|quantidade_itens\(1) & 
-- ((\J_Total_Itens_Reg|quantidade_itens[0]~8\) # (GND))))) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & ((\J_Total_Itens_Reg|quantidade_itens\(1) & (\J_Total_Itens_Reg|quantidade_itens[0]~8\ & VCC)) # (!\J_Total_Itens_Reg|quantidade_itens\(1) & 
-- (!\J_Total_Itens_Reg|quantidade_itens[0]~8\))))
-- \J_Total_Itens_Reg|quantidade_itens[1]~11\ = CARRY((\I_Mux_4_1_7_bits|mux1~0_combout\ & ((!\J_Total_Itens_Reg|quantidade_itens[0]~8\) # (!\J_Total_Itens_Reg|quantidade_itens\(1)))) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & 
-- (!\J_Total_Itens_Reg|quantidade_itens\(1) & !\J_Total_Itens_Reg|quantidade_itens[0]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_Mux_4_1_7_bits|mux1~0_combout\,
	datab => \J_Total_Itens_Reg|quantidade_itens\(1),
	datad => VCC,
	cin => \J_Total_Itens_Reg|quantidade_itens[0]~8\,
	combout => \J_Total_Itens_Reg|quantidade_itens[1]~10_combout\,
	cout => \J_Total_Itens_Reg|quantidade_itens[1]~11\);

-- Location: FF_X8_Y4_N15
\J_Total_Itens_Reg|quantidade_itens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[1]~10_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(1));

-- Location: LCCOMB_X8_Y4_N16
\J_Total_Itens_Reg|quantidade_itens[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[2]~12_combout\ = ((\I_Mux_4_1_7_bits|mux1~0_combout\ $ (\J_Total_Itens_Reg|quantidade_itens\(2) $ (\J_Total_Itens_Reg|quantidade_itens[1]~11\)))) # (GND)
-- \J_Total_Itens_Reg|quantidade_itens[2]~13\ = CARRY((\I_Mux_4_1_7_bits|mux1~0_combout\ & (\J_Total_Itens_Reg|quantidade_itens\(2) & !\J_Total_Itens_Reg|quantidade_itens[1]~11\)) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & 
-- ((\J_Total_Itens_Reg|quantidade_itens\(2)) # (!\J_Total_Itens_Reg|quantidade_itens[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_Mux_4_1_7_bits|mux1~0_combout\,
	datab => \J_Total_Itens_Reg|quantidade_itens\(2),
	datad => VCC,
	cin => \J_Total_Itens_Reg|quantidade_itens[1]~11\,
	combout => \J_Total_Itens_Reg|quantidade_itens[2]~12_combout\,
	cout => \J_Total_Itens_Reg|quantidade_itens[2]~13\);

-- Location: FF_X8_Y4_N17
\J_Total_Itens_Reg|quantidade_itens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[2]~12_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(2));

-- Location: LCCOMB_X8_Y4_N18
\J_Total_Itens_Reg|quantidade_itens[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[3]~14_combout\ = (\I_Mux_4_1_7_bits|mux1~0_combout\ & ((\J_Total_Itens_Reg|quantidade_itens\(3) & (!\J_Total_Itens_Reg|quantidade_itens[2]~13\)) # (!\J_Total_Itens_Reg|quantidade_itens\(3) & 
-- ((\J_Total_Itens_Reg|quantidade_itens[2]~13\) # (GND))))) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & ((\J_Total_Itens_Reg|quantidade_itens\(3) & (\J_Total_Itens_Reg|quantidade_itens[2]~13\ & VCC)) # (!\J_Total_Itens_Reg|quantidade_itens\(3) & 
-- (!\J_Total_Itens_Reg|quantidade_itens[2]~13\))))
-- \J_Total_Itens_Reg|quantidade_itens[3]~15\ = CARRY((\I_Mux_4_1_7_bits|mux1~0_combout\ & ((!\J_Total_Itens_Reg|quantidade_itens[2]~13\) # (!\J_Total_Itens_Reg|quantidade_itens\(3)))) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & 
-- (!\J_Total_Itens_Reg|quantidade_itens\(3) & !\J_Total_Itens_Reg|quantidade_itens[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_Mux_4_1_7_bits|mux1~0_combout\,
	datab => \J_Total_Itens_Reg|quantidade_itens\(3),
	datad => VCC,
	cin => \J_Total_Itens_Reg|quantidade_itens[2]~13\,
	combout => \J_Total_Itens_Reg|quantidade_itens[3]~14_combout\,
	cout => \J_Total_Itens_Reg|quantidade_itens[3]~15\);

-- Location: FF_X8_Y4_N19
\J_Total_Itens_Reg|quantidade_itens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[3]~14_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(3));

-- Location: LCCOMB_X8_Y4_N20
\J_Total_Itens_Reg|quantidade_itens[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[4]~16_combout\ = ((\I_Mux_4_1_7_bits|mux1~0_combout\ $ (\J_Total_Itens_Reg|quantidade_itens\(4) $ (\J_Total_Itens_Reg|quantidade_itens[3]~15\)))) # (GND)
-- \J_Total_Itens_Reg|quantidade_itens[4]~17\ = CARRY((\I_Mux_4_1_7_bits|mux1~0_combout\ & (\J_Total_Itens_Reg|quantidade_itens\(4) & !\J_Total_Itens_Reg|quantidade_itens[3]~15\)) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & 
-- ((\J_Total_Itens_Reg|quantidade_itens\(4)) # (!\J_Total_Itens_Reg|quantidade_itens[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_Mux_4_1_7_bits|mux1~0_combout\,
	datab => \J_Total_Itens_Reg|quantidade_itens\(4),
	datad => VCC,
	cin => \J_Total_Itens_Reg|quantidade_itens[3]~15\,
	combout => \J_Total_Itens_Reg|quantidade_itens[4]~16_combout\,
	cout => \J_Total_Itens_Reg|quantidade_itens[4]~17\);

-- Location: FF_X8_Y4_N21
\J_Total_Itens_Reg|quantidade_itens[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[4]~16_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(4));

-- Location: LCCOMB_X8_Y4_N22
\J_Total_Itens_Reg|quantidade_itens[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[5]~18_combout\ = (\J_Total_Itens_Reg|quantidade_itens\(5) & ((\I_Mux_4_1_7_bits|mux1~0_combout\ & (!\J_Total_Itens_Reg|quantidade_itens[4]~17\)) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & 
-- (\J_Total_Itens_Reg|quantidade_itens[4]~17\ & VCC)))) # (!\J_Total_Itens_Reg|quantidade_itens\(5) & ((\I_Mux_4_1_7_bits|mux1~0_combout\ & ((\J_Total_Itens_Reg|quantidade_itens[4]~17\) # (GND))) # (!\I_Mux_4_1_7_bits|mux1~0_combout\ & 
-- (!\J_Total_Itens_Reg|quantidade_itens[4]~17\))))
-- \J_Total_Itens_Reg|quantidade_itens[5]~19\ = CARRY((\J_Total_Itens_Reg|quantidade_itens\(5) & (\I_Mux_4_1_7_bits|mux1~0_combout\ & !\J_Total_Itens_Reg|quantidade_itens[4]~17\)) # (!\J_Total_Itens_Reg|quantidade_itens\(5) & 
-- ((\I_Mux_4_1_7_bits|mux1~0_combout\) # (!\J_Total_Itens_Reg|quantidade_itens[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \J_Total_Itens_Reg|quantidade_itens\(5),
	datab => \I_Mux_4_1_7_bits|mux1~0_combout\,
	datad => VCC,
	cin => \J_Total_Itens_Reg|quantidade_itens[4]~17\,
	combout => \J_Total_Itens_Reg|quantidade_itens[5]~18_combout\,
	cout => \J_Total_Itens_Reg|quantidade_itens[5]~19\);

-- Location: FF_X8_Y4_N23
\J_Total_Itens_Reg|quantidade_itens[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[5]~18_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(5));

-- Location: LCCOMB_X8_Y4_N24
\J_Total_Itens_Reg|quantidade_itens[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \J_Total_Itens_Reg|quantidade_itens[6]~20_combout\ = \I_Mux_4_1_7_bits|mux1~0_combout\ $ (\J_Total_Itens_Reg|quantidade_itens[5]~19\ $ (\J_Total_Itens_Reg|quantidade_itens\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_Mux_4_1_7_bits|mux1~0_combout\,
	datad => \J_Total_Itens_Reg|quantidade_itens\(6),
	cin => \J_Total_Itens_Reg|quantidade_itens[5]~19\,
	combout => \J_Total_Itens_Reg|quantidade_itens[6]~20_combout\);

-- Location: FF_X8_Y4_N25
\J_Total_Itens_Reg|quantidade_itens[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \J_Total_Itens_Reg|quantidade_itens[6]~20_combout\,
	clrn => \ALT_INV_clr_total_itens~inputclkctrl_outclk\,
	ena => \J_Total_Itens_Reg|quantidade_itens[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J_Total_Itens_Reg|quantidade_itens\(6));

-- Location: LCCOMB_X8_Y4_N28
\K_Comparador_Itens|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \K_Comparador_Itens|LessThan0~0_combout\ = (\J_Total_Itens_Reg|quantidade_itens\(5)) # (\J_Total_Itens_Reg|quantidade_itens\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \J_Total_Itens_Reg|quantidade_itens\(5),
	datad => \J_Total_Itens_Reg|quantidade_itens\(6),
	combout => \K_Comparador_Itens|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y8_N0
\F_Comparador_Saldo|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~1_cout\ = CARRY((!\D_Total_Reg|valor_compra\(0) & \saldo_cartao[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(0),
	datab => \saldo_cartao[0]~input_o\,
	datad => VCC,
	cout => \F_Comparador_Saldo|LessThan0~1_cout\);

-- Location: LCCOMB_X25_Y8_N2
\F_Comparador_Saldo|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~3_cout\ = CARRY((\saldo_cartao[1]~input_o\ & (\D_Total_Reg|valor_compra\(1) & !\F_Comparador_Saldo|LessThan0~1_cout\)) # (!\saldo_cartao[1]~input_o\ & ((\D_Total_Reg|valor_compra\(1)) # 
-- (!\F_Comparador_Saldo|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[1]~input_o\,
	datab => \D_Total_Reg|valor_compra\(1),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~1_cout\,
	cout => \F_Comparador_Saldo|LessThan0~3_cout\);

-- Location: LCCOMB_X25_Y8_N4
\F_Comparador_Saldo|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~5_cout\ = CARRY((\D_Total_Reg|valor_compra\(2) & (\saldo_cartao[2]~input_o\ & !\F_Comparador_Saldo|LessThan0~3_cout\)) # (!\D_Total_Reg|valor_compra\(2) & ((\saldo_cartao[2]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(2),
	datab => \saldo_cartao[2]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~3_cout\,
	cout => \F_Comparador_Saldo|LessThan0~5_cout\);

-- Location: LCCOMB_X25_Y8_N6
\F_Comparador_Saldo|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~7_cout\ = CARRY((\saldo_cartao[3]~input_o\ & (\D_Total_Reg|valor_compra\(3) & !\F_Comparador_Saldo|LessThan0~5_cout\)) # (!\saldo_cartao[3]~input_o\ & ((\D_Total_Reg|valor_compra\(3)) # 
-- (!\F_Comparador_Saldo|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[3]~input_o\,
	datab => \D_Total_Reg|valor_compra\(3),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~5_cout\,
	cout => \F_Comparador_Saldo|LessThan0~7_cout\);

-- Location: LCCOMB_X25_Y8_N8
\F_Comparador_Saldo|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~9_cout\ = CARRY((\saldo_cartao[4]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~7_cout\) # (!\D_Total_Reg|valor_compra\(4)))) # (!\saldo_cartao[4]~input_o\ & (!\D_Total_Reg|valor_compra\(4) & 
-- !\F_Comparador_Saldo|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[4]~input_o\,
	datab => \D_Total_Reg|valor_compra\(4),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~7_cout\,
	cout => \F_Comparador_Saldo|LessThan0~9_cout\);

-- Location: LCCOMB_X25_Y8_N10
\F_Comparador_Saldo|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~11_cout\ = CARRY((\D_Total_Reg|valor_compra\(5) & ((!\F_Comparador_Saldo|LessThan0~9_cout\) # (!\saldo_cartao[5]~input_o\))) # (!\D_Total_Reg|valor_compra\(5) & (!\saldo_cartao[5]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(5),
	datab => \saldo_cartao[5]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~9_cout\,
	cout => \F_Comparador_Saldo|LessThan0~11_cout\);

-- Location: LCCOMB_X25_Y8_N12
\F_Comparador_Saldo|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~13_cout\ = CARRY((\saldo_cartao[6]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~11_cout\) # (!\D_Total_Reg|valor_compra\(6)))) # (!\saldo_cartao[6]~input_o\ & (!\D_Total_Reg|valor_compra\(6) & 
-- !\F_Comparador_Saldo|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[6]~input_o\,
	datab => \D_Total_Reg|valor_compra\(6),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~11_cout\,
	cout => \F_Comparador_Saldo|LessThan0~13_cout\);

-- Location: LCCOMB_X25_Y8_N14
\F_Comparador_Saldo|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~15_cout\ = CARRY((\saldo_cartao[7]~input_o\ & (\D_Total_Reg|valor_compra\(7) & !\F_Comparador_Saldo|LessThan0~13_cout\)) # (!\saldo_cartao[7]~input_o\ & ((\D_Total_Reg|valor_compra\(7)) # 
-- (!\F_Comparador_Saldo|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[7]~input_o\,
	datab => \D_Total_Reg|valor_compra\(7),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~13_cout\,
	cout => \F_Comparador_Saldo|LessThan0~15_cout\);

-- Location: LCCOMB_X25_Y8_N16
\F_Comparador_Saldo|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~17_cout\ = CARRY((\saldo_cartao[8]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~15_cout\) # (!\D_Total_Reg|valor_compra\(8)))) # (!\saldo_cartao[8]~input_o\ & (!\D_Total_Reg|valor_compra\(8) & 
-- !\F_Comparador_Saldo|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[8]~input_o\,
	datab => \D_Total_Reg|valor_compra\(8),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~15_cout\,
	cout => \F_Comparador_Saldo|LessThan0~17_cout\);

-- Location: LCCOMB_X25_Y8_N18
\F_Comparador_Saldo|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~19_cout\ = CARRY((\saldo_cartao[9]~input_o\ & (\D_Total_Reg|valor_compra\(9) & !\F_Comparador_Saldo|LessThan0~17_cout\)) # (!\saldo_cartao[9]~input_o\ & ((\D_Total_Reg|valor_compra\(9)) # 
-- (!\F_Comparador_Saldo|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[9]~input_o\,
	datab => \D_Total_Reg|valor_compra\(9),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~17_cout\,
	cout => \F_Comparador_Saldo|LessThan0~19_cout\);

-- Location: LCCOMB_X25_Y8_N20
\F_Comparador_Saldo|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~21_cout\ = CARRY((\D_Total_Reg|valor_compra\(10) & (\saldo_cartao[10]~input_o\ & !\F_Comparador_Saldo|LessThan0~19_cout\)) # (!\D_Total_Reg|valor_compra\(10) & ((\saldo_cartao[10]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(10),
	datab => \saldo_cartao[10]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~19_cout\,
	cout => \F_Comparador_Saldo|LessThan0~21_cout\);

-- Location: LCCOMB_X25_Y8_N22
\F_Comparador_Saldo|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~23_cout\ = CARRY((\saldo_cartao[11]~input_o\ & (\D_Total_Reg|valor_compra\(11) & !\F_Comparador_Saldo|LessThan0~21_cout\)) # (!\saldo_cartao[11]~input_o\ & ((\D_Total_Reg|valor_compra\(11)) # 
-- (!\F_Comparador_Saldo|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[11]~input_o\,
	datab => \D_Total_Reg|valor_compra\(11),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~21_cout\,
	cout => \F_Comparador_Saldo|LessThan0~23_cout\);

-- Location: LCCOMB_X25_Y8_N24
\F_Comparador_Saldo|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~25_cout\ = CARRY((\saldo_cartao[12]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~23_cout\) # (!\D_Total_Reg|valor_compra\(12)))) # (!\saldo_cartao[12]~input_o\ & (!\D_Total_Reg|valor_compra\(12) & 
-- !\F_Comparador_Saldo|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[12]~input_o\,
	datab => \D_Total_Reg|valor_compra\(12),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~23_cout\,
	cout => \F_Comparador_Saldo|LessThan0~25_cout\);

-- Location: LCCOMB_X25_Y8_N26
\F_Comparador_Saldo|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~27_cout\ = CARRY((\D_Total_Reg|valor_compra\(13) & ((!\F_Comparador_Saldo|LessThan0~25_cout\) # (!\saldo_cartao[13]~input_o\))) # (!\D_Total_Reg|valor_compra\(13) & (!\saldo_cartao[13]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(13),
	datab => \saldo_cartao[13]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~25_cout\,
	cout => \F_Comparador_Saldo|LessThan0~27_cout\);

-- Location: LCCOMB_X25_Y8_N28
\F_Comparador_Saldo|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~29_cout\ = CARRY((\D_Total_Reg|valor_compra\(14) & (\saldo_cartao[14]~input_o\ & !\F_Comparador_Saldo|LessThan0~27_cout\)) # (!\D_Total_Reg|valor_compra\(14) & ((\saldo_cartao[14]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(14),
	datab => \saldo_cartao[14]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~27_cout\,
	cout => \F_Comparador_Saldo|LessThan0~29_cout\);

-- Location: LCCOMB_X25_Y8_N30
\F_Comparador_Saldo|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~31_cout\ = CARRY((\D_Total_Reg|valor_compra\(15) & ((!\F_Comparador_Saldo|LessThan0~29_cout\) # (!\saldo_cartao[15]~input_o\))) # (!\D_Total_Reg|valor_compra\(15) & (!\saldo_cartao[15]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(15),
	datab => \saldo_cartao[15]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~29_cout\,
	cout => \F_Comparador_Saldo|LessThan0~31_cout\);

-- Location: LCCOMB_X25_Y7_N0
\F_Comparador_Saldo|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~33_cout\ = CARRY((\D_Total_Reg|valor_compra\(16) & (\saldo_cartao[16]~input_o\ & !\F_Comparador_Saldo|LessThan0~31_cout\)) # (!\D_Total_Reg|valor_compra\(16) & ((\saldo_cartao[16]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(16),
	datab => \saldo_cartao[16]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~31_cout\,
	cout => \F_Comparador_Saldo|LessThan0~33_cout\);

-- Location: LCCOMB_X25_Y7_N2
\F_Comparador_Saldo|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~35_cout\ = CARRY((\saldo_cartao[17]~input_o\ & (\D_Total_Reg|valor_compra\(17) & !\F_Comparador_Saldo|LessThan0~33_cout\)) # (!\saldo_cartao[17]~input_o\ & ((\D_Total_Reg|valor_compra\(17)) # 
-- (!\F_Comparador_Saldo|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[17]~input_o\,
	datab => \D_Total_Reg|valor_compra\(17),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~33_cout\,
	cout => \F_Comparador_Saldo|LessThan0~35_cout\);

-- Location: LCCOMB_X25_Y7_N4
\F_Comparador_Saldo|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~37_cout\ = CARRY((\D_Total_Reg|valor_compra\(18) & (\saldo_cartao[18]~input_o\ & !\F_Comparador_Saldo|LessThan0~35_cout\)) # (!\D_Total_Reg|valor_compra\(18) & ((\saldo_cartao[18]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(18),
	datab => \saldo_cartao[18]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~35_cout\,
	cout => \F_Comparador_Saldo|LessThan0~37_cout\);

-- Location: LCCOMB_X25_Y7_N6
\F_Comparador_Saldo|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~39_cout\ = CARRY((\D_Total_Reg|valor_compra\(19) & ((!\F_Comparador_Saldo|LessThan0~37_cout\) # (!\saldo_cartao[19]~input_o\))) # (!\D_Total_Reg|valor_compra\(19) & (!\saldo_cartao[19]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(19),
	datab => \saldo_cartao[19]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~37_cout\,
	cout => \F_Comparador_Saldo|LessThan0~39_cout\);

-- Location: LCCOMB_X25_Y7_N8
\F_Comparador_Saldo|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~41_cout\ = CARRY((\saldo_cartao[20]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~39_cout\) # (!\D_Total_Reg|valor_compra\(20)))) # (!\saldo_cartao[20]~input_o\ & (!\D_Total_Reg|valor_compra\(20) & 
-- !\F_Comparador_Saldo|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[20]~input_o\,
	datab => \D_Total_Reg|valor_compra\(20),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~39_cout\,
	cout => \F_Comparador_Saldo|LessThan0~41_cout\);

-- Location: LCCOMB_X25_Y7_N10
\F_Comparador_Saldo|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~43_cout\ = CARRY((\D_Total_Reg|valor_compra\(21) & ((!\F_Comparador_Saldo|LessThan0~41_cout\) # (!\saldo_cartao[21]~input_o\))) # (!\D_Total_Reg|valor_compra\(21) & (!\saldo_cartao[21]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(21),
	datab => \saldo_cartao[21]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~41_cout\,
	cout => \F_Comparador_Saldo|LessThan0~43_cout\);

-- Location: LCCOMB_X25_Y7_N12
\F_Comparador_Saldo|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~45_cout\ = CARRY((\D_Total_Reg|valor_compra\(22) & (\saldo_cartao[22]~input_o\ & !\F_Comparador_Saldo|LessThan0~43_cout\)) # (!\D_Total_Reg|valor_compra\(22) & ((\saldo_cartao[22]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(22),
	datab => \saldo_cartao[22]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~43_cout\,
	cout => \F_Comparador_Saldo|LessThan0~45_cout\);

-- Location: LCCOMB_X25_Y7_N14
\F_Comparador_Saldo|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~47_cout\ = CARRY((\D_Total_Reg|valor_compra\(23) & ((!\F_Comparador_Saldo|LessThan0~45_cout\) # (!\saldo_cartao[23]~input_o\))) # (!\D_Total_Reg|valor_compra\(23) & (!\saldo_cartao[23]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(23),
	datab => \saldo_cartao[23]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~45_cout\,
	cout => \F_Comparador_Saldo|LessThan0~47_cout\);

-- Location: LCCOMB_X25_Y7_N16
\F_Comparador_Saldo|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~49_cout\ = CARRY((\saldo_cartao[24]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~47_cout\) # (!\D_Total_Reg|valor_compra\(24)))) # (!\saldo_cartao[24]~input_o\ & (!\D_Total_Reg|valor_compra\(24) & 
-- !\F_Comparador_Saldo|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[24]~input_o\,
	datab => \D_Total_Reg|valor_compra\(24),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~47_cout\,
	cout => \F_Comparador_Saldo|LessThan0~49_cout\);

-- Location: LCCOMB_X25_Y7_N18
\F_Comparador_Saldo|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~51_cout\ = CARRY((\saldo_cartao[25]~input_o\ & (\D_Total_Reg|valor_compra\(25) & !\F_Comparador_Saldo|LessThan0~49_cout\)) # (!\saldo_cartao[25]~input_o\ & ((\D_Total_Reg|valor_compra\(25)) # 
-- (!\F_Comparador_Saldo|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[25]~input_o\,
	datab => \D_Total_Reg|valor_compra\(25),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~49_cout\,
	cout => \F_Comparador_Saldo|LessThan0~51_cout\);

-- Location: LCCOMB_X25_Y7_N20
\F_Comparador_Saldo|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~53_cout\ = CARRY((\saldo_cartao[26]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~51_cout\) # (!\D_Total_Reg|valor_compra\(26)))) # (!\saldo_cartao[26]~input_o\ & (!\D_Total_Reg|valor_compra\(26) & 
-- !\F_Comparador_Saldo|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[26]~input_o\,
	datab => \D_Total_Reg|valor_compra\(26),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~51_cout\,
	cout => \F_Comparador_Saldo|LessThan0~53_cout\);

-- Location: LCCOMB_X25_Y7_N22
\F_Comparador_Saldo|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~55_cout\ = CARRY((\D_Total_Reg|valor_compra\(27) & ((!\F_Comparador_Saldo|LessThan0~53_cout\) # (!\saldo_cartao[27]~input_o\))) # (!\D_Total_Reg|valor_compra\(27) & (!\saldo_cartao[27]~input_o\ & 
-- !\F_Comparador_Saldo|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(27),
	datab => \saldo_cartao[27]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~53_cout\,
	cout => \F_Comparador_Saldo|LessThan0~55_cout\);

-- Location: LCCOMB_X25_Y7_N24
\F_Comparador_Saldo|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~57_cout\ = CARRY((\D_Total_Reg|valor_compra\(28) & (\saldo_cartao[28]~input_o\ & !\F_Comparador_Saldo|LessThan0~55_cout\)) # (!\D_Total_Reg|valor_compra\(28) & ((\saldo_cartao[28]~input_o\) # 
-- (!\F_Comparador_Saldo|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D_Total_Reg|valor_compra\(28),
	datab => \saldo_cartao[28]~input_o\,
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~55_cout\,
	cout => \F_Comparador_Saldo|LessThan0~57_cout\);

-- Location: LCCOMB_X25_Y7_N26
\F_Comparador_Saldo|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~59_cout\ = CARRY((\saldo_cartao[29]~input_o\ & (\D_Total_Reg|valor_compra\(29) & !\F_Comparador_Saldo|LessThan0~57_cout\)) # (!\saldo_cartao[29]~input_o\ & ((\D_Total_Reg|valor_compra\(29)) # 
-- (!\F_Comparador_Saldo|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[29]~input_o\,
	datab => \D_Total_Reg|valor_compra\(29),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~57_cout\,
	cout => \F_Comparador_Saldo|LessThan0~59_cout\);

-- Location: LCCOMB_X25_Y7_N28
\F_Comparador_Saldo|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~61_cout\ = CARRY((\saldo_cartao[30]~input_o\ & ((!\F_Comparador_Saldo|LessThan0~59_cout\) # (!\D_Total_Reg|valor_compra\(30)))) # (!\saldo_cartao[30]~input_o\ & (!\D_Total_Reg|valor_compra\(30) & 
-- !\F_Comparador_Saldo|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[30]~input_o\,
	datab => \D_Total_Reg|valor_compra\(30),
	datad => VCC,
	cin => \F_Comparador_Saldo|LessThan0~59_cout\,
	cout => \F_Comparador_Saldo|LessThan0~61_cout\);

-- Location: LCCOMB_X25_Y7_N30
\F_Comparador_Saldo|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_Comparador_Saldo|LessThan0~62_combout\ = (\saldo_cartao[31]~input_o\ & ((\F_Comparador_Saldo|LessThan0~61_cout\) # (!\D_Total_Reg|valor_compra\(31)))) # (!\saldo_cartao[31]~input_o\ & (!\D_Total_Reg|valor_compra\(31) & 
-- \F_Comparador_Saldo|LessThan0~61_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_cartao[31]~input_o\,
	datab => \D_Total_Reg|valor_compra\(31),
	cin => \F_Comparador_Saldo|LessThan0~61_cout\,
	combout => \F_Comparador_Saldo|LessThan0~62_combout\);

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

ww_total_itens_lt_32 <= \total_itens_lt_32~output_o\;

ww_saldo_lt_total <= \saldo_lt_total~output_o\;
END structure;


