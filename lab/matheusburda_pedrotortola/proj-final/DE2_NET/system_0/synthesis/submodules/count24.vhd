Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity count24 is 
    PORT(   
		RST:  					IN  std_logic;
		CLK:  					IN  std_logic;
		EN:   					IN  std_logic;
		LD:						IN  std_logic;
		TENS_LOAD, UNI_LOAD:	IN std_logic_vector(3 downto 0);
		TENS_OUT, UNI_OUT:	OUT std_logic_vector(3 downto 0)
    );
end entity;

architecture a_count24 of count24 is

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

SIGNAL tens_en, uni_clr, tens_clr		: std_logic;
SIGNAL tens_out_s, uni_out_s			: std_logic_vector(3 downto 0);
SIGNAL tens_ld, unit_ld					: std_logic_vector(3 downto 0);

begin

count_tens:count4 port map(
	RST  => RST,
	CLK  => CLK,
	EN   => tens_en,
	CLR  => tens_clr,
	Q    => tens_out_s,
	LD   => LD,
	LOAD => TENS_LOAD
);

count_unit:count4 port map(
	RST  => RST,
	CLK  => CLK,
	EN   => EN,
	CLR  => uni_clr,
	Q    => uni_out_s,
	LD   => LD,
	LOAD => UNI_LOAD
);

tens_en <= '1' when uni_out_s = "1001" and EN = '1' else '0';

uni_clr  <= '1' when (uni_out_s = "1001" or (uni_out_s = "0011" and tens_out_s = "0010")) and EN = '1' else '0';
tens_clr <= '1' when uni_out_s = "0011" and tens_out_s = "0010" and EN = '1' else '0';

TENS_OUT <= tens_out_s;
UNI_OUT  <= uni_out_s;

end Architecture;
