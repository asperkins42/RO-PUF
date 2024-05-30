library ieee;
use ieee.std_logic_1164.all;

entity ring_oscillator_tb is
end entity ring_oscillator_tb;

architecture tb of ring_oscillator_tb is

	signal run		:	std_logic;
	signal output	:	std_logic;

begin

DUT : entity work.ring_oscillator port map (run, output);

run <= '1' after 1 ns;
run <= '0' after 1 ns;


end architecture tb;