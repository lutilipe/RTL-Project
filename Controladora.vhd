library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controladora is
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

end entity;

architecture RTLControladora of Controladora is

type estado is (
	inicio,
	edicao_da_compra,
	confere_adicao,
	adiciona,
	error,
	remove,
	confirma,
	pagar,
	verifica_saldo,
	sucesso
);

signal estado_atual : estado := inicio;
signal proximo_estado : estado := inicio;

-------------------------------------------------
--          Auxiliares para os botoes
-- identificar se o botao foi pressionado e solto
-------------------------------------------------
signal aux_inicia_compra : std_logic := '0';
signal aux_finaliza_compra : std_logic := '0';
signal aux_cancelar : std_logic := '0';
signal aux_pagar_compra : std_logic := '0';

begin

	-- REGISTRADOR DE ESTADOS --
	
	process(clear, clock) is	
	begin
		if(clear = '1') then
			estado_atual <= inicio;
		elsif(rising_edge(clock)) then
			estado_atual <= proximo_estado;

			aux_inicia_compra <= inicia_compra;
			aux_finaliza_compra <= finaliza_compra;
			aux_cancelar <= cancelar;
			aux_pagar_compra <= pagar_compra;
		end if;
	end process;
	
	process (
		inicia_compra,
		finaliza_compra,
		cancelar,
		pagar_compra,
		cartao_lido,
		add,
		del,
		total_itens_lt_32,
		saldo_lt_total,
		estado_atual
	)

	begin
	
	ld_total <= '0';
	clr_total <= '0';
	ld_total_itens <= '0';
	clr_total_itens <= '0';
	
	erro <= '0';
	concluido <= '0';
	desconta <= '0';
	ler_pagamento <= '0';
					
	case estado_atual is 
		when inicio =>
			concluido <= '0';
			desconta <= '0';
			clr_total <= '1';
			clr_total_itens <= '1';
			ld_total_itens <= '0';
			ld_total <= '0';
			erro <= '0';
			if (inicia_compra = '1') then
				proximo_estado <= edicao_da_compra;
			else
				proximo_estado <= inicio;
			end if;

		when edicao_da_compra =>
			clr_total <= '0';
			clr_total_itens <= '0';
			ld_total_itens <= '0';
			ld_total <= '0';
			erro <= '0';

			if (add = '1') then
				proximo_estado <= confere_adicao;
			elsif (del = '1') then
				proximo_estado <= remove;
			elsif (finaliza_compra = '1') then
				proximo_estado <= confirma;
			else
				proximo_estado <= edicao_da_compra;
			end if;
		
		when confere_adicao =>
			if (total_itens_lt_32 = '1') then
				proximo_estado <= adiciona;
			else
				proximo_estado <= error;
			end if;
		
		when adiciona =>
			ld_total_itens <= '1';
			ld_total <= '1';
			proximo_estado <= edicao_da_compra;

		when error =>
			erro <= '1';
			proximo_estado <= edicao_da_compra;

		when remove =>
			ld_total_itens <= '1';
			ld_total <= '1';
			proximo_estado <= edicao_da_compra;
		
		when confirma =>
			if (add = '1') then
				proximo_estado <= confere_adicao;
			elsif (del = '1') then
				proximo_estado <= remove;
			elsif (cancelar = '1') then
				proximo_estado <= edicao_da_compra;
			elsif (pagar_compra = '1') then
				proximo_estado <= pagar;
			else
				proximo_estado <= confirma;
			end if;
		
		when pagar =>
			ler_pagamento <= '1';
			if (add = '1') then
				proximo_estado <= confere_adicao;
			elsif (del = '1') then
				proximo_estado <= remove;
			elsif (cancelar = '1') then
				proximo_estado <= edicao_da_compra;
			elsif (cartao_lido = '1') then
				proximo_estado <= verifica_saldo;
			else
				proximo_estado <= pagar;
			end if;

		when verifica_saldo =>
			ler_pagamento <= '0';
			if (saldo_lt_total = '0') then
				proximo_estado <= sucesso;
			else
				proximo_estado <= pagar;
			end if;
		
		when sucesso =>
			concluido <= '1';
			desconta <= '1';
			proximo_estado <= inicio;
			
		end case;
	end process;
 
end RTLControladora;