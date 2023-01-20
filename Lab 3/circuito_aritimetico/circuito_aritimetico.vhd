
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity circuito_aritimetico is
	GENERIC (N : NATURAL :=4);
	Port( a, b : in std_logic_vector(N-1 downto 0);
			cin: in std_logic;
			opcode: in std_logic_vector(2 downto 0);
			
			y: out std_logic_vector(N-1 downto 0);
			cout: out std_logic
			);

end circuito_aritimetico;

architecture Behavioral of circuito_aritimetico is

	SIGNAL UN_A, UN_B : UNSIGNED (N DOWNTO 0);
	SIGNAL SN_A, SN_B : SIGNED (N DOWNTO 0);
	SIGNAL UN_Y : UNSIGNED (N DOWNTO 0);
	SIGNAL SN_Y: SIGNED (N DOWNTO 0);


begin

UN_A <= '0' & unsigned(a);
UN_B <= '0' & unsigned(b);
SN_A <= '0' & SIGNED (A);
SN_B <= '0' &SIGNED (B);

UN_Y <= UN_A + UN_B WHEN opcode ="000" else
			UN_A - UN_B WHEN opcode="001" else
			uN_B -UN_A WHEN opcode="010" else
			UN_A + UN_B +  cin) WHEN opcode="011";
			
SN_Y <= SN_A + SN_B WHEN opcode ="100" else
			SN_A - SN_B WHEN opcode="101" else
			SN_B -SN_A WHEN opcode="110" else
			SN_A + SN_B + ('0' & cin) WHEN opcode="111";

Y<= STD_LOGIC_VECTOR( UN_Y(N-1

end Behavioral;

