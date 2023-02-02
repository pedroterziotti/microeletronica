
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ex2function is

	Port( a : in std_logic_vector(7 downto 0);
			b : in std_logic_vector(7 downto 0);
			c : in std_logic_vector(7 downto 0);
			y : out std_logic_vector(7 downto 0));

end ex2function;

architecture Behavioral of ex2function is

function max( in1,in2,in3: std_logic_vector) return std_logic_vector is
begin
	assert(in1'LENGHT = in2'LENGHT and in1'LENGHT = in3'LENGHT)
		report "Sinais de tamanhos diferentes"
		severity failure;
		
		if(in1>=in2 and in1 >=in3) then
			return in1;
		elsif(in2>= in1 and in2 >=in3) then
			return in2;
		else 
			return in3;
		end if;
	
end max;

begin

	y<= max(a,b,c);

end Behavioral;

