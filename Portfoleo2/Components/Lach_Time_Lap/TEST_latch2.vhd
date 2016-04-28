--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:57:41 04/28/2016
-- Design Name:   
-- Module Name:   D:/Git/DIG_Portfoleo2/Portfoleo2/Components/Lach_Time_Lap/TEST_latch2.vhd
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
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_latch2 IS
END TEST_latch2;
 
ARCHITECTURE behavior OF TEST_latch2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Time_Lap_Lach
    PORT(
         LAP : IN  std_logic;
         CLEAR : IN  std_logic;
         HIGH_SCORE : IN  std_logic;
			
         IN_BCD1 : IN  std_logic_vector(3 downto 0);
         IN_BCD2 : IN  std_logic_vector(3 downto 0);
         IN_BCD3 : IN  std_logic_vector(3 downto 0);
         IN_BCD4 : IN  std_logic_vector(3 downto 0);
			
         OUT_BCD1 : OUT  std_logic_vector(3 downto 0);
         OUT_BCD2 : OUT  std_logic_vector(3 downto 0);
         OUT_BCD3 : OUT  std_logic_vector(3 downto 0);
         OUT_BCD4 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LAP : std_logic := '0';
   signal CLEAR : std_logic := '0';
   signal HIGH_SCORE : std_logic := '0';
	
   signal IN_BCD1 : std_logic_vector(3 downto 0) := (others => '0');
   signal IN_BCD2 : std_logic_vector(3 downto 0) := (others => '0');
   signal IN_BCD3 : std_logic_vector(3 downto 0) := (others => '0');
   signal IN_BCD4 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OUT_BCD1 : std_logic_vector(3 downto 0);
   signal OUT_BCD2 : std_logic_vector(3 downto 0);
   signal OUT_BCD3 : std_logic_vector(3 downto 0);
   signal OUT_BCD4 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Time_Lap_Lach PORT MAP (
          LAP => LAP,
          CLEAR => CLEAR,
          HIGH_SCORE => HIGH_SCORE,
			 
          IN_BCD1 => IN_BCD1,
          IN_BCD2 => IN_BCD2,
          IN_BCD3 => IN_BCD3,
          IN_BCD4 => IN_BCD4,
          
			 OUT_BCD1 => OUT_BCD1,
          OUT_BCD2 => OUT_BCD2,
          OUT_BCD3 => OUT_BCD3,
          OUT_BCD4 => OUT_BCD4
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 1 ms;	

      IN_BCD4 <= IN_BCD4 + 1;
		wait for 1 ms;
		IN_BCD4 <= IN_BCD4 + 1;
		wait for 1 ms;
		IN_BCD4 <= IN_BCD4 + 1;
		wait for 1 ms;
		IN_BCD4 <= IN_BCD4 + 1;
		wait for 1 ms;
		IN_BCD4 <= IN_BCD4 + 1;
		wait for 1 ms;
		IN_BCD4 <= IN_BCD4 + 1;
		wait for 1 ms;
		
		HIGH_SCORE <= '1';
		
		wait for 2 ms;
		HIGH_SCORE <= '0';
		

      -- insert stimulus here
   end process;

END;
