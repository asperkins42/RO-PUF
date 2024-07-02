library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

LIBRARY altera;
USE altera.altera_syn_attributes.all;

entity RO_1_part2 is
    port(
        w_in 	: in std_logic;
        output : out std_logic
    );
end RO_1_part2;

architecture structural of RO_1_part2 is

	attribute syn_keep : boolean;

   signal w : std_logic_vector (31 downto 16);
	
	attribute syn_keep of w : signal is true;
begin
    DUT16 : entity work.webNot port map(w_in, w(16));
    DUT17 : entity work.webNot port map(w(16), w(17));
    DUT18 : entity work.webNot port map(w(17), w(18));
    DUT19 : entity work.webNot port map(w(18), w(19));
    DUT20 : entity work.webNot port map(w(19), w(20));
    DUT21 : entity work.webNot port map(w(20), w(21));
    DUT22 : entity work.webNot port map(w(21), w(22));
    DUT23 : entity work.webNot port map(w(22), w(23));
    DUT24 : entity work.webNot port map(w(23), w(24));
    DUT25 : entity work.webNot port map(w(24), w(25));
    DUT26 : entity work.webNot port map(w(25), w(26));
    DUT27 : entity work.webNot port map(w(26), w(27));
    DUT28 : entity work.webNot port map(w(27), w(28));
    DUT29 : entity work.webNot port map(w(28), w(29));
	 DUT30 : entity work.webNot port map(w(29), w(30));
	 DUT31 : entity work.webNot port map(w(30), w(31));
    output <= w(31);
end structural;
