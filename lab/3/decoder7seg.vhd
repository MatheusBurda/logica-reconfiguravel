library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity decoder_7seg is
    port (
        input  : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(6 downto 0)
    );
end entity decoder_7seg;


architecture decoder_7seg_arch of decoder_7seg is

begin

	output <= 
		"0000001" when input="0000" else  -- '0'
		"1001111" when input="0001" else  -- '1'
		"0010010" when input="0010" else  -- '2'
		"0000110" when input="0011" else  -- '3'
		"1001100" when input="0100" else  -- '4'
		"0100100" when input="0101" else  -- '5'
		"0100000" when input="0110" else  -- '6'
		"0001111" when input="0111" else  -- '7'
		"0000000" when input="1000" else  -- '8'
		"0000100" when input="1001" else  -- '9'
		"0001000" when input="1010" else  -- 'A'
		"1100000" when input="1011" else  -- 'b'
		"0110001" when input="1100" else  -- 'C'
		"1000010" when input="1101" else  -- 'd'
		"0110000" when input="1110" else  -- 'E'
		"0111000" when input="1111" else  -- 'F'
		"XXXXXXX";

end architecture decoder_7seg_arch;
