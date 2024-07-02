library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity choose32_top is
port(

	switch	: in std_logic_vector(8 downto 0);
	output1, output2	: out std_logic_vector(4 downto 0)

);

end choose32_top;

architecture structural of choose32_top is
begin

test	: entity work.choose32 port map(switch, output1, output2);

end architecture structural;