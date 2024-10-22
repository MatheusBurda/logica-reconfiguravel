library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CountOnesCaseWhen is
	port (
		clk		: in std_logic;
		input  : in std_logic_vector(3 downto 0);
		count  : out std_logic_vector(2 downto 0)
	);
end CountOnesCaseWhen;

architecture arch_CountOnesCaseWhen of CountOnesCaseWhen is
	signal count_sig : integer range 0 to 4 := 0;
begin

	process(clk)
	begin
		if clk'event and clk='1' then
			case input is
				when "0000" =>
					count_sig <= 0;
				when "0001" =>
					count_sig <= 1;
				when "0010" =>
					count_sig <= 1;
				when "0011" =>
					count_sig <= 2;
				when "0100" =>
					count_sig <= 1;
				when "0101" =>
					count_sig <= 2;
				when "0110" =>
					count_sig <= 2;
				when "0111" =>
					count_sig <= 3;
				when "1000" =>
					count_sig <= 1;
				when "1001" =>
					count_sig <= 2;
				when "1010" =>
					count_sig <= 2;
				when "1011" =>
					count_sig <= 3;
				when "1100" =>
					count_sig <= 2;
				when "1101" =>
					count_sig <= 3;
				when "1110" =>
					count_sig <= 3;
				when "1111" =>
					count_sig <= 4;
				when others =>
					count_sig <= 0;
			end case;
		end if;
	end process;
	
	count <= std_logic_vector(to_unsigned(count_sig, 3));
 
end arch_CountOnesCaseWhen;