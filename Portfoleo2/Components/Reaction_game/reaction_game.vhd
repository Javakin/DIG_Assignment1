----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:53 04/28/2016 
-- Design Name: 
-- Module Name:    reaction_game - Behavioral 
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

entity reaction_game is
    Port ( TIN1 : in  STD_LOGIC_VECTOR (3 downto 0);
           TOUT1 : out  STD_LOGIC_VECTOR (3 downto 0);
           START_DEBOUNCE : in  STD_LOGIC;
           START_TOGGLE : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           LED : out  STD_LOGIC;
           RAND : in  STD_LOGIC_VECTOR (15 downto 0));
end reaction_game;

architecture Behavioral of reaction_game is

begin


end Behavioral;

