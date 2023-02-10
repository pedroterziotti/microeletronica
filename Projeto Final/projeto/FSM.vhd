--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package FSM is

	FUNCTION Inicio(clk: std_logic) return string ( 1 to 4);

end FSM;

package body FSM is

	FUNCTION Inicio(clk: std_logic) return string ( 1 to 4) is
		variable ticks: integer :=0;
		variable index: integer :=1;
		variable message_inicio : string (1 to 37) := "    SELECIONE O TEMPO PEDRO E GIOVANA";
		variable message: string( 1 to 4);
		
	begin
		if (rising_edge(clk)) then
			ticks:= ticks +1;
			if( ticks>12_000_000) then
			ticks:=0;
			if( index>message_inicio'LENGTH) then
				index:=1;
			end if;
			message(3)= message_inicio(index);
			message(2):= message_inicio(index+1);
			message(1):= message_inicio(index+2);
			message(0):= message_inicio(index+3);
			index:= index+1;
			end if;
		end if;
		return message;
	end function;

 
end FSM;
