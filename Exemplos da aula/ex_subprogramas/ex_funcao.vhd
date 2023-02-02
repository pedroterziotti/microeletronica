
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.meu_pacote.all;


entity ex_funcao is
Port ( a_in: in integer range 0 to 15;
		b_in: in integer range 0 to 15;
		a_out_soma: out integer 0 to 15;
		a_out_sub: out integer 0 to 15);

end ex_funcao;

architecture Behavioral of ex_funcao is

function soma (a: integer; b: integer) return integer is 
	variable s: integer range 0 to 15;
	begin
		s:= a+b;
		return s;
end soma;


begin
	a_out_soma <= (a_in,b_in);
	a_out_sub <= (a_in,b_in);
end Behavioral;

