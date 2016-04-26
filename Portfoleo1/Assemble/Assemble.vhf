--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Assemble.vhf
-- /___/   /\     Timestamp : 04/26/2016 17:25:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/Git/DIG_Portfoleo2/Portfoleo1/Assemble/Assemble.vhf -w D:/Git/DIG_Portfoleo2/Portfoleo1/Assemble/Assemble.sch
--Design Name: Assemble
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Assemble is
   port ( CLEAR     : in    std_logic; 
          CLK       : in    std_logic; 
          LAP       : in    std_logic; 
          STARTSTOP : in    std_logic; 
          AN        : out   std_logic_vector (3 downto 0); 
          LED       : out   std_logic_vector (0 to 7); 
          SEG       : out   std_logic_vector (7 downto 0));
end Assemble;

architecture BEHAVIORAL of Assemble is
   attribute BOX_TYPE   : string ;
   signal XLXN_24   : std_logic;
   signal XLXN_31   : std_logic;
   signal XLXN_54   : std_logic;
   signal XLXN_55   : std_logic;
   signal XLXN_57   : std_logic_vector (3 downto 0);
   signal XLXN_58   : std_logic_vector (7 downto 0);
   signal XLXN_59   : std_logic_vector (7 downto 0);
   signal XLXN_63   : std_logic;
   signal XLXN_65   : std_logic;
   signal XLXN_67   : std_logic;
   signal XLXN_72   : std_logic_vector (3 downto 0);
   signal XLXN_73   : std_logic_vector (7 downto 0);
   signal XLXN_74   : std_logic_vector (7 downto 0);
   signal XLXN_75   : std_logic_vector (3 downto 0);
   component ToggleButton
      port ( CLK      : in    std_logic; 
             BUTTON   : in    std_logic; 
             TOGGLE   : out   std_logic; 
             DEBOUNCE : out   std_logic; 
             PULSE    : out   std_logic);
   end component;
   
   component Cnt999
      port ( EN      : in    std_logic; 
             CLK     : in    std_logic; 
             CLR     : in    std_logic; 
             CARRY   : out   std_logic; 
             BCD1_10 : out   std_logic_vector (3 downto 0));
   end component;
   
   component Cnt59
      port ( EN    : in    std_logic; 
             CLK   : in    std_logic; 
             CLR   : in    std_logic; 
             CARRY : out   std_logic; 
             BCD59 : out   std_logic_vector (7 downto 0));
   end component;
   
   component Time_Lap_Lach
      port ( LAP        : in    std_logic; 
             IN_TEENTH  : in    std_logic_vector (3 downto 0); 
             IN_SEC     : in    std_logic_vector (7 downto 0); 
             IN_MIN     : in    std_logic_vector (7 downto 0); 
             OUT_TEENTH : out   std_logic_vector (3 downto 0); 
             OUT_SEC    : out   std_logic_vector (7 downto 0); 
             OUT_MIN    : out   std_logic_vector (7 downto 0));
   end component;
   
   component MuxDisplay
      port ( CLK_1K : in    std_logic; 
             DOTS   : in    std_logic_vector (3 downto 0); 
             SEC    : in    std_logic_vector (7 downto 0); 
             MIN    : in    std_logic_vector (7 downto 0); 
             AN     : out   std_logic_vector (3 downto 0); 
             SEG    : out   std_logic_vector (7 downto 0));
   end component;
   
   component TeenthSec
      port ( BCD : in    std_logic_vector (3 downto 0); 
             LED : out   std_logic_vector (7 downto 0));
   end component;
   
   component BlinkingDots
      port ( LAP        : in    std_logic; 
             START_STOP : in    std_logic; 
             SEC1_10    : in    std_logic_vector (3 downto 0); 
             DOTS       : out   std_logic_vector (3 downto 0));
   end component;
   
   component StepDown1KHz
      port ( CLK_50MHz : in    std_logic; 
             CLK_1KHz  : out   std_logic);
   end component;
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : ToggleButton
      port map (BUTTON=>STARTSTOP,
                CLK=>XLXN_54,
                DEBOUNCE=>open,
                PULSE=>open,
                TOGGLE=>XLXN_31);
   
   XLXI_2 : ToggleButton
      port map (BUTTON=>LAP,
                CLK=>XLXN_54,
                DEBOUNCE=>open,
                PULSE=>open,
                TOGGLE=>XLXN_55);
   
   XLXI_3 : ToggleButton
      port map (BUTTON=>CLEAR,
                CLK=>XLXN_54,
                DEBOUNCE=>open,
                PULSE=>XLXN_24,
                TOGGLE=>open);
   
   XLXI_4 : Cnt999
      port map (CLK=>XLXN_54,
                CLR=>XLXN_67,
                EN=>XLXN_31,
                BCD1_10(3 downto 0)=>XLXN_72(3 downto 0),
                CARRY=>XLXN_63);
   
   XLXI_5 : Cnt59
      port map (CLK=>XLXN_54,
                CLR=>XLXN_67,
                EN=>XLXN_63,
                BCD59(7 downto 0)=>XLXN_73(7 downto 0),
                CARRY=>XLXN_65);
   
   XLXI_6 : Cnt59
      port map (CLK=>XLXN_54,
                CLR=>XLXN_67,
                EN=>XLXN_65,
                BCD59(7 downto 0)=>XLXN_74(7 downto 0),
                CARRY=>open);
   
   XLXI_7 : Time_Lap_Lach
      port map (IN_MIN(7 downto 0)=>XLXN_74(7 downto 0),
                IN_SEC(7 downto 0)=>XLXN_73(7 downto 0),
                IN_TEENTH(3 downto 0)=>XLXN_72(3 downto 0),
                LAP=>XLXN_55,
                OUT_MIN(7 downto 0)=>XLXN_59(7 downto 0),
                OUT_SEC(7 downto 0)=>XLXN_58(7 downto 0),
                OUT_TEENTH(3 downto 0)=>XLXN_75(3 downto 0));
   
   XLXI_9 : MuxDisplay
      port map (CLK_1K=>XLXN_54,
                DOTS(3 downto 0)=>XLXN_57(3 downto 0),
                MIN(7 downto 0)=>XLXN_59(7 downto 0),
                SEC(7 downto 0)=>XLXN_58(7 downto 0),
                AN(3 downto 0)=>AN(3 downto 0),
                SEG(7 downto 0)=>SEG(7 downto 0));
   
   XLXI_10 : TeenthSec
      port map (BCD(3 downto 0)=>XLXN_75(3 downto 0),
                LED(7 downto 0)=>LED(0 to 7));
   
   XLXI_11 : BlinkingDots
      port map (LAP=>XLXN_55,
                SEC1_10(3 downto 0)=>XLXN_72(3 downto 0),
                START_STOP=>XLXN_31,
                DOTS(3 downto 0)=>XLXN_57(3 downto 0));
   
   XLXI_12 : StepDown1KHz
      port map (CLK_50MHz=>CLK,
                CLK_1KHz=>XLXN_54);
   
   XLXI_29 : AND2B1
      port map (I0=>XLXN_31,
                I1=>XLXN_24,
                O=>XLXN_67);
   
end BEHAVIORAL;


