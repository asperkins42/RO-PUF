library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

LIBRARY altera;
USE altera.altera_syn_attributes.all;

entity RO_1 is

port(

	enable : in std_logic;
	output : out std_logic
	
);

end RO_1;

architecture structural of RO_1 is

	attribute syn_keep : boolean;

	signal w	: std_logic_vector (31 downto 0);
	
	attribute syn_keep of w : signal is true;
	




begin

--has been edited, clean file available on GitHub

DUT0	: entity work.webAnd2 port map(enable, w(31), w(0));
DUT1	: entity work.webNot port map(w(0), w(1));
DUT2	: entity work.webNot port map(w(1), w(2));
DUT3	: entity work.webNot port map(w(2), w(3));
DUT4	: entity work.webNot port map(w(3), w(4));
DUT5	: entity work.webNot port map(w(4), w(5));
DUT6	: entity work.webNot port map(w(5), w(6));
DUT7	: entity work.webNot port map(w(6), w(7));
DUT8	: entity work.webNot port map(w(7), w(8));
DUT9	: entity work.webNot port map(w(8), w(9));
DUT10	: entity work.webNot port map(w(9), w(10));
DUT11 : entity work.webNot port map(w(10), w(11));
DUT12 : entity work.webNot port map(w(11), w(12));
DUT13	: entity work.webNot port map(w(12), w(13));
DUT14	: entity work.webNot port map(w(13), w(14));
DUT15	: entity work.webNot port map(w(14), w(15));
DUT16	: entity work.webNot port map(w(15), w(16));
DUT17	: entity work.webNot port map(w(16), w(17));
DUT18	: entity work.webNot port map(w(17), w(18));
DUT19	: entity work.webNot port map(w(18), w(19));
DUT20	: entity work.webNot port map(w(19), w(20));
DUT21	: entity work.webNot port map(w(20), w(21));
DUT22	: entity work.webNot port map(w(21), w(22));
DUT23	: entity work.webNot port map(w(22), w(23));
DUT24	: entity work.webNot port map(w(23), w(24));
DUT25	: entity work.webNot port map(w(24), w(25));
DUT26	: entity work.webNot port map(w(25), w(26));
DUT27	: entity work.webNot port map(w(26), w(27));
DUT28	: entity work.webNot port map(w(27), w(28));
DUT29 : entity work.webNot port map(w(28), w(29));
DUT30	: entity work.webNot port map(w(29), w(30));
DUT31	: entity work.webNot port map(w(30), w(31));
output <= w(31);

end structural;