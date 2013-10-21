----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:49 10/21/2013 
-- Design Name: 
-- Module Name:    jkff - Behavioral 
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

entity jkff is
    Port ( clk              : in  std_logic;
           J, K, invR, invS : in  std_logic;
           Q, invQ          : out std_logic);
end jkff;

architecture Behavioral of jkff is
   signal t: std_logic;
begin
   process (clk, invR, invS)
   begin
      if invR = '0' then
         t <= '0';
      elsif invS = '0' then
         t <= '1';
      elsif clk'event and clk = '1' then
         if J = '1' and K = '0' then
            t <= '1';
         elsif J = '0' and K = '1' then
            t <= '0';
         elsif J = '1' and K = '1' then
            t <= not t;
         elsif J = '0' and K = '0' then
            t <= t;
         end if;
      end if;
   end process;
   
   Q <= t;
   invQ <= not t;
end Behavioral;

