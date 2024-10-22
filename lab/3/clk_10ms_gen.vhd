library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity clk_10ms is
port ( 
	clk	: in std_logic;
	clk_out: out std_logic
);

end entity;
 
architecture clk_10ms_arch of clk_10ms is

signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
	 
	process(clk)
	begin
		if(clk'event and clk='1') then
			count <= count+1;
			if (count = 50000000/2) then
				tmp <= NOT tmp;
				count <= 0;
			end if;
		end if;
	end process;

 	clk_out <= tmp;
	
end architecture;