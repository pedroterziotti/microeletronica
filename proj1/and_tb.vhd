--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:35 11/17/2022
-- Design Name:   
-- Module Name:   /home/pedrot/Desktop/Micro/proj1/and_tb.vhd
-- Project Name:  proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: proj1
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
 
ENTITY and_tb IS
END and_tb;
 
ARCHITECTURE behavior OF and_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT proj1
    PORT(
         SW1 : IN  std_logic;
         SW2 : IN  std_logic;
         LD0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SW1 : std_logic := '0';
   signal SW2 : std_logic := '0';

 	--Outputs
   signal LD0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: proj1 PORT MAP (
          SW1 => SW1,
          SW2 => SW2,
          LD0 => LD0
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		SW1 <= '1';
      wait for 100 ns;	
		SW1 <= '0';
		SW2 <='1';
      wait for 100 ns;	
		SW1 <='1';
		wait;
   end process;


END;
