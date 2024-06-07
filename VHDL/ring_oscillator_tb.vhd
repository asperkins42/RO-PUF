library ieee;
use ieee.std_logic_1164.all;

entity ring_oscillator_tb is
end entity ring_oscillator_tb;

architecture tb of ring_oscillator_tb is

	signal run		:	std_logic := '0';
	signal output	:	std_logic;
	signal oscillate: std_logic_vector(30 downto 0) := (others => '0');

begin

--DUT : entity work.fromWeb port map (run, output);

	process
	begin
	
		wait for 100 ns;

		run <= '1';
	
		wait for 100 ns;
		
		run <= '0';
		
		wait;
		
	end process;
		
end architecture tb;