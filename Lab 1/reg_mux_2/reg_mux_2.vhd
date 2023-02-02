
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_mux_2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           x : out  STD_LOGIC;
           y : out  STD_LOGIC);
end reg_mux_2;

architecture Behavioral of reg_mux_2 is
 signal mux: STD_LOGIC;
begin

	mux <= a when sel ="00" else
				b when sel="01" else
				c when sel="10" else
				d;
	x<=mux;
	
	process (clk)
	begin
		if(clk'EVENT and clk='1') then
			y<=mux;
		end if;
	end process;



end Behavioral;

