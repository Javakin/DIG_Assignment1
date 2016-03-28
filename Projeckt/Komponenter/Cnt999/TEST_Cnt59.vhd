
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_Cnt999 IS
END TEST_Cnt999;
 
ARCHITECTURE behavior OF TEST_Cnt999 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cnt999
    PORT(
         EN 		: IN  std_logic;
         CLK 		: IN  std_logic;
         CLR 		: IN  std_logic;
         CARRY 	: OUT  std_logic;
         BCD1_10 	: OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EN 	: std_logic := '0';
   signal CLK 	: std_logic := '0';
   signal CLR 	: std_logic := '0';

 	--Outputs
   signal CARRY : std_logic;
   signal BCD1_10 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Cnt999 PORT MAP (
          EN => EN,
          CLK => CLK,
          CLR => CLR,
          CARRY => CARRY,
          BCD1_10 => BCD1_10
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
