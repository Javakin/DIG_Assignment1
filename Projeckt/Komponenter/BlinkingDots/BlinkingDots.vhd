----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:48 03/28/2016 
-- Design Name: 
-- Module Name:    BlinkingDots - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Define ports
----------------------------------------------------------------------------------
entity BlinkingDots is
    Port ( LAP 			: in   STD_LOGIC;
           START_STOP 	: in   STD_LOGIC;
           SEC1_10 		: in   STD_LOGIC_VECTOR (3 downto 0);
           DOTS 			: out  STD_LOGIC_VECTOR (3 downto 0));
end BlinkingDots;

architecture Behavioral of BlinkingDots is
-- Internals signals
----------------------------------------------------------------------------------
signal half_second	: STD_LOGIC := '0'; 
signal dp				: STD_LOGIC_VECTOR (3 downto 0):= "1111";

begin

half_second	<= '1'	when SEC1_10 >= "0101"	else '0';

blinking	:
	PROCESS( START_STOP, LAP, half_second)
	BEGIN
		-- all one
		dp <= "1111";
		if lap = '1' then
			if half_second = '0' then
				dp <= "0000";
			end if;
		end if;
		if START_STOP = '1' then
			dp(2) <= not dp(2);
		end if;
	END PROCESS;

DOTS <= dp;

end Behavioral;











