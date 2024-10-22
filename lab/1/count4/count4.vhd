Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity count4 is
   PORT(
		RST  : in std_logic;
		CLK  : in std_logic;
		EN   : in std_logic;
		CLR  : in std_logic;
		Q    : out std_logic_vector(3 downto 0)
	);
end entity;

architecture count4_arch of count4  is
signal COUNT: std_logic_vector (3 downto 0);
begin
	process (CLK, RST)
		begin
		if (RST = '1') then
			COUNT <= "0000";
		elsif (CLK'event and CLK = '1') then
			if (CLR = '1') then
				COUNT <= "0000";
			elsif (EN = '1') then
					COUNT <= std_logic_vector(unsigned(COUNT)+1);
			end if;
		end if;
	end process;
	
	Q <= COUNT;
	
end architecture;