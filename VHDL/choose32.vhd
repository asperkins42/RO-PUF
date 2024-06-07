library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity choose32 is
port(
	
	input	: in std_logic_vector(8 downto 0);
	outputA, outputB : out std_logic_vector(4 downto 0));
	
end choose32;

architecture behavioral of choose32 is
begin

	process(input)
	begin
		
		case input is
			when "000000000" =>
				outputA <= "00000";
				outputB <= "00001";
			when "000000001" =>
				outputA <= "00000";
				outputB <= "00010";
			when "000000010" =>
				outputA <= "00000";
				outputB <= "00011";
			when "000000011" =>
				outputA <= "00000";
				outputB <= "00100";
			when "000000100" =>
				outputA <= "00000";
				outputB <= "00101";
			when "000000101" =>
				outputA <= "00000";
				outputB <= "00110";
			when "000000110" =>
				outputA <= "00000";
				outputB <= "00111";
			when "000000111" =>
				outputA <= "00000";
				outputB <= "01000";
			when "000001000" =>
				outputA <= "00000";
				outputB <= "01001";
			when "000001001" =>
				outputA <= "00000";
				outputB <= "01010";
			when "000001010" =>
				outputA <= "00000";
				outputB <= "01011";
			when "000001011" =>
				outputA <= "00000";
				outputB <= "01100";
			when "000001100" =>
				outputA <= "00000";
				outputB <= "01101";
			when "000001101" =>
				outputA <= "00000";
				outputB <= "01110";
			when "000001110" =>
				outputA <= "00000";
				outputB <= "01111";
			when "111101111" =>
				outputA <= "11110";
				outputB <= "11111";	
			when others =>
				outputA <= "UUUUU";
				outputB <= "UUUUU";
				
		end case;
	end process;
end behavioral;