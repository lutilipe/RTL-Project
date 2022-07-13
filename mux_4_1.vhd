LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_4_1 IS
	GENERIC (
		W : integer := 7
	);
	PORT(
		in0,in1,in2,in3	:	IN	STD_LOGIC_VECTOR(W-1 DOWNTO 0);
		sel				:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		out1			:	OUT	STD_LOGIC_VECTOR(W-1 DOWNTO 0));
END mux_4_1;

ARCHITECTURE mux_4_1 OF mux_4_1 IS
BEGIN
	WITH sel SELECT
		out1	<=	in0 WHEN "00",
					in1 WHEN "01",
					in2 WHEN "10",
					in3 WHEN "11",
					(OTHERS => '0') WHEN OTHERS;
END mux_4_1;
