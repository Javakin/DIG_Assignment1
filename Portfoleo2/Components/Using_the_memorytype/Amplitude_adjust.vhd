
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Amplitude_adjust is
    Port ( RomData : in   STD_LOGIC_VECTOR (8 downto 0);
           Negate :  in   STD_LOGIC;
           PCM :     out  STD_LOGIC_VECTOR (9 downto 0));
end Amplitude_adjust;

architecture Behavioral of Amplitude_adjust is
begin
	PCM <= '1' &      RomData when Negate = '0' else
	       '0' & (not RomData);
end Behavioral;

