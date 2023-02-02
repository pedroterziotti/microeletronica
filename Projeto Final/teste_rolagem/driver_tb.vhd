--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:21 02/01/2023
-- Design Name:   
-- Module Name:   /home/pedrot/Desktop/microeletronica/Projeto Final/teste_rolagem/driver_tb.vhd
-- Project Name:  teste_rolagem
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SSD_COMPONENT
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
 
ENTITY driver_tb IS
END driver_tb;
 
ARCHITECTURE behavior OF driver_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SSD_COMPONENT
    PORT(
         caracter : IN  CHARACTER;
         saida : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal caracter : character := '0';

 	--Outputs
   signal saida : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SSD_COMPONENT PORT MAP (
          caracter => caracter,
          saida => saida
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		caracter <= 'A';

      -- insert stimulus here 

      wait;
   end process;

END;
