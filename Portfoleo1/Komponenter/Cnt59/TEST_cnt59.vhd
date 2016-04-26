
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_cnt59 IS
END TEST_cnt59;
 
ARCHITECTURE behavior OF TEST_cnt59 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cnt59
    PORT(
         EN 	: IN   std_logic;
         CLK 	: IN   std_logic;
         CLR 	: IN   std_logic;
         CARRY : OUT  std_logic;
         BCD59 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EN  : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal CARRY : std_logic;
   signal BCD59 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Cnt59 PORT MAP (
          EN 	 => EN,
          CLK 	 => CLK,
          CLR 	 => CLR,
          CARRY => CARRY,
          BCD59 => BCD59
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
      wait for 99 ms;	
		EN <= '1';
		wait for 1 ms;
		EN <= '0';
   end process;

END;
