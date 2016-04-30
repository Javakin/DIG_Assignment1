--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:15:58 04/29/2016
-- Design Name:   
-- Module Name:   D:/Git/DIG_Portfoleo2/Portfoleo2/Components/Reaction_game/TEST_reaction_game.vhd
-- Project Name:  Reaction_game
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reaction_game
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_reaction_game IS
END TEST_reaction_game;
 
ARCHITECTURE behavior OF TEST_reaction_game IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reaction_game
    PORT(
         TIN1 		: IN  std_logic_vector(3 downto 0);
         TIN2 		: IN  std_logic_vector(3 downto 0);
         TIN3 		: IN  std_logic_vector(3 downto 0);
         TIN4 		: IN  std_logic_vector(3 downto 0);
         TOUT1 	: OUT  std_logic_vector(3 downto 0);
         TOUT2 	: OUT  std_logic_vector(3 downto 0);
         TOUT3 	: OUT  std_logic_vector(3 downto 0);
         TOUT4 	: OUT  std_logic_vector(3 downto 0);
         START_DEBOUNCE : IN  std_logic;
         START_TOGGLE 	: IN  std_logic;
         CLEAR 			: IN  std_logic;
         CLEAR_TIME 		: OUT  std_logic;
         CLK 	: IN  std_logic;
         LED 	: OUT  std_logic;
         LAP 	: OUT  std_logic;
         RAND 	: IN  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal TIN1 : std_logic_vector(3 downto 0) := (others => '0');
   signal TIN2 : std_logic_vector(3 downto 0) := (others => '0');
   signal TIN3 : std_logic_vector(3 downto 0) := (others => '0');
   signal TIN4 : std_logic_vector(3 downto 0) := (others => '0');
   signal START_DEBOUNCE : std_logic := '0';
   signal START_TOGGLE : std_logic := '0';
   signal CLEAR : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RAND : std_logic_vector(15 downto 0) := "0000000000010100";

 	--Outputs
   signal TOUT1 : std_logic_vector(3 downto 0);
   signal TOUT2 : std_logic_vector(3 downto 0);
   signal TOUT3 : std_logic_vector(3 downto 0);
   signal TOUT4 : std_logic_vector(3 downto 0);
   signal CLEAR_TIME : std_logic;
   signal LED : std_logic;
   signal LAP : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reaction_game PORT MAP (
          TIN1 => TIN1,
          TIN2 => TIN2,
          TIN3 => TIN3,
          TIN4 => TIN4,
          TOUT1 => TOUT1,
          TOUT2 => TOUT2,
          TOUT3 => TOUT3,
          TOUT4 => TOUT4,
          START_DEBOUNCE => START_DEBOUNCE,
          START_TOGGLE => START_TOGGLE,
          CLEAR => CLEAR,
          CLEAR_TIME => CLEAR_TIME,
          CLK => CLK,
          LED => LED,
          LAP => LAP,
          RAND => RAND
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     wait for 1 ms;
	  TIN1 <= TIN1 + 1;
     
   end process;

   -- Stimulus process1
   stim_proc1: process
   begin		
      -- hold reset state for 100 ns.
     wait for 10 ms;
	  TIN2 <= TIN2 + 1;
     
   end process;
	
   -- Stimulus process2
   stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
     wait for 5 ms; 
	  START_DEBOUNCE <= '1';
	  START_TOGGLE <= '1';
	  
	  wait for 5 ms; 
	  START_DEBOUNCE <= '0';
	  START_TOGGLE <= '1';
	   
	  wait for 23 ms;
	  START_DEBOUNCE <= '1';
	  START_TOGGLE <= '0';
	  
	  wait for 20 ms;
     
   end process;

END;










