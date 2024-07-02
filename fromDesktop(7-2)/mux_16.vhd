---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 24, 2024
--
-- Description:
-- Takes in 16 std_logic bits and uses a 4-bit select line to pass 
-- one of the 16 inputs to the output. 
--
-- NEW FUNCTION USED: unsigned()
-- from std_logic_arith - casts the std_logic_vector to an integer to be utilized 
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity mux_16 is

	port
		(
			sel					:  in  std_logic_vector(3 downto 0);
			input					:	in	std_logic_vector(15 downto 0);
			output				:	out	std_logic
		);

end entity mux_16;

architecture mux_16_arch of mux_16 is
begin

	process(sel, input)
	begin

		output <= input(to_integer(unsigned(sel)));
		
	end process;

end architecture mux_16_arch;