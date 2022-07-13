library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity comparador_itens is
	generic (
		W : integer := 7;
		max_itens : std_logic_vector (6 downto 0) := std_logic_vector(to_unsigned(32, 7))
	);
	port (  
		total_itens :IN STD_LOGIC_VECTOR(W-1 downto 0);
      total_itens_lt_32 :OUT STD_LOGIC
	);

end comparador_itens;

architecture comparador_itens of comparador_itens is

begin
	with total_itens < max_itens select

	total_itens_lt_32 <=  '1' when true,
						 '0' when others;

end comparador_itens;