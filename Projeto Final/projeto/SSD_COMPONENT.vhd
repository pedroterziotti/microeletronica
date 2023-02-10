-----------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SSD_COMPONENT is

	Port(
		caracter : in character;
		saida : out std_logic_vector(6 downto 0)
	);
	
end SSD_COMPONENT;

architecture Behavioral of SSD_COMPONENT is

begin

process(caracter)
	begin
		case caracter is
		
			when '0' => saida <= "0000001";
			when '1' => saida <= "1001111";
			when '2' => saida <= "0010010";
			when '3' => saida <= "0000110";
			when '4' => saida <= "1001100";
			when '5' => saida <= "0100100";
			when '6' => saida <= "0100000";
			when '7' => saida <= "0001111";
			when '8' => saida <= "0000000";
			when '9' => saida<= "0000100";
			
			when 'A' => saida<= "0001000";
			when 'L' => saida<= "1110001";
			when 'O' => saida<= "0000001";
			when ' ' => saida<= "1111111";
			
			when 'R' => saida<= "0100000";
			when 'V' => saida<= "1000100";
			when 'N' => saida<= "0001001";
			when 'G' => saida<= "0100001";
			
			when 'E' => saida<= "0110000";
			when 'P' => saida<= "0011000";
			when 'C' => saida<= "0110001";
			when 'T' => saida<= "0111001";
			
			
			when 'M' => saida<= "0010101";
			when 'D' => saida<= "0000011";
			when 'S' => saida<= "0100100";
			when 'I' => saida<= "0000110";
			
			when others => saida <="1111111";
		
		end case;
		
	end process;


end Behavioral;

