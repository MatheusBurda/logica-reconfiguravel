library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CountOnesIf is
    port (
        clk		: in std_logic;
        input  : in std_logic_vector(3 downto 0);
        count  : out std_logic_vector(2 downto 0)
    );
end CountOnesIf;

architecture arch_CountOnesIf of CountOnesIf is
    signal count_sig : integer range 0 to 4 := 0;
begin

	process(clk)
	begin
		if clk'event and clk='1' then
			if input = "0000" then
				count_sig <= 0;
                elsif input = "0001" then
                count_sig <= 1;
                elsif input = "0010" then
                count_sig <= 1;
                elsif input = "0011" then
                count_sig <= 2;
                elsif input = "0100" then
                count_sig <= 1;
                elsif input = "0101" then
                count_sig <= 2;
                elsif input = "0110" then
                count_sig <= 2;
                elsif input = "0111" then
                count_sig <= 3;
                elsif input = "1000" then
                count_sig <= 1;
                elsif input = "1001" then
                count_sig <= 2;
                elsif input = "1010" then
                count_sig <= 2;
                elsif input = "1011" then
                count_sig <= 3;
                elsif input = "1100" then
                count_sig <= 2;
                elsif input = "1101" then
                count_sig <= 3;
                elsif input = "1110" then
                count_sig <= 3;
                elsif input = "1111" then
                count_sig <= 4;
                else
                    count_sig <= 0;
            end if;
        end if;
    end process;
    
    count <= std_logic_vector(to_unsigned(count_sig, 3));
    
end arch_CountOnesIf;
