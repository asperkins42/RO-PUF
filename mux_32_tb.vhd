library ieee;
use ieee.std_logic_1164.all;

entity mux_32_tb is
end entity mux_32_tb;

architecture tb of mux_32_tb is

	signal sel		:	std_logic_vector(4 downto 0);
	signal input 	:  std_logic_vector(31 downto 0);
	signal output	:	std_logic;

begin

DUT : entity work.mux_32 port map (sel, input, output);

	process
	begin
		wait for 10 ns;	
		input <= "10000000000000000000000000000000";
		wait for 7 ns;
		sel <= "11111";
		wait for 9 ns;
		sel <= "00100";
		wait;
	end process;

end architecture tb;