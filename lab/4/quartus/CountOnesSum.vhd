library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CountOnesSum is
    port (
        clk		: in std_logic;
        input  : in std_logic_vector(3 downto 0);
        count  : out std_logic_vector(2 downto 0)
    );
end CountOnesSum;

architecture arch_CountOnesSum of CountOnesSum is
    signal count_sig : integer range 0 to 4 := 0;
begin

	process(clk)
	begin
		if clk'event and clk='1' then
            count_sig <= to_integer(unsigned(input(0 downto 0))) 
                        + to_integer(unsigned(input(1 downto 1))) 
                        + to_integer(unsigned(input(2 downto 2))) 
                        + to_integer(unsigned(input(3 downto 3)));
        end if;
    end process;
    
    count <= std_logic_vector(to_unsigned(count_sig, 3));
    
end arch_CountOnesSum;
