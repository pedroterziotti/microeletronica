----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:27 11/22/2022 
-- Design Name: 
-- Module Name:    bcd7 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
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

entity bcd7 is
Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  
           O0 : out  STD_LOGIC;
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC;
           O3 : out  STD_LOGIC;
           O4 : out  STD_LOGIC;
           O5 : out  STD_LOGIC;
           O6 : out  STD_LOGIC);

end bcd7;

architecture Behavioral of bcd7 is

begin
	O0<= a or c or (b and d) or ( (not b) and (not d));
	O1<= (not b) or ((not c) and (not d)) or (c and d);
	O2 <= b or (not c) or d;
	O3 <= a or ((not b) and ( not d)) or ((not b) and c) or (c and (not d)) or (b and (not c) and d);
	O4 <= ((not b) and (not d)) or (c or (not d));
	O5 <= a or (b and (not c)) or (b and (not D)) or ((not c) and (not d));
	O6 <= a or (b and (not c)) or ((not b) and c) or (c and (not d));

end Behavioral;

