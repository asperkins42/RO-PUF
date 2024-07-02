library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter32_C is
    port (
        reset  : in std_logic;
        clk    : in std_logic;
        output : buffer std_logic_vector(31 downto 0)
    );
end entity counter32_C;

architecture counter_arch of counter32_C is
    signal lsB_output : std_logic_vector(7 downto 0);
	 signal low_mid_output : std_logic_vector(7 downto 0);
	 signal high_mid_output : std_logic_vector(7 downto 0);
    signal msB_output : std_logic_vector(7 downto 0);
    signal carry      : std_logic_vector(3 downto 0);
begin
    lowest_counter: entity work.counter8
        port map (
            reset     => reset,
            clk       => clk,
            output    => lsB_output,
            c_out => carry(0)
        );

    low_mid_counter: entity work.counter8
        port map (
            reset  => reset,
            clk    => carry(0),
            output => low_mid_output,
				c_out => carry(1)

        );

    high_mid_counter: entity work.counter8
        port map (
            reset     => reset,
            clk       => carry(1),
            output    => high_mid_output,
            c_out => carry(2)
        );

    highest_counter: entity work.counter8
        port map (
            reset  => reset,
            clk    => carry(2),
            output => msB_output,
				c_out => carry(3)

        );
		  
    output <= msB_output & high_mid_output & low_mid_output & lsB_output;
end architecture counter_arch;