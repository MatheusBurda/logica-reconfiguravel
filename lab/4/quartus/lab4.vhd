Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab4 is
	port (
		RST			: in std_logic;
		CLK 		: in std_logic;
		input		: in std_logic_vector(3 downto 0);
		count_for 	: out std_logic_vector(2 downto 0);
		count_while : out std_logic_vector(2 downto 0);
		count_case  : out std_logic_vector(2 downto 0);
		count_if 	: out std_logic_vector(2 downto 0);
		count_sum	: out std_logic_vector(2 downto 0)
	);
end lab4;

architecture arch_lab4 of lab4 is

-------------------------------------
--   	  COMPONENT DEFINITIONS
-------------------------------------
	component CountOnesFor is
		port (
			clk		: in std_logic;
			input 	: in std_logic_vector(3 downto 0);
			count 	: out std_logic_vector(2 downto 0)
		);
	end component;

	component CountOnesWhile is
		port (
			clk		: in std_logic;
			input 	: in std_logic_vector(3 downto 0);
			count 	: out std_logic_vector(2 downto 0)
		);
	end component;

	component CountOnesCaseWhen is
		port (
			clk		: in std_logic;
			input 	: in std_logic_vector(3 downto 0);
			count 	: out std_logic_vector(2 downto 0)
		);
	end component;

	component CountOnesIf is
		port (
			clk		: in std_logic;
			input 	: in std_logic_vector(3 downto 0);
			count 	: out std_logic_vector(2 downto 0)
		);
	end component;

	component CountOnesSum is
		port (
			clk		: in std_logic;
			input 	: in std_logic_vector(3 downto 0);
			count 	: out std_logic_vector(2 downto 0)
		);
	end component;


begin
-------------------------------------
--      PORT MAP DEFINITIONS
-------------------------------------
	c_for: CountOnesFor port map (
		clk   => CLK,
		input => input,
		count => count_for
	);

	c_while: CountOnesWhile port map (
		clk   => CLK,
		input => input,
		count => count_while
	);

	c_case_when: CountOnesCaseWhen port map (
		clk   => CLK,
		input => input,
		count => count_case
	);

	c_if: CountOnesIf port map (
		clk   => CLK,
		input => input,
      	count => count_if
	);

	c_sum: CountOnesSum port map (
		clk   => CLK,
		input => input,
		count => count_sum
	);

end arch_lab4;

