library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 

entity webAnd2 is
port (A,B: in STD_LOGIC;
      C: out STD_LOGIC);
end webAnd2; 

architecture BEHAVIORAL of webAnd2 is
begin
  C <= A AND B;
end BEHAVIORAL;