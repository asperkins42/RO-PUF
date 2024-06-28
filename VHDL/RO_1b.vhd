library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

LIBRARY altera;
USE altera.altera_syn_attributes.all;

entity RO_1b is
    port(
        enable : in std_logic;
        output : out std_logic
    );
end RO_1b;

architecture structural of RO_1b is
    signal w_intermediate : std_logic_vector (15 downto 0);
begin
    PART1 : entity work.RO_1_part1 port map(
        enable => enable,
        w_out => w_intermediate
    );

    PART2 : entity work.RO_1_part2 port map(
        w_in => w_intermediate,
        output => output
    );
end structural;
