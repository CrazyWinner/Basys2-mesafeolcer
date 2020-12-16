----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:22:23 11/21/2017 
-- Design Name: 
-- Module Name:    ledDriver - Behavioral 
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

entity ledDriver is
    Port ( dataIn1 : in  STD_LOGIC_VECTOR (3 downto 0);
           dataIn2 : in  STD_LOGIC_VECTOR (3 downto 0);
           dataIn3 : in  STD_LOGIC_VECTOR (3 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (3 downto 0);
           chipSelect : out  STD_LOGIC_VECTOR (3 downto 0);
           clkIn : in  STD_LOGIC);
end ledDriver;

architecture Behavioral of ledDriver is
signal sayac : integer range 0 to 10000 := 0;
signal hangisi : STD_LOGIC_VECTOR(3 downto 0) := "1110";
begin
process(clkIn) 
begin
if rising_edge(clkIn) then

if hangisi = "1110" then
sayac <= sayac + 1;
dataOut <= dataIn1;
if sayac = 9999 then
sayac <= 0; 
hangisi <= "1101";
end if;
end if;

if hangisi = "1101" then
sayac <= sayac + 1;
dataOut <= dataIn2;
if sayac = 9999 then
sayac <= 0; 
hangisi <= "1011";
end if;
end if;

if hangisi = "1011" then
sayac <= sayac + 1;
dataOut <= dataIn3;
if sayac = 9999 then
sayac <= 0; 
hangisi <= "1110";
end if;
end if;

end if;
end process;
chipSelect <= hangisi;
end Behavioral;

