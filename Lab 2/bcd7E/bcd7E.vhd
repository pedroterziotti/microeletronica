----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:13 11/22/2022 
-- Design Name: 
-- Module Name:    bcd7E - Behavioral 
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

entity bcd7E is
Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  
			  E: in STD_LOGIC;
			  
           O0 : out  STD_LOGIC;--A
           O1 : out  STD_LOGIC;--B
           O2 : out  STD_LOGIC;--c
           O3 : out  STD_LOGIC;--d
           O4 : out  STD_LOGIC;--e
           O5 : out  STD_LOGIC;--f
           O6 : out  STD_LOGIC--g
			  );

end bcd7E;

architecture Behavioral of bcd7E is

begin
 O0<= (a or c or (b and d) or ( (not b) and (not d))) and E;
	O1<= ((not b) or ((not c) and (not d)) or (c and d)) and E;
	O2 <= (b or (not c) or d) and E;
	O3 <= (a or ((not b) and ( not d)) or ((not b) and c) or (c and (not d)) or (b and (not c) and d)) and E;
	O4 <= (((not b) and (not d)) or (c or (not d))) and E;
	O5 <= (a or (b and (not c)) or (b and (not D)) or ((not c) and (not d))) and E;
	O6 <= (a or (b and (not c)) or ((not b) and c) or (c and (not d))) and E;

end Behavioral;

