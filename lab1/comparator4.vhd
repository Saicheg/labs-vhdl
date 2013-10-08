----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:28 10/08/2013 
-- Design Name: 
-- Module Name:    comparator4 - Behavioral 
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

entity comparator4 is
   Port(a,b: in STD_LOGIC_VECTOR (3 downto 0);
        aeqb, agtb, altb: out STD_LOGIC);
end comparator4;

architecture Behavioral of comparator4 is
begin
  process(a,b)
  begin
    if (a(0) /= b(0)) or
       (a(1) /= b(1)) or
       (a(2) /= b(2)) or
       (a(3) /= b(3))
    then
      aeqb <= '0';
      if a(3) /= b(3)
      then
        agtb <= a(3) and not b(3);
        altb <= b(3) and not a(3);
      elsif a(2) /= b(2)
      then
        agtb <= a(2) and not b(2);
        altb <= b(2) and not a(2);
      elsif a(1) /= b(1)
      then
        agtb <= a(1) and not b(1);
        altb <= b(1) and not a(1);
      elsif a(0) /= b(0)
      then
        agtb <= a(0) and not b(0);
        altb <= b(0) and not a(0);
      end if;
    else
      aeqb <= '1';
      agtb <= '0';
      altb <= '0';
    end if;
  end process;
end Behavioral;

