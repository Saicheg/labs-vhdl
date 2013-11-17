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
   generic (divider_ratio: natural := 4);
   port (
   clk      : in  std_logic;
   switches : in  std_logic_vector (7 downto 0);
   lights   : out std_logic_vector (5 downto 0));
   
end blinkenlights;

architecture Behavioral of blinkenlights is
   component shiftreg is port (
      CLK, S0, S1, invOE1, invOE2, invCLR : in  std_logic;
      Q : inout  std_logic_vector (7 downto 0));
   end component;
   
   component frekvensdeler is 
   generic(ratio : natural := 2);
   port (
      clk    : in  std_logic;
      output : out std_logic);
   end component;
   
   signal clk_internal, clk_reg: std_logic;
   signal reg_mode : std_logic;
   signal data : std_logic_vector (7 downto 0);
begin
   divider_internal : frekvensdeler 
      generic map (ratio => divider_ratio / 2)
      port map (clk => clk,
                output => clk_internal);
   
   reg : shiftreg 
      port map (
         CLK => clk_reg,
         S0 => reg_mode, S1 => reg_mode,
         invOE1 => '0', invOE2 => '0',
         invCLR => '1',
         Q => data);
         
   process (clk_internal)
      variable reading : boolean;
      variable clock_change : boolean;
      variable clock_next : std_logic := '1';
   begin
      if clk_internal'event and clk_internal = '1' then
         if clock_change then
            clk_reg <= clock_next;
         else
            reg_mode <= not clk_reg;
            clock_next := not clk_reg;
         end if;
         clock_change := not clock_change;
      end if;
   end process;
   
   process (clk_reg)
   begin
      if clk_reg'event and clk_reg = '0' then
         lights(5 downto 0) <= data(5 downto 0);
      end if;
   end process;
   
   data(7 downto 0) <= switches(7 downto 0) when (reg_mode = '1') else (others => 'Z');
end Behavioral;

