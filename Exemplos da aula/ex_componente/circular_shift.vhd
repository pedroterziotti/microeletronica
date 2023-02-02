
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circular_shift is
    Port ( clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           q : buffer  STD_LOGIC_VECTOR (3 downto 0));
end circular_shift;

architecture Behavioral of circular_shift is

component mux is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           x : out  STD_LOGIC);
end component;

component flipflop is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;

SIGNAL i: std_logic_vector(0 to 3);

begin

mux1: mux port map(q(3),d(0), load, i(0));
mux2: mux port map(q(2),d(1), load, i(1));
mux3: mux port map(q(1),d(2), load, i(2));
mux4: mux port map(q(0),d(3), load, i(3));


dff1: flipflop port map(clk,i(0), q(0));
dff2: flipflop port map(clk,i(1), q(1));
dff3: flipflop port map(clk,i(2), q(2));
dff4: flipflop port map(clk,i(3), q(3));



end Behavioral;

