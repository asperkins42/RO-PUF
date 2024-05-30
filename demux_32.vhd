---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 24, 2024
--
-- Description:
-- Takes in the 10 select bits and enables two ROs based on the inputs.
--
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity demux_32 is

	port
		(
			sel					:   in  std_logic_vector(9 downto 0);
			input				:	in	std_logic;
			output				:	out	std_logic_vector(31 downto 0)
		);

end entity demux_32;

architecture demux_32_arch of demux_32 is
begin

	process(sel, input)
	begin

-- UNTESTED: This line should perform the following operation: cast sel from std_logic_vector to unsigned integer, then use that integer value as the index for input.
		output(to_integer(unsigned(sel(9 downto 5)))) <= input;
		output(to_integer(unsigned(sel(4 downto 0)))) <= input;
	end process;

end architecture demux_32_arch;
