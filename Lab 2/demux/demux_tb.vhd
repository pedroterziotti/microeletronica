--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:22:58 11/18/2022
-- Design Name:   
-- Module Name:   /home/pedrot/Desktop/Micro/demux/demux_tb.vhd
-- Project Name:  demux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux
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
 
ENTITY demux_tb IS
END demux_tb;
 
ARCHITECTURE behavior OF demux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         O0 : OUT  std_logic;
         O1 : OUT  std_logic;
         O2 : OUT  std_logic;
         O3 : OUT  std_logic;
         O4 : OUT  std_logic;
         O5 : OUT  std_logic;
         O6 : OUT  std_logic;
         O7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';

 	--Outputs
   signal O0 : std_logic;
   signal O1 : std_logic;
   signal O2 : std_logic;
   signal O3 : std_logic;
   signal O4 : std_logic;
   signal O5 : std_logic;
   signal O6 : std_logic;
   signal O7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          O0 => O0,
          O1 => O1,
          O2 => O2,
          O3 => O3,
          O4 => O4,
          O5 => O5,
          O6 => O6,
          O7 => O7
        );
	I0 <= NOT I0 after 10ns;
	I1 <= not I1 after 20ns;
	I2 <= not I2 after 40ns;
	
	


END;
