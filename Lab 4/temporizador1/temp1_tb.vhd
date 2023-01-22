--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:44:43 01/22/2023
-- Design Name:   
-- Module Name:   /home/pedrot/Desktop/microeletronica/Lab 4/temporizador1/temp1_tb.vhd
-- Project Name:  temporizador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: temporizador1
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
 
ENTITY temp1_tb IS
END temp1_tb;
 
ARCHITECTURE behavior OF temp1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT temporizador1
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         pauseBTN : IN  std_logic;
         ANODO : OUT  std_logic_vector(3 downto 0);
         ssd : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal pauseBTN : std_logic := '0';

 	--Outputs
   signal ANODO : std_logic_vector(3 downto 0);
   signal ssd : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: temporizador1 PORT MAP (
          clk => clk,
          rst => rst,
          pauseBTN => pauseBTN,
          ANODO => ANODO,
          ssd => ssd
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait;
   end process;

END;
