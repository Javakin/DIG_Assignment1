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


end Behavioral;

