Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont_57_tb is
end entity;

architecture cont_57_tb_arch of cont_57_tb is

signal clk : std_logic;
signal rst : std_logic;
signal en  : std_logic;
signal clr : std_logic;
signal q1u : std_logic_vector(3 downto 0);
signal q2d : std_logic_vector(3 downto 0);

component count_57 is
   PORT(
		RST  : in std_logic;
		CLK  : in std_logic;
		CLR  : in std_logic;
		EN   : in std_logic;
		Q1_U : out std_logic_vector(3 downto 0);
		Q2_D : out std_logic_vector(3 downto 0)
  );
end component;

begin
	c1: count_57 port map
	  (RST => rst,
		CLK => clk,
		EN  => en,
		CLR => clr,
		Q1_U => q1u,
		Q2_D => q2d
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

--     EN:  Alto de 0 a 1000 ns Baixo no restante 
process
begin
	en <= '1';
	wait for 1945 ns;
	en <= '0';
	wait;
	
end process;
	
--     CLR: Alto de 1900 ns a 1920 ns 
process
begin
	clr <= '0';
	wait for 1900 ns;
	clr <= '1';
	wait for 20 ns;
	clr <= '0';
	wait;
end process;


end architecture;