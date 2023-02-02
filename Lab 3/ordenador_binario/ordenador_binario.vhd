library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ordenador_binario is
	GENERIC (N: NATURAL := 8);
	Port ( 	vector_in : in STD_LOGIC_VECTOR(N-1 downto 0);
				vector_out: out std_logic_vector(N-1 downto 0)
				);

end ordenador_binario;

architecture Behavioral of ordenador_binario is
	type valor is array (0 to N) of natural;
	signal soma: valor;

begin

	contador: for i in 1 to N generate
		soma(i) <= soma(i-1) +1 when (vector_in(i-1) ='1') else soma(i-1);
	end generate;

	construtor: for i in 0 to N-1 generate
		vector_out(i) <= '1' when (N - soma(N) <= i) else '0';
	end generate;

end Behavioral;

