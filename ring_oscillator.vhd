---------------------------------------------------------------------
-- AUTHOR:  Kody Bennett
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 19, 2014
-- LAST MODIFIED:  May 24, 2024 (Abraham Perkins)
--
-- Description:
-- Creates a triple inverter ring oscillator (RO) with enable
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ring_oscillator is

	port
		(
		
			enable	:	in	std_logic := '0';
			output	:	out	std_logic
		
		);

end entity ring_oscillator;

architecture ring_oscillator_arch of ring_oscillator is

	attribute syn_keep : boolean;

	signal	w0	:	std_logic := '0';
	attribute syn_keep of w0: signal is true;
	
	signal	w1	:	std_logic;
	attribute syn_keep of w1: signal is true;
	
	signal	w2	:	std_logic;
	attribute syn_keep of w2: signal is true;
	

begin

	w0 <= enable and (not w2);
	w1 <= not w0;
	w2 <= not w1;
	
	output <= w2;

end architecture ring_oscillator_arch;