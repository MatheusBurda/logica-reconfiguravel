library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity clk_10ms_gen is
port ( 
	enable: in std_logic;
	clk_1ms: out std_logic
);

end clk_10ms_gen;
 
architecture clk_10ms_gen_arch of clk_10ms_gen is
 
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
	 
	process(enable)
	begin
		if(enable'event and enable='1') then
			count <=count+1;
			if (count = 50000000/20000) then
				tmp <= NOT tmp;
				count <= 1;
			end if;
		end if;
	end process;

 	clk_1ms <= tmp;
	
end architecture;