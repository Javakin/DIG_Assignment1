----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:28 03/30/2016 
-- Design Name: 
-- Module Name:    Cnt59 - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Define ports
----------------------------------------------------------------------------------
entity Cnt59 is
    Port ( EN 		: in   STD_LOGIC;
           CLK 	: in   STD_LOGIC;
           CLR 	: in   STD_LOGIC;
           CARRY 	: out  STD_LOGIC;
           BCD59 	: out  STD_LOGIC_VECTOR (7 downto 0));
end Cnt59;

architecture Behavioral of Cnt59 is
-- Define internal signals
----------------------------------------------------------------------------------
signal cif1, cif10 : integer range 0 to 15	:= 0;

begin

-- Process add one to number
----------------------------------------------------------------------------------
--counter	: 
--PROCESS( CLK, CLR)
--	BEGIN
--		if CLR = '1' then
--			cif10 <= 0;	cif1 <= 0;
--		elsif rising_edge(CLK) then
--			if EN = '1' then
--				 add one to number
--				if cif1 = 9 then 
--					cif10 <= (cif10 + 1) mod 6;
--				end if;
--				cif1 <= (cif1 + 1) mod 10;
--			end if;
--		end if; 
--	END PROCESS;
	
-- set output
----------------------------------------------------------------------------------
BCD59 	<= conv_std_logic_vector(cif10,4) & conv_std_logic_vector(cif1,4);

CARRY		<= '1' when cif10=5 and cif1=9 and EN='1' else
				'0';


end Behavioral;

