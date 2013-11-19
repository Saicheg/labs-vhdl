LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY frekvensdeler_spec IS
END frekvensdeler_spec;
 
ARCHITECTURE behavior OF frekvensdeler_spec IS 
   constant test_ratio : natural := 5;

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
   
   signal tact_length : natural;
   
   -- Clock period definitions
   constant clk_period : time := 1ns;
   
   signal clocking : boolean := true;
 
BEGIN
   uut: frekvensdeler 
   generic map (
      ratio => test_ratio)
   PORT MAP (
          clk => clk,
          output => output
        );
        
   process
   begin
      wait for clk_period * 2;
      while clocking loop
         clk <= '1';
         wait for clk_period;
         clk <= '0';
         wait for clk_period;
      end loop;
   end process;

   -- Stimulus process
   stim_proc : process(clk)
      variable first_skipped : boolean := false;
      --variable tact_length : natural := 0;
      variable last_tact : std_logic := '0';
      variable tries : natural := 0;
   begin		
      if clk'event and clk = '0' then
         if last_tact = '0' and output = '1' then
            if not first_skipped then
               first_skipped := true;
            else
               tries := tries + 1;
               assert tact_length = test_ratio
                  report "Ratio is wrong!"
                  severity failure;                  
            end if;
            tact_length <= 1;
         else
            tact_length <= tact_length + 1;
         end if;
         last_tact := output;
      end if;
      if tries = 100 then
         clocking <= false;
      end if;
   end process;

END;
