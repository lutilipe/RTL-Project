library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_comparador_itens is
end tb_comparador_itens;

architecture teste of tb_comparador_itens is

component comparador_itens is
	port (  
		total_itens : IN STD_LOGIC_VECTOR(6 downto 0);
      total_itens_lt_32 : OUT STD_LOGIC
	);

end component comparador_itens;

signal A : std_logic_vector(6 downto 0);
signal S : std_logic;
begin
	instancia_comparador_itens: comparador_itens 
		port map(total_itens=>A,total_itens_lt_32=>S);

	A <= std_logic_vector(to_unsigned(30, 7)), std_logic_vector(to_unsigned(32, 7)) after 30ns;
end teste;
