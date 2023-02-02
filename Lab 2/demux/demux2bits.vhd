----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:53 11/22/2022 
-- Design Name: 
-- Module Name:    demux2bits - Behavioral 
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

entity demux2bits is
Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           O0 : out  STD_LOGIC;
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC;
           O3 : out  STD_LOGIC);


end demux2bits;

architecture Behavioral of demux2bits is

begin
	O0 <= (NOT I1) and (NOT I0);
	O1 <= (NOT I1) and (I0);
	O2 <= (I1) and (NOT I0);
	O3 <= (I1) and (I0);

end Behavioral;

