
---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 23, 2024
--
-- Description:
-- The counter will increment by one each time a rising edge is detected on the input pin. 
-- This integer will then be cast to a std_logic_vector and passed to the comparator. 
--
-- Every time the sel line changes, the counter will be reset.
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity comparator is

	port
		(
			input_A, input_B	:   in  std_logic_vector(63 downto 0);
			output				:	out	std_logic;
		);

end entity comparator;

architecture comparator_arch of comparator is

signal countA : unsigned(63 downto 0);
signal countB : unsigned(63 downto 0);

begin

	process(input_A, input_B)
	begin
	
		countA <= unsigned(inputA);
		countB <= unsigned(inputB);
	
		if (countA > countB) then	
		
			output <= '1';
		
		else
	
			output <= '0';
		
		end if
	
		
	end process;
	
end architecture comparator_arch;