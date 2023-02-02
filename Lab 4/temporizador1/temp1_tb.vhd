LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY temp1_tb IS
END temp1_tb;
 
ARCHITECTURE behavior OF temp1_tb IS 
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
   uut: temporizador1 PORT MAP (
          clk => clk,
          rst => rst,
          pauseBTN => pauseBTN,
          ANODO => ANODO,
          ssd => ssd
        );
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
