library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity comparator_B is
    port (
        input_A, input_B : in  std_logic_vector(31 downto 0);
        output           : buffer std_logic
    );
end entity comparator_B;

architecture comparator_arch of comparator_B is
    signal countA : unsigned(31 downto 0);
    signal countB : unsigned(31 downto 0);
    signal desired : unsigned(31 downto 0) := "10100110101100011001001101100010";
begin
    input_convert: entity work.input_converter
        port map (
            input_A => input_A,
            input_B => input_B,
            countA => countA,
            countB => countB
        );

    comparison_logic: entity work.comparator_logic
        port map (
            countA => countA,
            countB => countB,
            desired => desired,
            output => output
        );
end architecture comparator_arch;