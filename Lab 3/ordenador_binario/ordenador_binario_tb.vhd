LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY ordenador_binario_tb IS
END ordenador_binario_tb;
 
ARCHITECTURE behavior OF ordenador_binario_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ordenador_binario
    PORT(
         vector_in : IN  std_logic_vector(7 downto 0);
         vector_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal vector_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal vector_out : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ordenador_binario PORT MAP (
          vector_in => vector_in,
          vector_out => vector_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		vector_in <= "10001001";
		WAIT for 100 ns;
		vector_in <= "00011111";		
      wait;
   end process;

END;
