----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:44 11/27/2022 
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

Port ( D3 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D0 : in  STD_LOGIC;
			  ENABLE : in  STD_LOGIC;

           ANODO : out  STD_LOGIC_vector(3 downto 0);
			  
           A : out  STD_LOGIC;
           B : out  STD_LOGIC;
           C : out  STD_LOGIC;
           D : out  STD_LOGIC;
			  E: out  STD_LOGIC;
           F : out  STD_LOGIC;
           G : out  STD_LOGIC);




end bcd7E;

architecture Behavioral of bcd7E is

begin
ANODO <="1110";
		A<=(((NOT D3) AND (NOT D2) AND (NOT D1) AND D0) OR ((NOT D3) AND D2 AND (NOT D1) AND (NOT D0))) and ENABLE;
		B<=(((NOT D3) AND (D2) AND (NOT D1) AND D0) OR ((NOT D3) AND D2 AND D1 AND (NOT D0))) and Enable;
		C<=(((NOT D3) AND (NOT D2) AND D1 AND (NOT D0))) and Enable;
		D<= (((NOT D3) AND (NOT D2) AND (NOT D1) AND D0) OR ((NOT D3) AND D2 AND (NOT D1) AND (NOT D0)) OR ((NOT D3) AND D2 AND D1 AND (D0))) AND ENABLE;
		E<= ((((NOT D3) AND (NOT D2) AND (NOT D1) AND D0) OR ((NOT D3)AND (NOT D2) AND D1 AND D0) OR 
					((NOT D3) AND D2 AND( NOT D1) AND (NOT D0)) OR ((NOT D3) AND D2 AND (NOT D1) AND (D0)) OR
					((NOT D3) AND D2 AND D1 AND D0) OR (D3 AND (NOT D2) AND (NOT D1) AND D0))) AND ENABLE;
		F<= 	(((NOT D3) AND (NOT D2) AND (NOT D1) AND D0) OR ((NOT D3) AND (NOT D2) AND D1 AND (NOT D0)) OR 
				((NOT D3) AND (NOT D2) AND D1 AND D0) OR ((NOT D3) AND D2 AND D1 AND (D0))) AND ENABLE;
		G<= (((NOT D3) AND (NOT D2) AND (NOT D1) AND (nOT D0))OR ((NOT D3) AND (NOT D2) AND (NOT D1) AND D0) OR ((NOT D3) AND D2 AND D1 AND (D0))) AND ENABLE;


end Behavioral;

