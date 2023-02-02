
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY sequential_tb IS
END sequential_tb;
 
ARCHITECTURE behavior OF sequential_tb IS 
 
    COMPONENT sequential
    PORT(
         pause : IN  std_logic;
         dir : IN  std_logic;
         vel : IN  std_logic_vector(1 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         ssd : OUT  std_logic_vector(6 downto 0);
         ANODO : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pause : std_logic := '0';
   signal dir : std_logic := '0';
   signal vel : std_logic_vector(1 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal ssd : std_logic_vector(6 downto 0);
   signal ANODO : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sequential PORT MAP (
          pause => pause,
          dir => dir,
          vel => vel,
          rst => rst,
          clk => clk,
          ssd => ssd,
          ANODO => ANODO
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
		vel <="00";
      pause <='0';
		rst<='0';
		WAIT for 1000 ns;
		vel <="10";
		WAIT for 1000 ns;
		pause<= '1';
		WAIT for 1000 ns;
		vel <="11";
		pause<='0';
		dir<='1';
		WAIT for 1000 ns;
		dir<='0';
		rst<='1';
		WAIT for 1000 ns;


   end process;

END;
