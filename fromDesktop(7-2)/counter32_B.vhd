library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter32_B is
    port (
			--inA, inB: in std_logic_vector(4 downto 0);
			reset	  : in std_logic;
			clk     : in  std_logic;
			output  : buffer std_logic_vector(31 downto 0)
    );
end entity counter32_B;

architecture counter_arch of counter32_B is
   signal count_reg : std_logic_vector(31 downto 0) := (others => '0'); -- Initialize count

begin
	
	process(clk, reset)
	begin
		

		if rising_edge(clk) then
			if reset = '0' then
				count_reg <= "00000000000000000000000000000000";
			elsif count_reg = "11111111111111111111111111111111" then
				count_reg <= "00000000000000000000000000000000";
			else
				count_reg <= count_reg + 1;   
			end if;	
		end if;
		  
    end process;

    output <= count_reg;
	 
end architecture counter_arch;