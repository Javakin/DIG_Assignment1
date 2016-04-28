--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:14:15 04/27/2016
-- Design Name:   
-- Module Name:   D:/Git/DIG_Portfoleo2/Portfoleo2/Components/Cnt9999/TEST-cnt9999.vhd
-- Project Name:  Cnt9999
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Cnt9999
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
 
ENTITY TESTcnt9999 IS
END TESTcnt9999;
 
ARCHITECTURE behavior OF TESTcnt9999 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cnt9999
    PORT(
         EN : IN  std_logic;
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         BCD1_1000 : OUT  std_logic_vector(3 downto 0);
         BCD1_100 : OUT  std_logic_vector(3 downto 0);
         BCD1_10 : OUT  std_logic_vector(3 downto 0);
         BCD1_1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '1';
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal BCD1_1000 : std_logic_vector(3 downto 0);
   signal BCD1_100 : std_logic_vector(3 downto 0);
   signal BCD1_10 : std_logic_vector(3 downto 0);
   signal BCD1_1 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Cnt9999 PORT MAP (
          EN => EN,
          CLK => CLK,
          CLR => CLR,
          BCD1_1000 => BCD1_1000,
          BCD1_100 => BCD1_100,
          BCD1_10 => BCD1_10,
          BCD1_1 => BCD1_1
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
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
