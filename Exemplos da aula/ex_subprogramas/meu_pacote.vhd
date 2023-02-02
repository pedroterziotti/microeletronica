library IEEE;
use IEEE.STD_LOGIC_1164.all;

package meu_pacote is

	function sub(a: integer; b integer) return integer;
		procedure: min_max (a,b,c: in integer; 
								signal min, max: out integer) 

end meu_pacote;

package body meu_pacote is

	function sub(a: integer; b integer) return integer is
		variable s: integer range 0 to 15;
		begin
			s:= a-b;
			return s;
		end sub;
		
	procedure: min_max (a,b,c: in integer; 
								signal min, max: out integer) is
	begin
		if(a>=b) then
			if(a>c) then
				max<=a;
				if(b>=c) then
				min <= c;
				else min <=b;
				end if
			else
				max <=c;
				min <=b;
			end if;
		else
			if(b>=c) then
				max <=b;
				min <= c;
			else
				min<= a;
			end if;
			
		
	end
	
	
		
	
	
end meu_pacote;
