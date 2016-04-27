----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:25 03/25/2016 
-- Design Name: 
-- Module Name:    MuxDisplay - Behavioral 
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
 
-- Setup ports
----------------------------------------------------------------------------------
entity MuxDisplay is
    Port ( CLK_1K : in  	STD_LOGIC;
           DOTS 	: in  	STD_LOGIC_VECTOR (3 downto 0);
           BCD1 	: in  	STD_LOGIC_VECTOR (3 downto 0);
			  BCD2 	: in  	STD_LOGIC_VECTOR (3 downto 0);
			  BCD3 	: in  	STD_LOGIC_VECTOR (3 downto 0);
			  BCD4 	: in  	STD_LOGIC_VECTOR (3 downto 0);
			  
           AN 		: out  	STD_LOGIC_VECTOR (3 downto 0);
           SEG 	: out  	STD_LOGIC_VECTOR (7 downto 0));
end MuxDisplay;

architecture Behavioral of MuxDisplay is
-- Define signals used in component
----------------------------------------------------------------------------------
-- The segment number
SIGNAL seg_no	: STD_LOGIC_VECTOR (3 DOWNTO 0) := (3 => '0', OTHERS => '1');

-- contains the value of current number
signal numb		: STD_LOGIC_VECTOR (3 DOWNTO 0);

-- contains the segment value of current number
signal digit	: STD_LOGIC_VECTOR (6 DOWNTO 0);

-- contains the current dot value
signal dot		: STD_LOGIC;

begin

-- Process to swich between segment anode
----------------------------------------------------------------------------------
switch_segment : 
PROCESS(CLK_1K)
	BEGIN   
		IF RISING_EDGE(CLK_1K) THEN
			seg_no <= seg_no(2 DOWNTO 0) & seg_no(3);
		END IF;
	END PROCESS;
	
AN <= seg_no;
 
-- Mux-segment that switches between segment values
---------------------------------------------------------------------------------
WITH seg_no SELECT
	numb <= 	BCD1(3 downto 0)  	WHEN "1110",
				BCD2(3 downto 0)  	WHEN "1101",
				BCD3(3 downto 0)  	WHEN "1011",
				BCD4(3 downto 0)  	WHEN OTHERS;

-- Mux-segment that converts value to 7-segment value
---------------------------------------------------------------------------------
WITH numb SELECT
	digit <=	"0000001" WHEN "0000",
				"1001111" WHEN "0001",
				"0010010" WHEN "0010",
				"0000110" WHEN "0011",
				"1001100" WHEN "0100",
				"0100100" WHEN "0101",
				"0100000" WHEN "0110",
				"0001111" WHEN "0111",
				"0000000" WHEN "1000",
				"0000100" WHEN "1001",
				"0001000" WHEN "1010",
				"1100000" WHEN "1011",
				"1100000" WHEN "1100",
				"0110001" WHEN "1101",
				"1000010" WHEN "1110",
				"0110000" WHEN "1111",
				"1111111" WHEN OTHERS;

-- Mux-segment that switches between segment dots
----------------------------------------------------------------------------------------------
WITH seg_no SELECT
	dot <= 	DOTS(0)  WHEN "1110",
				DOTS(1)  WHEN "1101",
				DOTS(2)  WHEN "1011",
				DOTS(3)  WHEN OTHERS;
			
-- combine signals at the end
----------------------------------------------------------------------------------------------
SEG 	<= DOT & DIGIT;

end Behavioral;












