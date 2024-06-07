-- THIS WORKS FOR SOME REASON
-- WHY I DO NOT KNOW

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity comparator_tb is
end entity comparator_tb;

architecture comparator_tb_arch of comparator_tb is

signal input_A, input_B : std_logic_vector(31 downto 0) := (others => '0');
signal output : std_logic;

begin

DUT : entity work.comparator port map (input_A, input_B, output);

process
	begin
	
		-- Test Case 1: input_A > input_B
        input_A <= x"12345678";
        input_B <= x"00000000";
        wait for 10 ns;
        
        -- Test Case 2: input_A < input_B
        input_A <= x"00000000";
        input_B <= x"12345678";
        wait for 10 ns;
        
        -- Test Case 3: input_A = input_B
        input_A <= x"12345678";
        input_B <= x"12345678";
        wait for 10 ns;
        
        -- Test Case 4: input_A > input_B (different values)
        input_A <= x"FFFFFFFF";
        input_B <= x"00000001";
        wait for 10 ns;
        
        -- End of Test
        wait;
		  
	end process;
	
end architecture comparator_tb_arch;