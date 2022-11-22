----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:01 11/18/2022 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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

entity demux is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O0 : out  STD_LOGIC;
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC;
           O3 : out  STD_LOGIC;
           O4 : out  STD_LOGIC;
           O5 : out  STD_LOGIC;
           O6 : out  STD_LOGIC;
           O7 : out  STD_LOGIC);
end demux;

architecture Behavioral of demux is
 --signal demux : STD_LOGIC;
begin

	O0 <= (NOT I2) and (NOT I1) and (NOT I0);
	O1 <= (NOT I2) and (NOT I1) and (I0);
	O2 <= (NOT I2) and (I1) and (NOT I0);
	O3 <= (NOT I2) and (I1) and (I0);
	O4 <= (I2) and (NOT I1) and (NOT I0);
	O5 <= (I2) and (NOT I1) and (I0);
	O6 <= (I2) and (I1) and (NOT I0);
	O7<= (I2) and (I1) and (I0);



end Behavioral;

