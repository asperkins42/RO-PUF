---- AS OF 5/31 THIS COUNTER VERIFIABLY WORKS. COPY AND PASTE INTO A NEW FILE TO MAKE 16-BIT COUNTER PLEASE
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;
--
--entity counter is
--
--	port
--		(
--			clk					:	in	std_logic;
--			output				:	buffer std_logic_vector(7 downto 0);
--			sendIt				:  buffer std_logic
--		);
--
--end entity counter;
--
--architecture counter_arch of counter is
--
--begin
--    process(clk)
--    begin
--        if rising_edge(clk) then
--		  
--				if output = "11111111" then
--				
--					output <= "00000000";
--					sendIt <= '1';
--					
--				end if;
--				
--            output <= output + 1;
--				sendIt <= '0';
--				
--        end if;	 
--	 end process;
--end architecture counter_arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk     : in  std_logic;
        output  : buffer std_logic_vector(7 downto 0);
        sendIt  : buffer std_logic
    );
end entity counter;

architecture counter_arch of counter is
    signal count_reg : std_logic_vector(7 downto 0) := (others => '0'); -- Initialize count
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if count_reg = "11111111" then
                count_reg <= "00000000";
                sendIt <= '1';
            else
                count_reg <= count_reg + 1;
                sendIt <= '0';
            end if;
        end if;
    end process;

    output <= count_reg;
end architecture counter_arch;
