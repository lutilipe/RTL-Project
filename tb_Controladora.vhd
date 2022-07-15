 library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_Controladora is
end tb_Controladora;

architecture teste of tb_Controladora is

component Controladora is
    port ( 
		--Entradas--

		inicia_compra : in std_logic;
		finaliza_compra : in std_logic;
		cancelar : in std_logic;
		pagar_compra : in std_logic;
		cartao_lido : in std_logic;
		add : in std_logic;
		del : in std_logic;
		
		total_itens_lt_32 : in std_logic;
		saldo_lt_total : in std_logic;
		
		clock : in std_logic;
		clear : in std_logic;
		
		--Saídas--
		
		ld_total : out std_logic;
		clr_total : out std_logic;
		ld_total_itens : out std_logic;
		clr_total_itens : out std_logic;
		
		add_sel : out std_logic;
		del_sel : out std_logic;
		
		erro : out std_logic;
		concluido : out std_logic;
		desconta : out std_logic;
		ler_pagamento : out std_logic
    );

end component Controladora;

signal inicia_compra, finaliza_compra, cancelar, pagar_compra, cartao_lido, add, del : std_logic;
signal clock, clear : std_logic;
signal total_itens_lt_32, saldo_lt_total, ld_total, clr_total, ld_total_itens, clr_total_itens, add_sel, del_sel : std_logic;
signal erro, concluido, desconta, ler_pagamento : std_logic;

begin
	instancia_Controladora: Controladora 
	port map(
		inicia_compra=>inicia_compra,
		finaliza_compra=>finaliza_compra,
		cancelar=>cancelar,
		pagar_compra=>pagar_compra,
		cartao_lido=>cartao_lido,
		add=>add,
		del=>del,
		clock=>clock,
		clear=>clear,
		ld_total=>ld_total,
		clr_total=>clr_total,
		ld_total_itens=>ld_total_itens,
		clr_total_itens=>clr_total_itens,
		add_sel=>add_sel,
		del_sel=>del_sel,
		total_itens_lt_32=>total_itens_lt_32,
		saldo_lt_total=>saldo_lt_total,
		erro=>erro,
		concluido=>concluido,
		desconta=>desconta,
		ler_pagamento=>ler_pagamento
	);
	
	-- Estimulo do clock --
	process
	begin
		clock <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
	end process;
	
	-- Estimulo entradas
	process
	begin
		total_itens_lt_32 <= '1';
		inicia_compra <= '1';
		finaliza_compra <= '0';
		cancelar <= '0';
		pagar_compra <= '0';
		cartao_lido <= '0';
		clear <= '0';
		saldo_lt_total <= '0';
		add <= '0';
		del <= '0';
		wait for 40 ns;
		
		inicia_compra <= '0';
		wait for 1 ns;
		
		add <= '1';
		wait for 50 ns;
		
		add <= '0';
		wait for 50 ns;
		
		del <= '1';
		wait for 50 ns;
		
		del <= '0';
		wait for 50 ns;
		
		finaliza_compra <= '1';
		wait for 50 ns;
		
		finaliza_compra <= '0';
		wait for 50 ns;
		
		pagar_compra <= '1';
		wait for 50 ns;
		
		pagar_compra <= '0';
		wait for 50 ns;
		
		cartao_lido <= '1';
		wait for 50 ns;
		
		add <= '0';
		del <= '0';
		cartao_lido <= '0';
		wait;
		
	end process;

end teste;