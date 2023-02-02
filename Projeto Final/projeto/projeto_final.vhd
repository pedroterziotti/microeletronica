library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity projeto_final is
	Port(
			sel: in std_logic;
			pause: in std_logic;
			rst: in std_logic;
			clk: in std_logic;
			
			--vga
			ANODO: out std_logic_vector(3 downto 0);
			ssd: OUT std_logic_vector(6 downto 0)
	);


end projeto_final;

architecture Behavioral of projeto_final is

constant message_inicio : string := "    SELECIONE O TEMPO PEDRO E GIOVANA";
constant message_fim : string := "    TEMPO ESGOTADO PEDRO E GIOVANA";

TYPE state is (inicio,selecionar,contagem,pause,contagem_final,mensagem_final,idle);
signal currentState, nextState: state; 

begin


end Behavioral;

