Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont16 is 
    PORT(   
				RST:  IN  std_logic;
            CLK:  IN  std_logic;
            SAIDA:OUT std_logic_vector(3 downto 0);
            EN:   in std_logic;
            CLR:  in std_logic;
				LD:   in std_logic;
				LOAD: in std_logic_vector(3 downto 0)
    );
end entity;
Architecture a_cont16 of cont16 is
SIGNAL CONT: std_logic_vector(3 downto 0);
Begin
Process (CLK,RST)
    Begin
        if RST='1' then
            CONT <= "0000";
        elsif CLK' event and CLK = '1' then
            if CLR = '1' then
                CONT <= "0000";
            else
                if LD = '1' then
                    CONT <= LOAD;
					 elsif EN = '1' then
						  CONT <= std_logic_vector(unsigned(CONT) + 1);
                end if;
            end if;
        end if;
end process;
SAIDA<=CONT;
End Architecture;


