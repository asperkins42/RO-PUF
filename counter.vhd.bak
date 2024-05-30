
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
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity counter is

	port
		(
			sel					:   in  std_logic_vector(4 downto 0);
			input				:	in	std_logic;
			output				:	out	std_logic_vector(63 downto 0)
		);

end entity counter;

architecture counter_arch of counter is

-- For a 5 GHz clock, which is 100x faster than the onboard clock (50 MHz) it would take just over a month to reach the max value of count. 
-- This should be more than sufficient to handle any increased frequency we may see due to the RO. 

signal count : unsigned(63 downto 0) := (others => '0');

begin
    process(input, sel)
    begin
        if sel /= "00000" then  -- Assuming a specific value to reset
            count <= (others => '0');  -- Properly constrained
        elsif rising_edge(input) then
            count <= count + 1;
        end if;
    end process;

end architecture counter_arch;