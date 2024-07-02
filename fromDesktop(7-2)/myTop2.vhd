library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity myTop2 is

port(
	reset  : in std_logic;
	--enable : in std_logic;
	choice : in std_logic_vector(8 downto 0);
	hex0, hex1, hex4, hex5 : buffer std_logic_vector(7 downto 0);
	hex3, hex2	: buffer std_logic_vector(7 downto 0) := (others => '1');
	light	: buffer std_logic
	
);

end myTop2;

architecture structural of myTop2 is

signal RO_to_MUX	: std_logic_vector(31 downto 0);

-- these signals will be driven by a special file for this case - it will convert 9 switches to 1 of 496 
-- unique combinations. these unique combinations will be the select lines for the mux.
signal MUX_A_in, MUX_B_in		: std_logic_vector(4 downto 0);
signal MUX_A_out, MUX_B_out		: std_logic;
signal enable : std_logic := '1';

signal countA_out, countB_out	: std_logic_vector(31 downto 0);

begin

--DECLARE 32 RING OSCILLATORS
RO1	: entity work.RO_1b port map(enable, RO_to_MUX(0));
RO2	: entity work.RO_1b port map(enable, RO_to_MUX(1));
RO3	: entity work.RO_1b port map(enable, RO_to_MUX(2));
RO4	: entity work.RO_1b port map(enable, RO_to_MUX(3));
RO5	: entity work.RO_1b port map(enable, RO_to_MUX(4));
RO6	: entity work.RO_1b port map(enable, RO_to_MUX(5));
RO7	: entity work.RO_1b port map(enable, RO_to_MUX(6));
RO8	: entity work.RO_1b port map(enable, RO_to_MUX(7));
RO9	: entity work.RO_1b port map(enable, RO_to_MUX(8));
RO10	: entity work.RO_1b port map(enable, RO_to_MUX(9));
RO11	: entity work.RO_1b port map(enable, RO_to_MUX(10));
RO12	: entity work.RO_1b port map(enable, RO_to_MUX(11));
RO13	: entity work.RO_1b port map(enable, RO_to_MUX(12));
RO14	: entity work.RO_1b port map(enable, RO_to_MUX(13));
RO15	: entity work.RO_1b port map(enable, RO_to_MUX(14));
RO16	: entity work.RO_1b port map(enable, RO_to_MUX(15));
RO17	: entity work.RO_1b port map(enable, RO_to_MUX(16));
RO18	: entity work.RO_1b port map(enable, RO_to_MUX(17));
RO19	: entity work.RO_1b port map(enable, RO_to_MUX(18));
RO20	: entity work.RO_1b port map(enable, RO_to_MUX(19));
RO21	: entity work.RO_1b port map(enable, RO_to_MUX(20));
RO22	: entity work.RO_1b port map(enable, RO_to_MUX(21));
RO23	: entity work.RO_1b port map(enable, RO_to_MUX(22));
RO24	: entity work.RO_1b port map(enable, RO_to_MUX(23));
RO25	: entity work.RO_1b port map(enable, RO_to_MUX(24));
RO26	: entity work.RO_1b port map(enable, RO_to_MUX(25));
RO27	: entity work.RO_1b port map(enable, RO_to_MUX(26));
RO28	: entity work.RO_1b port map(enable, RO_to_MUX(27));
RO29	: entity work.RO_1b port map(enable, RO_to_MUX(28));
RO30	: entity work.RO_1b port map(enable, RO_to_MUX(29));
RO31	: entity work.RO_1b port map(enable, RO_to_MUX(30));
RO32	: entity work.RO_1b port map(enable, RO_to_MUX(31));


CHOOSE: entity work.choose32 port map(choice, MUX_A_in, MUX_B_in);

--DECLARE BOTH 32_to_1 MUXES
MUXA	: entity work.mux_32 port map(MUX_A_in, RO_to_MUX, MUX_A_out);
MUXB	: entity work.mux_32 port map(MUX_B_in, RO_to_MUX, MUX_B_out);

--DECLARE 32-BIT COUNTERS
COUNTA: entity work.counter32_B port map(reset, MUX_A_out, countA_out);
COUNTB: entity work.counter32_B port map(reset, MUX_B_out, countB_out);

--DECLARE 32-BIT COMPARATOR
COMP	: entity work.comparator port map(countA_out, countB_out, light);

--MAP 8 MSB OF COUNTER OUTPUT TO SEVEN SEGMENTS
SEV0	: entity work.BinaryTo7Seg port map(countA_out(27 downto 24), hex0(7 downto 0));
SEV1	: entity work.BinaryTo7Seg port map(countA_out(31 downto 28), hex1(7 downto 0));
SEV4	: entity work.BinaryTo7Seg port map(countB_out(27 downto 24), hex4(7 downto 0));
SEV5	: entity work.BinaryTo7Seg port map(countB_out(31 downto 28), hex5(7 downto 0));


end structural;