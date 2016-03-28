----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:46:12 03/26/2016 
-- Design Name: 
-- Module Name:    ToggleButton - Behavioral 
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

-- Define liborys
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 
-- Defining ports
----------------------------------------------------------------------------------
entity ToggleButton is
    Port ( CLK 		: in  STD_LOGIC;
           BUTTON 	: in  STD_LOGIC;
           TOGGLE 	: out  STD_LOGIC;
           DEBOUNCE 	: out  STD_LOGIC;
           PULSE 		: out  STD_LOGIC);
end ToggleButton; 

architecture Behavioral of ToggleButton is
-- Internal signals
-----------------------------------------------------------------------------
signal Q	: 	STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
signal set 	:   STD_LOGIC	:= '0';
signal res 	:   STD_LOGIC	:= '0';

-- Defining constants for statemashine
-----------------------------------------------------------------------------
signal State	: STD_LOGIC_VECTOR( 2 downto 0 ) := "000";

constant s0		: STD_LOGIC_VECTOR( 2 downto 0 ) := "000";
constant s1		: STD_LOGIC_VECTOR( 2 downto 0 ) := "111";
constant s2		: STD_LOGIC_VECTOR( 2 downto 0 ) := "110";
constant s3		: STD_LOGIC_VECTOR( 2 downto 0 ) := "100";
constant s4		: STD_LOGIC_VECTOR( 2 downto 0 ) := "011";
constant s5		: STD_LOGIC_VECTOR( 2 downto 0 ) := "010";


begin

-- kill noise 10 ms delay
-----------------------------------------------------------------------------
Shift_noise	:
PROCESS(CLK)
	BEGIN
		if rising_edge(CLK) then
			-- Shift button value in the Q register;
			Q	<= Q(8 downto 0) & BUTTON;
		end if;
	END PROCESS;

set 	<= 	'1'   when Q = "1111111111" else '0'; 
res 	<= 	'1'	when Q = "0000000000" else '0';


-- statemashine
-----------------------------------------------------------------------------
Statemashine	:
PROCESS(CLK, set, res)
	BEGIN
		if rising_edge(CLK) then
			-- initiate statemashine
			if State = s0 then
				-- state 000 - test for set
				if set = '1' then
					State <= s1;
				end if;
				
			elsif State = s1 then
				-- state 111 - end pulse
				State <= s2;
				
			elsif State = s2 then
				-- state 110 - wait for release
				if res = '1' then 
					State <= s3;
				end if;
				
			elsif State = s3 then
				-- state 100 - test for set
				if set = '1' then
					State <= s4;
				end if;
				
			elsif State = s4 then
				-- state 011 - end pulse
					State <= s5;
				
			elsif State = s5 then
				-- state 010 - test for release
				if res = '1' then 
					State <= s0;
				end if;
				
			else
				-- others
				State <= s0;
				
			end if; 
		end if;
END PROCESS;

-- Set output
-----------------------------------------------------------------------------
TOGGLE 	<=	State(2);
PULSE		<= State(1);
DEBOUNCE	<=	State(0);



end Behavioral;

