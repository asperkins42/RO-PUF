---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 23, 2024
-- LAST MODIFIED:  May 23, 2024
--
-- Description:
-- Performs the 2-input AND operation 
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity and2_gate is

	port
		(
			input_A, input_B	:	in	std_logic;
			output				:	out	std_logic;
		);

end entity and2_gate;

architecture and2_gate_arch of and2_gate is
begin

	output <= input_A AND input_B;
	
end process;

end architecture and2_gate_arch;