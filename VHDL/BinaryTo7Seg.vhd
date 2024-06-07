library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- clk 1in, wren 1in, aluSrc 1in, AluOperation 4in, registerNum 5in, read1 5in, read2 5in, instruciton 32out,  immediate 16buffer,
entity BinaryTo7Seg is
    Port ( 
		
		input : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(0 to 7));
		
end BinaryTo7Seg;

architecture Behavioral of BinaryTo7Seg is

signal pc_out, pc_in : std_logic_vector(31 downto 0);


begin

	switchClock : process (input)
	begin
	
		if(input(3 downto 0) = "0000") then
			output <= "00000011"; --0, ones
		elsif(input(3 downto 0) = "0001") then
			output <= "10011111"; --1, ones
		elsif(input(3 downto 0) = "0010") then
			output <= "00100101"; --2, ones
		elsif(input(3 downto 0) = "0011") then
			output <= "00001101"; --3, ones
		elsif(input(3 downto 0) = "0100") then
			output <= "10011001"; --4, ones
		elsif(input(3 downto 0) = "0101") then
			output <= "01001001"; --5, ones
		elsif(input(3 downto 0) = "0110") then
			output <= "01000001"; --6, ones
		elsif(input(3 downto 0) = "0111") then
			output <= "00011111"; --7, ones
		elsif(input(3 downto 0) = "1000") then
			output <= "00000001"; --8, ones
		elsif(input(3 downto 0) = "1001") then
			output <= "00011001"; --9, ones
		elsif(input(3 downto 0) = "1010") then
			output <= "00010001"; --A, ones
		elsif(input(3 downto 0) = "1011") then
			output <= "11000001"; --B, ones
		elsif(input(3 downto 0) = "1100") then
			output <= "01100011"; --C, ones
		elsif(input(3 downto 0) = "1101") then
			output <= "10000101"; --D, ones
		elsif(input(3 downto 0) = "1110") then
			output <= "01100001"; --E, ones
		elsif(input(3 downto 0) = "1111") then
			output <= "01110001"; --F, ones
		end if;
		
	end process;

end Behavioral;
