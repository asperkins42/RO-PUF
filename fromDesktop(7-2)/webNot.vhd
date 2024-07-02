library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 

entity webNot is
port (A: in STD_LOGIC;
      X: out STD_LOGIC);
end webNot; 

architecture BEHAVIORAL of webNot is
begin
  X <= NOT A;
end BEHAVIORAL;