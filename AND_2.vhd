library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity AND_2 is 

port (

	a, b 	: in std_logic;
	x 		: out std_logic);
	
end AND_2;

architecture AND_2_arch of AND_2 is

begin
	process(a,b)
	begin 
	
		if ((a='1') and (b = '1')) then
		
			x <= '1';
			
		else
		
			x <= '0';
			
		end if;
	end process;
end AND_2_arch;