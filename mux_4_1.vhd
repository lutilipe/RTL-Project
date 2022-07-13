LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_4_1 IS
	GENERIC (
		W : integer := 7
	);
	PORT(
		in0,in1,in2,in3	:	in	std_logic_vector(W-1 DOWNTO 0);
		s0, s1				:	in std_logic;
		out1			:	out	std_logic_vector(W-1 DOWNTO 0));
END mux_4_1;

ARCHITECTURE mux_4_1 OF mux_4_1 IS
BEGIN
	mux1 : process (s0, s1)
		BEGIN
		if (s0 = '0' and s1 = '0') then
			out1 <= in0;
		elsif (s0 = '1' and s1 = '0') then
			out1 <= in1;
		elsif (s0 = '0' and s1 = '1') then
			out1 <= in2;
		elsif (s0 = '1' and s1 = '1') then
			out1 <= in3;
		else 
			out1 <= in0;
		end if;
	end process mux1;
END mux_4_1;
