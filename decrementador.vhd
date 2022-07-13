library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decrementador is
	generic (
        W       :       integer := 7
    );
	port (	
		x 	: in std_logic_vector(W-1 downto 0);
		s 		: out std_logic_vector(W-1 downto 0)
	);
end decrementador;

architecture decrementador of decrementador is
constant v : std_logic_vector(W-1 downto 0) := "0000001";
begin
		s <= x - v;
end decrementador;
