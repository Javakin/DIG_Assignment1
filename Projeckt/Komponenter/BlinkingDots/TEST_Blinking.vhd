
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_Blinking IS
END TEST_Blinking;
 
ARCHITECTURE behavior OF TEST_Blinking IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BlinkingDots
    PORT(
         LAP : IN  std_logic;
         START_STOP : IN  std_logic;
         SEC1_10 : IN  std_logic_vector(3 downto 0);
         DOTS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LAP : std_logic := '0';
   signal START_STOP : std_logic := '0';
   signal SEC1_10 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal DOTS : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BlinkingDots PORT MAP (
          LAP => LAP,
          START_STOP => START_STOP,
          SEC1_10 => SEC1_10,
          DOTS => DOTS
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		SEC1_10 <= "0001";
		wait for 100 ns;
		SEC1_10 <= "0010";
		wait for 100 ns;
		SEC1_10 <= "0011";
		wait for 100 ns;
		SEC1_10 <= "0100";
		wait for 100 ns;
		SEC1_10 <= "0101";
		wait for 100 ns;
		SEC1_10 <= "0110";
		wait for 100 ns;
		SEC1_10 <= "0111";
		
  --    wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
