----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:16:36 03/28/2016 
-- Design Name: 
-- Module Name:    Cnt999 - Behavioral 
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
entity Cnt999 is
    Port ( EN 		: in   STD_LOGIC;
           CLK 	: in   STD_LOGIC;
           CLR 	: in   STD_LOGIC;
			  
           BCD1_1000: out  STD_LOGIC_VECTOR (3 downto 0);
			  BCD1_100: out  STD_LOGIC_VECTOR (3 downto 0);
			  BCD1_10: out  STD_LOGIC_VECTOR (3 downto 0);
			  BCD1_1: out  STD_LOGIC_VECTOR (3 downto 0));
end Cnt999;

architecture Behavioral of Cnt999 is
-- Internal signals
----------------------------------------------------------------------------------
signal cif1000, cif100, cif10, cif1 	: integer range 0 to 15 := 0;

begin

-- Process add one to number
----------------------------------------------------------------------------------
counter	: 
PROCESS( CLK, CLR)
	BEGIN
		if CLR = '1' then
			cif1000 <= 0; cif100 <= 0;	cif10 <= 0;	cif1 <= 0;
		elsif rising_edge(CLK) then
			if (EN = '1' and not (cif1 = 9 and cif10 = 9 and cif100 = 9 and cif1000 = 9)) then
				-- add one to number
				if cif1 = 9 then 
					if cif10 = 9 then
						if cif100 = 9 then
							cif1000 <= (cif1000 + 1) mod 10;
						end if;
						cif100 <= (cif100 + 1) mod 10;
					end if;
					cif10 <= (cif10 + 1) mod 10;
				end if;
				cif1 <= (cif1 + 1) mod 10;
			end if;
			
		end if; 
	END PROCESS;
	
-- set output
----------------------------------------------------------------------------------
BCD1_1000 	<= conv_std_logic_vector(cif1,4);
BCD1_100 	<= conv_std_logic_vector(cif10,4);
BCD1_10  	<= conv_std_logic_vector(cif100,4);
BCD1_1   	<= conv_std_logic_vector(cif1000,4);


end Behavioral;













