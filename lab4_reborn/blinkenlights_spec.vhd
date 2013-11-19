LIBRARY ieee;
use std.textio.all;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use ieee.std_logic_textio.all;
use ieee.std_logic_misc.all;

 
ENTITY blinkenlights_spec IS
END blinkenlights_spec;
 
ARCHITECTURE behavior OF blinkenlights_spec IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT blinkenlights
    generic (divider_ratio: natural := 2);
    PORT(
         clk : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         sbit : IN  std_logic;
         invOE : IN  std_logic;
         invCLR : IN  std_logic;
         data_in : IN  std_logic_vector(2 downto 0);
         lights : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal sbit : std_logic := '0';
   signal invOE : std_logic := '1';
   signal invCLR : std_logic := '1';
   signal data_in : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal lights : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clock_period : time := 200ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: blinkenlights
   generic map (divider_ratio => 2)
   PORT MAP (
          clk => clk,
          s0 => s0,
          s1 => s1,
          sbit => sbit,
          invOE => invOE,
          invCLR => invCLR,
          data_in => data_in,
          lights => lights
        );

   stim_proc: process
      file testFile : text open read_mode is "blinkenlights_spec_fixtures.txt";
	   variable bufferLine : line;
      variable outputBuf : line;
	   variable inLine : std_logic_vector (7 downto 0);
	   variable outLine: std_logic_vector (6 downto 0);
      variable check_response : std_logic;
   begin
      wait for 100 ns;
		while not endfile(testFile)
	  	loop
			readline(testFile, bufferLine);
			read(bufferLine, inLine);
         readline(testFile, bufferLine);
			read(bufferLine, outLine);
         
         CLK <= '0';
         wait for clock_period/4;
         data_in(2 downto 0) <= inLine(7 downto 5);
         s0 <= inLine(4);
         s1 <= inLine(3);
         sbit <= inLine(2);
         invOE <= inLine(1);
         invCLR <= inLine(0);
         check_response := outLine(6);
         wait for clock_period/4;
         CLK <= '1';
			wait for clock_period/4;
         
         write(outputBuf, string'("In = "));
         write(outputBuf, std_logic_vector'(inLine));
         
         if check_response = '1' then
            write(outputBuf, string'(", expected = "));
         else
            write(outputBuf, string'(", expected (not checked) = "));
         end if;
            write(outputBuf, std_logic_vector'(outLine(5 downto 0)));
			
         write(outputBuf, string'(", actual = "));
         write(outputBuf, std_logic_vector'(lights));
         writeline(output, outputBuf);
         
         if check_response = '1' then
            assert ( (lights(5) = outLine(5)) and
                     (lights(4) = outLine(4)) and
                     (lights(3) = outLine(3)) and
                     (lights(2) = outLine(2)) and
                     (lights(1) = outLine(1)) and
                     (lights(0) = outLine(0))
                    )
               report "Spec failed!"
               severity failure;
         end if;

         wait for clock_period/4;
		end loop;
      wait;
   end process;

END;
