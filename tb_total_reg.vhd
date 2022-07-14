 library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_total_reg is
end tb_total_reg;

architecture teste of tb_total_reg is

component total_reg is
    port (
        total_in : in std_logic_vector(31 downto 0);
        ld, clock, clear : in std_logic;
        valor_compra : out std_logic_vector(31 downto 0)
    );
end component total_reg;

signal total_in, valor_compra: std_logic_vector(31 downto 0);
signal clock, ld, clear : std_logic;

begin
	instancia_total_reg: total_reg port map(
		total_in => total_in,
		ld => ld,
		clock => clock,
		clear => clear,
		valor_compra => valor_compra
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
		ld <= '1';	
		total_in <= std_logic_vector(to_unsigned(32, 32)); wait for 20 ns;	
		total_in <= std_logic_vector(to_unsigned(55, 32)); wait for 20 ns;	

	end process;
end teste;
