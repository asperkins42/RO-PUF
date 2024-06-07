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

entity a2gate is

	port
		(
			input_A, input_B	:	in	std_logic;
			output				:	out	std_logic
		);

end entity a2gate;

architecture a2gate_arch of a2gate is
begin

	output <= input_A AND input_B;

end architecture a2gate_arch;