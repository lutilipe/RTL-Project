library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_subtrator is
end tb_subtrator;

architecture teste of tb_subtrator is

component subtrator is
	port (	
		x, y 	: in std_logic_vector(31 downto 0);
		s 		: out std_logic_vector(31 downto 0)
	);
end component subtrator;


signal A, B, S: std_logic_vector(31 downto 0);
begin
	instancia_subtrator: subtrator port map(x=>A,y=>B,s=>S);

	A <= std_logic_vector(to_unsigned(52, 32)), std_logic_vector(to_unsigned(4, 32)) after 20 ns;
	B <= std_logic_vector(to_unsigned(2, 32)), std_logic_vector(to_unsigned(3, 32)) after 10 ns;
end teste;
