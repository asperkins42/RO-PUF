library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Use numeric_std for arithmetic operations on std_logic_vector

entity counter32 is
    port (
        choice  : in std_logic_vector(8 downto 0);
        clk     : in std_logic;
        output  : out std_logic_vector(31 downto 0)
    );
end entity counter32;

architecture counter_arch of counter32 is
    signal count_reg : std_logic_vector(31 downto 0) := (others => '0'); -- Initialize count
    signal choice_reg : std_logic_vector(8 downto 0) := (others => '0'); -- Register to hold previous choice value
begin

    -- Process to monitor changes in the choice signal
    process(clk)
    begin
        if rising_edge(clk) then
            if choice /= choice_reg then
                count_reg <= (others => '0'); -- Reset count
                choice_reg <= choice; -- Update the registered choice value
            elsif count_reg = "11111111111111111111111111111111" then
                count_reg <= (others => '0');
            else
                count_reg <= std_logic_vector(unsigned(count_reg) + 1); -- Increment using numeric_std
            end if;
        end if;
    end process;

    output <= count_reg;
end architecture counter_arch;