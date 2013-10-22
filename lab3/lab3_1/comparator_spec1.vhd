--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:18:26 10/22/2013
-- Design Name:   
-- Module Name:   D:/work/Projects/labs_vhdl/lab3/lab3_1/comparator_spec1.vhd
-- Project Name:  lab3_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator1
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
 
ENTITY comparator_spec1 IS
END comparator_spec1;
 
ARCHITECTURE behavior OF comparator_spec1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator1
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         aeqb : OUT  std_logic;
         agtb : OUT  std_logic;
         altb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (0 => '1', others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal aeqb : std_logic;
   signal agtb : std_logic;
   signal altb : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator1 PORT MAP (
          a => a,
          b => b,
          aeqb => aeqb,
          agtb => agtb,
          altb => altb
        );

   stim_proc: process
      file testFile : text open read_mode is "comparator1_spec1_fixtures.txt";
	   variable bufferLine : line;
	   variable inLine : std_logic_vector (7 downto 0);
	   variable outLine: std_logic_vector (2 downto 0);
   begin		
		while not endfile(testFile)
	  	loop
			readline(testFile, bufferLine);
			read(bufferLine, inLine);
			read(bufferLine, outLine);

			a <= inLine(7 downto 4);
			b <= inLine(3 downto 0);
			
			wait for 10 ns;
			
			assert aeqb = outLine(2) and altb = outLine(1) and agtb = outLine(0)
         report "Fail!"
         severity error;
		end loop;
      wait;
   end process; 
END;
