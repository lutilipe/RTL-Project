 library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_DataPath is
end tb_DataPath;

architecture teste of tb_DataPath is

component DataPath is
   port (
		-- ENTRADAS --
		valor_produto : in std_logic_vector(31 downto 0);
		saldo_cartao : in std_logic_vector(31 downto 0);
		
		ld_total : in std_logic;
		clr_total : in std_logic;
		ld_total_itens : in std_logic;
		clr_total_itens : in std_logic;
		
		add_sel, del_sel : in std_logic;
		
		clock : in std_logic;
		
		-- SAIDAS --
		
		saldo_restante : out std_logic_vector(31 downto 0);
		valor_compra : out std_logic_vector(31 downto 0);
		quantidade_itens : out std_logic_vector(6 downto 0);
		
		total_itens_lt_32 : out std_logic;
		saldo_lt_total : out std_logic
    );
end component DataPath;


signal ld_total, clr_total, ld_total_itens, clr_total_itens, add_sel, del_sel : std_logic;
signal clock : std_logic;
signal valor_produto, saldo_cartao : std_logic_vector(31 downto 0);

signal saldo_restante, valor_compra : std_logic_vector(31 downto 0);
signal quantidade_itens : std_logic_vector(6 downto 0);
signal total_itens_lt_32, saldo_lt_total : std_logic;

begin
	instancia_DataPath: DataPath 
	port map(
		ld_total=>ld_total,
		clr_total=>clr_total,
		ld_total_itens=>ld_total_itens,
		clr_total_itens=>clr_total_itens,
		add_sel=>add_sel,
		del_sel=>del_sel,
		clock=>clock,
		valor_produto=>valor_produto,
		saldo_cartao=>saldo_cartao,
		saldo_restante=>saldo_restante,
		valor_compra=>valor_compra,
		quantidade_itens=>quantidade_itens,
		total_itens_lt_32=>total_itens_lt_32,
		saldo_lt_total=>saldo_lt_total
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
		
		clr_total <= '0';
		clr_total_itens <= '0';
		ld_total <= '0';
		ld_total_itens <= '0';
		add_sel <= '0';
		del_sel <= '0';
		
		saldo_cartao <= std_logic_vector(to_unsigned(100, 32));
		clr_total <= '0';
		clr_total_itens <= '0';
		wait for 5 ns;
		
		valor_produto <= std_logic_vector(to_unsigned(30, 32));
		add_sel <= '1';
		ld_total <= '1';
		ld_total_itens <= '1';
		wait for 20 ns;
		
		add_sel <= '0';
		del_sel <= '1';
		valor_produto <= std_logic_vector(to_unsigned(20, 32));
		ld_total <= '1';
		ld_total_itens <= '1';
		wait for 10 ns;
		
		add_sel <= '0';
		del_sel <= '0';
		ld_total <= '0';
		ld_total_itens <= '0';
		wait;
		
		
	end process;

end teste;