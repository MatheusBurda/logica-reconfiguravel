library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity clk_1s is
port ( 
	CLK		: in std_logic;
	CLK_OUT	: out std_logic
);

end entity;
 
architecture a_clk_1s of clk_1s is

signal count 	: integer := 1;
signal tmp 		: std_logic := '0';
 
begin
	 
	process(CLK)
	begin
		if(CLK'event and CLK='1') then
			count <= count + 1;
			if (count = 50000000/2) then
				tmp <= NOT tmp;
				count <= 0;
			end if;
		end if;
	end process;

 	CLK_OUT <= tmp;
	
end architecture;