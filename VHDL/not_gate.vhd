library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity not_gate is

port(

	input	:	in std_logic;
	output: out std_logic
	
);

end entity not_gate;

architecture behavioral of not_gate is
begin

	output <= not input;
	

end architecture behavioral;