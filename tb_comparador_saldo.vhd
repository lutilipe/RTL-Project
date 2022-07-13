library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_comparador_saldo is
end tb_comparador_saldo;

architecture teste of tb_comparador_saldo is

component comparador_saldo is
	port (  
		valor_total :IN STD_LOGIC_VECTOR(31 downto 0);
		saldo_cartao :IN STD_LOGIC_VECTOR(31 downto 0);
      saldo_lt_total :OUT STD_LOGIC
	);

end component comparador_saldo;

signal A, B : std_logic_vector(31 downto 0);
signal S : std_logic;
begin
	instancia_comparador_saldo: comparador_saldo 
		port map(valor_total=>A,saldo_cartao=>B,saldo_lt_total=>S);

	A <= std_logic_vector(to_unsigned(52, 32)), std_logic_vector(to_unsigned(50, 32)) after 30ns, std_logic_vector(to_unsigned(42, 32)) after 50ns;
	B <= std_logic_vector(to_unsigned(50, 32)), std_logic_vector(to_unsigned(50, 32)) after 30ns, std_logic_vector(to_unsigned(50, 32)) after 50ns;
end teste;
