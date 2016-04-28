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
signal  bcd1	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '0');
signal  bcd2 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '0');
signal  bcd3 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '0');
signal  bcd4 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '0');

signal  hs1	 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '1');
signal  hs2 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '1');
signal  hs3 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '1');
signal  hs4 	: STD_LOGIC_VECTOR ( 3 downto 0 ):= (others => '1');

begin
-- Latch functionality
----------------------------------------------------------------------------------
lach_process	: 
PROCESS(LAP, IN_BCD1, IN_BCD2, IN_BCD3, IN_BCD4)
	BEGIN
		if rising_edge(LAP) then
			-- safe time in lach
			bcd2		<= IN_BCD2;
			bcd3		<= IN_BCD3;
			bcd1  	<= IN_BCD1;
			bcd4		<= IN_BCD4;
			
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


OUT_BCD1 	<= IN_BCD1  when LAP = '0' else 
					hs1		when LAP = '1' and HIGH_SCORE = '1' else
					bcd1  	when LAP = '1' and HIGH_SCORE = '0';
					
OUT_BCD2		<= IN_BCD2  when LAP = '0' else 
					hs2		when LAP = '1' and HIGH_SCORE = '1' else
					bcd2  	when LAP = '1' and HIGH_SCORE = '0';

OUT_BCD3 	<= IN_BCD3  when LAP = '0' else 
					hs3 		when LAP = '1' and HIGH_SCORE = '1' else
					bcd1  	when LAP = '1' and HIGH_SCORE = '0';
					
OUT_BCD4 	<= IN_BCD4  when LAP = '0' else 
					hs4		when LAP = '1' and HIGH_SCORE = '1' else
					bcd4  	when LAP = '1' and HIGH_SCORE = '0';


end Behavioral;

