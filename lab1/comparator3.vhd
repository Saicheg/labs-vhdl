----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:12 10/08/2013 
-- Design Name: 
-- Module Name:    comparator3 - Behavioral 
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

entity comparator3 is
    Port (a, b : in  STD_LOGIC_VECTOR (3 downto 0);
          aeqb, agtb, altb : out  STD_LOGIC);
end comparator3;

architecture Behavioral of comparator3 is
   signal comp : STD_LOGIC_VECTOR (2 downto 0);
begin
   comp <= (
            not(( a(0) xor b(0) ) or
                ( a(1) xor b(1) ) or
                ( a(2) xor b(2) ) or
                ( a(3) xor b(3) ))
           )
         & (
           (a(3) and not b(3)) or
           (not (a(3) xor b(3)) and a(2) and not b(2)) or
           (not (a(3) xor b(3)) and not (a(2) xor b(2)) and a(1) and not b(1)) or
           (not (a(3) xor b(3)) and not (a(2) xor b(2)) and not (a(1) xor b(1)) and a(0) and not b(0))
           )
         & (
           (b(3) and not a(3)) or
           (not (b(3) xor a(3)) and b(2) and not a(2)) or
           (not (b(3) xor a(3)) and not (b(2) xor a(2)) and b(1) and not a(1)) or
			  (not (b(3) xor a(3)) and not (b(2) xor a(2)) and not (b(1) xor a(1)) and b(0) and not a(0))
           );
           
   with comp select
     aeqb <= '1' when "100",
             '0' when others;
   with comp select
     agtb <= '1' when "010",
             '0' when others;
   with comp select
     altb <= '1' when "001",
             '0' when others;
end Behavioral;

