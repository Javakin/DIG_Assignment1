----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:41 03/26/2016 
-- Design Name: 
-- Module Name:    StepDown1KHz - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- Define ports
----------------------------------------------------------------------------------
entity StepDown1KHz is
    Port ( CLK_50MHz : in  STD_LOGIC;
           CLK_1KHz : out  STD_LOGIC);
end StepDown1KHz;


architecture Behavioral of StepDown1KHz is
-- define internal signals
----------------------------------------------------------------------------------
signal prescaler : STD_LOGIC_VECTOR (25 downto 0) := (others => '0');
signal output	  : STD_LOGIC	:= '0';

begin
-- Process stepdown 1/50.000
----------------------------------------------------------------------------------
StepDown1K :
Process (CLK_50MHz)
	begin
		if rising_edge(CLK_50MHz) then
			if prescaler < "101" then
				prescaler 	<= prescaler + 1;
			else
				prescaler 	<= (others => '0');
				output 		<= not output;	
			end if;
		end if;
	end process;

CLK_1kHz <= output;


end Behavioral;








