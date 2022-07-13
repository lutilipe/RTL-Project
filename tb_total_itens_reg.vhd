 library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_total_itens_reg is
end tb_total_itens_reg;

architecture teste of tb_total_itens_reg is

component total_itens_reg is
    port (
        total_itens_in : in std_logic_vector(6 downto 0);
        ld, clock, clear : in std_logic;
        quantidade_itens : out std_logic_vector(6 downto 0)
    );
end component total_itens_reg;

signal total_itens_in, quantidade_itens: std_logic_vector(6 downto 0);
signal clock, ld, clear : std_logic;

begin
	instancia_total_itens_reg: total_itens_reg port map(
		total_itens_in => total_itens_in,
		ld => ld,
		clock => clock,
		clear => clear,
		quantidade_itens => quantidade_itens
	);
	
	process
	begin
		clock <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
	end process;

	process
	begin
		clear <= '0';
		ld <= '1';	total_itens_in <= std_logic_vector(to_unsigned(32, 7)); wait for 20 ns;	

	end process;
end teste;
