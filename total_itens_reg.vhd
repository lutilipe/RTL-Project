library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity total_itens_reg is
	 generic (
        W       :       integer := 7
    );
	 
    port (
        total_itens_in : in std_logic_vector(W-1 downto 0);
        ld, clock, clear : in std_logic;
        quantidade_itens : out std_logic_vector(W-1 downto 0) := (others => '0')
    );
end total_itens_reg;

architecture total_itens_reg of total_itens_reg is
    begin
    reg: process(clock, clear, ld)
        begin
			if (clear = '1') then
				quantidade_itens <= (others => '0');
			elsif (rising_edge(clock) and ld = '1')  then
				quantidade_itens <= total_itens_in;
			end if;
    end process;
end total_itens_reg;
