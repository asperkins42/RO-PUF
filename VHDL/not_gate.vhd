---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 23, 2024
--
-- Description:
-- Inverts the output of a given input bit. 
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity not_gate is

	port
		(
			input	:	in	std_logic;
			output	:	out	std_logic;
		);

end entity not_gate;

architecture not_gate_arch of not_gate is
begin

	output <= not input;
	
end process;

end architecture not_gate_arch;