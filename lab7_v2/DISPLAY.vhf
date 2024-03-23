--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DISPLAY.vhf
-- /___/   /\     Timestamp : 12/19/2023 09:00:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/lab7_v2/DISPLAY.vhf -w C:/Users/lab/lab7_v2/DISPLAY.sch
--Design Name: DISPLAY
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

entity DISPLAY is
   port ( blank       : in    std_logic_vector (15 downto 0); 
          linia_wej   : in    std_logic_vector (63 downto 0); 
          przyc_reset : in    std_logic; 
          zegar_50    : in    std_logic; 
          lcd_e       : out   std_logic; 
          lcd_rs      : out   std_logic; 
          lcd_rw      : out   std_logic; 
          sf_ce       : out   std_logic; 
          lcd_d       : inout std_logic_vector (3 downto 0));
end DISPLAY;

architecture BEHAVIORAL of DISPLAY is
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   XLXI_1 : LCD1x64
      port map (Blank(15 downto 0)=>blank(15 downto 0),
                Clk_50MHz=>zegar_50,
                Line(63 downto 0)=>linia_wej(63 downto 0),
                Reset=>przyc_reset,
                LCD_E=>lcd_e,
                LCD_RS=>lcd_rs,
                LCD_RW=>lcd_rw,
                SF_CE=>sf_ce,
                LCD_D(3 downto 0)=>lcd_d(3 downto 0));
   
end BEHAVIORAL;


