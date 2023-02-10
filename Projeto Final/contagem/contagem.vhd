
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity contagem is

	Port( clk: in std_logic;
			ANODO: out std_logic_vector(3 downto 0);
			ssd: out std_logic_vector(6 downto 0)
			
	);

end contagem;

architecture Behavioral of contagem is

type int_vec is array (0 to 3) of integer;

shared variable t: int_vec:=(9,5,9,5);

begin


	process(clk)
	variable ticks: integer :=0;
	constant ticks_to_second: integer := 50_000_000;
	begin
		if(rising_edge(clk)) then
			ticks := ticks +1;
			if(ticks > ticks_to_second) then
				ticks :=0;
				if(t(0) >0) then
					t(0):=t(0)-1;
				else
					t(0):=9;
					if(t(1) >0) then
						t(1):=t(1) -1;
					else
						t(1):=5;
						if(t(2) >0) then
							t(2):=t(2)-1;
						else
							t(2):=9;
							if(t(3)>0) then
								t(3):= t(3)-1;
							else
								t(3) :=6;
								--- trocar estado
							end if;
						end if;
					end if;
				end if;

			end if;
		
		end if;
	
	end process;
	
		SSDs: process(clk)
		variable display: natural range 0 to 3;
		variable valor: natural;
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
						valor := t(0);
				when 1 =>
						ANODO <= "1101";
						valor := t(1);
				when 2 =>
						ANODO <= "1011";
						valor := t(2);
				when 3 =>
						ANODO <= "0111";
						valor := t(3);						
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

