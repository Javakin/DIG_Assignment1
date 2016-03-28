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
           IN_TEENTH 	: in  STD_LOGIC_VECTOR (3 downto 0);
           IN_SEC 		: in  STD_LOGIC_VECTOR (7 downto 0);
           IN_MIN 		: in  STD_LOGIC_VECTOR (7 downto 0);
           OUT_TEENTH 	: out  STD_LOGIC_VECTOR (3 downto 0);
           OUT_SEC 		: out  STD_LOGIC_VECTOR (7 downto 0);
           OUT_MIN 		: out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end Time_Lap_Lach;

architecture Behavioral of Time_Lap_Lach is
-- Define lach signals
----------------------------------------------------------------------------------
signal  teenth	: STD_LOGIC_VECTOR ( 3 downto 0):= (others => '0');
signal  sec	 	: STD_LOGIC_VECTOR ( 7 downto 0):= (others => '0');
signal  min 	: STD_LOGIC_VECTOR ( 7 downto 0):= (others => '0');



begin

lach_process	: 
PROCESS(LAP, IN_TEENTH, IN_SEC, IN_MIN)
	BEGIN
		if rising_edge(LAP) then
			-- safe time in lach
			teenth 	<= IN_TEENTH;
			sec 		<= IN_SEC;
			min 		<= IN_MIN;
			
		end if;	
	END PROCESS;

OUT_TEENTH 	<= teenth 	when LAP = '1' else IN_TEENTH;
OUT_SEC 		<= sec 		when LAP = '1' else IN_SEC;
OUT_MIN 		<= min 		when LAP = '1' else IN_MIN;

end Behavioral;

