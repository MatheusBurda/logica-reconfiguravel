library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity decoder7seg is
    port (
		INPUT  : IN  std_logic_vector(3 downto 0);
		OUTPUT : OUT std_logic_vector(6 downto 0)
    );
end entity decoder7seg;


architecture a_decoder7seg of decoder7seg is

begin
	OUTPUT <= 
		"0000001" when INPUT="0000" else  -- '0'
		"1001111" when INPUT="0001" else  -- '1'
		"0010010" when INPUT="0010" else  -- '2'
		"0000110" when INPUT="0011" else  -- '3'
		"1001100" when INPUT="0100" else  -- '4'
		"0100100" when INPUT="0101" else  -- '5'
		"0100000" when INPUT="0110" else  -- '6'
		"0001111" when INPUT="0111" else  -- '7'
		"0000000" when INPUT="1000" else  -- '8'
		"0000100" when INPUT="1001" else  -- '9'
		"0001000" when INPUT="1010" else  -- 'A'
		"1100000" when INPUT="1011" else  -- 'b'
		"0110001" when INPUT="1100" else  -- 'C'
		"1000010" when INPUT="1101" else  -- 'd'
		"0110000" when INPUT="1110" else  -- 'E'
		"0111000" when INPUT="1111" else  -- 'F'
		"XXXXXXX";

end architecture;
