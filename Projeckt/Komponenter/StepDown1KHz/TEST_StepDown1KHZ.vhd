
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_StepDown1KHZ IS
END TEST_StepDown1KHZ;
 
ARCHITECTURE behavior OF TEST_StepDown1KHZ IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT StepDown1KHz
    PORT(
         CLK_50MHz 	: IN  std_logic;
         CLK_1KHZ 	: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_50MHz 	: std_logic := '0';

 	--Outputs
   signal CLK_1KHZ 	: std_logic;

   -- Clock period definitions
   constant CLK_50MHz_period 	: time := 10 ns;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: StepDown1KHz PORT MAP (
          CLK_50MHz => CLK_50MHz,
          CLK_1KHZ => CLK_1KHZ
        );

   -- Clock process definitions
   CLK_50MHz_process :process
   begin
		CLK_50MHz <= '0';
		wait for CLK_50MHz_period/2;
		CLK_50MHz <= '1';
		wait for CLK_50MHz_period/2;
   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLK_50MHz_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
