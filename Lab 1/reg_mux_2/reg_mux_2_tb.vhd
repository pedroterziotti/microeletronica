
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY reg_mux_2_tb IS
END reg_mux_2_tb;
 
ARCHITECTURE behavior OF reg_mux_2_tb IS 
    COMPONENT reg_mux_2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         x : OUT  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := "00";
   signal clk : std_logic := '0';

 	--Outputs
   signal x : std_logic;
   signal y : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_mux_2 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          sel => sel,
          clk => clk,
          x => x,
          y => y
        );

   -- Clock process definitions
	clk <= NOT clk after 40ns;
	a <= '1' after 80ns, '0' after 160ns;
	b <= '1' after 240ns, '0' after 320ns;
	c <= '1' after 400ns, '0' after 480ns;
	d <= '1' after 560ns, '0' after 640ns;
	
	sel<= "01" after 150ns,
			"10" after 300ns,
			"11" after 450ns,
			"00" after 600ns;

END;
