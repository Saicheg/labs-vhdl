LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY frekvensdeler_spec IS
END frekvensdeler_spec;
 
ARCHITECTURE behavior OF frekvensdeler_spec IS 
    COMPONENT frekvensdeler
    generic(
      ratio : natural := 4);
    PORT(
         clk : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1us;
 
BEGIN
   uut: frekvensdeler 
   generic map (
      ratio => 4)
   PORT MAP (
          clk => clk,
          output => output
        );

   -- Stimulus process
   stim_proc: process
      variable i : integer := 1; 
   begin		
      while i < 110000000 loop
         clk <= '1';
         wait for 1 ns;
         clk <= '0';
         wait for 1 ns;
         i := i + 1;
      end loop;	
      wait;
   end process;

END;
