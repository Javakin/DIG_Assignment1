----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:53:43 04/30/2016 
-- Design Name: 
-- Module Name:    rand_gen - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Define ports 
----------------------------------------------------------------------------------
entity rand_gen is
    Port ( ST_TOG 	: in  STD_LOGIC;
			  CLK 		: in  STD_LOGIC;
           RAND_NUMB : out  STD_LOGIC_VECTOR (15 downto 0)
			  );

end rand_gen;

architecture Behavioral of rand_gen is
-- Define signals 
----------------------------------------------------------------------------------
signal current_number : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin

count_process : 
PROCESS(CLK)
	BEGIN
		if rising_edge(CLK) and ST_TOG = '0' then
			current_number <= current_number + 2451;
			
		end if;
	END PROCESS;

-- Set output
----------------------------------------------------------------------------------


--RAND_NUMB <= "0" & current_number(14 downto 13) & "1" & current_number(11 downto 0);
RAND_NUMB <= "00000000" & current_number(7 downto 0);
end Behavioral;











