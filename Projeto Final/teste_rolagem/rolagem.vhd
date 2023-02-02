
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity rolagem is

	Port(	
			clk: in std_logic;
			ANODO: out std_logic_vector(3 downto 0);
			saida: OUT std_logic_vector(6 downto 0));
			

end rolagem;

architecture Behavioral of rolagem is

	shared variable d3,d2,d1,d0: character;
	signal indexs: integer:=0;
begin

	process(clk)
	variable ticks: integer :=0;
	variable index: integer :=1;
	variable message_inicio : string (1 to 37) := "    SELECIONE O TEMPO PEDRO E GIOVANA";

	begin
		if (rising_edge(clk)) then
			ticks:= ticks +1;
			if( ticks>12_000_000) then
			ticks:=0;
			if( index>message_inicio'LENGTH) then
				index:=1;
			end if;
			d3:= message_inicio(index);
			d2:= message_inicio(index+1);
			d1:= message_inicio(index+2);
			d0:= message_inicio(index+3);
			index:= index+1;
			end if;
		end if;

	end process;

	
	SSDs: process(clk)
		variable display: natural range 0 to 3;
		variable valor: character;
		variable tick_update: integer range 0 to 20_000;
	begin
		
		if (rising_edge(clk)) then
			tick_update :=tick_update +1;
			if( tick_update > 20000) then
			tick_update:=0;
			display :=display +1;
			case display is
				when 0 =>
						ANODO <= "1110";
						valor := d0;
				when 1 =>
						ANODO <= "1101";
						valor := d1;
				when 2 =>
						ANODO <= "1011";
						valor := d2;
				when 3 =>
						ANODO <= "0111";
						valor := d3;						
			end case;
		end if;
		end if;
		
		case valor is
		
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
			
			when 'R' => saida<= "0010000";
			when 'V' => saida<= "1000101";
			when 'N' => saida<= "0001001";
			when 'G' => saida<= "0100001";
			
			when 'E' => saida<= "0110000";
			when 'P' => saida<= "0011000";
			when 'C' => saida<= "0110001";
			when 'T' => saida<= "0111001";
			
			
			when 'M' => saida<= "0010101";
			when 'D' => saida<= "0000011";
			when 'S' => saida<= "0100100";
			when 'I' => saida<= NOT "0000110";
			
			when others => saida <="1111111";
		
		end case;

		
	end process;
end Behavioral;

