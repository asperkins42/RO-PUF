library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end entity counter_tb;

architecture counter_tb_arch of counter_tb is

signal input, sendIt : std_logic := '0';
signal count : std_logic_vector(7 downto 0) := (others => '0');

begin

DUT : entity work.counter port map (input, count, sendIt);

input <= not input after 2 ns;

end architecture counter_tb_arch;