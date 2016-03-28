----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:35 03/28/2016 
-- Design Name: 
-- Module Name:    TeenthSec - Behavioral 
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
entity TeenthSec is
    Port ( BCD : in  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end TeenthSec;

architecture Behavioral of TeenthSec is

begin

-- chose mux state
----------------------------------------------------------------------------------
with BCD select
	LED <="00000000" when "0000",
			"00000001" when "0001",
			"00000011" when "0010",
			"00000111" when "0011",
			"00001111" when "0100",
			"00011111" when "0101",
			"00111111" when "0110",
			"01111111" when "0111",
			"11111111" when "1000",
			"11111110" when "1001",
			"11111100" when "1010",
			"00000000" when others;

	


end Behavioral;

