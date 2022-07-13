library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_mux_4_1 is
end tb_mux_4_1;

architecture teste of tb_mux_4_1 is

component mux_4_1 IS
	GENERIC (
		W : integer
	);
	PORT(
		in0,in1,in2,in3	:	IN	STD_LOGIC_VECTOR(31 DOWNTO 0);
		sel				:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		out1			:	OUT	STD_LOGIC_VECTOR(31 DOWNTO 0));
END component mux_4_1;

signal A, B, C, D, S: std_logic_vector(31 downto 0);
signal sel : std_logic_vector(1 DOWNTO 0);
begin
	instancia_mux_4_1: mux_4_1 
		generic map(W=>32)
		port map(in0=>A,in1=>B,in2=>C,in3=>D,out1=>S, sel => sel);

	A <= std_logic_vector(to_unsigned(2, 32));
	B <= std_logic_vector(to_unsigned(50, 32));
	C <= std_logic_vector(to_unsigned(5, 32));
	D <= std_logic_vector(to_unsigned(100,32));
	
	sel <= "00", "01" after 20ns, "10" after 40ns, "11" after 80ns;
end teste;
