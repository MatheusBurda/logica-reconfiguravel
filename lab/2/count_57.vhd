Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity count_57 is
   PORT(
		RST  : in std_logic;
		CLK  : in std_logic;
		CLR  : in std_logic;
		EN   : in std_logic;
		Q1_U : out std_logic_vector(3 downto 0);
		Q2_D : out std_logic_vector(3 downto 0)
  );
end entity;


architecture count_57_arch of count_57  is

	signal en1  : std_logic;
	signal q1u  : std_logic_vector(3 downto 0);
	signal clr1 : std_logic;
	signal ld1  : std_logic;
	signal load1: std_logic_vector(3 downto 0) := ("0010");

	signal en2  : std_logic;
	signal q2d  : std_logic_vector(3 downto 0);
	signal clr2 : std_logic;
	signal ld2  : std_logic;
	signal load2: std_logic_vector(3 downto 0):= ("0001");

	component count4 is
		PORT(
			RST  : in std_logic;
			CLK  : in std_logic;
			EN   : in std_logic;
			CLR  : in std_logic;
			Q    : out std_logic_vector(3 downto 0);
			LD   : in std_logic;
			LOAD : in std_logic_vector(3 downto 0)
		);
	end component;


begin
	
	-- Unit counter
	count1: count4 port map(
		RST => RST,
		CLK => CLK,
		EN  => en1,
		CLR => clr1,
		LD  => ld1,
		LOAD=> load1,
		Q   => q1u
	);
	
	-- Tens counter
	count2: count4 port map(
		RST => RST,
		CLK => CLK,
		EN  => en2,
		CLR => clr2,
		LD  => ld2,
		LOAD=> load2,
		Q   => q2d
	);
	
	ld1 <= '1' when RST = '1' or (q2d = "0110" and q1u = "1000") or CLR = '1' else '0';
	ld2 <= '1' when RST = '1' or (q2d = "0110" and q1u = "1000") or CLR = '1' else '0';
	
	en1 <= '1' when EN = '1' else '0';
	en2 <= '1' when q1u = "1001" or ld2 = '1' else '0';
	
	clr1 <= '1' when q1u = "1001" else '0';
	clr2 <= '0';
	
	Q1_U <= q1u;
	Q2_D <= q2d;
	
end architecture;
