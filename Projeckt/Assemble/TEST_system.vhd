-- Vhdl test bench created from schematic D:\Git\DIG_Assignment1\Projeckt\Assemble\Assemble.sch - Wed Mar 30 16:16:12 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Assemble_Assemble_sch_tb IS
END Assemble_Assemble_sch_tb;
ARCHITECTURE behavioral OF Assemble_Assemble_sch_tb IS 

   COMPONENT Assemble
   PORT( STARTSTOP	:	IN	STD_LOGIC; 
          LAP		:	IN	STD_LOGIC; 
          CLEAR	:	IN	STD_LOGIC; 
          LED		:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AN		:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SEG		:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          CLK		:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL STARTSTOP	:	STD_LOGIC := '0';
   SIGNAL LAP			:	STD_LOGIC := '0';
   SIGNAL CLEAR		:	STD_LOGIC := '0';
   SIGNAL LED			:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL AN			:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SEG			:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL CLK			:	STD_LOGIC;

BEGIN

   UUT: Assemble PORT MAP(
		STARTSTOP => STARTSTOP, 
		LAP 		=> LAP, 
		CLEAR 	=> CLEAR, 
		LED 		=> LED, 
		AN 		=> AN, 
		SEG 		=> SEG, 
		CLK 		=> CLK
   );

  -- Stimulus process
   stim_proc2: process
   begin		 
      -- hold reset state for 100 ns.
		wait for 10 ns;	
		CLK <= '0';
		wait for 10 ns;	
		CLK <= '1';
   end process;
	
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		STARTSTOP <= '1';
		wait for 10 ms;
		STARTSTOP <= '0';
		
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
