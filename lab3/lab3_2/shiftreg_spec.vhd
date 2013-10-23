--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:51:03 10/22/2013
-- Design Name:   
-- Module Name:   D:/work/Projects/labs_vhdl/lab3/lab3_2/shiftreg_spec.vhd
-- Project Name:  lab3_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shiftreg
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
use std.textio.all;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use ieee.std_logic_textio.all;
use ieee.std_logic_misc.all;
 
ENTITY shiftreg_spec IS
END shiftreg_spec;
 
ARCHITECTURE behavior OF shiftreg_spec IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shiftreg
    PORT(
         CLK : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         SR : IN  std_logic;
         SL : IN  std_logic;
         invOE1 : IN  std_logic;
         invOE2 : IN  std_logic;
         invCLR : IN  std_logic;
         Q : INOUT  std_logic_vector(7 downto 0);
         Qa : OUT  std_logic;
         Qh : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal CLK : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal SR : std_logic := '0';
   signal SL : std_logic := '0';
   signal invOE1 : std_logic := '0';
   signal invOE2 : std_logic := '0';
   signal invCLR : std_logic := '0';

	--BiDirs
   signal Q : std_logic_vector(7 downto 0);

 	--Outputs
   signal Qa : std_logic;
   signal Qh : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shiftreg PORT MAP (
          CLK => CLK,
          S0 => S0,
          S1 => S1,
          SR => SR,
          SL => SL,
          invOE1 => invOE1,
          invOE2 => invOE2,
          invCLR => invCLR,
          Q => Q,
          Qa => Qa,
          Qh => Qh
        );
 
   stim_proc: process
      file testFile : text open read_mode is "shiftreg_spec_fixtures.txt";
	   variable bufferLine : line;
      variable outputBuf : line;
	   variable inLine : std_logic_vector (14 downto 0);
	   variable outLine: std_logic_vector (9 downto 0);
   begin		
		while not endfile(testFile)
	  	loop
			readline(testFile, bufferLine);
			read(bufferLine, inLine);
         readline(testFile, bufferLine);
			read(bufferLine, outLine);
         
         CLK <= '0';
         Q <= inLine(14 downto 7);
         S0 <= inLine(6);
         S1 <= inLine(5);
         SR <= inLine(4);
         SL <= inLine(3);
         invOE1 <= inLine(2);
         invOE2 <= inLine(1);
         invCLR <= inLine(0);
         wait for 5 ns;
         CLK <= '1';
			wait for 5 ns;
         
         write(outputBuf, string'("In = "));
         write(outputBuf, std_logic_vector'(inLine));
         write(outputBuf, string'(", expected = "));
         write(outputBuf, std_logic_vector'(outLine));
			write(outputBuf, string'(", actual = "));
         write(outputBuf, std_logic_vector'(Q & Qa & Qh));
         writeline(output, outputBuf);
         
			assert ( (Q(7) = outLine(9)) and
                  (Q(6) = outLine(8)) and
                  (Q(5) = outLine(7)) and
                  (Q(4) = outLine(6)) and
                  (Q(3) = outLine(5)) and
                  (Q(2) = outLine(4)) and
                  (Q(1) = outLine(3)) and
                  (Q(0) = outLine(2)) and
                  (Qa = outLine(1)) and
                  (Qh = outLine(0)) )
         report "Spec failed!"
         severity failure;
         
         wait for 5 ns;
		end loop;
      wait;
   end process;
END;
