
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

entity proj1 is
    Port ( SW1 : in  STD_LOGIC;
           SW2 : in  STD_LOGIC;
           LD0 : out  STD_LOGIC);
end proj1;

architecture Behavioral of proj1 is

begin

LD0 <= SW1 and SW2;

end Behavioral;

