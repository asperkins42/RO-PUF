library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity comparator_logic is
    port (
        countA, countB   : in  unsigned(31 downto 0);
        desired          : in  unsigned(31 downto 0);
        output           : buffer std_logic
    );
end entity comparator_logic;

architecture logic_arch of comparator_logic is
begin
    process(countA, countB)
    begin
        if (countA > desired) then	
		
			output <= output;
		
		elsif (countB > desired) then
	
			output <= output;
			
		elsif (countA = desired) then
		
			output <= '1';
		
		elsif (countB = desired) then
		
			--if (countA >= desired) then 
				
				--output <= output;
			
			--else
			
			output <= '0';
				
			--end if
			
		else 
			
			output <= '0';
		
		end if;
	end process;
end architecture logic_arch;