
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY reg_mux_tb IS
END reg_mux_tb;
 
ARCHITECTURE behavior OF reg_mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_mux
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic_vector(3 downto 0);
         d : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         x : OUT  std_logic_vector(3 downto 0);
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := "0010";
   signal b : std_logic_vector(3 downto 0) := "0100";
   signal c : std_logic_vector(3 downto 0) := "0110";
   signal d : std_logic_vector(3 downto 0) := "1000";
   signal sel : std_logic_vector(1 downto 0) := "00";
   signal clk : std_logic := '0';

 	--Outputs
   signal x : std_logic_vector(3 downto 0);
   signal y : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_mux PORT MAP (
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
	clk <= not clk after 40ns;
	a <="0011" after 80ns, "0000" after 640ns;
	b <= "0101" after 240ns;
	c<= "0111" after 400ns;
	d<= "1001" after 560ns;
	sel <= "01" after 160ns,
			"10" after 320ns,
			"11" after 480ns,
			"00" after 640ns;
	
	
	
	
END;
