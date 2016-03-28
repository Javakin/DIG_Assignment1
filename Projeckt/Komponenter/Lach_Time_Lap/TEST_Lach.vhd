--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:34:12 03/28/2016
-- Design Name:   
-- Module Name:   D:/Git/DIG_Assignment1/Projeckt/Komponenter/Lach_Time_Lap/TEST_Lach.vhd
-- Project Name:  Lach_Time_Lap
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Time_Lap_Lach
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
--use IEEE.STD_LOGIC_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_Lach IS
END TEST_Lach;
 
ARCHITECTURE behavior OF TEST_Lach IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Time_Lap_Lach
    PORT(
         LAP 			: IN  std_logic;
         IN_TEENTH 	: IN  std_logic_vector(3 downto 0);
         IN_SEC 		: IN  std_logic_vector(7 downto 0);
         IN_MIN 		: IN  std_logic_vector(7 downto 0);
         OUT_TEENTH 	: OUT  std_logic_vector(3 downto 0);
         OUT_SEC 		: OUT  std_logic_vector(7 downto 0);
         OUT_MIN 		: OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LAP 			: std_logic := '0';
   signal IN_TEENTH 	: std_logic_vector(3 downto 0) := "0001";
   signal IN_SEC 		: std_logic_vector(7 downto 0) := "00000010";
   signal IN_MIN 		: std_logic_vector(7 downto 0) := "00000011";

 	--Outputs
   signal OUT_TEENTH : std_logic_vector(3 downto 0);
   signal OUT_SEC 	: std_logic_vector(7 downto 0);
   signal OUT_MIN 	: std_logic_vector(7 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Time_Lap_Lach PORT MAP (
          LAP 			=> LAP,
          IN_TEENTH 	=> IN_TEENTH,
          IN_SEC 		=> IN_SEC,
          IN_MIN 		=> IN_MIN,
          OUT_TEENTH => OUT_TEENTH,
          OUT_SEC 	=> OUT_SEC,
          OUT_MIN 	=> OUT_MIN
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

		wait for 100 ns;	
		LAP <= '1';
		wait for 100 ns;	
		LAP <= '0';
		wait for 100 ns;	
		LAP <= '1';
		wait for 100 ns;	
		LAP <= '0';
		wait for 100 ns;	
		LAP <= '1';
		wait for 100 ns;	
		LAP <= '0';
		wait for 100 ns;	
		LAP <= '1';
		wait for 100 ns;	
		LAP <= '0';
		wait for 100 ns;	
		LAP <= '1';
		wait for 100 ns;	
		LAP <= '0';
		

      -- insert stimulus here 

      wait;
   end process;
	
	add_one: process
   begin		
      -- hold reset state for 100 ns.
		wait for 50 ns;
		IN_MIN <= "00000010";
      wait for 50 ns;
		IN_MIN <= "00000011";
		wait for 50 ns;
		IN_MIN <= "00000100";
		wait for 50 ns;
		IN_MIN <= "00000101";
		wait for 50 ns;
		IN_MIN <= "00000110";
		wait for 50 ns;
		IN_MIN <= "00000111";
		wait for 50 ns;
		IN_MIN <= "00001000";

      wait;
   end process;

END;
