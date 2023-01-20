
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuito_aritimetico is
	GENERIC (N : NATURAL :=4);
	Port( a, b : in std_logic_vector(N-1 downto 0);
			cin: in std_logic;
			opcode: in std_logic_vector(2 downto 0);
			
			y: out std_logic_vector(N-1 downto 0);
			cout: out std_logic
			);

end circuito_aritimetico;

architecture Behavioral of circuito_aritimetico is

	SIGNAL UN_A, UN_B : UNSIGNED (N-1 DOWNTO 0);
	SIGNAL SN_A, SN_B : SIGNED (N-1 DOWNTO 0);
	SIGNAL UN_Y : UNSIGNED (N DOWNTO 0);
	SIGNAL SN_A: SIGNED (N DOWNTO 0);

begin



end Behavioral;

