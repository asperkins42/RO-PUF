library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity input_converter is
    port (
        input_A, input_B : in  std_logic_vector(31 downto 0);
        countA, countB   : out unsigned(31 downto 0)
    );
end entity input_converter;

architecture converter_arch of input_converter is
begin
    process(input_A, input_B)
    begin
        countA <= unsigned(input_A);
        countB <= unsigned(input_B);
    end process;
end architecture converter_arch;