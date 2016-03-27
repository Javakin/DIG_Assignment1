----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:46:12 03/26/2016 
-- Design Name: 
-- Module Name:    ToggleButton - Behavioral 
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

-- Define liborys
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Defining ports
----------------------------------------------------------------------------------
entity ToggleButton is
    Port ( CLK 		: in  STD_LOGIC;
           BUTTON 	: in  STD_LOGIC;
           TOGGLE 	: out  STD_LOGIC;
           DEBOUNCE 	: out  STD_LOGIC;
           PULSE 		: out  STD_LOGIC);
end ToggleButton;

architecture Behavioral of ToggleButton is
-- Internal signals
----------------------------------------------------------------------------------


begin



end Behavioral;

