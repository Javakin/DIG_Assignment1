----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:41 03/26/2016 
-- Design Name: 
-- Module Name:    StepDown1KHz - Behavioral 
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
entity StepDown1KHz is
    Port ( CLK_50MHz : in  STD_LOGIC;
           CLK_1KHZ : out  STD_LOGIC);
end StepDown1KHz;


architecture Behavioral of StepDown1KHz is
-- define internal signals
----------------------------------------------------------------------------------


begin
-- Process stepdown 1/50.000
----------------------------------------------------------------------------------

end Behavioral;








