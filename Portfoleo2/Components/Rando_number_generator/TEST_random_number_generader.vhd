--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:44 04/30/2016
-- Design Name:   
-- Module Name:   D:/Git/DIG_Portfoleo2/Portfoleo2/Components/Rando_number_generator/TEST_random_number_generader.vhd
-- Project Name:  Rando_number_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rand_gen
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_random_number_generader IS
END TEST_random_number_generader;
 
ARCHITECTURE behavior OF TEST_random_number_generader IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rand_gen
    PORT(
         ST_TOG : IN  std_logic;
         CLK : IN  std_logic;
         RAND_NUMB : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ST_TOG : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal RAND_NUMB : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rand_gen PORT MAP (
          ST_TOG => ST_TOG,
          CLK => CLK,
          RAND_NUMB => RAND_NUMB
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
      wait for 100 ms;	
		ST_TOG <= '1';
      
		wait for 200 ms;
		ST_TOG <= '0';
      
   end process;

END;
