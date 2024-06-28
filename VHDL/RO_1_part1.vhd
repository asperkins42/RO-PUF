library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

LIBRARY altera;
USE altera.altera_syn_attributes.all;

entity RO_1_part1 is
    port(
        enable : in std_logic;
        w_out : out std_logic_vector (15 downto 0)
    );
end RO_1_part1;

architecture structural of RO_1_part1 is

	attribute syn_keep : boolean;

   signal w : std_logic_vector (15 downto 0);
	
	attribute syn_keep of w : signal is true;


begin
    DUT0  : entity work.webAnd2 port map(enable, w(14), w(0));
    DUT1  : entity work.webNot port map(w(0), w(1));
    DUT2  : entity work.webNot port map(w(1), w(2));
    DUT3  : entity work.webNot port map(w(2), w(3));
    DUT4  : entity work.webNot port map(w(3), w(4));
    DUT5  : entity work.webNot port map(w(4), w(5));
    DUT6  : entity work.webNot port map(w(5), w(6));
    DUT7  : entity work.webNot port map(w(6), w(7));
    DUT8  : entity work.webNot port map(w(7), w(8));
    DUT9  : entity work.webNot port map(w(8), w(9));
    DUT10 : entity work.webNot port map(w(9), w(10));
    DUT11 : entity work.webNot port map(w(10), w(11));
    DUT12 : entity work.webNot port map(w(11), w(12));
    DUT13 : entity work.webNot port map(w(12), w(13));
    DUT14 : entity work.webNot port map(w(13), w(14));
    DUT15 : entity work.webNot port map(w(14), w(15));
    w_out <= w;
end structural;
