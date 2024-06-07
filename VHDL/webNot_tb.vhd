library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 

entity webNot_tb is
end entity webNot_tb;

architecture webNot_tb_arch of webNot_tb is 

signal A	: std_logic := '0';
signal X	: std_logic;

begin 

DUT	: entity work.webNot port map(A, X);

process
	
	begin

	wait for 13 ns;

	A <= '1';

	wait for 29 ns;

	A <= '0';
	
	wait for 5 ns;

	A <= '1';

	
	end process;


end architecture webNot_tb_arch;
