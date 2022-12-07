----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:41 11/26/2022 
-- Design Name: 
-- Module Name:    mag_comparer - Behavioral 
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


entity mag_comparer is
    Port ( A1 : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           equals : out  STD_LOGIC;
           a_larger_b : out  STD_LOGIC;
           b_larger_a : out  STD_LOGIC);
end mag_comparer;

architecture Behavioral of mag_comparer is

begin

		equals <= 	((not A1) AND (NOT A0) AND (NOT B1) AND (NOT B0)) or
						( (NOT A1) AND (A0) AND (NOT B1) AND (B0)  ) or
						( (A1) AND (NOT A0) AND B1 AND (NOT B0) ) or
						( A1 AND A0 AND B1 AND B0  );
						
		a_larger_b <= ( (NOT A1) and (A0) and (NOT B1) and (NOT B0) ) or
							( (A1) and (NOT A0) and (NOT B1) and (NOT B0) ) or
							( (A1) and (NOT A0) and (NOT B1) and (B0) ) or
							( (A1) and (A0) and (NOT B1) and (NOT B0) ) or
							( (A1) and (A0) and (NOT B1) and (B0) ) or
							( (A1) and (A0) and (B1) and (NOT B0) );
							
		b_larger_a <= 	( (NOT A1) and (NOT A0) and (NOT B1) and (B0) ) or
							( (NOT A1) and (NOT A0) and (B1 ) and (NOT B0) ) or
							( (NOT A1) and (A0) and (B1) and (NOT B0) ) or
							( (NOT A1) and (NOT A0) and (B1 ) and (B0) ) or
							( (NOT A1) and (A0) and (B1) and (B0) ) or
							( (A1) and (NOT A0) and (B1) and (B0) );


end Behavioral;

