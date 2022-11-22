--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:36:43 11/22/2022
-- Design Name:   
-- Module Name:   /home/pedrot/Desktop/Lab/bcd7/bcd7_tb.vhd
-- Project Name:  bcd7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd7
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
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY bcd7_tb IS
END bcd7_tb;
 
ARCHITECTURE behavior OF bcd7_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd7
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         O0 : OUT  std_logic;
         O1 : OUT  std_logic;
         O2 : OUT  std_logic;
         O3 : OUT  std_logic;
         O4 : OUT  std_logic;
         O5 : OUT  std_logic;
         O6 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal O0 : std_logic;
   signal O1 : std_logic;
   signal O2 : std_logic;
   signal O3 : std_logic;
   signal O4 : std_logic;
   signal O5 : std_logic;
   signal O6 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd7 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          O0 => O0,
          O1 => O1,
          O2 => O2,
          O3 => O3,
          O4 => O4,
          O5 => O5,
          O6 => O6
        );
	d <= not d after 10ns;
	c <= not c after 20ns;
	b <= not b after 40ns;
	a <= not a after 80ns;


		

END;
