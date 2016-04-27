
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
         CLK_1K 	: IN  	std_logic;
         DOTS 		: IN  	std_logic_vector (3 downto 0);
         BCD1 		: in  	STD_LOGIC_VECTOR (3 downto 0);
  		   BCD2 		: in  	STD_LOGIC_VECTOR (3 downto 0);
		   BCD3 		: in  	STD_LOGIC_VECTOR (3 downto 0);
		   BCD4 		: in  	STD_LOGIC_VECTOR (3 downto 0);
			
			
         AN 		: OUT  	std_logic_vector(3 downto 0);
         SEG 		: OUT  	std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_1K : std_logic := '0';
   signal DOTS : std_logic_vector(3 downto 0) := "0010";
	signal BCD1	: std_logic_vector(3 downto 0) := "0001";
	signal BCD2	: std_logic_vector(3 downto 0) := "0010";
	signal BCD3	: std_logic_vector(3 downto 0) := "0011";
	signal BCD4	: std_logic_vector(3 downto 0) := "0100";

 	--Outputs
   signal AN 	: std_logic_vector(3 downto 0);
   signal SEG 	: std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_1K_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MuxDisplay PORT MAP (
          CLK_1K => CLK_1K,
          DOTS => DOTS,
          BCD1 => BCD1,
			 BCD2 => BCD2,
			 BCD3 => BCD3,
			 BCD4 => BCD4,
			 
          
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
