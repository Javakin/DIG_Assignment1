--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:06:33 06/07/2016
-- Design Name:   
-- Module Name:   D:/Git/DIG_Assignment1/Portfoleo2/Components/Using_the_memorytype/TEST_SinCounter2.vhd
-- Project Name:  Using_the_memorytype
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SinusCounter2
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
 
ENTITY TEST_SinCounter2 IS
END TEST_SinCounter2;
 
ARCHITECTURE behavior OF TEST_SinCounter2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SinusCounter2
    PORT(
         Clk : IN  std_logic;
         Sw0 : IN  std_logic;
         Adr : OUT  std_logic_vector(4 downto 0);
         UPdown : INOUT  std_logic;
         Negate : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Sw0 : std_logic := '0';

	--BiDirs
   signal UPdown : std_logic;
   signal Negate : std_logic;

 	--Outputs
   signal Adr : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SinusCounter2 PORT MAP (
          Clk => Clk,
          Sw0 => Sw0,
          Adr => Adr,
          UPdown => UPdown,
          Negate => Negate
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '0';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--		wait for 100 ns;
--		Clk <= '0';
--	end process;

END;
