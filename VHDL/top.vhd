
---------------------------------------------------------------------
-- AUTHOR:  Abraham Perkins
--
-- RESEARCH SUPERVISOR:  Dr. Syed Rafay Hasan
--
-- DATE CREATED:   May 24, 2024
-- LAST MODIFIED:  May 24, 2024
--
-- Description:
-- This file simply connects the components required for the RO-PUF works. 
--
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity top is

	port
		(
			enable				:   in  std_logic;
			switch				:	in	std_logic_vector(9 downto 0);
			output				:	out	std_logic;
			sevSeg5, sevSeg4, sevSeg3, sevSeg2					: out std_logic_vector(7 downto 0)

		);

end entity top;

architecture top_arch of top is

signal counter_A_to_comparator, counter_B_to_comparator	: std_logic_vector(63 downto 0);
signal RO_to_MUX 										: std_logic_vector(31 downto 0);
signal MUX_to_counter_A, MUX_to_counter_B 				: std_logic;
signal dummy														: std_logic_vector(2 downto 0);
signal to7seg5, to7seg3											: std_logic_vector(3 downto 0);


begin

to7seg5 <= "000" & switch(9);
to7seg3 <= "000" & switch(4);

	
-- Ring Oscillator Declarations : I could have used generate, but I was more comfortable doing this. May come back and fix it later.
RO0 : entity work.ring_oscillator port map(enable, RO_to_MUX(0));
RO1 : entity work.ring_oscillator port map(enable, RO_to_MUX(1));	
RO2 : entity work.ring_oscillator port map(enable, RO_to_MUX(2));
RO3 : entity work.ring_oscillator port map(enable, RO_to_MUX(3));	
RO4 : entity work.ring_oscillator port map(enable, RO_to_MUX(4));
RO5 : entity work.ring_oscillator port map(enable, RO_to_MUX(5));	
RO6 : entity work.ring_oscillator port map(enable, RO_to_MUX(6));
RO7 : entity work.ring_oscillator port map(enable, RO_to_MUX(7));	
RO8 : entity work.ring_oscillator port map(enable, RO_to_MUX(8));
RO9 : entity work.ring_oscillator port map(enable, RO_to_MUX(9));	
RO10 : entity work.ring_oscillator port map(enable, RO_to_MUX(10));
RO11 : entity work.ring_oscillator port map(enable, RO_to_MUX(11));	
RO12 : entity work.ring_oscillator port map(enable, RO_to_MUX(12));
RO13 : entity work.ring_oscillator port map(enable, RO_to_MUX(13));	
RO14 : entity work.ring_oscillator port map(enable, RO_to_MUX(14));
RO15 : entity work.ring_oscillator port map(enable, RO_to_MUX(15));	
RO16 : entity work.ring_oscillator port map(enable, RO_to_MUX(16));
RO17 : entity work.ring_oscillator port map(enable, RO_to_MUX(17));	
RO18 : entity work.ring_oscillator port map(enable, RO_to_MUX(18));
RO19 : entity work.ring_oscillator port map(enable, RO_to_MUX(19));	
RO20 : entity work.ring_oscillator port map(enable, RO_to_MUX(20));
RO21 : entity work.ring_oscillator port map(enable, RO_to_MUX(21));	
RO22 : entity work.ring_oscillator port map(enable, RO_to_MUX(22));
RO23 : entity work.ring_oscillator port map(enable, RO_to_MUX(23));	
RO24 : entity work.ring_oscillator port map(enable, RO_to_MUX(24));
RO25 : entity work.ring_oscillator port map(enable, RO_to_MUX(25));	
RO26 : entity work.ring_oscillator port map(enable, RO_to_MUX(26));
RO27 : entity work.ring_oscillator port map(enable, RO_to_MUX(27));	
RO28 : entity work.ring_oscillator port map(enable, RO_to_MUX(28));
RO29 : entity work.ring_oscillator port map(enable, RO_to_MUX(29));	
RO30 : entity work.ring_oscillator port map(enable, RO_to_MUX(30));
RO31 : entity work.ring_oscillator port map(enable, RO_to_MUX(31));	

-- MUX Declarations
MUXA : entity work.mux_32 port map (switch(9 downto 5), RO_to_MUX(31 downto 0), MUX_to_counter_A); 
MUXB : entity work.mux_32 port map (switch(4 downto 0), RO_to_MUX(31 downto 0), MUX_to_counter_B);

-- Counter Declarations
CNTA : entity work.counter port map (switch(9 downto 5), MUX_to_counter_A, counter_A_to_comparator);
CNTB : entity work.counter port map (switch(4 downto 0), MUX_to_counter_B, counter_B_to_comparator);

-- Comparator Declaration	
COMP : entity work.comparator port map(counter_A_to_comparator, counter_B_to_comparator, output);

-- SEVEN SEGMENT CODE
SS5  : entity work.BinaryTo7Seg port map(to7seg5, sevSeg5);
SS4  : entity work.BinaryTo7Seg port map(switch(8 downto 5), sevSeg4);
SS3  : entity work.BinaryTo7Seg port map(to7seg3, sevSeg3);
SS2  : entity work.BinaryTo7Seg port map(switch(3 downto 0), sevSeg2);

	 
	
end architecture top_arch;