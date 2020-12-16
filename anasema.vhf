--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.2
--  \   \         Application : sch2hdl
--  /   /         Filename : anasema.vhf
-- /___/   /\     Timestamp : 11/22/2017 18:23:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Mertcan/mesafeolcer/anasema.vhf -w C:/Users/Mertcan/mesafeolcer/anasema.sch
--Design Name: anasema
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

entity anasema is
   port ( echo : in    std_logic; 
          mClk : in    std_logic; 
          an   : out   std_logic_vector (3 downto 0); 
          led  : out   std_logic_vector (7 downto 0); 
          seg  : out   std_logic_vector (6 downto 0); 
          trig : out   std_logic);
end anasema;

architecture BEHAVIORAL of anasema is
   signal XLXN_1 : std_logic_vector (3 downto 0);
   signal XLXN_3 : std_logic_vector (8 downto 0);
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic_vector (3 downto 0);
   signal XLXN_7 : std_logic_vector (3 downto 0);
   signal XLXN_8 : std_logic_vector (3 downto 0);
   component binaryToDecimal
      port ( clkIn    : in    std_logic; 
             dataIn   : in    std_logic_vector (8 downto 0); 
             clkOut   : out   std_logic; 
             dataOut1 : out   std_logic_vector (3 downto 0); 
             dataOut2 : out   std_logic_vector (3 downto 0); 
             dataOut3 : out   std_logic_vector (3 downto 0));
   end component;
   
   component ledDriver
      port ( clkIn      : in    std_logic; 
             dataIn1    : in    std_logic_vector (3 downto 0); 
             dataIn2    : in    std_logic_vector (3 downto 0); 
             dataIn3    : in    std_logic_vector (3 downto 0); 
             dataOut    : out   std_logic_vector (3 downto 0); 
             chipSelect : out   std_logic_vector (3 downto 0));
   end component;
   
   component binaryTo7segment
      port ( veriIN     : in    std_logic_vector (3 downto 0); 
             outSegment : out   std_logic_vector (6 downto 0));
   end component;
   
   component anaModul
      port ( echoPin  : in    std_logic; 
             clkIn    : in    std_logic; 
             trigPin  : out   std_logic; 
             clkOut   : out   std_logic; 
             degerOut : out   std_logic_vector (8 downto 0); 
             ledOut   : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_2 : binaryToDecimal
      port map (clkIn=>XLXN_4,
                dataIn(8 downto 0)=>XLXN_3(8 downto 0),
                clkOut=>XLXN_5,
                dataOut1(3 downto 0)=>XLXN_6(3 downto 0),
                dataOut2(3 downto 0)=>XLXN_7(3 downto 0),
                dataOut3(3 downto 0)=>XLXN_8(3 downto 0));
   
   XLXI_3 : ledDriver
      port map (clkIn=>XLXN_5,
                dataIn1(3 downto 0)=>XLXN_6(3 downto 0),
                dataIn2(3 downto 0)=>XLXN_7(3 downto 0),
                dataIn3(3 downto 0)=>XLXN_8(3 downto 0),
                chipSelect(3 downto 0)=>an(3 downto 0),
                dataOut(3 downto 0)=>XLXN_1(3 downto 0));
   
   XLXI_4 : binaryTo7segment
      port map (veriIN(3 downto 0)=>XLXN_1(3 downto 0),
                outSegment(6 downto 0)=>seg(6 downto 0));
   
   XLXI_5 : anaModul
      port map (clkIn=>mClk,
                echoPin=>echo,
                clkOut=>XLXN_4,
                degerOut(8 downto 0)=>XLXN_3(8 downto 0),
                ledOut(7 downto 0)=>led(7 downto 0),
                trigPin=>trig);
   
end BEHAVIORAL;


