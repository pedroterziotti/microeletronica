
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity contagem is

		Port (clk: in std_logic;
				sel: in std_logic;
				ss: in std_logic;
			   ANODO: out std_logic_vector(3 downto 0);
			saida: OUT std_logic_vector(6 downto 0));

end contagem;

architecture Behavioral of contagem is

	type counter is array (0 to 4) of integer;
	constant time_to_count: counter := (3 =>5, others =>5);
--	shared variable timer: counter := (others =>5);
	shared variable timer: integer:=9;
--	signal paused: std_logic :='0';
	
begin
	
--	process(clk,ss)
--		variable ticks: integer:= 0;
--	begin
--			if( rising_edge(clk)) then
--				if(ss ='1') then
--				ticks:= ticks+1;
--				if(ticks =10_000_000) then
--					paused <= not paused;
--					end if;
--				end if;
--			else
--				ticks :=0;
--			end if;
--	end process;
	
	process(clk)
		variable ticks: integer:=0;
		constant ticks_to_second: integer := 50_000_000;
	begin
--	if( rst ='1') then
--		ticks := 0;
--		timer := (others => 0);
	if (rising_edge(clk)) then
		ticks := ticks +1;
		if(ticks > ticks_to_second) then
			ticks:=0;
			if(timer /= 0) then
				timer:= timer-1;
			else
				timer:=9;
--				if(timer(1) /= 0) then
--					timer(1):= timer(1)-1;
--				else
--					timer(1):=5;
--					if(timer(2) /= 0) then
--						timer(2):= timer(2)-1;
--					else
--						timer(2):=9;
--						if (timer(3) /=0) then
--							timer(3):=timer(3)-1;
--						--else
--							--- trocar o estado
--						end if;
--					end if;
--				end if;
			end if;
		end if;
	end if;	
	end process;
	
	
	SSDs: process(clk)
		variable display: natural range 0 to 3;
		variable valor: natural;
		variable tick_update: integer;
	begin
		
		if (rising_edge(clk)) then
			tick_update :=tick_update +1;
			if( tick_update > 20000) then
			tick_update:=0;
			display :=display +1;
			case display is
				when 0 =>
						ANODO <= "1110";
						valor := timer;
				when 1 =>
						ANODO <= "1101";
						valor := timer;
				when 2 =>
						ANODO <= "1011";
						valor := timer;
				when 3 =>
						ANODO <= "0111";
						valor := timer;						
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

