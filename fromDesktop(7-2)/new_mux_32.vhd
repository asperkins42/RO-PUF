library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
entity new_mux_32 is
    port (
        sel     : in  std_logic_vector(4 downto 0);
        input   : in  std_logic_vector(31 downto 0);
        output  : out std_logic
    );
end entity new_mux_32;

architecture new_mux_32_arch of new_mux_32 is
    signal mux16_outputs : std_logic_vector(1 downto 0);
begin
    -- Instantiate four 8-to-1 multiplexors
    mux16_0: entity work.mux_16 port map (
        sel    => sel(3 downto 0),
        input  => input(15 downto 0),
        output => mux16_outputs(0)
    );

    mux16_1: entity work.mux_16 port map (
        sel    => sel(3 downto 0),
        input  => input(31 downto 16),
        output => mux16_outputs(1)
    );

    -- Final 4-to-1 multiplexor to select from mux8_outputs
    process(sel, mux16_outputs)
    begin
        output <= mux16_outputs(to_integer(unsigned(sel(4 downto 4))));
    end process;
end architecture new_mux_32_arch;