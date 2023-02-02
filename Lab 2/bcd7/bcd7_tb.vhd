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
         D3 : IN  std_logic;
         D2 : IN  std_logic;
         D1 : IN  std_logic;
         D0 : IN  std_logic;
         A : OUT  std_logic;
         B : OUT  std_logic;
         C : OUT  std_logic;
         D : OUT  std_logic;
         E : OUT  std_logic;
         F : OUT  std_logic;
         G : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D3 : std_logic := '0';
   signal D2 : std_logic := '0';
   signal D1 : std_logic := '0';
   signal D0 : std_logic := '0';

 	--Outputs
   signal A : std_logic;
   signal B : std_logic;
   signal C : std_logic;
   signal D : std_logic;
   signal E : std_logic;
   signal F : std_logic;
   signal G : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd7 PORT MAP (
          D3 => D3,
          D2 => D2,
          D1 => D1,
          D0 => D0,
          A => A,
          B => B,
				C	=> C,
          D => D,
          E => E,
          F => F,
          G => G
        );
	D0 <= not D0 after 10ns;
	D1 <= not D1 after 20ns;
	D2 <= not D2 after 40ns;
	D3 <= not D3 after 80ns;


		

END;
