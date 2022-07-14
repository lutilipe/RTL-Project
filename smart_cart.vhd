LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity smart_cart is
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
end smart_cart;

architecture RTLsmart_cart of smart_cart is

component DataPath is
   port (
		-- ENTRADAS --
		valor_produto : in std_logic_vector(31 downto 0);
		saldo_cartao : in std_logic_vector(31 downto 0);
		
		ld_total : in std_logic;
		clr_total : in std_logic;
		ld_total_itens : in std_logic;
		clr_total_itens : in std_logic;
		
		add, del : in std_logic;
		
		clock : in std_logic;
		
		-- SAIDAS --
		
		saldo_restante : out std_logic_vector(31 downto 0);
		valor_compra : out std_logic_vector(31 downto 0);
		quantidade_itens : out std_logic_vector(6 downto 0);
		
		total_itens_lt_32 : out std_logic;
		saldo_lt_total : out std_logic
    );
end component DataPath;

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
		
		erro : out std_logic;
		concluido : out std_logic;
		desconta : out std_logic;
		ler_pagamento : out std_logic
    );

end component Controladora;

-- Signals entre Controladora e Datapath -- 

signal aux_total_itens_lt_32 : std_logic;
signal aux_saldo_lt_total : std_logic;
signal aux_ld_total : std_logic;
signal aux_clr_total : std_logic;
signal aux_ld_total_itens : std_logic;
signal aux_clr_total_itens : std_logic;

begin
										  
	A_Controladora : Controladora
		port map (
			inicia_compra => inicia_compra,
			finaliza_compra => finaliza_compra,
			cancelar => cancelar,
			pagar_compra => pagar_compra,
			cartao_lido => cartao_lido,
			add => add,
			del => del,
			clock => clock,
			clear => clear_controladora,
			total_itens_lt_32 => aux_total_itens_lt_32,
			saldo_lt_total => aux_saldo_lt_total,
			ld_total => aux_ld_total,
			clr_total => aux_clr_total,
			ld_total_itens => aux_ld_total_itens,
			clr_total_itens => aux_clr_total_itens,
			erro => erro,
			concluido => concluido,
			desconta => desconta,
			ler_pagamento => ler_pagamento
		);
		
	B_DataPath : DataPath  
		port map (
			valor_produto => valor_produto,
			saldo_cartao => saldo_cartao,
			clock => clock,
			add => add,
			del => del,
			ld_total => aux_ld_total,
			clr_total => aux_clr_total,
			ld_total_itens => aux_ld_total_itens,
			clr_total_itens => aux_clr_total_itens,
			saldo_restante => saldo_restante,
			valor_compra => valor_compra,
			quantidade_itens => quantidade_itens,
			total_itens_lt_32 => aux_total_itens_lt_32,
			saldo_lt_total => aux_saldo_lt_total
		);

end RTLsmart_cart ;