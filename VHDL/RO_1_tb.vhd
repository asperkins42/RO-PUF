library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RO_1_tb is
end RO_1_tb;

architecture structural of RO_1_tb is

signal enable, output	: std_logic := '0';

begin

DUT : entity work.RO_1 port map(enable, output);

process
	begin
	
	wait for 30 ns;

	enable <= '1';

	wait for 100 ps;

	enable <= '0';
	
	
	end process;

end structural;