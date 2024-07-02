library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity myTop is

port(

	enable : in std_logic;
	output, outputb, hex0, hex1, hex4, hex5 : buffer std_logic_vector(7 downto 0);
	hex3, hex2	: buffer std_logic_vector(7 downto 0);
	light	: buffer std_logic
	--roll	 : buffer std_logic
	
);

end myTop;

architecture structural of myTop is

signal toCounter, junk, junk2, junk3, junk4 	: std_logic;
signal fakeOutput1, fakeOutput2, fakeOutput3				: std_logic_vector(7 downto 0);
signal GND 	: std_logic_vector(15 downto 0) := (others => '1');

signal toCounterb, junkb, junk2b, junk3b, junk4b 	: std_logic;
signal fakeOutput1b, fakeOutput2b, fakeOutput3b				: std_logic_vector(7 downto 0);
signal GNDb 	: std_logic_vector(15 downto 0) := (others => '1');

signal compTestA, compTestB	: std_logic_vector(31 downto 0);

begin

compTestA <= output & fakeOutput3 & fakeOutput2 & fakeOutput1;
compTestB <= outputb & fakeOutput3b & fakeOutput2b & fakeOutput1b;

DUT0	: entity work.RO_1 port map(enable, toCounter);
DUT1	: entity work.counter port map(toCounter, fakeOutput1, junk);
DUT2	: entity work.counter port map(junk, fakeOutput2, junk2);
DUT3	: entity work.counter port map(junk2, fakeOutput3, junk3);
DUT4	: entity work.counter port map(junk3, output, junk4);

SEV0	: entity work.BinaryTo7Seg port map(output(3 downto 0), hex0(7 downto 0));
SEV1	: entity work.BinaryTo7Seg port map(output(7 downto 4), hex1(7 downto 0));


DUT0b	: entity work.RO_1 port map(enable, toCounterb);
DUT1b	: entity work.counter port map(toCounterb, fakeOutput1b, junkb);
DUT2b	: entity work.counter port map(junkb, fakeOutput2b, junk2b);
DUT3b	: entity work.counter port map(junk2b, fakeOutput3b, junk3b);
DUT4b	: entity work.counter port map(junk3b, outputb, junk4b);


SEV4	: entity work.BinaryTo7Seg port map(outputb(3 downto 0), hex4(7 downto 0));
SEV5	: entity work.BinaryTo7Seg port map(outputb(7 downto 4), hex5(7 downto 0));

CMP	: entity work.comparator port map(compTestA, compTestB, light);




--roll <= junk;

end structural;