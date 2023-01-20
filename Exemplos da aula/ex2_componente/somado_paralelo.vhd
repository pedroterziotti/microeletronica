----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:51 01/20/2023 
-- Design Name: 
-- Module Name:    somado_paralelo - Behavioral 
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

entity somado_paralelo is
	GENERIC(N: INTEGER:=4);
    Port ( a : in  STD_LOGIC_VECTOR (N-1 downto 0);
           b : in  STD_LOGIC_VECTOR (N-1 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (N-1 downto 0);
           cout : out  STD_LOGIC);
end somado_paralelo;

architecture Behavioral of somado_paralelo is

component somador_complexo is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           soma : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal carry: std_logic_vector(N downto 0);

begin
carry(0) <= cin;

gen_adder: for i in a'range generate
	FA: somador_complexo port map( a(i),b(i), carry(i), s(i), carry(i+1));
end generate;

end Behavioral;

