library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 

entity webAnd2_tb is
end entity webAnd2_tb;

architecture webAnd2_tb_arch of webAnd2_tb is 

signal A, B	: std_logic := '0';
signal X		: std_logic;

begin 

DUT	: entity work.webAnd2 port map(A,B,X);

process
	
	begin

	wait for 10 ns;

	A <= '0';
	B <= '1';

	wait for 10 ns;

	A <= '1';
	B <= '0';
	
	wait for 10 ns;

	A <= '1';
	B <= '1';

	
	end process;


end architecture webAnd2_tb_arch;
