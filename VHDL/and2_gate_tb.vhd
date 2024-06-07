library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity and2_gate_tb is 
end entity and2_gate_tb;

architecture mine of and2_gate_tb is

signal go	: std_logic := '1';
signal alsoGo, come	: std_logic;

begin

A2 : entity work.a2gate port map(go, alsoGo, come);

alsoGo <= '1' after 20 ns;

end architecture mine;