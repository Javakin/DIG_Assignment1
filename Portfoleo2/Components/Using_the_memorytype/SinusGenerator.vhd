--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : SinusGenerator.vhf
-- /___/   /\     Timestamp : 11/18/2008 22:16:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w D:/XiLinx_Projekter/BASYS_PROJECTS/EXER/EXER5xSinusGen/Sinusgen2/SinusGenerator.sch SinusGenerator.vhf
--Design Name: SinusGenerator
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SinusGenerator is
   port ( Clk    : in    std_logic; 
          Sw0    : in    std_logic; 
          PPM    : out   std_logic; 
          UPdown : inout std_logic);
end SinusGenerator;

architecture BEHAVIORAL of SinusGenerator is
   signal XLXN_87 : std_logic_vector (9 downto 0);
   signal XLXN_88 : std_logic;
   signal XLXN_89 : std_logic_vector (4 downto 0);
   signal XLXN_90 : std_logic_vector (8 downto 0);
   component PPM_output
      port ( Clk : in    std_logic; 
             PCM : in    std_logic_vector (9 downto 0); 
             PPM : out   std_logic);
   end component;
   
   component SinusCounter2
      port ( Clk    : in    std_logic; 
             UPdown : inout std_logic; 
             Negate : inout std_logic; 
             Adr    : out   std_logic_vector (4 downto 0); 
             Sw0    : in    std_logic);
   end component;
   
   component Amplitude_adjust
      port ( Negate  : in    std_logic; 
             RomData : in    std_logic_vector (8 downto 0); 
             PCM     : out   std_logic_vector (9 downto 0));
   end component;
   
   component sinus_rom2x
      port ( a   : in    std_logic_vector (4 downto 0); 
             spo : out   std_logic_vector (8 downto 0));
   end component;
   
begin
   XLXI_3 : PPM_output
      port map (Clk=>Clk,
                PCM(9 downto 0)=>XLXN_87(9 downto 0),
                PPM=>PPM);
   
   XLXI_7 : SinusCounter2
      port map (Clk=>Clk,
                Sw0=>Sw0,
                Adr(4 downto 0)=>XLXN_89(4 downto 0),
                Negate=>XLXN_88,
                UPdown=>UPdown);
   
   XLXI_12 : Amplitude_adjust
      port map (Negate=>XLXN_88,
                RomData(8 downto 0)=>XLXN_90(8 downto 0),
                PCM(9 downto 0)=>XLXN_87(9 downto 0));
   
   XLXI_13 : sinus_rom2x
      port map (a(4 downto 0)=>XLXN_89(4 downto 0),
                spo(8 downto 0)=>XLXN_90(8 downto 0));
   
end BEHAVIORAL;


