----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:53 04/28/2016 
-- Design Name: 
-- Module Name:    reaction_game - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Define ports
----------------------------------------------------------------------------------
entity reaction_game is
    Port ( TIN1 				: in  STD_LOGIC_VECTOR (3 downto 0);
			  TIN2 				: in  STD_LOGIC_VECTOR (3 downto 0);
			  TIN3 				: in  STD_LOGIC_VECTOR (3 downto 0);
			  TIN4 				: in  STD_LOGIC_VECTOR (3 downto 0);
           TOUT1 				: out STD_LOGIC_VECTOR (3 downto 0);
			  TOUT2 				: out STD_LOGIC_VECTOR (3 downto 0);
			  TOUT3 				: out STD_LOGIC_VECTOR (3 downto 0);
			  TOUT4 				: out STD_LOGIC_VECTOR (3 downto 0);
			  
           START_DEBOUNCE 	: in  STD_LOGIC;
           START_TOGGLE 	: in  STD_LOGIC;
           CLEAR 				: in  STD_LOGIC;
			  CLEAR_TIME		: out STD_LOGIC;
           CLK 				: in  STD_LOGIC;
           LED 				: out STD_LOGIC;
			  LAP 				: out STD_LOGIC;
           RAND 				: in  STD_LOGIC_VECTOR (15 downto 0));
end reaction_game;


architecture Behavioral of reaction_game is
-- Define signals
----------------------------------------------------------------------------------
signal tout : STD_LOGIC_VECTOR (15 downto 0) := (others => '1');
signal tin  : STD_LOGIC_VECTOR (15 downto 0);
signal btn	: STD_LOGIC_VECTOR (1 downto 0);
signal state : STD_LOGIC_VECTOR (2 downto 0) := "001";


-- Define constants
----------------------------------------------------------------------------------
-- Q(0) is LAP
-- Q(1) is CLEAR_TIME
-- Q(2) is LED
----------------------------------------------------------------------------------
constant Stop_state 		 : STD_LOGIC_VECTOR (2 downto 0) := "001";
constant Start_state 	 : STD_LOGIC_VECTOR (2 downto 0) := "010";
constant Release_state   : STD_LOGIC_VECTOR (2 downto 0) := "000";
constant RT_passed_state : STD_LOGIC_VECTOR (2 downto 0) := "100";
constant Clr_time_state  : STD_LOGIC_VECTOR (2 downto 0) := "110";



begin
-- Define constants
----------------------------------------------------------------------------------
tin <= TIN4 & TIN3 & TIN2 & TIN1;
btn <= START_TOGGLE & START_DEBOUNCE;

State_mashine : 
process (CLK, CLEAR)
	begin
		if CLEAR = '1' then 
			-- clear all
			tout <= (others => '0');
			state <= Stop_state;
		elsif (rising_edge(CLK)) then
			-- execute states
			if state = Stop_state then
				-- wait for start
				if btn = "11" then 
					state <= Start_state; 
				end if;
				
			elsif state = Start_state then
				-- clear lap and time
				if btn = "10" then 
					state <= Release_state;
					tout <= (others => '0');
				end if;
				
			elsif state = Release_state then
				-- wait for time = random time
				if btn = "01" then 
					state <= Stop_state;
					tout <= "1001100110011001";
				end if;
				
				if tin > RAND then
					state <= Clr_time_state;
				end if;
				
			elsif state = Clr_time_state then
				-- clear counter
				state <= RT_passed_state;
				
			elsif state = RT_passed_state then
				-- wait for respons
				tout <= tin;
				if btn = "01" then
					state <= Stop_state;
				end if;
			end if;
			
		end if;
	end process;
	

-- set outputs
----------------------------------------------------------------------------------
LED 			<= state(2);
CLEAR_TIME  <= state(1);
LAP 			<= state(0);

TOUT1 <= tout(3  downto 0);
TOUT2 <= tout(7  downto 4);
TOUT3 <= tout(11 downto 8);
TOUT4 <= tout(15 downto 12);

end Behavioral;

