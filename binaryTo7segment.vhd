----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:36 11/21/2017 
-- Design Name: 
-- Module Name:    binaryTo7segment - Behavioral 
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

entity binaryTo7segment is
Port ( veriIN : in  STD_LOGIC_VECTOR (3 downto 0);
           outSegment : out  STD_LOGIC_VECTOR (6 downto 0));
end binaryTo7segment;

architecture Behavioral of binaryTo7segment is

begin
process(veriIN)
begin
case veriIN is 
      when "0000" => outSegment <="1000000";
      when "0001" => outSegment <="1111001";
      when "0010" => outSegment <="0100100";
		when "0011" => outSegment <="0110000";
		when "0100" => outSegment <="0011001";
		when "0101" => outSegment <="0010010";
		when "0110" => outSegment <="0000010";
		when "0111" => outSegment <="1111000";
		when "1000" => outSegment <="0000000";
	   when "1001" => outSegment <="0010000";
		when others => outSegment <="0000000";
end case;
end process;

end Behavioral;

