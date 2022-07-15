library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_smart_cart is
end tb_smart_cart;

architecture teste of tb_smart_cart is

component smart_cart is
	port (
		-- Entradas
		
		inicia_compra : in std_logic;
		finaliza_compra : in std_logic;
		cancelar : in std_logic;
		pagar_compra : in std_logic;
		cartao_lido : in std_logic;
		add : in std_logic;
		del : in std_logic;
		
      clock : in std_logic;
		clear_controladora : in std_logic;
		
		valor_produto : in std_logic_vector(31 downto 0);
		saldo_cartao : in std_logic_vector(31 downto 0);
		
		-- Saidas 

		saldo_restante : out std_logic_vector(31 downto 0);
		valor_compra : out std_logic_vector(31 downto 0);
		quantidade_itens : out std_logic_vector(6 downto 0);
		
		erro : out std_logic;
		concluido : out std_logic;
		desconta : out std_logic;
		ler_pagamento : out std_logic
    );
end component smart_cart;


signal inicia_compra, finaliza_compra, cancelar, pagar_compra, cartao_lido, add, del : std_logic;
signal clock, clear : std_logic;
signal valor_produto, saldo_cartao : std_logic_vector(31 downto 0);

signal saldo_restante, valor_compra : std_logic_vector(31 downto 0);
signal quantidade_itens : std_logic_vector(6 downto 0);
signal erro, concluido, desconta, ler_pagamento : std_logic;

begin
	instancia_smart_cart: smart_cart 
	port map(
		inicia_compra=>inicia_compra,
		finaliza_compra=>finaliza_compra,
		cancelar=>cancelar,
		pagar_compra=>pagar_compra,
		cartao_lido=>cartao_lido,
		add=>add,
		del=>del,
		clock=>clock,
		clear_controladora=>clear,
		valor_produto=>valor_produto,
		saldo_cartao=>saldo_cartao,
		saldo_restante=>saldo_restante,
		valor_compra=>valor_compra,
		quantidade_itens=>quantidade_itens,
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
		clear <= '0';
		
		saldo_cartao <= std_logic_vector(to_unsigned(100, 32));
		valor_produto <= std_logic_vector(to_unsigned(0, 32));

		inicia_compra <= '1';
		finaliza_compra <= '0';
		cancelar <= '0';
		pagar_compra <= '0';
		cartao_lido <= '0';
		clear <= '0';
		add <= '0';
		del <= '0';
		wait for 40 ns;
		
		inicia_compra <= '0';
		wait for 1 ns;
		
		add <= '1';
		valor_produto <= std_logic_vector(to_unsigned(32, 32));
		wait for 50 ns;
		
		add <= '0';
		wait for 50 ns;
		
		add <= '1';
		valor_produto <= std_logic_vector(to_unsigned(20, 32));
		wait for 50 ns;
		
		add <= '0';
		wait for 50 ns;
		
		del <= '1';
		valor_produto <= std_logic_vector(to_unsigned(32, 32));
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
		
		cartao_lido <= '0';
		wait;
		
	end process;

end teste;