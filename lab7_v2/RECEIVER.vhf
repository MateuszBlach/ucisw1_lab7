--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : RECEIVER.vhf
-- /___/   /\     Timestamp : 12/19/2023 09:00:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/lab7_v2/RECEIVER.vhf -w C:/Users/lab/lab7_v2/RECEIVER.sch
--Design Name: RECEIVER
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

entity RECEIVER is
   port ( przyc_reset : in    std_logic; 
          przyc_start : in    std_logic; 
          rs_read     : in    std_logic; 
          t_di        : in    std_logic_vector (7 downto 0); 
          zegar_sys   : in    std_logic; 
          read_rdy    : out   std_logic; 
          rs_do       : out   std_logic_vector (7 downto 0); 
          rs_trans    : out   std_logic; 
          trans_busy  : out   std_logic);
end RECEIVER;

architecture BEHAVIORAL of RECEIVER is
   component RS232
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             RS232_RxD : in    std_logic; 
             TxStart   : in    std_logic; 
             TxDI      : in    std_logic_vector (7 downto 0); 
             TxBusy    : out   std_logic; 
             RxRdy     : out   std_logic; 
             RS232_TxD : out   std_logic; 
             RxDO      : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
begin
   XLXI_1 : RS232
      port map (Clk_Sys=>zegar_sys,
                Clk_50MHz=>zegar_sys,
                Reset=>przyc_reset,
                RS232_RxD=>rs_read,
                TxDI(7 downto 0)=>t_di(7 downto 0),
                TxStart=>przyc_start,
                RS232_TxD=>rs_trans,
                RxDO(7 downto 0)=>rs_do(7 downto 0),
                RxRdy=>read_rdy,
                TxBusy=>trans_busy);
   
end BEHAVIORAL;


