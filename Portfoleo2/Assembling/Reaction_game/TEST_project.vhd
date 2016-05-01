-- Vhdl test bench created from schematic D:\Git\DIG_Assignment1\Portfoleo2\Assembling\Reaction_game\Reaction_game_ass.sch - Sun May 01 12:54:08 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Reaction_game_ass_Reaction_game_ass_sch_tb IS
END Reaction_game_ass_Reaction_game_ass_sch_tb;
ARCHITECTURE behavioral OF Reaction_game_ass_Reaction_game_ass_sch_tb IS 

   COMPONENT Reaction_game_ass
   PORT( AN			:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SEG		:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          HISCORE	:	IN		STD_LOGIC; 
          CLEAR	:	IN		STD_LOGIC; 
          START	:	IN		STD_LOGIC; 
          LED		:	OUT	STD_LOGIC; 
          CLK_50MHz	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL AN		:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SEG		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL HISCORE	:	STD_LOGIC := '0';
   SIGNAL CLEAR	:	STD_LOGIC := '0';
   SIGNAL START	:	STD_LOGIC;
   SIGNAL LED		:	STD_LOGIC;
   SIGNAL CLK_50MHz	:	STD_LOGIC;
	
	 -- Clock period definitions
   constant CLK_50MHz_period 	: time := 20 ns;

BEGIN

   UUT: Reaction_game_ass PORT MAP(
		AN 		=> AN, 
		SEG 		=> SEG, 
		HISCORE 	=> HISCORE, 
		CLEAR 	=> CLEAR, 
		START 	=> START, 
		LED 		=> LED, 
		CLK_50MHz => CLK_50MHz
   );

 -- Clock process definitions
   CLK_50MHz_process :process
   begin
		CLK_50MHz <= '0';
		wait for CLK_50MHz_period/2;
		CLK_50MHz <= '1';
		wait for CLK_50MHz_period/2;
   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait for 500 ns;
		START <= '1';
		
		wait for 10 ms; 
		START <= '0';
		
		-- game is now running
		wait for 100 ms;
		START <= '1';
		wait for 10 ms;
		START <= '0';
		wait;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
