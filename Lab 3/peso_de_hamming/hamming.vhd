----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:08:34 01/22/2023 
-- Design Name: 
-- Module Name:    hamming - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hamming is
GENERIC (N: NATURAL :=8);
	Port( vector_in : in STD_LOGIC_VECTOR(N-1 downto 0);
			ssd: out std_logic_vector(6 downto 0)
			);
end hamming;

architecture Behavioral of hamming is

	TYPE valor is array (0 to N) of natural;
	signal soma: valor;

begin
	soma(0) <= 0;
	myloop: for i in 1 to N generate
		soma(i) <= soma(i-1)+1 WHEN vector_in(i-1)='1' else soma(i-1);
	end generate;
	
	
ssd <= 	"0000001" when soma(N) = 0 else
			"1001111" when soma(N) = 1 else
			"0010010" when soma(N) = 2 else
			"0000110" when soma(N) = 3 else
			"1001100" when soma(N) = 4 else
			"0100100" when soma(N) = 5 else
			"0100000" when soma(N) = 6 else
			"0001111" when soma(N) = 7 else
			"0000000" when soma(N) = 8 else
			"0000100" when soma(N) = 9 else
			"1111111";



end Behavioral;

