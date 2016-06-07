--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SinusGenerator_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jun 07 16:00:25 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SinusGenerator -w -dir netgen/synthesis -ofmt vhdl -sim SinusGenerator.ngc SinusGenerator_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: SinusGenerator.ngc
-- Output file	: D:\Git\DIG_Assignment1\Portfoleo2\Components\Using_the_memorytype\netgen\synthesis\SinusGenerator_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SinusGenerator
-- Xilinx	: D:\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity SinusGenerator is
  port (
    UPdown : inout STD_LOGIC; 
    Clk : in STD_LOGIC := 'X'; 
    Sw0 : in STD_LOGIC := 'X'; 
    PPM : out STD_LOGIC 
  );
end SinusGenerator;

architecture Structure of SinusGenerator is
  component sinus_rom2x
    port (
      spo : out STD_LOGIC_VECTOR ( 8 downto 0 ); 
      a : in STD_LOGIC_VECTOR ( 4 downto 0 ) 
    );
  end component;
  signal Clk_BUFGP_1 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal Sw0_IBUF_10 : STD_LOGIC; 
  signal XLXI_7_Counter_not0001 : STD_LOGIC; 
  signal XLXI_7_Enable_59 : STD_LOGIC; 
  signal XLXI_7_Enable_not0001 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_cy_0_rt_94 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_11 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_14 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_18 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_19 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_2 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_22 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_6 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_8 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_eqn_9 : STD_LOGIC; 
  signal XLXI_7_Mcount_scale_lut_31_1 : STD_LOGIC; 
  signal XLXI_7_Msub_Enable_sub0000_cy_0_rt_167 : STD_LOGIC; 
  signal XLXI_7_N11 : STD_LOGIC; 
  signal XLXI_7_Negate_229 : STD_LOGIC; 
  signal XLXI_7_Negate_not0002_230 : STD_LOGIC; 
  signal XLXI_7_Negate_not0003 : STD_LOGIC; 
  signal XLXI_7_Result_0_1 : STD_LOGIC; 
  signal XLXI_7_Result_1_1 : STD_LOGIC; 
  signal XLXI_7_Result_2_1 : STD_LOGIC; 
  signal XLXI_7_Result_3_1 : STD_LOGIC; 
  signal XLXI_7_Result_3_11_262 : STD_LOGIC; 
  signal XLXI_7_Result_3_12_263 : STD_LOGIC; 
  signal XLXI_7_Result_4_1_265 : STD_LOGIC; 
  signal XLXI_7_UPdown_271 : STD_LOGIC; 
  signal XLXI_7_UPdown_mux0000 : STD_LOGIC; 
  signal XLXI_7_UPdown_not0001 : STD_LOGIC; 
  signal XLXI_7_scale_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_3_Madd_Sigma_add0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal XLXI_3_Madd_Sigma_add0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal XLXI_3_Sigma : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_3_Sigma_add0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal XLXI_7_Counter : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_7_Enable_sub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_7_Mcount_scale_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_7_Mcount_scale_lut : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal XLXI_7_Msub_Enable_sub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_7_Msub_Enable_sub0000_lut : STD_LOGIC_VECTOR ( 30 downto 1 ); 
  signal XLXI_7_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_7_scale : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_7_scale_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal XLXI_7_scale_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXN_90 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  XLXI_13 : sinus_rom2x
    port map (
      spo(8) => XLXN_90(8),
      spo(7) => XLXN_90(7),
      spo(6) => XLXN_90(6),
      spo(5) => XLXN_90(5),
      spo(4) => XLXN_90(4),
      spo(3) => XLXN_90(3),
      spo(2) => XLXN_90(2),
      spo(1) => XLXN_90(1),
      spo(0) => XLXN_90(0),
      a(4) => XLXI_7_Counter(4),
      a(3) => XLXI_7_Counter(3),
      a(2) => XLXI_7_Counter(2),
      a(1) => XLXI_7_Counter(1),
      a(0) => XLXI_7_Counter(0)
    );
  XLXI_3_Madd_Sigma_add0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(8),
      LI => XLXI_3_Madd_Sigma_add0000_lut(9),
      O => XLXI_3_Sigma_add0000(9)
    );
  XLXI_3_Madd_Sigma_add0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(8),
      DI => XLXI_3_Sigma(9),
      S => XLXI_3_Madd_Sigma_add0000_lut(9),
      O => XLXI_3_Madd_Sigma_add0000_cy(9)
    );
  XLXI_3_Madd_Sigma_add0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(7),
      LI => XLXI_3_Madd_Sigma_add0000_lut(8),
      O => XLXI_3_Sigma_add0000(8)
    );
  XLXI_3_Madd_Sigma_add0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(7),
      DI => XLXI_3_Sigma(8),
      S => XLXI_3_Madd_Sigma_add0000_lut(8),
      O => XLXI_3_Madd_Sigma_add0000_cy(8)
    );
  XLXI_3_Madd_Sigma_add0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(6),
      LI => XLXI_3_Madd_Sigma_add0000_lut(7),
      O => XLXI_3_Sigma_add0000(7)
    );
  XLXI_3_Madd_Sigma_add0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(6),
      DI => XLXI_3_Sigma(7),
      S => XLXI_3_Madd_Sigma_add0000_lut(7),
      O => XLXI_3_Madd_Sigma_add0000_cy(7)
    );
  XLXI_3_Madd_Sigma_add0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(5),
      LI => XLXI_3_Madd_Sigma_add0000_lut(6),
      O => XLXI_3_Sigma_add0000(6)
    );
  XLXI_3_Madd_Sigma_add0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(5),
      DI => XLXI_3_Sigma(6),
      S => XLXI_3_Madd_Sigma_add0000_lut(6),
      O => XLXI_3_Madd_Sigma_add0000_cy(6)
    );
  XLXI_3_Madd_Sigma_add0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(4),
      LI => XLXI_3_Madd_Sigma_add0000_lut(5),
      O => XLXI_3_Sigma_add0000(5)
    );
  XLXI_3_Madd_Sigma_add0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(4),
      DI => XLXI_3_Sigma(5),
      S => XLXI_3_Madd_Sigma_add0000_lut(5),
      O => XLXI_3_Madd_Sigma_add0000_cy(5)
    );
  XLXI_3_Madd_Sigma_add0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(3),
      LI => XLXI_3_Madd_Sigma_add0000_lut(4),
      O => XLXI_3_Sigma_add0000(4)
    );
  XLXI_3_Madd_Sigma_add0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(3),
      DI => XLXI_3_Sigma(4),
      S => XLXI_3_Madd_Sigma_add0000_lut(4),
      O => XLXI_3_Madd_Sigma_add0000_cy(4)
    );
  XLXI_3_Madd_Sigma_add0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(2),
      LI => XLXI_3_Madd_Sigma_add0000_lut(3),
      O => XLXI_3_Sigma_add0000(3)
    );
  XLXI_3_Madd_Sigma_add0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(2),
      DI => XLXI_3_Sigma(3),
      S => XLXI_3_Madd_Sigma_add0000_lut(3),
      O => XLXI_3_Madd_Sigma_add0000_cy(3)
    );
  XLXI_3_Madd_Sigma_add0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(1),
      LI => XLXI_3_Madd_Sigma_add0000_lut(2),
      O => XLXI_3_Sigma_add0000(2)
    );
  XLXI_3_Madd_Sigma_add0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(1),
      DI => XLXI_3_Sigma(2),
      S => XLXI_3_Madd_Sigma_add0000_lut(2),
      O => XLXI_3_Madd_Sigma_add0000_cy(2)
    );
  XLXI_3_Madd_Sigma_add0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(0),
      LI => XLXI_3_Madd_Sigma_add0000_lut(1),
      O => XLXI_3_Sigma_add0000(1)
    );
  XLXI_3_Madd_Sigma_add0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_3_Madd_Sigma_add0000_cy(0),
      DI => XLXI_3_Sigma(1),
      S => XLXI_3_Madd_Sigma_add0000_lut(1),
      O => XLXI_3_Madd_Sigma_add0000_cy(1)
    );
  XLXI_3_Madd_Sigma_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_3_Madd_Sigma_add0000_lut(0),
      O => XLXI_3_Sigma_add0000(0)
    );
  XLXI_3_Madd_Sigma_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => XLXI_3_Sigma(0),
      S => XLXI_3_Madd_Sigma_add0000_lut(0),
      O => XLXI_3_Madd_Sigma_add0000_cy(0)
    );
  XLXI_3_Sigma_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Madd_Sigma_add0000_cy(9),
      Q => XLXI_3_Sigma(10)
    );
  XLXI_3_Sigma_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(9),
      Q => XLXI_3_Sigma(9)
    );
  XLXI_3_Sigma_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(8),
      Q => XLXI_3_Sigma(8)
    );
  XLXI_3_Sigma_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(7),
      Q => XLXI_3_Sigma(7)
    );
  XLXI_3_Sigma_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(6),
      Q => XLXI_3_Sigma(6)
    );
  XLXI_3_Sigma_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(5),
      Q => XLXI_3_Sigma(5)
    );
  XLXI_3_Sigma_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(4),
      Q => XLXI_3_Sigma(4)
    );
  XLXI_3_Sigma_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(3),
      Q => XLXI_3_Sigma(3)
    );
  XLXI_3_Sigma_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(2),
      Q => XLXI_3_Sigma(2)
    );
  XLXI_3_Sigma_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(1),
      Q => XLXI_3_Sigma(1)
    );
  XLXI_3_Sigma_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_3_Sigma_add0000(0),
      Q => XLXI_3_Sigma(0)
    );
  XLXI_7_Mcount_scale_xor_31_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(30),
      LI => XLXI_7_Mcount_scale_lut_31_1,
      O => XLXI_7_Result(31)
    );
  XLXI_7_Mcount_scale_xor_30_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(29),
      LI => XLXI_7_Mcount_scale_lut(30),
      O => XLXI_7_Result(30)
    );
  XLXI_7_Mcount_scale_cy_30_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(29),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(30),
      O => XLXI_7_Mcount_scale_cy(30)
    );
  XLXI_7_Mcount_scale_xor_29_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(28),
      LI => XLXI_7_Mcount_scale_lut(29),
      O => XLXI_7_Result(29)
    );
  XLXI_7_Mcount_scale_cy_29_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(28),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(29),
      O => XLXI_7_Mcount_scale_cy(29)
    );
  XLXI_7_Mcount_scale_xor_28_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(27),
      LI => XLXI_7_Mcount_scale_lut(28),
      O => XLXI_7_Result(28)
    );
  XLXI_7_Mcount_scale_cy_28_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(27),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(28),
      O => XLXI_7_Mcount_scale_cy(28)
    );
  XLXI_7_Mcount_scale_xor_27_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(26),
      LI => XLXI_7_Mcount_scale_lut(27),
      O => XLXI_7_Result(27)
    );
  XLXI_7_Mcount_scale_cy_27_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(26),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(27),
      O => XLXI_7_Mcount_scale_cy(27)
    );
  XLXI_7_Mcount_scale_xor_26_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(25),
      LI => XLXI_7_Mcount_scale_lut(26),
      O => XLXI_7_Result(26)
    );
  XLXI_7_Mcount_scale_cy_26_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(25),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(26),
      O => XLXI_7_Mcount_scale_cy(26)
    );
  XLXI_7_Mcount_scale_xor_25_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(24),
      LI => XLXI_7_Mcount_scale_lut(25),
      O => XLXI_7_Result(25)
    );
  XLXI_7_Mcount_scale_cy_25_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(24),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(25),
      O => XLXI_7_Mcount_scale_cy(25)
    );
  XLXI_7_Mcount_scale_xor_24_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(23),
      LI => XLXI_7_Mcount_scale_lut(24),
      O => XLXI_7_Result(24)
    );
  XLXI_7_Mcount_scale_cy_24_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(23),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(24),
      O => XLXI_7_Mcount_scale_cy(24)
    );
  XLXI_7_Mcount_scale_xor_23_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(22),
      LI => XLXI_7_Mcount_scale_lut(23),
      O => XLXI_7_Result(23)
    );
  XLXI_7_Mcount_scale_cy_23_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(22),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(23),
      O => XLXI_7_Mcount_scale_cy(23)
    );
  XLXI_7_Mcount_scale_xor_22_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(21),
      LI => XLXI_7_Mcount_scale_lut(22),
      O => XLXI_7_Result(22)
    );
  XLXI_7_Mcount_scale_cy_22_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(21),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(22),
      O => XLXI_7_Mcount_scale_cy(22)
    );
  XLXI_7_Mcount_scale_xor_21_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(20),
      LI => XLXI_7_Mcount_scale_lut(21),
      O => XLXI_7_Result(21)
    );
  XLXI_7_Mcount_scale_cy_21_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(20),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(21),
      O => XLXI_7_Mcount_scale_cy(21)
    );
  XLXI_7_Mcount_scale_xor_20_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(19),
      LI => XLXI_7_Mcount_scale_lut(20),
      O => XLXI_7_Result(20)
    );
  XLXI_7_Mcount_scale_cy_20_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(19),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(20),
      O => XLXI_7_Mcount_scale_cy(20)
    );
  XLXI_7_Mcount_scale_xor_19_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(18),
      LI => XLXI_7_Mcount_scale_lut(19),
      O => XLXI_7_Result(19)
    );
  XLXI_7_Mcount_scale_cy_19_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(18),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(19),
      O => XLXI_7_Mcount_scale_cy(19)
    );
  XLXI_7_Mcount_scale_xor_18_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(17),
      LI => XLXI_7_Mcount_scale_lut(18),
      O => XLXI_7_Result(18)
    );
  XLXI_7_Mcount_scale_cy_18_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(17),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(18),
      O => XLXI_7_Mcount_scale_cy(18)
    );
  XLXI_7_Mcount_scale_xor_17_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(16),
      LI => XLXI_7_Mcount_scale_lut(17),
      O => XLXI_7_Result(17)
    );
  XLXI_7_Mcount_scale_cy_17_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(16),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(17),
      O => XLXI_7_Mcount_scale_cy(17)
    );
  XLXI_7_Mcount_scale_xor_16_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(15),
      LI => XLXI_7_Mcount_scale_lut(16),
      O => XLXI_7_Result(16)
    );
  XLXI_7_Mcount_scale_cy_16_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(15),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(16),
      O => XLXI_7_Mcount_scale_cy(16)
    );
  XLXI_7_Mcount_scale_xor_15_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(14),
      LI => XLXI_7_Mcount_scale_lut(15),
      O => XLXI_7_Result(15)
    );
  XLXI_7_Mcount_scale_cy_15_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(14),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(15),
      O => XLXI_7_Mcount_scale_cy(15)
    );
  XLXI_7_Mcount_scale_xor_14_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(13),
      LI => XLXI_7_Mcount_scale_lut(14),
      O => XLXI_7_Result(14)
    );
  XLXI_7_Mcount_scale_cy_14_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(13),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(14),
      O => XLXI_7_Mcount_scale_cy(14)
    );
  XLXI_7_Mcount_scale_xor_13_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(12),
      LI => XLXI_7_Mcount_scale_lut(13),
      O => XLXI_7_Result(13)
    );
  XLXI_7_Mcount_scale_cy_13_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(12),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(13),
      O => XLXI_7_Mcount_scale_cy(13)
    );
  XLXI_7_Mcount_scale_xor_12_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(11),
      LI => XLXI_7_Mcount_scale_lut(12),
      O => XLXI_7_Result(12)
    );
  XLXI_7_Mcount_scale_cy_12_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(11),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(12),
      O => XLXI_7_Mcount_scale_cy(12)
    );
  XLXI_7_Mcount_scale_xor_11_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(10),
      LI => XLXI_7_Mcount_scale_lut(11),
      O => XLXI_7_Result(11)
    );
  XLXI_7_Mcount_scale_cy_11_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(10),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(11),
      O => XLXI_7_Mcount_scale_cy(11)
    );
  XLXI_7_Mcount_scale_xor_10_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(9),
      LI => XLXI_7_Mcount_scale_lut(10),
      O => XLXI_7_Result(10)
    );
  XLXI_7_Mcount_scale_cy_10_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(9),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(10),
      O => XLXI_7_Mcount_scale_cy(10)
    );
  XLXI_7_Mcount_scale_xor_9_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(8),
      LI => XLXI_7_Mcount_scale_lut(9),
      O => XLXI_7_Result(9)
    );
  XLXI_7_Mcount_scale_cy_9_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(8),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(9),
      O => XLXI_7_Mcount_scale_cy(9)
    );
  XLXI_7_Mcount_scale_xor_8_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(7),
      LI => XLXI_7_Mcount_scale_lut(8),
      O => XLXI_7_Result(8)
    );
  XLXI_7_Mcount_scale_cy_8_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(7),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(8),
      O => XLXI_7_Mcount_scale_cy(8)
    );
  XLXI_7_Mcount_scale_xor_7_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(6),
      LI => XLXI_7_Mcount_scale_lut(7),
      O => XLXI_7_Result(7)
    );
  XLXI_7_Mcount_scale_cy_7_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(6),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(7),
      O => XLXI_7_Mcount_scale_cy(7)
    );
  XLXI_7_Mcount_scale_xor_6_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(5),
      LI => XLXI_7_Mcount_scale_lut(6),
      O => XLXI_7_Result(6)
    );
  XLXI_7_Mcount_scale_cy_6_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(5),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(6),
      O => XLXI_7_Mcount_scale_cy(6)
    );
  XLXI_7_Mcount_scale_xor_5_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(4),
      LI => XLXI_7_Mcount_scale_lut(5),
      O => XLXI_7_Result(5)
    );
  XLXI_7_Mcount_scale_cy_5_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(4),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(5),
      O => XLXI_7_Mcount_scale_cy(5)
    );
  XLXI_7_Mcount_scale_xor_4_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(3),
      LI => XLXI_7_Mcount_scale_lut(4),
      O => XLXI_7_Result(4)
    );
  XLXI_7_Mcount_scale_cy_4_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(3),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(4),
      O => XLXI_7_Mcount_scale_cy(4)
    );
  XLXI_7_Mcount_scale_xor_3_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(2),
      LI => XLXI_7_Mcount_scale_lut(3),
      O => XLXI_7_Result(3)
    );
  XLXI_7_Mcount_scale_cy_3_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(2),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(3),
      O => XLXI_7_Mcount_scale_cy(3)
    );
  XLXI_7_Mcount_scale_xor_2_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(1),
      LI => XLXI_7_Mcount_scale_lut(2),
      O => XLXI_7_Result(2)
    );
  XLXI_7_Mcount_scale_cy_2_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(1),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(2),
      O => XLXI_7_Mcount_scale_cy(2)
    );
  XLXI_7_Mcount_scale_xor_1_Q : XORCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(0),
      LI => XLXI_7_Mcount_scale_lut(1),
      O => XLXI_7_Result(1)
    );
  XLXI_7_Mcount_scale_cy_1_Q : MUXCY
    port map (
      CI => XLXI_7_Mcount_scale_cy(0),
      DI => N1,
      S => XLXI_7_Mcount_scale_lut(1),
      O => XLXI_7_Mcount_scale_cy(1)
    );
  XLXI_7_Mcount_scale_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => XLXI_7_Msub_Enable_sub0000_cy_0_rt_167,
      O => XLXI_7_Result(0)
    );
  XLXI_7_Mcount_scale_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_7_Mcount_scale_cy_0_rt_94,
      O => XLXI_7_Mcount_scale_cy(0)
    );
  XLXI_7_Msub_Enable_sub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(30),
      LI => XLXI_7_Mcount_scale_lut(31),
      O => XLXI_7_Enable_sub0000(31)
    );
  XLXI_7_Msub_Enable_sub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(29),
      LI => XLXI_7_Msub_Enable_sub0000_lut(30),
      O => XLXI_7_Enable_sub0000(30)
    );
  XLXI_7_Msub_Enable_sub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(29),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(30),
      O => XLXI_7_Msub_Enable_sub0000_cy(30)
    );
  XLXI_7_Msub_Enable_sub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(28),
      LI => XLXI_7_Msub_Enable_sub0000_lut(29),
      O => XLXI_7_Enable_sub0000(29)
    );
  XLXI_7_Msub_Enable_sub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(28),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(29),
      O => XLXI_7_Msub_Enable_sub0000_cy(29)
    );
  XLXI_7_Msub_Enable_sub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(27),
      LI => XLXI_7_Msub_Enable_sub0000_lut(28),
      O => XLXI_7_Enable_sub0000(28)
    );
  XLXI_7_Msub_Enable_sub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(27),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(28),
      O => XLXI_7_Msub_Enable_sub0000_cy(28)
    );
  XLXI_7_Msub_Enable_sub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(26),
      LI => XLXI_7_Msub_Enable_sub0000_lut(27),
      O => XLXI_7_Enable_sub0000(27)
    );
  XLXI_7_Msub_Enable_sub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(26),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(27),
      O => XLXI_7_Msub_Enable_sub0000_cy(27)
    );
  XLXI_7_Msub_Enable_sub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(25),
      LI => XLXI_7_Msub_Enable_sub0000_lut(26),
      O => XLXI_7_Enable_sub0000(26)
    );
  XLXI_7_Msub_Enable_sub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(25),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(26),
      O => XLXI_7_Msub_Enable_sub0000_cy(26)
    );
  XLXI_7_Msub_Enable_sub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(24),
      LI => XLXI_7_Msub_Enable_sub0000_lut(25),
      O => XLXI_7_Enable_sub0000(25)
    );
  XLXI_7_Msub_Enable_sub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(24),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(25),
      O => XLXI_7_Msub_Enable_sub0000_cy(25)
    );
  XLXI_7_Msub_Enable_sub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(23),
      LI => XLXI_7_Msub_Enable_sub0000_lut(24),
      O => XLXI_7_Enable_sub0000(24)
    );
  XLXI_7_Msub_Enable_sub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(23),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(24),
      O => XLXI_7_Msub_Enable_sub0000_cy(24)
    );
  XLXI_7_Msub_Enable_sub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(22),
      LI => XLXI_7_Msub_Enable_sub0000_lut(23),
      O => XLXI_7_Enable_sub0000(23)
    );
  XLXI_7_Msub_Enable_sub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(22),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(23),
      O => XLXI_7_Msub_Enable_sub0000_cy(23)
    );
  XLXI_7_Msub_Enable_sub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(21),
      LI => XLXI_7_Msub_Enable_sub0000_lut(22),
      O => XLXI_7_Enable_sub0000(22)
    );
  XLXI_7_Msub_Enable_sub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(21),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(22),
      O => XLXI_7_Msub_Enable_sub0000_cy(22)
    );
  XLXI_7_Msub_Enable_sub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(20),
      LI => XLXI_7_Msub_Enable_sub0000_lut(21),
      O => XLXI_7_Enable_sub0000(21)
    );
  XLXI_7_Msub_Enable_sub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(20),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(21),
      O => XLXI_7_Msub_Enable_sub0000_cy(21)
    );
  XLXI_7_Msub_Enable_sub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(19),
      LI => XLXI_7_Msub_Enable_sub0000_lut(20),
      O => XLXI_7_Enable_sub0000(20)
    );
  XLXI_7_Msub_Enable_sub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(19),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(20),
      O => XLXI_7_Msub_Enable_sub0000_cy(20)
    );
  XLXI_7_Msub_Enable_sub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(18),
      LI => XLXI_7_Msub_Enable_sub0000_lut(19),
      O => XLXI_7_Enable_sub0000(19)
    );
  XLXI_7_Msub_Enable_sub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(18),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(19),
      O => XLXI_7_Msub_Enable_sub0000_cy(19)
    );
  XLXI_7_Msub_Enable_sub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(17),
      LI => XLXI_7_Msub_Enable_sub0000_lut(18),
      O => XLXI_7_Enable_sub0000(18)
    );
  XLXI_7_Msub_Enable_sub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(17),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(18),
      O => XLXI_7_Msub_Enable_sub0000_cy(18)
    );
  XLXI_7_Msub_Enable_sub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(16),
      LI => XLXI_7_Msub_Enable_sub0000_lut(17),
      O => XLXI_7_Enable_sub0000(17)
    );
  XLXI_7_Msub_Enable_sub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(16),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(17),
      O => XLXI_7_Msub_Enable_sub0000_cy(17)
    );
  XLXI_7_Msub_Enable_sub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(15),
      LI => XLXI_7_Msub_Enable_sub0000_lut(16),
      O => XLXI_7_Enable_sub0000(16)
    );
  XLXI_7_Msub_Enable_sub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(15),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(16),
      O => XLXI_7_Msub_Enable_sub0000_cy(16)
    );
  XLXI_7_Msub_Enable_sub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(14),
      LI => XLXI_7_Msub_Enable_sub0000_lut(15),
      O => XLXI_7_Enable_sub0000(15)
    );
  XLXI_7_Msub_Enable_sub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(14),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(15),
      O => XLXI_7_Msub_Enable_sub0000_cy(15)
    );
  XLXI_7_Msub_Enable_sub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(13),
      LI => XLXI_7_Msub_Enable_sub0000_lut(14),
      O => XLXI_7_Enable_sub0000(14)
    );
  XLXI_7_Msub_Enable_sub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(13),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(14),
      O => XLXI_7_Msub_Enable_sub0000_cy(14)
    );
  XLXI_7_Msub_Enable_sub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(12),
      LI => XLXI_7_Msub_Enable_sub0000_lut(13),
      O => XLXI_7_Enable_sub0000(13)
    );
  XLXI_7_Msub_Enable_sub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(12),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(13),
      O => XLXI_7_Msub_Enable_sub0000_cy(13)
    );
  XLXI_7_Msub_Enable_sub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(11),
      LI => XLXI_7_Msub_Enable_sub0000_lut(12),
      O => XLXI_7_Enable_sub0000(12)
    );
  XLXI_7_Msub_Enable_sub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(11),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(12),
      O => XLXI_7_Msub_Enable_sub0000_cy(12)
    );
  XLXI_7_Msub_Enable_sub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(10),
      LI => XLXI_7_Msub_Enable_sub0000_lut(11),
      O => XLXI_7_Enable_sub0000(11)
    );
  XLXI_7_Msub_Enable_sub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(10),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(11),
      O => XLXI_7_Msub_Enable_sub0000_cy(11)
    );
  XLXI_7_Msub_Enable_sub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(9),
      LI => XLXI_7_Msub_Enable_sub0000_lut(10),
      O => XLXI_7_Enable_sub0000(10)
    );
  XLXI_7_Msub_Enable_sub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(9),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(10),
      O => XLXI_7_Msub_Enable_sub0000_cy(10)
    );
  XLXI_7_Msub_Enable_sub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(8),
      LI => XLXI_7_Msub_Enable_sub0000_lut(9),
      O => XLXI_7_Enable_sub0000(9)
    );
  XLXI_7_Msub_Enable_sub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(8),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(9),
      O => XLXI_7_Msub_Enable_sub0000_cy(9)
    );
  XLXI_7_Msub_Enable_sub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(7),
      LI => XLXI_7_Msub_Enable_sub0000_lut(8),
      O => XLXI_7_Enable_sub0000(8)
    );
  XLXI_7_Msub_Enable_sub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(7),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(8),
      O => XLXI_7_Msub_Enable_sub0000_cy(8)
    );
  XLXI_7_Msub_Enable_sub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(6),
      LI => XLXI_7_Msub_Enable_sub0000_lut(7),
      O => XLXI_7_Enable_sub0000(7)
    );
  XLXI_7_Msub_Enable_sub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(6),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(7),
      O => XLXI_7_Msub_Enable_sub0000_cy(7)
    );
  XLXI_7_Msub_Enable_sub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(5),
      LI => XLXI_7_Msub_Enable_sub0000_lut(6),
      O => XLXI_7_Enable_sub0000(6)
    );
  XLXI_7_Msub_Enable_sub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(5),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(6),
      O => XLXI_7_Msub_Enable_sub0000_cy(6)
    );
  XLXI_7_Msub_Enable_sub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(4),
      LI => XLXI_7_Msub_Enable_sub0000_lut(5),
      O => XLXI_7_Enable_sub0000(5)
    );
  XLXI_7_Msub_Enable_sub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(4),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(5),
      O => XLXI_7_Msub_Enable_sub0000_cy(5)
    );
  XLXI_7_Msub_Enable_sub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(3),
      LI => XLXI_7_Msub_Enable_sub0000_lut(4),
      O => XLXI_7_Enable_sub0000(4)
    );
  XLXI_7_Msub_Enable_sub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(3),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(4),
      O => XLXI_7_Msub_Enable_sub0000_cy(4)
    );
  XLXI_7_Msub_Enable_sub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(2),
      LI => XLXI_7_Msub_Enable_sub0000_lut(3),
      O => XLXI_7_Enable_sub0000(3)
    );
  XLXI_7_Msub_Enable_sub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(2),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(3),
      O => XLXI_7_Msub_Enable_sub0000_cy(3)
    );
  XLXI_7_Msub_Enable_sub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(1),
      LI => XLXI_7_Msub_Enable_sub0000_lut(2),
      O => XLXI_7_Enable_sub0000(2)
    );
  XLXI_7_Msub_Enable_sub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(1),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(2),
      O => XLXI_7_Msub_Enable_sub0000_cy(2)
    );
  XLXI_7_Msub_Enable_sub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(0),
      LI => XLXI_7_Msub_Enable_sub0000_lut(1),
      O => XLXI_7_Enable_sub0000(1)
    );
  XLXI_7_Msub_Enable_sub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_7_Msub_Enable_sub0000_cy(0),
      DI => N1,
      S => XLXI_7_Msub_Enable_sub0000_lut(1),
      O => XLXI_7_Msub_Enable_sub0000_cy(1)
    );
  XLXI_7_Msub_Enable_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => XLXI_7_Mcount_scale_cy_0_rt_94,
      O => XLXI_7_Enable_sub0000(0)
    );
  XLXI_7_Msub_Enable_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_7_Msub_Enable_sub0000_cy_0_rt_167,
      O => XLXI_7_Msub_Enable_sub0000_cy(0)
    );
  XLXI_7_Counter_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_Counter_not0001,
      D => XLXI_7_Result_4_1_265,
      Q => XLXI_7_Counter(4)
    );
  XLXI_7_Counter_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_Counter_not0001,
      D => XLXI_7_Result_3_1,
      Q => XLXI_7_Counter(3)
    );
  XLXI_7_Counter_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_Counter_not0001,
      D => XLXI_7_Result_2_1,
      Q => XLXI_7_Counter(2)
    );
  XLXI_7_Counter_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_Counter_not0001,
      D => XLXI_7_Result_1_1,
      Q => XLXI_7_Counter(1)
    );
  XLXI_7_Counter_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_Counter_not0001,
      D => XLXI_7_Result_0_1,
      Q => XLXI_7_Counter(0)
    );
  XLXI_7_scale_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_22,
      Q => XLXI_7_scale(22)
    );
  XLXI_7_scale_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_19,
      Q => XLXI_7_scale(19)
    );
  XLXI_7_scale_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_18,
      Q => XLXI_7_scale(18)
    );
  XLXI_7_scale_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_14,
      Q => XLXI_7_scale(14)
    );
  XLXI_7_scale_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_11,
      Q => XLXI_7_scale(11)
    );
  XLXI_7_scale_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_9,
      Q => XLXI_7_scale(9)
    );
  XLXI_7_scale_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_8,
      Q => XLXI_7_scale(8)
    );
  XLXI_7_scale_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_6,
      Q => XLXI_7_scale(6)
    );
  XLXI_7_scale_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Mcount_scale_eqn_2,
      Q => XLXI_7_scale(2)
    );
  XLXI_7_Negate : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_Negate_not0002_230,
      D => XLXI_7_Negate_not0003,
      Q => XLXI_7_Negate_229
    );
  XLXI_7_Enable : FDR
    port map (
      C => Clk_BUFGP_1,
      D => N1,
      R => XLXI_7_Enable_not0001,
      Q => XLXI_7_Enable_59
    );
  XLXI_7_UPdown : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => XLXI_7_UPdown_not0001,
      D => XLXI_7_UPdown_mux0000,
      Q => XLXI_7_UPdown_271
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(21),
      I1 => XLXI_7_Enable_sub0000(22),
      I2 => XLXI_7_Enable_sub0000(23),
      I3 => XLXI_7_Enable_sub0000(24),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(0)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(0),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(0)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(18),
      I1 => XLXI_7_Enable_sub0000(19),
      I2 => XLXI_7_Enable_sub0000(20),
      I3 => XLXI_7_Enable_sub0000(25),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(1)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(1),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(1)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(15),
      I1 => XLXI_7_Enable_sub0000(16),
      I2 => XLXI_7_Enable_sub0000(17),
      I3 => XLXI_7_Enable_sub0000(26),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(2)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(2),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(2)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(12),
      I1 => XLXI_7_Enable_sub0000(13),
      I2 => XLXI_7_Enable_sub0000(14),
      I3 => XLXI_7_Enable_sub0000(27),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(3)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(3),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(3)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(9),
      I1 => XLXI_7_Enable_sub0000(10),
      I2 => XLXI_7_Enable_sub0000(11),
      I3 => XLXI_7_Enable_sub0000(28),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(4)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(4),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(4)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(6),
      I1 => XLXI_7_Enable_sub0000(7),
      I2 => XLXI_7_Enable_sub0000(8),
      I3 => XLXI_7_Enable_sub0000(29),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(5)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(5),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(5)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(3),
      I1 => XLXI_7_Enable_sub0000(4),
      I2 => XLXI_7_Enable_sub0000(5),
      I3 => XLXI_7_Enable_sub0000(30),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(6)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(6),
      O => XLXI_7_scale_cmp_eq0000_wg_cy(6)
    );
  XLXI_7_scale_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Enable_sub0000(0),
      I1 => XLXI_7_Enable_sub0000(1),
      I2 => XLXI_7_Enable_sub0000(2),
      I3 => XLXI_7_Enable_sub0000(31),
      O => XLXI_7_scale_cmp_eq0000_wg_lut(7)
    );
  XLXI_7_scale_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => XLXI_7_scale_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => XLXI_7_scale_cmp_eq0000_wg_lut(7),
      O => XLXI_7_scale_cmp_eq0000
    );
  XLXI_7_Result_1_11 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => XLXI_7_Counter(1),
      I1 => XLXI_7_Counter(0),
      I2 => XLXI_7_UPdown_271,
      O => XLXI_7_Result_1_1
    );
  XLXI_7_Result_2_11 : LUT4
    generic map(
      INIT => X"78E1"
    )
    port map (
      I0 => XLXI_7_UPdown_271,
      I1 => XLXI_7_Counter(0),
      I2 => XLXI_7_Counter(2),
      I3 => XLXI_7_Counter(1),
      O => XLXI_7_Result_2_1
    );
  XLXI_7_Negate_not0002_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => XLXI_7_UPdown_271,
      I1 => XLXI_7_Counter(0),
      I2 => XLXI_7_Enable_59,
      I3 => XLXI_7_Counter(1),
      O => N01
    );
  XLXI_7_Negate_not0002 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Counter(4),
      I1 => XLXI_7_Counter(3),
      I2 => XLXI_7_Counter(2),
      I3 => N01,
      O => XLXI_7_Negate_not0002_230
    );
  XLXI_7_UPdown_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_7_Enable_59,
      I1 => XLXI_7_N11,
      O => XLXI_7_UPdown_not0001
    );
  XLXI_7_Counter_not00012 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_7_Enable_59,
      I1 => XLXI_7_N11,
      O => XLXI_7_Counter_not0001
    );
  XLXI_7_Counter_not00011_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_7_Counter(2),
      I1 => XLXI_7_Counter(1),
      I2 => XLXI_7_Counter(0),
      I3 => XLXI_7_UPdown_271,
      O => N2
    );
  XLXI_7_Counter_not00011_SW1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_7_Counter(2),
      I1 => XLXI_7_Counter(1),
      I2 => XLXI_7_Counter(0),
      I3 => XLXI_7_UPdown_271,
      O => N3
    );
  XLXI_7_Counter_not00011 : LUT4
    generic map(
      INIT => X"8901"
    )
    port map (
      I0 => XLXI_7_Counter(4),
      I1 => XLXI_7_Counter(3),
      I2 => N2,
      I3 => N3,
      O => XLXI_7_N11
    );
  XLXI_7_Result_4_1_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_7_Counter(2),
      I1 => XLXI_7_Counter(1),
      I2 => XLXI_7_Counter(0),
      I3 => XLXI_7_UPdown_271,
      O => N7
    );
  XLXI_7_Result_4_1 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => XLXI_7_Counter(4),
      I1 => XLXI_7_Counter(3),
      I2 => N7,
      I3 => N3,
      O => XLXI_7_Result_4_1_265
    );
  XLXI_7_Mcount_scale_eqn_91 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(9),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_9
    );
  XLXI_7_Mcount_scale_eqn_81 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(8),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_8
    );
  XLXI_7_Mcount_scale_eqn_61 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(6),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_6
    );
  XLXI_7_Mcount_scale_eqn_221 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(22),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_22
    );
  XLXI_7_Mcount_scale_eqn_21 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(2),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_2
    );
  XLXI_7_Mcount_scale_eqn_191 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(19),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_19
    );
  XLXI_7_Mcount_scale_eqn_181 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(18),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_18
    );
  XLXI_7_Mcount_scale_eqn_141 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(14),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_14
    );
  XLXI_7_Mcount_scale_eqn_111 : LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => Sw0_IBUF_10,
      I1 => XLXI_7_Result(11),
      I2 => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Mcount_scale_eqn_11
    );
  Sw0_IBUF : IBUF
    port map (
      I => Sw0,
      O => Sw0_IBUF_10
    );
  UPdown_OBUF : OBUF
    port map (
      I => XLXI_7_UPdown_271,
      O => UPdown
    );
  PPM_OBUF : OBUF
    port map (
      I => XLXI_3_Sigma(10),
      O => PPM
    );
  XLXI_7_scale_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(31),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(31)
    );
  XLXI_7_scale_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(30),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(30)
    );
  XLXI_7_scale_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(29),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(29)
    );
  XLXI_7_scale_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(28),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(28)
    );
  XLXI_7_scale_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(27),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(27)
    );
  XLXI_7_scale_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(26),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(26)
    );
  XLXI_7_scale_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(25),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(25)
    );
  XLXI_7_scale_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(24),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(24)
    );
  XLXI_7_scale_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(23),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(23)
    );
  XLXI_7_scale_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(21),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(21)
    );
  XLXI_7_scale_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(20),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(20)
    );
  XLXI_7_scale_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(17),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(17)
    );
  XLXI_7_scale_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(16),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(16)
    );
  XLXI_7_scale_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(15),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(15)
    );
  XLXI_7_scale_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(13),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(13)
    );
  XLXI_7_scale_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(12),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(12)
    );
  XLXI_7_scale_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(10),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(10)
    );
  XLXI_7_scale_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(7),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(7)
    );
  XLXI_7_scale_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(5),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(5)
    );
  XLXI_7_scale_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(4),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(4)
    );
  XLXI_7_scale_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(3),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(3)
    );
  XLXI_7_scale_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(1),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(1)
    );
  XLXI_7_scale_0 : FDR
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_BUFGP_1,
      D => XLXI_7_Result(0),
      R => XLXI_7_scale_cmp_eq0000,
      Q => XLXI_7_scale(0)
    );
  XLXI_7_Mcount_scale_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_7_scale(0),
      O => XLXI_7_Mcount_scale_cy_0_rt_94
    );
  XLXI_7_Msub_Enable_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_7_scale(0),
      O => XLXI_7_Msub_Enable_sub0000_cy_0_rt_167
    );
  XLXI_3_Madd_Sigma_add0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(0),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(0),
      O => XLXI_3_Madd_Sigma_add0000_lut(0)
    );
  XLXI_3_Madd_Sigma_add0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(1),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(1),
      O => XLXI_3_Madd_Sigma_add0000_lut(1)
    );
  XLXI_3_Madd_Sigma_add0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(2),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(2),
      O => XLXI_3_Madd_Sigma_add0000_lut(2)
    );
  XLXI_3_Madd_Sigma_add0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(3),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(3),
      O => XLXI_3_Madd_Sigma_add0000_lut(3)
    );
  XLXI_3_Madd_Sigma_add0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(4),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(4),
      O => XLXI_3_Madd_Sigma_add0000_lut(4)
    );
  XLXI_3_Madd_Sigma_add0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(5),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(5),
      O => XLXI_3_Madd_Sigma_add0000_lut(5)
    );
  XLXI_3_Madd_Sigma_add0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(6),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(6),
      O => XLXI_3_Madd_Sigma_add0000_lut(6)
    );
  XLXI_3_Madd_Sigma_add0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(7),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(7),
      O => XLXI_3_Madd_Sigma_add0000_lut(7)
    );
  XLXI_3_Madd_Sigma_add0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => XLXI_3_Sigma(8),
      I1 => XLXI_7_Negate_229,
      I2 => XLXN_90(8),
      O => XLXI_3_Madd_Sigma_add0000_lut(8)
    );
  XLXI_3_Madd_Sigma_add0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_3_Sigma(9),
      I1 => XLXI_7_Negate_229,
      O => XLXI_3_Madd_Sigma_add0000_lut(9)
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_1
    );
  XLXI_7_Mcount_scale_lut_31_INV_0 : INV
    port map (
      I => XLXI_7_scale(31),
      O => XLXI_7_Mcount_scale_lut(31)
    );
  XLXI_7_Mcount_scale_lut_30_INV_0 : INV
    port map (
      I => XLXI_7_scale(30),
      O => XLXI_7_Mcount_scale_lut(30)
    );
  XLXI_7_Mcount_scale_lut_29_INV_0 : INV
    port map (
      I => XLXI_7_scale(29),
      O => XLXI_7_Mcount_scale_lut(29)
    );
  XLXI_7_Mcount_scale_lut_28_INV_0 : INV
    port map (
      I => XLXI_7_scale(28),
      O => XLXI_7_Mcount_scale_lut(28)
    );
  XLXI_7_Mcount_scale_lut_27_INV_0 : INV
    port map (
      I => XLXI_7_scale(27),
      O => XLXI_7_Mcount_scale_lut(27)
    );
  XLXI_7_Mcount_scale_lut_26_INV_0 : INV
    port map (
      I => XLXI_7_scale(26),
      O => XLXI_7_Mcount_scale_lut(26)
    );
  XLXI_7_Mcount_scale_lut_25_INV_0 : INV
    port map (
      I => XLXI_7_scale(25),
      O => XLXI_7_Mcount_scale_lut(25)
    );
  XLXI_7_Mcount_scale_lut_24_INV_0 : INV
    port map (
      I => XLXI_7_scale(24),
      O => XLXI_7_Mcount_scale_lut(24)
    );
  XLXI_7_Mcount_scale_lut_23_INV_0 : INV
    port map (
      I => XLXI_7_scale(23),
      O => XLXI_7_Mcount_scale_lut(23)
    );
  XLXI_7_Mcount_scale_lut_22_INV_0 : INV
    port map (
      I => XLXI_7_scale(22),
      O => XLXI_7_Mcount_scale_lut(22)
    );
  XLXI_7_Mcount_scale_lut_21_INV_0 : INV
    port map (
      I => XLXI_7_scale(21),
      O => XLXI_7_Mcount_scale_lut(21)
    );
  XLXI_7_Mcount_scale_lut_20_INV_0 : INV
    port map (
      I => XLXI_7_scale(20),
      O => XLXI_7_Mcount_scale_lut(20)
    );
  XLXI_7_Mcount_scale_lut_19_INV_0 : INV
    port map (
      I => XLXI_7_scale(19),
      O => XLXI_7_Mcount_scale_lut(19)
    );
  XLXI_7_Mcount_scale_lut_18_INV_0 : INV
    port map (
      I => XLXI_7_scale(18),
      O => XLXI_7_Mcount_scale_lut(18)
    );
  XLXI_7_Mcount_scale_lut_17_INV_0 : INV
    port map (
      I => XLXI_7_scale(17),
      O => XLXI_7_Mcount_scale_lut(17)
    );
  XLXI_7_Mcount_scale_lut_16_INV_0 : INV
    port map (
      I => XLXI_7_scale(16),
      O => XLXI_7_Mcount_scale_lut(16)
    );
  XLXI_7_Mcount_scale_lut_15_INV_0 : INV
    port map (
      I => XLXI_7_scale(15),
      O => XLXI_7_Mcount_scale_lut(15)
    );
  XLXI_7_Mcount_scale_lut_14_INV_0 : INV
    port map (
      I => XLXI_7_scale(14),
      O => XLXI_7_Mcount_scale_lut(14)
    );
  XLXI_7_Mcount_scale_lut_13_INV_0 : INV
    port map (
      I => XLXI_7_scale(13),
      O => XLXI_7_Mcount_scale_lut(13)
    );
  XLXI_7_Mcount_scale_lut_12_INV_0 : INV
    port map (
      I => XLXI_7_scale(12),
      O => XLXI_7_Mcount_scale_lut(12)
    );
  XLXI_7_Mcount_scale_lut_11_INV_0 : INV
    port map (
      I => XLXI_7_scale(11),
      O => XLXI_7_Mcount_scale_lut(11)
    );
  XLXI_7_Mcount_scale_lut_10_INV_0 : INV
    port map (
      I => XLXI_7_scale(10),
      O => XLXI_7_Mcount_scale_lut(10)
    );
  XLXI_7_Mcount_scale_lut_9_INV_0 : INV
    port map (
      I => XLXI_7_scale(9),
      O => XLXI_7_Mcount_scale_lut(9)
    );
  XLXI_7_Mcount_scale_lut_8_INV_0 : INV
    port map (
      I => XLXI_7_scale(8),
      O => XLXI_7_Mcount_scale_lut(8)
    );
  XLXI_7_Mcount_scale_lut_7_INV_0 : INV
    port map (
      I => XLXI_7_scale(7),
      O => XLXI_7_Mcount_scale_lut(7)
    );
  XLXI_7_Mcount_scale_lut_6_INV_0 : INV
    port map (
      I => XLXI_7_scale(6),
      O => XLXI_7_Mcount_scale_lut(6)
    );
  XLXI_7_Mcount_scale_lut_5_INV_0 : INV
    port map (
      I => XLXI_7_scale(5),
      O => XLXI_7_Mcount_scale_lut(5)
    );
  XLXI_7_Mcount_scale_lut_4_INV_0 : INV
    port map (
      I => XLXI_7_scale(4),
      O => XLXI_7_Mcount_scale_lut(4)
    );
  XLXI_7_Mcount_scale_lut_3_INV_0 : INV
    port map (
      I => XLXI_7_scale(3),
      O => XLXI_7_Mcount_scale_lut(3)
    );
  XLXI_7_Mcount_scale_lut_2_INV_0 : INV
    port map (
      I => XLXI_7_scale(2),
      O => XLXI_7_Mcount_scale_lut(2)
    );
  XLXI_7_Mcount_scale_lut_1_INV_0 : INV
    port map (
      I => XLXI_7_scale(1),
      O => XLXI_7_Mcount_scale_lut(1)
    );
  XLXI_7_Msub_Enable_sub0000_lut_30_INV_0 : INV
    port map (
      I => XLXI_7_scale(30),
      O => XLXI_7_Msub_Enable_sub0000_lut(30)
    );
  XLXI_7_Msub_Enable_sub0000_lut_29_INV_0 : INV
    port map (
      I => XLXI_7_scale(29),
      O => XLXI_7_Msub_Enable_sub0000_lut(29)
    );
  XLXI_7_Msub_Enable_sub0000_lut_28_INV_0 : INV
    port map (
      I => XLXI_7_scale(28),
      O => XLXI_7_Msub_Enable_sub0000_lut(28)
    );
  XLXI_7_Msub_Enable_sub0000_lut_27_INV_0 : INV
    port map (
      I => XLXI_7_scale(27),
      O => XLXI_7_Msub_Enable_sub0000_lut(27)
    );
  XLXI_7_Msub_Enable_sub0000_lut_26_INV_0 : INV
    port map (
      I => XLXI_7_scale(26),
      O => XLXI_7_Msub_Enable_sub0000_lut(26)
    );
  XLXI_7_Msub_Enable_sub0000_lut_25_INV_0 : INV
    port map (
      I => XLXI_7_scale(25),
      O => XLXI_7_Msub_Enable_sub0000_lut(25)
    );
  XLXI_7_Msub_Enable_sub0000_lut_24_INV_0 : INV
    port map (
      I => XLXI_7_scale(24),
      O => XLXI_7_Msub_Enable_sub0000_lut(24)
    );
  XLXI_7_Msub_Enable_sub0000_lut_23_INV_0 : INV
    port map (
      I => XLXI_7_scale(23),
      O => XLXI_7_Msub_Enable_sub0000_lut(23)
    );
  XLXI_7_Msub_Enable_sub0000_lut_22_INV_0 : INV
    port map (
      I => XLXI_7_scale(22),
      O => XLXI_7_Msub_Enable_sub0000_lut(22)
    );
  XLXI_7_Msub_Enable_sub0000_lut_21_INV_0 : INV
    port map (
      I => XLXI_7_scale(21),
      O => XLXI_7_Msub_Enable_sub0000_lut(21)
    );
  XLXI_7_Msub_Enable_sub0000_lut_20_INV_0 : INV
    port map (
      I => XLXI_7_scale(20),
      O => XLXI_7_Msub_Enable_sub0000_lut(20)
    );
  XLXI_7_Msub_Enable_sub0000_lut_19_INV_0 : INV
    port map (
      I => XLXI_7_scale(19),
      O => XLXI_7_Msub_Enable_sub0000_lut(19)
    );
  XLXI_7_Msub_Enable_sub0000_lut_18_INV_0 : INV
    port map (
      I => XLXI_7_scale(18),
      O => XLXI_7_Msub_Enable_sub0000_lut(18)
    );
  XLXI_7_Msub_Enable_sub0000_lut_17_INV_0 : INV
    port map (
      I => XLXI_7_scale(17),
      O => XLXI_7_Msub_Enable_sub0000_lut(17)
    );
  XLXI_7_Msub_Enable_sub0000_lut_16_INV_0 : INV
    port map (
      I => XLXI_7_scale(16),
      O => XLXI_7_Msub_Enable_sub0000_lut(16)
    );
  XLXI_7_Msub_Enable_sub0000_lut_15_INV_0 : INV
    port map (
      I => XLXI_7_scale(15),
      O => XLXI_7_Msub_Enable_sub0000_lut(15)
    );
  XLXI_7_Msub_Enable_sub0000_lut_14_INV_0 : INV
    port map (
      I => XLXI_7_scale(14),
      O => XLXI_7_Msub_Enable_sub0000_lut(14)
    );
  XLXI_7_Msub_Enable_sub0000_lut_13_INV_0 : INV
    port map (
      I => XLXI_7_scale(13),
      O => XLXI_7_Msub_Enable_sub0000_lut(13)
    );
  XLXI_7_Msub_Enable_sub0000_lut_12_INV_0 : INV
    port map (
      I => XLXI_7_scale(12),
      O => XLXI_7_Msub_Enable_sub0000_lut(12)
    );
  XLXI_7_Msub_Enable_sub0000_lut_11_INV_0 : INV
    port map (
      I => XLXI_7_scale(11),
      O => XLXI_7_Msub_Enable_sub0000_lut(11)
    );
  XLXI_7_Msub_Enable_sub0000_lut_10_INV_0 : INV
    port map (
      I => XLXI_7_scale(10),
      O => XLXI_7_Msub_Enable_sub0000_lut(10)
    );
  XLXI_7_Msub_Enable_sub0000_lut_9_INV_0 : INV
    port map (
      I => XLXI_7_scale(9),
      O => XLXI_7_Msub_Enable_sub0000_lut(9)
    );
  XLXI_7_Msub_Enable_sub0000_lut_8_INV_0 : INV
    port map (
      I => XLXI_7_scale(8),
      O => XLXI_7_Msub_Enable_sub0000_lut(8)
    );
  XLXI_7_Msub_Enable_sub0000_lut_7_INV_0 : INV
    port map (
      I => XLXI_7_scale(7),
      O => XLXI_7_Msub_Enable_sub0000_lut(7)
    );
  XLXI_7_Msub_Enable_sub0000_lut_6_INV_0 : INV
    port map (
      I => XLXI_7_scale(6),
      O => XLXI_7_Msub_Enable_sub0000_lut(6)
    );
  XLXI_7_Msub_Enable_sub0000_lut_5_INV_0 : INV
    port map (
      I => XLXI_7_scale(5),
      O => XLXI_7_Msub_Enable_sub0000_lut(5)
    );
  XLXI_7_Msub_Enable_sub0000_lut_4_INV_0 : INV
    port map (
      I => XLXI_7_scale(4),
      O => XLXI_7_Msub_Enable_sub0000_lut(4)
    );
  XLXI_7_Msub_Enable_sub0000_lut_3_INV_0 : INV
    port map (
      I => XLXI_7_scale(3),
      O => XLXI_7_Msub_Enable_sub0000_lut(3)
    );
  XLXI_7_Msub_Enable_sub0000_lut_2_INV_0 : INV
    port map (
      I => XLXI_7_scale(2),
      O => XLXI_7_Msub_Enable_sub0000_lut(2)
    );
  XLXI_7_Msub_Enable_sub0000_lut_1_INV_0 : INV
    port map (
      I => XLXI_7_scale(1),
      O => XLXI_7_Msub_Enable_sub0000_lut(1)
    );
  XLXI_7_UPdown_mux00001_INV_0 : INV
    port map (
      I => XLXI_7_UPdown_271,
      O => XLXI_7_UPdown_mux0000
    );
  XLXI_7_Result_0_11_INV_0 : INV
    port map (
      I => XLXI_7_Counter(0),
      O => XLXI_7_Result_0_1
    );
  XLXI_7_Negate_not00031_INV_0 : INV
    port map (
      I => XLXI_7_Negate_229,
      O => XLXI_7_Negate_not0003
    );
  XLXI_7_Enable_not00011_INV_0 : INV
    port map (
      I => XLXI_7_scale_cmp_eq0000,
      O => XLXI_7_Enable_not0001
    );
  XLXI_7_Mcount_scale_lut_31_1_INV_0 : INV
    port map (
      I => XLXI_7_scale(31),
      O => XLXI_7_Mcount_scale_lut_31_1
    );
  XLXI_7_Result_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => XLXI_7_Counter(3),
      I1 => XLXI_7_Counter(2),
      I2 => XLXI_7_Counter(1),
      I3 => XLXI_7_Counter(0),
      O => XLXI_7_Result_3_11_262
    );
  XLXI_7_Result_3_12 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => XLXI_7_Counter(3),
      I1 => XLXI_7_Counter(2),
      I2 => XLXI_7_Counter(1),
      I3 => XLXI_7_Counter(0),
      O => XLXI_7_Result_3_12_263
    );
  XLXI_7_Result_3_1_f5 : MUXF5
    port map (
      I0 => XLXI_7_Result_3_12_263,
      I1 => XLXI_7_Result_3_11_262,
      S => XLXI_7_UPdown_271,
      O => XLXI_7_Result_3_1
    );

end Structure;

