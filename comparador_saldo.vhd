library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity comparador_saldo is
	generic (
		W : integer := 32
	);
	port (  
		valor_total :IN STD_LOGIC_VECTOR(W-1 downto 0);
		saldo_cartao :IN STD_LOGIC_VECTOR(W-1 downto 0);
      saldo_lt_total :OUT STD_LOGIC
	);

end comparador_saldo;

architecture comparador_saldo of comparador_saldo is

begin
	with (valor_total < saldo_cartao) select

	saldo_lt_total <=  '1' when true,
						 '0' when others;

end comparador_saldo;