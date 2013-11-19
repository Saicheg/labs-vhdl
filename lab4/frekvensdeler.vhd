library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity frekvensdeler is 
   generic(ratio : natural := 2);
   port (
      clk    : in  std_logic;
      output : out std_logic);
end frekvensdeler;

architecture Behavioral of frekvensdeler is
   signal clock_signal: std_logic;
begin
   update_counter: process(clk)
      variable count : natural range 0 to ratio-1 := 0;
   begin
      if ratio = 0 or ratio = 1 then
         clock_signal <= clk;
      elsif clk'event and clk = '1' then
         if count = ratio - 1 then
            count := 0;
         else
            if count = 0 then
               clock_signal <= '1';
            elsif count = ratio/2 then
               clock_signal <= '0';
            end if;
            count := count + 1;
         end if;
      end if;
   end process;
  
   output <= clock_signal;
end Behavioral;

