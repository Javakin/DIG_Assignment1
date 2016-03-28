----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:16:36 03/28/2016 
-- Design Name: 
-- Module Name:    Cnt999 - Behavioral 
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
entity Cnt999 is
    Port ( EN 		: in  STD_LOGIC;
           CLK 	: in  STD_LOGIC;
           CLR 	: in  STD_LOGIC;
           CARRY 	: out  STD_LOGIC;
           BCD1_10: out  STD_LOGIC_VECTOR (3 downto 0));
end Cnt999;

architecture Behavioral of Cnt999 is
-- Internal signals
----------------------------------------------------------------------------------


begin


end Behavioral;

