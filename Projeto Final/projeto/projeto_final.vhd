library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity projeto_final is
	Port(
			sel: in std_logic;
			ss: in std_logic;
			rst: in std_logic;
			clk: in std_logic;
			
			--vga
			ANODO: out std_logic_vector(3 downto 0);
			ssd: OUT std_logic_vector(6 downto 0)
	);


end projeto_final;

architecture Behavioral of projeto_final is

shared variable message_fim : string (1 to 34) := "    TEMPO ESGOTADO PEDRO E GIOVANA";

component SSD_COMPONENT is

	Port(
		caracter : in character;
		saida : out std_logic_vector(6 downto 0)
	);
	
end component;

TYPE state is (inicio,selecionar,contagem,pause,contagem_final,mensagem_final,idle);

signal currentState, nextState: state:= inicio; 

shared variable a_exibir: string (1 to 4):="AAAA";
signal exibindo: character;

shared variable d3,d2,d1,d0: character;

begin


main: process(clk,currentState,nextState)

--	variable message_inicio : string (1 to 37) := "    SELECIONE O TEMPO PEDRO E GIOVANA";
--	variable ticks: integer :=0;
--	variable index: integer :=1;
		
begin
	
	case currentState is
	
		when inicio=>
			nextState <= selecionar;
		when selecionar=>
			nextState <= contagem;
		when contagem=>
			nextState <= pause;
		when pause=>
			nextState <= contagem_final;
		when contagem_final=>
			nextState <= mensagem_final;
		when mensagem_final=>
			nextState <= idle;
		when idle=>
			nextState <= inicio;
	end case;
end process;

INICIO_PROCESS: process(clk,currentState)
	variable ticks: integer :=0;
	variable index: integer :=1;
	variable message_inicio : string (1 to 37) := "    SELECIONE O TEMPO PEDRO E GIOVANA";

	begin
		if(currentState = inicio) then
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
		
			when '0' => ssd <= "0000001";
			when '1' => ssd<= "1001111";
			when '2' => ssd<= "0010010";
			when '3' => ssd<= "0000110";
			when '4' => ssd<= "1001100";
			when '5' => ssd<= "0100100";
			when '6' => ssd<= "0100000";
			when '7' => ssd<= "0001111";
			when '8' => ssd<= "0000000";
			when '9' => ssd<= "0000100";
			
			when 'A' => ssd<= "0001000";
			when 'L' => ssd<= "1110001";
			when 'O' => ssd<= "0000001";
			when ' ' => ssd<= "1111111";
			
			when 'R' => ssd<= "0010000";
			when 'V' => ssd<= "1000101";
			when 'N' => ssd<= "0001001";
			when 'G' => ssd<= "0100001";
			
			when 'E' => ssd<= "0110000";
			when 'P' => ssd<= "0011000";
			when 'C' => ssd<= "0110001";
			when 'T' => ssd<= "0111001";
			
			
			when 'M' => ssd<= "0010101";
			when 'D' => ssd<= "0000011";
			when 'S' => ssd<= "0100100";
			when 'I' => ssd<= NOT "0000110";
			
			when others => ssd <="1111111";
		
		end case;

		
	end process;

		
end Behavioral;


