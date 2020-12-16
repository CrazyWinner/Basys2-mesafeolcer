----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:54 11/21/2017 
-- Design Name: 
-- Module Name:    anaModul - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity anaModul is
    Port ( echoPin : in  STD_LOGIC;
           trigPin : out  STD_LOGIC;
           degerOut : out  STD_LOGIC_VECTOR (8 downto 0);
			  ledOut : out  STD_LOGIC_VECTOR (7 downto 0);
           clkIn : in  STD_LOGIC;
           clkOut : out  STD_LOGIC);
end anaModul;

architecture Behavioral of anaModul is
signal adim : integer range 0 to 4 := 0;
signal sayac : integer range 0 to 25000000 := 0;
signal mesafe : integer range 0 to 25000000 := 0;
signal yazilacak : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal trigYaz : STD_LOGIC := '0';
signal sayac2 : integer range 0 to 50000000 := 0;
begin
process(clkIn)
begin
if rising_edge(clkIn) then
-- sonsuz dongu

-- ilk adim 10microsaniye boyunca trigger pinine 1 yaz

if adim = 0 then
ledOut <= "00000001";
if sayac = 500 then 
trigYaz <= '1';
sayac <=0;
adim <= 1; 
else
trigYaz <= '0';
sayac <= sayac + 1;
end if;
end if;

-- ikinci adim echo pinini bekle
if adim = 1 then
ledOut <= "00000010";
if echoPin = '1' then 
adim <= 2;
sayac <= 0;
else
end if;
end if;

-- ucuncu adim gelen sinyal suresini olc
if adim = 2 then 
ledOut <= "00000100";
if echoPin = '1' then 
sayac <= sayac + 1;
else 
adim <= 3;
end if;

end if;

-- dorduncu adim olculen degeri yaz formul = microsaniye/58 fakat sayac 1 mikrosaniyede 50 kere artiyor
-- yani deger = microsaniye / 2900 fakat 2 nin kati olmasý gerekiyor bolmenin
-- deger = microsaniye * 3 / 8192
if adim = 3 then
ledOut <= "00001000";
mesafe <= sayac * 3 / 8192;
yazilacak <= std_logic_vector(to_unsigned(mesafe, 9));
sayac <= 0;
adim <= 4;
end if;

-- besinci adim 60 ms bekle
if adim = 4 then
ledOut <= "00010000";
if sayac = 3000000 then
sayac <= 0;
adim <= 0;
else
sayac <= sayac + 1;
end if;
end if;

end if;
end process;

degerOut <= yazilacak;
trigPin <= trigYaz;
clkOut <= clkIn;

end Behavioral;

