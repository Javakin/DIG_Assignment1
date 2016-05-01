--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Reaction_game_ass.vhf
-- /___/   /\     Timestamp : 05/01/2016 14:12:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/Git/DIG_Assignment1/Portfoleo2/Assembling/Reaction_game/Reaction_game_ass.vhf -w D:/Git/DIG_Assignment1/Portfoleo2/Assembling/Reaction_game/Reaction_game_ass.sch
--Design Name: Reaction_game_ass
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

entity Reaction_game_ass is
   port ( CLEAR     : in    std_logic; 
          CLK_50MHz : in    std_logic; 
          HISCORE   : in    std_logic; 
          START     : in    std_logic; 
          AN        : out   std_logic_vector (3 downto 0); 
          LED       : out   std_logic; 
          SEG       : out   std_logic_vector (7 downto 0));
end Reaction_game_ass;

architecture BEHAVIORAL of Reaction_game_ass is
   attribute BOX_TYPE   : string ;
   signal CLK_1KHz                    : std_logic;
   signal XLXN_1                      : std_logic_vector (3 downto 0);
   signal XLXN_2                      : std_logic_vector (3 downto 0);
   signal XLXN_3                      : std_logic_vector (3 downto 0);
   signal XLXN_4                      : std_logic_vector (3 downto 0);
   signal XLXN_10                     : std_logic_vector (15 downto 0);
   signal XLXN_11                     : std_logic_vector (3 downto 0);
   signal XLXN_12                     : std_logic_vector (3 downto 0);
   signal XLXN_13                     : std_logic_vector (3 downto 0);
   signal XLXN_14                     : std_logic_vector (3 downto 0);
   signal XLXN_19                     : std_logic_vector (3 downto 0);
   signal XLXN_20                     : std_logic_vector (3 downto 0);
   signal XLXN_26                     : std_logic_vector (3 downto 0);
   signal XLXN_33                     : std_logic_vector (3 downto 0);
   signal XLXN_50                     : std_logic;
   signal XLXN_61                     : std_logic;
   signal XLXN_63                     : std_logic;
   signal XLXN_64                     : std_logic;
   signal XLXN_65                     : std_logic;
   signal XLXN_66                     : std_logic;
   signal XLXN_67                     : std_logic;
   signal mux_display_DOTS_openSignal : std_logic_vector (3 downto 0);
   component ToggleButton
      port ( CLK      : in    std_logic; 
             BUTTON   : in    std_logic; 
             TOGGLE   : out   std_logic; 
             DEBOUNCE : out   std_logic; 
             PULSE    : out   std_logic);
   end component;
   
   component Cnt9999
      port ( EN        : in    std_logic; 
             CLK       : in    std_logic; 
             CLR       : in    std_logic; 
             BCD1_1000 : out   std_logic_vector (3 downto 0); 
             BCD1_100  : out   std_logic_vector (3 downto 0); 
             BCD1_10   : out   std_logic_vector (3 downto 0); 
             BCD1_1    : out   std_logic_vector (3 downto 0));
   end component;
   
   component MuxDisplay
      port ( CLK_1K : in    std_logic; 
             DOTS   : in    std_logic_vector (3 downto 0); 
             BCD1   : in    std_logic_vector (3 downto 0); 
             BCD2   : in    std_logic_vector (3 downto 0); 
             BCD3   : in    std_logic_vector (3 downto 0); 
             BCD4   : in    std_logic_vector (3 downto 0); 
             AN     : out   std_logic_vector (3 downto 0); 
             SEG    : out   std_logic_vector (7 downto 0));
   end component;
   
   component rand_gen
      port ( ST_TOG    : in    std_logic; 
             CLK       : in    std_logic; 
             RAND_NUMB : out   std_logic_vector (15 downto 0));
   end component;
   
   component reaction_game
      port ( START_DEBOUNCE : in    std_logic; 
             START_TOGGLE   : in    std_logic; 
             CLEAR          : in    std_logic; 
             CLK            : in    std_logic; 
             TIN1           : in    std_logic_vector (3 downto 0); 
             TIN2           : in    std_logic_vector (3 downto 0); 
             TIN3           : in    std_logic_vector (3 downto 0); 
             TIN4           : in    std_logic_vector (3 downto 0); 
             RAND           : in    std_logic_vector (15 downto 0); 
             CLEAR_TIME     : out   std_logic; 
             LED            : out   std_logic; 
             LAP            : out   std_logic; 
             TOUT1          : out   std_logic_vector (3 downto 0); 
             TOUT2          : out   std_logic_vector (3 downto 0); 
             TOUT3          : out   std_logic_vector (3 downto 0); 
             TOUT4          : out   std_logic_vector (3 downto 0));
   end component;
   
   component Time_Lap_Lach
      port ( LAP        : in    std_logic; 
             CLEAR      : in    std_logic; 
             HIGH_SCORE : in    std_logic; 
             IN_BCD1    : in    std_logic_vector (3 downto 0); 
             IN_BCD2    : in    std_logic_vector (3 downto 0); 
             IN_BCD3    : in    std_logic_vector (3 downto 0); 
             IN_BCD4    : in    std_logic_vector (3 downto 0); 
             OUT_BCD1   : out   std_logic_vector (3 downto 0); 
             OUT_BCD2   : out   std_logic_vector (3 downto 0); 
             OUT_BCD3   : out   std_logic_vector (3 downto 0); 
             OUT_BCD4   : out   std_logic_vector (3 downto 0));
   end component;
   
   component StepDown1KHz
      port ( CLK_50MHz : in    std_logic; 
             CLK_1KHz  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   Clear_but : ToggleButton
      port map (BUTTON=>CLEAR,
                CLK=>CLK_1KHz,
                DEBOUNCE=>XLXN_64,
                PULSE=>open,
                TOGGLE=>open);
   
   cnt_inst : Cnt9999
      port map (CLK=>CLK_1KHz,
                CLR=>XLXN_65,
                EN=>XLXN_67,
                BCD1_1(3 downto 0)=>XLXN_14(3 downto 0),
                BCD1_10(3 downto 0)=>XLXN_13(3 downto 0),
                BCD1_100(3 downto 0)=>XLXN_12(3 downto 0),
                BCD1_1000(3 downto 0)=>XLXN_11(3 downto 0));
   
   Hi_but : ToggleButton
      port map (BUTTON=>HISCORE,
                CLK=>CLK_1KHz,
                DEBOUNCE=>XLXN_66,
                PULSE=>open,
                TOGGLE=>open);
   
   mux_display : MuxDisplay
      port map (BCD1(3 downto 0)=>XLXN_1(3 downto 0),
                BCD2(3 downto 0)=>XLXN_2(3 downto 0),
                BCD3(3 downto 0)=>XLXN_3(3 downto 0),
                BCD4(3 downto 0)=>XLXN_4(3 downto 0),
                CLK_1K=>CLK_1KHz,
                DOTS(3 downto 0)=>mux_display_DOTS_openSignal(3 downto 0),
                AN(3 downto 0)=>AN(3 downto 0),
                SEG(7 downto 0)=>SEG(7 downto 0));
   
   rand_gen_inst : rand_gen
      port map (CLK=>CLK_1KHz,
                ST_TOG=>XLXN_61,
                RAND_NUMB(15 downto 0)=>XLXN_10(15 downto 0));
   
   reaction_game_inst : reaction_game
      port map (CLEAR=>XLXN_64,
                CLK=>CLK_1KHz,
                RAND(15 downto 0)=>XLXN_10(15 downto 0),
                START_DEBOUNCE=>XLXN_63,
                START_TOGGLE=>XLXN_61,
                TIN1(3 downto 0)=>XLXN_11(3 downto 0),
                TIN2(3 downto 0)=>XLXN_12(3 downto 0),
                TIN3(3 downto 0)=>XLXN_13(3 downto 0),
                TIN4(3 downto 0)=>XLXN_14(3 downto 0),
                CLEAR_TIME=>XLXN_65,
                LAP=>XLXN_50,
                LED=>LED,
                TOUT1(3 downto 0)=>XLXN_33(3 downto 0),
                TOUT2(3 downto 0)=>XLXN_26(3 downto 0),
                TOUT3(3 downto 0)=>XLXN_20(3 downto 0),
                TOUT4(3 downto 0)=>XLXN_19(3 downto 0));
   
   Start_but : ToggleButton
      port map (BUTTON=>START,
                CLK=>CLK_1KHz,
                DEBOUNCE=>XLXN_63,
                PULSE=>open,
                TOGGLE=>XLXN_61);
   
   time_lap_latch : Time_Lap_Lach
      port map (CLEAR=>XLXN_64,
                HIGH_SCORE=>XLXN_66,
                IN_BCD1(3 downto 0)=>XLXN_33(3 downto 0),
                IN_BCD2(3 downto 0)=>XLXN_26(3 downto 0),
                IN_BCD3(3 downto 0)=>XLXN_20(3 downto 0),
                IN_BCD4(3 downto 0)=>XLXN_19(3 downto 0),
                LAP=>XLXN_50,
                OUT_BCD1(3 downto 0)=>XLXN_1(3 downto 0),
                OUT_BCD2(3 downto 0)=>XLXN_2(3 downto 0),
                OUT_BCD3(3 downto 0)=>XLXN_3(3 downto 0),
                OUT_BCD4(3 downto 0)=>XLXN_4(3 downto 0));
   
   XLXI_3 : StepDown1KHz
      port map (CLK_50MHz=>CLK_50MHz,
                CLK_1KHz=>CLK_1KHz);
   
   XLXI_11 : VCC
      port map (P=>XLXN_67);
   
end BEHAVIORAL;


