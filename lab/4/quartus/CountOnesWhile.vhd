library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CountOnesWhile is
	port (
		clk		: in std_logic;
		input  : in std_logic_vector(3 downto 0);
		count  : out std_logic_vector(2 downto 0)
	);
end CountOnesWhile;

architecture arch_CountOnesWhile of CountOnesWhile is

begin

	process(clk)
		variable count_var : integer range 0 to 4 := 0;
		variable i : integer := 0;
	begin
		if clk'event and clk='1' then
			count_var := 0;
			i := 0;
			while i < 4 loop
				if input(i) = '1' then
					count_var := count_var + 1;
				end if;
				i := i + 1;
			end loop;
			count <= std_logic_vector(to_unsigned(count_var, 3));
		end if;
	end process;
    
end arch_CountOnesWhile;