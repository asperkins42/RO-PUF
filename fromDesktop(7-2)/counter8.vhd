library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter8 is
    port (
        reset   : in std_logic;
        clk     : in std_logic;
        output  : buffer std_logic_vector(7 downto 0);
        c_out   : out std_logic
    );
end entity counter8;

architecture counter_arch of counter8 is
    signal count_reg : std_logic_vector(7 downto 0) := (others => '0'); -- Initialize count
begin
    process(clk, reset)
    begin
        if reset = '0' then
            count_reg <= (others => '0'); -- Reset the counter to zero
            c_out <= '0';
        elsif rising_edge(clk) then
            if count_reg = "11111111" then
                count_reg <= (others => '0');
                c_out <= '1';
            else
                count_reg <= count_reg + 1;
                c_out <= '0';
            end if;
        end if;
    end process;

    output <= count_reg;
end architecture counter_arch;