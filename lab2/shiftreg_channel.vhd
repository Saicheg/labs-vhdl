----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:55 10/21/2013 
-- Design Name: 
-- Module Name:    shiftreg_channel - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftreg_channel is port (
   CLK : in std_logic;
   T0, T1, T2, T3 : in std_logic;
   SR, SL, GATE : in std_logic;
   D : out std_logic;
   Q : inout std_logic);
end shiftreg_channel;

architecture Behavioral of shiftreg_channel is
   component dff is port (
      clk : in  std_logic;
      d : in  std_logic;
      q : out  std_logic);
   end component;
   signal sr_one, sl_one, load_one, hold_one : std_logic;
   signal dff_in, dff_out : std_logic;
begin
   sr_one <= T0 and T2 and SR;
   sl_one <= T1 and T3 and SL;
   load_one <= T0 and T3 and Q;
   hold_one <= T1 and T2 and dff_out;
   dff_in <= sr_one or sl_one or load_one or hold_one;
   trigger : dff port map (CLK, dff_in, dff_out);
   D <= dff_out;
   Q <= dff_out when GATE = '1';
end Behavioral;

