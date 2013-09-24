----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:15 09/23/2013 
-- Design Name: 
-- Module Name:    comparator1 - Behavioral 
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

entity comparator1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           aeqb, agtb, altb : out  STD_LOGIC);
end comparator1;

architecture Behavioral of comparator1 is
begin
  aeqb <= not((a(0) xor b(0)) or
              (a(1) xor b(1)) or
				  (a(2) xor b(2)) or
				  (a(3) xor b(3)));
--  agtb <= '1';
--  altb <= b(0);

end Behavioral;

