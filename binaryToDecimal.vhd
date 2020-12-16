----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:48 11/21/2017 
-- Design Name: 
-- Module Name:    binaryToDecimal - Behavioral 
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

entity binaryToDecimal is
    Port ( dataIn : in  STD_LOGIC_VECTOR (8 downto 0);
           dataOut1 : out  STD_LOGIC_VECTOR (3 downto 0);
           dataOut2 : out  STD_LOGIC_VECTOR (3 downto 0);
           dataOut3 : out  STD_LOGIC_VECTOR (3 downto 0);
           clkIn : in  STD_LOGIC;
           clkOut : out  STD_LOGIC);
end binaryToDecimal;

architecture Behavioral of binaryToDecimal is
signal sayi : integer range 0 to 1000 := 0;
signal birler : integer range 0 to 9 := 0;
signal onlar : integer range 0 to 9 := 0;
signal yuzler : integer range 0 to 9 := 0;
signal yaz1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal yaz2 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal yaz3 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal I : integer range 0 to 1000 := 0;
begin
process(clkIn)
begin
if(rising_edge(clkIn)) then
 sayi <= to_integer(unsigned(dataIn));

 if birler = 9 then
  birler <= 0; 
   if onlar = 9 then
  onlar <= 0; 
   if yuzler = 9 then
  yuzler <= 0; 
  
 else
  yuzler <= yuzler + 1 ;
 end if; 
 else
  onlar <= onlar + 1 ;
 end if; 
 else
  birler <= birler + 1 ;
 end if; 
 I <= I + 1;
 
if I = sayi then 
I <= 0;
birler <= 0;
onlar <= 0;
yuzler <= 0;
yaz1 <= std_logic_vector(to_unsigned(birler,4));
yaz2 <= std_logic_vector(to_unsigned(onlar,4));
yaz3 <= std_logic_vector(to_unsigned(yuzler,4));
end if;
end if;
end process;
dataOut1 <= yaz1;
dataOut2 <= yaz2;
dataOut3 <= yaz3;
clkOut <= clkIn;
end Behavioral;
