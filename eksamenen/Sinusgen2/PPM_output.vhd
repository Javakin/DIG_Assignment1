----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PPM_output is
    generic( N: natural := 10);
    Port ( Clk : in  STD_LOGIC;
           PCM : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  PPM : out STD_LOGIC);
end PPM_output;

architecture Behavioral of PPM_output is
   signal Sigma: STD_LOGIC_VECTOR (N downto 0) := (others=>'0');
begin   
	PPM <= Sigma(N); -- Most significant bit = PPM bit
	
	PPM_Generator:
	process( Clk)
	   variable TempSigma, 
		         Delta:     STD_LOGIC_VECTOR (N downto 0) := (others=>'0');
	begin
		if rising_edge( Clk) then
			TempSigma := '0' & Sigma( N-1 downto 0);
			Delta   	 := '0' & PCM;
		   Sigma <= TempSigma + Delta;   
		end if;
	end process;
	
end Behavioral;

