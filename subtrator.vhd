library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity subtrator is
	port (	
		x, y 	: in std_logic_vector(31 downto 0);
		s 		: out std_logic_vector(31 downto 0)
	);
end subtrator;

architecture subtrator of subtrator is
begin
		s <= x - y;
end subtrator;
