library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is
	port (	
		x, y 	: in std_logic_vector(31 downto 0);
		s 		: out std_logic_vector(31 downto 0)
	);
end somador;

architecture somador of somador is
begin
		s <= x + y;
end somador;
