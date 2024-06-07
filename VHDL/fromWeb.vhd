library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity fromweb is
    port (
        enable : in std_logic;
        output : out std_logic
    );
end entity;

architecture rtl of fromweb is
    signal osc_chain : std_logic_vector(29 downto 0) := (others => '0');
begin
    process (enable)
    begin
        if enable = '1' then
            gen_inv: for i in 0 to 29 generate
                osc_chain(i) <= not osc_chain((i+1) mod 30) after (10 + i) * 1 ns;
            end generate;
        end if;
    end process;

    output <= osc_chain(0);

end architecture;
