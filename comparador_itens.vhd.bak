library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador_peso is
generic (
		Fixo : std_logic_vector (15 downto 0) := x"4E20"
	);
port (  
		a :IN STD_LOGIC_VECTOR(0 to 15); -- primeira entrada
--    b :IN STD_LOGIC_VECTOR(0 to 15); -- segunda entrada
      peso_excessivo :OUT STD_LOGIC);					 -- saída A > B 

end comparador_peso;

architecture dataflow_comparador_peso of comparador_peso is

begin
	with a > Fixo select

	peso_excessivo <=   '1' when true,
							  '0' when others;

end dataflow_comparador_peso;