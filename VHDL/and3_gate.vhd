---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 23, 2024
--
-- Description:
-- Performs the 3-input AND operation 
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity and3_gate is

	port
		(
			input_A, input_B, input_C	:	in	std_logic;
			output						:	out	std_logic;
		);

end entity and3_gate;

architecture and3_gate_arch of and3_gate is
begin

	output <= input_A AND input_B AND input_C;
	
end process;

end architecture and3_gate_arch;