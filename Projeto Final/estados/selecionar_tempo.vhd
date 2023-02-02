
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity selecionar_tempo is

		Port (clk: in std_logic;
				sel: in std_logic;
				--ss: in std_logic;
			   ANODO: out std_logic_vector(3 downto 0);
			saida: OUT std_logic_vector(6 downto 0));

end selecionar_tempo;

architecture Behavioral of selecionar_tempo is

--signal pause: std_logic :='0';
shared variable numero: integer :=1;
begin

--	debounce: process(clk, ss,pause)
--		variable ticks: integer range 0 to 200000:= 0;
--	begin
--		if( rising_edge(clk)) then
--			if(ss ='1') then
--				ticks:= ticks+1;
--			
--				if(ticks >=100000) then
--					pause <= not pause;
--				end if;
--			else
--				ticks :=0;
--			end if;
--		end if;
--	end process;
	process(clk)
		variable ticks: integer:= 0;
	begin
			if( rising_edge(clk)) then
				if(sel ='1') then
				ticks:= ticks+1;
				if(ticks =10_000_000) then
					numero:= numero+1;
					if(numero >6) then
						numero := 0;
					end if;
				end if;
			else
				ticks :=0;
			end if;
		end if;
	end process;
	
	
	SSDs: process(clk)
		variable display: natural range 0 to 3;
		variable valor: natural range 0 to 12;
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
						valor := 0;
				when 1 =>
						ANODO <= "1101";
						valor := numero;
				when 2 =>
						ANODO <= "1011";
						valor := 11;
				when 3 =>
						ANODO <= "0111";
						valor := 11;						
			end case;
		end if;
		end if;
		
	case valor is
		when 0 => saida <= "0000001";
		when 1 => saida <= "1001111";
		when 2 => saida <= "0010010";
		when 3 => saida <= "0000110";
		when 4 => saida <= "1001100";
		when 5 => saida <= "0100100";
		when 6 => saida <= "0100000";
		when 7 => saida <= "0001111";
		when 8 => saida <= "0000000";
		when 9 => saida <= "0000100";
		when others => saida <="1111111";
	end case;
	
	end process;


end Behavioral;

