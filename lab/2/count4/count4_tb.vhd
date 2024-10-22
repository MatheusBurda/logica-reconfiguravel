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
signal ld  : std_logic;
signal load: std_logic_vector(3 downto 0);

component count4 is
	PORT(
		RST  : in std_logic;
		CLK  : in std_logic;
		Q    : out std_logic_vector(3 downto 0);
		EN   : in std_logic;
		CLR  : in std_logic;
		LD   : in std_logic;
		LOAD : in std_logic_vector(3 downto 0)
	);
end component;  

begin
	count_4: count4 port map
	  (RST => rst,
		CLK => clk,
		Q   => q,
		EN  => en,
		CLR => clr,
		LD  => ld,
		LOAD=> load
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
	wait for 15 ns;
	en <= '1';
	wait for 100 ns;
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

-- 	LD : High from [200, 215] and [250, 265]
process
begin
	ld <= '0';
	wait for 200 ns;
	ld <= '1';
	wait for 15 ns;
	ld <= '0';
	wait for 35 ns;
	ld <= '1';
	wait for 15 ns;
	ld <= '0';
	wait;
end process;

-- 	LOAD: high from [200, 300]
process
begin
	load <= "1110";
	wait for 200 ns;
	load <= "0011";
	wait for 50 ns;
	load <= "1010";
	wait;
end process;

end architecture;