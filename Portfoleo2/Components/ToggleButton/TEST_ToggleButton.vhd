
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_ToggleButton IS
END TEST_ToggleButton;
 
ARCHITECTURE behavior OF TEST_ToggleButton IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ToggleButton
    PORT(
         CLK 		: IN  	std_logic;
         BUTTON 	: IN  	std_logic;
         TOGGLE 	: OUT  	std_logic;
         DEBOUNCE : OUT  	std_logic;
         PULSE 	: OUT  	std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK 			: std_logic := '0';
   signal BUTTON 		: std_logic := '0';

 	--Outputs
   signal TOGGLE 		: std_logic;
   signal DEBOUNCE 	: std_logic;
   signal PULSE 		: std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ToggleButton PORT MAP (
          CLK => CLK,
          BUTTON => BUTTON,
          TOGGLE => TOGGLE,
          DEBOUNCE => DEBOUNCE,
          PULSE => PULSE
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
      BUTTON <= '0';
      wait for 1 ms;	
		
		BUTTON <= '1';
      wait for 1 ms;	
		
		BUTTON <= '0';
      wait for 1 ms;	
		
		BUTTON <= '1';
      
		wait for 20 ms;
		
		-- gentagelse
		BUTTON <= '0';
      wait for 1 ms;	
		
		BUTTON <= '1';
      wait for 1 ms;	
		
		BUTTON <= '0';
      
		wait for 20 ms;
      

      -- insert stimulus here 
		BUTTON <= '0';
      wait for 1 ms;	
		
		BUTTON <= '1';
      wait for 1 ms;	
		
		BUTTON <= '0';
      wait for 1 ms;	
		
		BUTTON <= '1';
      
		wait for 20 ms;
		
		-- gentagelse
		BUTTON <= '0';
      wait for 1 ms;	
		
		BUTTON <= '1';
      wait for 1 ms;	
		
		BUTTON <= '0';
      
		wait for 20 ms;
      
	

      wait;
   end process;

END;
