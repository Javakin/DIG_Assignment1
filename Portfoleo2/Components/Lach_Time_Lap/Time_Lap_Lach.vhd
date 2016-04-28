----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:06:55 03/28/2016 
-- Design Name: 
-- Module Name:    Time_Lap_Lach - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 

-- Define ports
----------------------------------------------------------------------------------
entity Time_Lap_Lach is
    Port ( LAP 			: in  STD_LOGIC;
			  CLEAR			: in 	STD_LOGIC;
			  HIGH_SCORE	: in  STD_LOGIC;
			  
           IN_BCD1 		: in  STD_LOGIC_VECTOR (3 downto 0);
           IN_BCD2 		: in  STD_LOGIC_VECTOR (3 downto 0);
           IN_BCD3 		: in  STD_LOGIC_VECTOR (3 downto 0);
			  IN_BCD4 		: in  STD_LOGIC_VECTOR (3 downto 0);
			  
           OUT_BCD1 	: out  STD_LOGIC_VECTOR (3 downto 0);
           OUT_BCD2	: out  STD_LOGIC_VECTOR (3 downto 0);
           OUT_BCD3	: out  STD_LOGIC_VECTOR (3 downto 0);
			  OUT_BCD4	: out  STD_LOGIC_VECTOR (3 downto 0)
			 );
end Time_Lap_Lach;

architecture Behavioral of Time_Lap_Lach is
-- Define lach signals
----------------------------------------------------------------------------------
signal  bcd	: STD_LOGIC_VECTOR ( 15 downto 0 ):= (others => '0');

-- highscore
signal  hs	 	: STD_LOGIC_VECTOR ( 15 downto 0 ):= (others => '1');


begin
-- Latch functionality
----------------------------------------------------------------------------------
lach_process	: 
PROCESS(LAP, CLEAR, IN_BCD1, IN_BCD2, IN_BCD3, IN_BCD4)
	BEGIN
		if CLEAR = '1' then 
			hs <= (others => '1');	
			
		elsif rising_edge(LAP) then
			-- freeze the time
			bcd		<= IN_BCD4 & IN_BCD3 & IN_BCD2 & IN_BCD1;

			-- check for new highscore
			if hs > bcd then
				-- Update highscore
				hs 	<= IN_BCD4 & IN_BCD3 & IN_BCD2 & IN_BCD1;
			end if;			
		end if;	
	END PROCESS;
	
-- update high score
----------------------------------------------------------------------------------
update_highscore	: 
PROCESS(LAP )
	BEGIN
		if rising_edge(LAP) then
			-- safe time in lach
			
			
		end if;	
	END PROCESS;


OUT_BCD1 	<= IN_BCD1  			when LAP = '0' else 
					hs(3 downto 0)		when LAP = '1' and HIGH_SCORE = '1' else
					bcd(3 downto 0)  	when LAP = '1' and HIGH_SCORE = '0';
					
OUT_BCD2		<= IN_BCD2  			when LAP = '0' else 
					hs(7 downto 4)		when LAP = '1' and HIGH_SCORE = '1' else
					bcd(7 downto 4)  	when LAP = '1' and HIGH_SCORE = '0';

OUT_BCD3 	<= IN_BCD3  			when LAP = '0' else 
					hs(11 downto 8) 	when LAP = '1' and HIGH_SCORE = '1' else
					bcd(11 downto 8)  when LAP = '1' and HIGH_SCORE = '0';
					
OUT_BCD4 	<= IN_BCD4  			when LAP = '0' else 
					hs(15 downto 12)	when LAP = '1' and HIGH_SCORE = '1' else
					bcd(15 downto 12) when LAP = '1' and HIGH_SCORE = '0';


end Behavioral;

