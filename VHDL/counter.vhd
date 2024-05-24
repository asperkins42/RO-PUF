
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

entity counter is

	port
		(
			sel					:   in  std_logic_vector(9 downto 0);
			input				:	in	std_logic;
			output				:	out	std_logic_vector(31 downto 0);
		);

end entity counter;

architecture counter_arch of counter is

signal count : integer := '0';

begin

	-- ANY CHANGES ON SELECT LINES WILL RESULT IN A RESET OF THE COUNTER
	process(sel)
	begin
	
	count = '0'
		
	end process;
	
	-- This process handles incrementing the counter when the input signal goes high. Might need to run a counter into another counter to get n**2 counts...
	-- If the RO oscillates at the clock frequency then it will last for 90 seconds without needing to be reset. If it is faster, I will need to do as I said earlier. 
	process(input)
	begin

		if (input'event AND input = '1') then
		
			count = count + 1;
			
		end if;
		
		-- This line needs to convert count from an integer to an std_logic_vector. s 
		output <= std_logic_vector(to_unsigned(count, output'length));
		
	end process;

end architecture counter_arch;