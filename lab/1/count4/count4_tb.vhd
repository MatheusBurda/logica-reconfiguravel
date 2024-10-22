Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont4_tb is
end entity;

architecture cont4_tb_arch of cont4_tb is

signal clk : std_logic;
signal rst : std_logic;
signal q   : std_logic_vector(3 downto 0);
signal en  : std_logic;
signal clr : std_logic;

component count4 is
	PORT(
		RST: in std_logic;
		CLK: in std_logic;
		Q: out std_logic_vector(3 downto 0);
		EN: in std_logic;
		CLR: in std_logic
	);
end component;  

begin
	count_4: count4 port map
	  (RST => rst,
		CLK => clk,
		Q   => q,
		EN  => en,
		CLR => clr
	);
	
--    CLK: sinal quadrado com THigt = 10 ns, TLow =10 nsc
process
begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process;	

--	    RST: nível alto de 0 a 15 ns,
process
begin
	rst <= '1';
	wait for 15 ns;
	rst <= '0';
	wait;
end process;	

--     EN:  Alto de 0 a 185 ns Baixo no restante 
process
begin
	en <= '1';
	wait for 185 ns;
	en <= '0';
	wait;
end process;
	
--     CLR: Alto de 75 ns a 95 ns e de 125 a 145 ns Baixo no restante 
process
begin
	clr <= '0';
	wait for 75 ns;
	clr <= '1';
	wait for 20 ns;
	clr <= '0';
	wait for 30 ns;
	clr <= '1';
	wait for 20 ns;
	clr <= '0';
	wait;
end process;

end architecture;