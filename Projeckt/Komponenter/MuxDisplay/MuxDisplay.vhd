----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:25 03/25/2016 
-- Design Name: 
-- Module Name:    MuxDisplay - Behavioral 
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

-- Setup ports
----------------------------------------------------------------------------------
entity MuxDisplay is
    Port ( CLK_1K : in  	STD_LOGIC;
           DOTS 	: in  	STD_LOGIC_VECTOR (3 downto 0);
           SEC 	: in  	STD_LOGIC_VECTOR (5 downto 0);
           MIN 	: in  	STD_LOGIC_VECTOR (5 downto 0);
           AN 		: out  	STD_LOGIC_VECTOR (3 downto 0);
           SEG 	: out  	STD_LOGIC_VECTOR (6 downto 0));
end MuxDisplay;

architecture Behavioral of MuxDisplay is
-- Define signals used in component
----------------------------------------------------------------------------------


begin


end Behavioral;












