----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:25 11/17/2013 
-- Design Name: 
-- Module Name:    blinkenlights - Behavioral 
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

entity blinkenlights is 
   generic (divider_ratio: natural := 2);
   port (
      clk      : in  std_logic;
      s0, s1, sbit : in std_logic;
      invOE, invCLR : in std_logic;
      data_in : in std_logic_vector(2 downto 0);
      lights   : out std_logic_vector (5 downto 0));
   
end blinkenlights;

architecture Behavioral of blinkenlights is
   component shiftreg is port (
      CLK, S0, S1, SR, SL, invOE1, invOE2, invCLR : in  std_logic;
      Q : inout  std_logic_vector (7 downto 0));
   end component;
   
   component frekvensdeler is 
   generic(ratio : natural := 2);
   port (
      clk    : in  std_logic;
      output : out std_logic);
   end component;
   
   signal clk_internal: std_logic;
   signal data : std_logic_vector (7 downto 0);
begin
   divider_internal : frekvensdeler 
      generic map (ratio => divider_ratio)
      port map (clk => clk,
                output => clk_internal);
   
   reg : shiftreg 
      port map (
         CLK => clk_internal,
         S0 => s0, S1 => s1,
         SR => sbit, SL => sbit,
         invOE1 => invOE, invOE2 => invOE,
         invCLR => invCLR,
         Q => data);
         
   data <= "00000" & data_in when s0 = '1' and s1 = '1' else (others => 'Z');
   lights <= data(7 downto 5) & data(2 downto 0) when invOE = '0' else (others => 'Z');
end Behavioral;

