
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_MuxDisplay IS
END TEST_MuxDisplay;

ARCHITECTURE behavior OF TEST_MuxDisplay IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MuxDisplay
    PORT(
         CLK_1K : IN  std_logic;
         DOTS : IN  std_logic_vector(3 downto 0);
         SEC : IN  std_logic_vector(7 downto 0);
         MIN : IN  std_logic_vector(7 downto 0);
         AN : OUT  std_logic_vector(3 downto 0);
         SEG : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_1K : std_logic := '0';
   signal DOTS : std_logic_vector(3 downto 0) := (others => '0');
   signal SEC : std_logic_vector(5 downto 0) := (others => '0');
   signal MIN : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal AN : std_logic_vector(3 downto 0);
   signal SEG : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_1K_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MuxDisplay PORT MAP (
          CLK_1K => CLK_1K,
          DOTS => DOTS,
          SEC => SEC,
          MIN => MIN,
          AN => AN,
          SEG => SEG
        );

   -- Clock process definitions
   CLK_1K_process :process
   begin
		CLK_1K <= '0';
		wait for CLK_1K_period/2;
		CLK_1K <= '1';
		wait for CLK_1K_period/2;
   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLK_1K_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
