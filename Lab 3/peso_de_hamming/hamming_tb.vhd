
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY hamming_tb IS
END hamming_tb;
 
ARCHITECTURE behavior OF hamming_tb IS 
 
    COMPONENT hamming
    PORT(
         vector_in : IN  std_logic_vector(7 downto 0);
         ssd : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal vector_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ssd : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hamming PORT MAP (
          vector_in => vector_in,
          ssd => ssd
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	
		vector_in <= "00000000"; 
      wait for 200 ns;	
		vector_in <= "00000001"; 
      wait for 200 ns;	
		vector_in <= "01111100"; 
      -- insert stimulus here 
      wait;
   end process;

END;
