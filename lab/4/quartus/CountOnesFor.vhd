Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CountOnesFor is
    port (
		clk		: in std_logic;
        input 	: in std_logic_vector(3 downto 0);
        count 	: out std_logic_vector(2 downto 0)
    );
end CountOnesFor;

architecture arch_CountOnesFor of CountOnesFor is

begin

	process(clk)
		-- variable count_var : integer range 0 to 4 := 0;
		variable count_var : std_logic_vector(2 downto 0) := "000";
	begin
		if clk'event and clk='1' then
			count_var := "000";
			 for i in 0 to 3 loop
				if input(i) = '1' then
					count_var := std_logic_vector(unsigned(count_var)+1);
				end if;
			end loop;
			count <= count_var;
		end if;
	end process;
	 
end arch_CountOnesFor;