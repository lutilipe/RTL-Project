library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_decrementador is
end tb_decrementador;

architecture teste of tb_decrementador is

component decrementador is
	port (	
		x 	: in std_logic_vector(6 downto 0);
		s 		: out std_logic_vector(6 downto 0)
	);
end component;

signal A, S: std_logic_vector(6 downto 0);
begin
	instancia_decrementador: decrementador port map(x=>A,s=>S);

	A <= std_logic_vector(to_unsigned(2, 7)), std_logic_vector(to_unsigned(3, 7)) after 20 ns;
end teste;
