library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity total_reg is
    port (
        total_in : in std_logic_vector(31 downto 0);
        ld, clock, clear : in std_logic;
        valor_compra : out std_logic_vector(31 downto 0) := (others => '0')
    );
end total_reg;

architecture total_reg of total_reg is
    begin
    reg: process(clock, clear, ld)
        begin
			if (clear = '1') then
				valor_compra <= (others => '0');
			elsif (rising_edge(clock) and ld = '1')  then
				valor_compra <= total_in;
			end if;
    end process;
end total_reg;
