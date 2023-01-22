----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--- Clock é 50Mhz, então precisamos de 50M ticks pra um segundo

entity temporizador1 is

	Port ( 	clk :in std_logic;
				rst: in std_logic;
				pauseBTN: in std_logic;
				ANODO :out std_logic_vector(3 downto 0);
				
				ssd: out std_logic_vector(6 downto 0));
				

end temporizador1;

architecture Behavioral of temporizador1 is

signal pause: std_logic:='0';

begin
	-- ligar o display
	
	debounce: process(clk, pauseBTN)
		variable ticks: integer range 0 to 200000:= 0;
	begin
		if( rising_edge(clk)) then
			if(pauseBTN ='1') then
				ticks:= ticks+1;
			
				if(ticks >=100000) then
					pause <= not pause;
				end if;
			else
				ticks :=0;
			end if;
		end if;
	end process;
	
	main: process(clk,rst,pause)
	
	variable ticks: integer;
	variable display: integer range 0 to 9 :=0;
	constant ticks_to_second: integer :=50;--- 50_000_000; -- 50_000_000 pra normal
	
	begin
	if(rst ='1') then
		display :=0;
		ticks:=0;
	END IF;
	
	if (clk'EVENT and clk='1' and pause='0') then --borda de subida
		ticks := ticks +1;
		if(ticks >= ticks_to_second) then
			ticks := 0;
			display := display +1;
			if(display>9) then
				display :=0;
			end if;
		end if;
	end if;
	
	case display is
		when 0 => ssd <= "0000001";
		when 1 => ssd <= "1001111";
		when 2 => ssd <= "0010010";
		when 3 => ssd <= "0000110";
		when 4 => ssd <= "1001100";
		when 5 => ssd <= "0100100";
		when 6 => ssd <= "0100000";
		when 7 => ssd <= "0001111";
		when 8 => ssd <= "0000000";
		when 9 => ssd <= "0000100";
		when others => ssd <="1111111";
	end case;
	
	end process;

end Behavioral;

