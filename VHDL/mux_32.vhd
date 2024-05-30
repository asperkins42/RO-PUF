---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 24, 2024
--
-- Description:
-- Takes in 32 std_logic bits and uses a 5-bit select line to pass 
-- one of the 32 inputs to the output. 
--
-- NEW FUNCTION USED: unsigned()
-- from std_logic_arith - casts the std_logic_vector to an integer to be utilized 
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity mux_32 is

	port
		(
			sel					:   in  std_logic_vector(4 downto 0);
			input				:	in	std_logic_vector(31 downto 0);
			output				:	out	std_logic
		);

end entity mux_32;

architecture mux_32_arch of mux_32 is
begin

	process(sel, input)
	begin

-- UNTESTED: This line should perform the following operation: cast sel from std_logic_vector to unsigned integer, then use that integer value as the index for input.
		output <= input(to_integer(unsigned(sel)));
		
	end process;

end architecture mux_32_arch;
