----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:35:25 10/21/2013 
-- Design Name: 
-- Module Name:    shiftreg - Behavioral 
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

entity shiftreg is
    Port ( CLK,
           S0, S1, SR, SL, invOE1, invOE2, invCLR : in  std_logic;
           Q : inout  std_logic_vector (7 downto 0);
           Qa, Qh : out std_logic);
end shiftreg;

architecture Behavioral of shiftreg is
   component shiftreg_channel is port (
      CLK : in std_logic;
      T0, T1, T2, T3 : in std_logic;
      SR, SL, GATE : in std_logic;
      D : out std_logic;
      Q : inout std_logic);
   end component;
   signal CLR,
          t0, t1, t2, t3,
          gate_enabler: std_logic;
   signal data : std_logic_vector (7 downto 0);
begin
   CLR <= not invCLR;
   t0 <= not (t1 or CLR);
   t1 <= not (S0 or CLR);
   t2 <= not S1;
   t3 <= S1;
   gate_enabler <= (not invOE1) and (not invOE2) and not (S0 and S1);
   chA : shiftreg_channel port map (CLK, t0, t1, t2, t3, SR, data(6), gate_enabler, data(7), Q(7));
   chH : shiftreg_channel port map (CLK, t0, t1, t2, t3, data(1), SL, gate_enabler, data(0), Q(0));
   LINES: for i in 1 to 6 generate
      chX : shiftreg_channel port map (CLK, t0, t1, t2, t3, data(i+1), data(i-1), gate_enabler, data(i), Q(i));
   end generate LINES;
   Qa <= data(7);
   Qh <= data(0);
end Behavioral;

