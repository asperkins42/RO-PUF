library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter32 is
    port (
        clk     : in  std_logic;
        output  : buffer std_logic_vector(31 downto 0)
        --sendIt  : buffer std_logic
    );
end entity counter32;

architecture counter_arch of counter32 is
    signal count_reg : std_logic_vector(31 downto 0) := (others => '0'); -- Initialize count
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if count_reg = "11111111111111111111111111111111" then
                count_reg <= "00000000000000000000000000000000";
                --sendIt <= '1';
            else
                count_reg <= count_reg + 1;
                --sendIt <= '0';
            end if;
        end if;
    end process;

    output <= count_reg;
end architecture counter_arch;