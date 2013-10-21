----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:07 10/21/2013 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is port (
   clk : in  std_logic;
   d : in  std_logic;
   q : out  std_logic
);
end dff;

architecture Behavioral of dff is
  component jkff is port (
     clk              : in  std_logic;
     J, K, invR, invS : in  std_logic;
     Q, invQ          : out std_logic);
  end component;
  signal invD : std_logic;
begin
   invD <= not d;
   jk : jkff port map (
      clk => clk, J => d, K => invD,
      invR => '1', invS => '1',
      Q => q
   );
end Behavioral;

