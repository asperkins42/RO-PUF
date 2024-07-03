
---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 24, 2024
-- LAST MODIFIED:  May 24, 2024
--
-- Description:
-- This component takes in two std_logic_vectors that are 64 bits long. These vectors are then cast to unsigned integers
-- where they can be compared to see what the values are. If the value of countA is greater than the value of countB, a '1' is output. 
--
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity comparator is

	port
		(
			input_A, input_B	:  in  std_logic_vector(7 downto 0);
			output				:	buffer std_logic
		);

end entity comparator;

architecture comparator_arch of comparator is

signal countA : unsigned(7 downto 0);
signal countB : unsigned(7 downto 0);
signal desired : unsigned(7 downto 0) := "10100110";


begin

	process(input_A)
	begin
	
		countA <= unsigned(input_A);
		countB <= unsigned(input_B);
	
		if (countA > desired) then	
		
			output <= output;
		
		elsif (countB > desired) then
	
			output <= output;
			
		elsif (countA = desired) then
		
			output <= '1';
		
		elsif (countB = desired) then
		
			output <= '0';
			
		else 
			
			output <= '0';
		
		end if;
	
		
	end process;
	
end architecture comparator_arch;