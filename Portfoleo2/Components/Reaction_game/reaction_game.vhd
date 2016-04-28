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

-- Define ports
----------------------------------------------------------------------------------
entity reaction_game is
    Port ( TIN1 				: in  STD_LOGIC_VECTOR (3 downto 0);
			  TIN2 				: in  STD_LOGIC_VECTOR (3 downto 0);
			  TIN3 				: in  STD_LOGIC_VECTOR (3 downto 0);
			  TIN4 				: in  STD_LOGIC_VECTOR (3 downto 0);
           TOUT1 				: out STD_LOGIC_VECTOR (3 downto 0);
			  TOUT2 				: out STD_LOGIC_VECTOR (3 downto 0);
			  TOUT3 				: out STD_LOGIC_VECTOR (3 downto 0);
			  TOUT4 				: out STD_LOGIC_VECTOR (3 downto 0);
			  
           START_DEBOUNCE 	: in  STD_LOGIC;
           START_TOGGLE 	: in  STD_LOGIC;
           CLEAR 				: in  STD_LOGIC;
           CLK 				: in  STD_LOGIC;
           LED 				: out STD_LOGIC;
           RAND 				: in  STD_LOGIC_VECTOR (15 downto 0));
end reaction_game;


architecture Behavioral of reaction_game is
-- Define signals
----------------------------------------------------------------------------------
signal tout : STD_LOGIC_VECTOR (15 downto 0);
signal tin  : STD_LOGIC_VECTOR (15 downto 0);
signal btn	: STD_LOGIC;

-- Define constants
----------------------------------------------------------------------------------
constant Stop_state 		 : STD_LOGIC_VECTOR (2 downto 0) := "001";
constant Start_state 	 : STD_LOGIC_VECTOR (2 downto 0) := "010";
constant Release_state   : STD_LOGIC_VECTOR (2 downto 0) := "000";
constant RT_passed_state : STD_LOGIC_VECTOR (2 downto 0) := "100";


begin

tin <= TIN4 & TIN3 & TIN2 & TIN1;
btn <= START_TOGGLE & START_DEBOUNCE;

stuff: 
process (CLK)
	begin
		if (rising_edge(CLK)) then
			
		end if;
	end process;
	
end Behavioral;

