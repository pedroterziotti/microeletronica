LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL;
 
ENTITY mini_ula_tb IS
END mini_ula_tb;
 
ARCHITECTURE behavior OF mini_ula_tb IS 
 
    COMPONENT circuito_aritimetico
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         opcode : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   signal cout : std_logic;
 
BEGIN
   uut: circuito_aritimetico PORT MAP (
          a => a,
          b => b,
          cin => cin,
          opcode => opcode,
          y => y,
          cout => cout
        );
   stim_proc: process
   begin		
		a <= "1100";
		b<= "0011";
      wait for 100 ns;	
		opcode <= "001";

      wait for 100 ns;	
		opcode <= "010";
		
		wait for 100 ns;	
		opcode <= "011";

		wait for 100 ns;	
		opcode <= "100";
		
      wait for 100 ns;	
		opcode <= "101";

      wait for 100 ns;	
		opcode <= "110";
		
		wait for 100 ns;	
		opcode <= "111";
      wait;
   end process;

END;
