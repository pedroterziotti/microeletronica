library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequential is
	Port(
		pause: in std_logic;
		dir: in std_logic;
		vel: in std_logic_vector(1 downto 0);
		rst: in std_logic;
		clk: in std_logic;
		ssd: out std_logic_vector(6 downto 0);
		ANODO: out std_logic_vector( 3 downto 0)
		
	);

end sequential;

architecture Behavioral of sequential is

type states is (A, AB, B, BC, C, CD, D, DE, E, EF,F,FA);

signal T1,T2: integer :=0;

signal ticks: integer :=0;
signal current_state, next_state : states := A;

begin
	ANODO<="1110";

	button_manager: process(clk, rst, pause)
		variable count : integer:=0;
	begin
	if(rst = '1') then
		current_state <= A;
	elsif(rising_edge(clk) and pause ='0' ) then
		count := count +1;
		if (count > ticks) then
			count :=0;
			current_state <= next_state;
		end if;
	end if;
	end process;

	vel_manager: process(vel)
	begin

			IF( vel = "00") then
				T1 <= 6000000; -- 6 simulação
				T2 <= 2000000; -- 2

			elsif( vel= "01") then 
				T1 <= 12000000; -- 12
				T2 <= 4000000; -- 4

			elsif(vel="10") then
				T1 <= 24000000; --24
				T2 <= 8000000; --8

			else
				T1 <= 48000000; --48
				T2 <= 16000000; --16 
			end if;
	end process;
	
	main: process( rst, current_state, next_state, dir, T1, T2)
	begin
		case current_state is
			when A =>
				ssd <="0111111";
				ticks <= T1;
					if( dir ='0') then next_state<= AB;
					else next_state <= FA;
					end if;
			when AB =>
				ssd <="0011111";
				ticks <= T2;
					if( dir ='0') then next_state<= B;
					else next_state <= A;
					end if;
			when B =>
				ssd <="1011111";
				ticks <= T1;
					if( dir ='0') then next_state<= BC;
					else next_state <= AB;
				end if;
			when BC =>
				ssd <="1001111";
				ticks <= T2;
					if( dir ='0') then next_state<= C;
					else next_state <= B;
					end if;
			when C =>
				ssd <="1101111";
				ticks <= T1;
					if( dir ='0') then next_state<= CD;
					else next_state <= BC;
					end if;
			when CD =>
				ssd <="1100111";
				ticks <= T2;
					if( dir ='0') then next_state<= D;
					else next_state <= C;
					end if;
			when D =>
				ssd <="1110111";
				ticks <= T1;
					if( dir ='0') then next_state<= DE;
					else next_state <= CD;
					end if;
			when DE =>
				ssd <="1110011";
				ticks <= T2;
					if( dir ='0') then next_state<= E;
					else next_state <= D;
					end if;
			when E =>
				ssd <="1111011";
				ticks <= T1;
					if( dir ='0') then next_state<= EF;
					else next_state <= DE;
					end if;
			when EF =>
				ssd <="1111001";
				ticks <= T2;
					if( dir ='0') then next_state<= F;
					else next_state <= E;
					end if;
			when F =>
				ssd <="1111101";
				ticks <= T1;
					if( dir ='0') then next_state<= FA;
					else next_state <= EF;
				end if;
			when FA =>
				ssd <="0111101";
				ticks <= T2;
					if( dir ='0') then next_state<= A;
					else next_state <= F;
					end if;
		end case;
	end process;
end Behavioral;

