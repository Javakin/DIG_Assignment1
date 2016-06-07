
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SinusCounter2 is
    Port ( Clk : 		in   STD_LOGIC;
	        Sw0 : 		in   STD_LOGIC;
           Adr : 		out  STD_LOGIC_VECTOR (4 downto 0);
           UPdown : inout STD_LOGIC := '1';
           Negate : inout STD_LOGIC := '0');
end SinusCounter2;

architecture Behavioral of SinusCounter2 is
   Signal Counter: STD_LOGIC_VECTOR (4 downto 0) := (others=>'0');
	Signal Enable:  STD_LOGIC := '0';
begin
   ------------------ Clock scale process -------------------------- 
   process( Clk)
	   variable scale: integer := 1;
	begin
	   if rising_edge(Clk) then
		   Scale  :=  Scale - 1;
			Enable <= '0';
		   if Scale=0 then
			   Enable <= '1';
				if Sw0='1' then
				   Scale := 4;
				else
				   Scale := 5000000;
				end if;
			end if;
		end if; 
	end process;
   ------------------ Sinus counter ------------------------------
	Adr <= Counter;
	
   process( Clk) 
	begin
	   if Rising_edge( Clk) then
		   if Enable = '1' then
				if UPdown='1' then             
					if Counter = "11111" then   -- Max counter value      
						UPdown <= '0';           -- Set to count down     
					else
						Counter <= Counter+1;
					end if;
				else
					if Counter = "00000" then   -- Min counter value
						UPdown <= '1';           -- Set to count up  
						Negate  <= not Negate;   -- Change +/- period
					else
						Counter <= Counter-1;
					end if;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

