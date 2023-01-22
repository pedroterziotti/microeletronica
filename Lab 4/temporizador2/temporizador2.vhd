
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity temporizador2 is

	Port (pauseBTN: in std_logic;
			clk: in std_logic;
			rst: in std_logic;
			
			ANODO: out std_logic_vector(3 downto 0);
			ssd: out std_logic_vector(6 downto 0));

end temporizador2;

architecture Behavioral of temporizador2 is
signal pause: std_logic:='0';
shared variable d3,d2,d1,d0: integer range 0 to 9;

begin

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
	
	counter: process(clk, rst,pause)
		variable ticks: integer;
		constant ticks_to_second: integer := 12500000;
	begin

		if(rst ='1' or (d3=1 and d0 =1)) then
			ticks:=0;
			d3:=0;
			d2:=0;
			d1 :=0;
			d0 :=0;
		elsif (rising_edge(clk) and pause ='0') then
			ticks:= ticks +1;
			if( ticks>ticks_to_second) then
			ticks:=0;
			d0:= d0+1;
			if (d0>9) then
				d0:=0;
				d1:=d1+1;
				if (d1>9) then
					d1:=0;
					d2:=d2+1;
					if(d2>9) then
						d2:=0;
						d3:=d3+1;
						if (d3>9) then
							d3:=0;
						end if;
					end if;
				end if;
			end if;
		end if;
		end if;
	end process;
	
	SSDs: process(clk)
		variable display: natural range 0 to 3;
		variable valor: natural range 0 to 9;
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

