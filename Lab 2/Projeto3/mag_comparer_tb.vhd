--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:04:18 11/26/2022
-- Design Name:   
-- Module Name:   /home/pedrot/Desktop/microeletronica/Lab 2/Projeto3/mag_comparer_tb.vhd
-- Project Name:  Projeto3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mag_comparer
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
 
ENTITY mag_comparer_tb IS
END mag_comparer_tb;
 
ARCHITECTURE behavior OF mag_comparer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mag_comparer
    PORT(
         A1 : IN  std_logic;
         A0 : IN  std_logic;
         B1 : IN  std_logic;
         B0 : IN  std_logic;
         equals : OUT  std_logic;
         a_larger_b : OUT  std_logic;
         b_larger_a : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic := '0';
   signal A0 : std_logic := '0';
   signal B1 : std_logic := '0';
   signal B0 : std_logic := '0';

 	--Outputs
   signal equals : std_logic;
   signal a_larger_b : std_logic;
   signal b_larger_a : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mag_comparer PORT MAP (
          A1 => A1,
          A0 => A0,
          B1 => B1,
          B0 => B0,
          equals => equals,
          a_larger_b => a_larger_b,
          b_larger_a => b_larger_a
        );
	B0<= NOT B0 AFTER 10ns;
	B1<= not B1 after 20ns;
	A0 <= not A0 after 40ns;
	A1 <= not A1 after 80ns;
	

END;
