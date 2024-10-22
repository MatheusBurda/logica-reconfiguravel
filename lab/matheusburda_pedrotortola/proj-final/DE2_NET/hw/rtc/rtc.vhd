library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rtc is
	port(   
		CLK			: IN  std_logic;
		RST			: IN  std_logic;
		EN			: IN  std_logic;
		LD			: IN  std_logic;
		LD_HOUR_T	: IN  std_logic_vector(3 downto 0);
		LD_HOUR_U	: IN  std_logic_vector(3 downto 0);
		LD_MIN_T	: IN  std_logic_vector(3 downto 0);
		LD_MIN_U	: IN  std_logic_vector(3 downto 0);
		LD_SEC_T	: IN  std_logic_vector(3 downto 0);
		LD_SEC_U	: IN  std_logic_vector(3 downto 0);
		Q_HOUR_TENS	: OUT std_logic_vector(3 downto 0);
		Q_HOUR_UNI	: OUT std_logic_vector(3 downto 0);
		Q_MIN_TENS	: OUT std_logic_vector(3 downto 0);
		Q_MIN_UNI	: OUT std_logic_vector(3 downto 0);
		Q_SEC_TENS	: OUT std_logic_vector(3 downto 0);
		Q_SEC_UNI	: OUT std_logic_vector(3 downto 0)
    );
end entity;

architecture a_rtc of rtc is
	component count60 is
		port( 
			RST:  					IN  std_logic;
			CLK:  					IN  std_logic;
			EN:   					IN  std_logic;
			LD:						IN  std_logic;
			TENS_LOAD, UNI_LOAD:	IN  std_logic_vector(3 downto 0);
			TENS_OUT, UNI_OUT:		OUT std_logic_vector(3 downto 0)
		);
	 end component;

	 component count24 is
		port( 
			RST:  					IN  std_logic;
			CLK:  					IN  std_logic;
			EN:   					IN  std_logic;
			LD:						IN  std_logic;
			TENS_LOAD, UNI_LOAD:	IN  std_logic_vector(3 downto 0);
			TENS_OUT, UNI_OUT:		OUT std_logic_vector(3 downto 0)
		);
	 end component;
	 
	component clk_1s is
		port( 
			CLK		: in std_logic;
			CLK_OUT	: out std_logic
		);
	end component;

	signal clock	: std_logic;
	signal hour_en	: std_logic;
	signal min_en	: std_logic;
	signal load		: std_logic := '0';
	signal loads	: std_logic_vector(3 downto 0) := "0000";
	signal q_min_tens_s: std_logic_vector(3 downto 0);
	signal q_min_uni_s: std_logic_vector(3 downto 0);
	signal q_seg_tens_s: std_logic_vector(3 downto 0);
	signal q_seg_uni_s: std_logic_vector(3 downto 0);

begin

	clk_pm: clk_1s port map(
		CLK 	=> CLK,
		CLK_OUT => clock
	);

	hour_pm: count24 port map(
		RST  		=> RST,
		CLK  		=> clock,
		EN   		=> hour_en,
		LD 			=> LD,
		TENS_LOAD 	=> LD_HOUR_T,
		UNI_LOAD 	=> LD_HOUR_U,
		TENS_OUT 	=> Q_HOUR_TENS,
		UNI_OUT 	=> Q_HOUR_UNI
	);

	mins_pm: count60 port map(
		RST  		=> RST,
		CLK  		=> clock,
		EN   		=> min_en,
		LD 			=> LD,
		TENS_LOAD 	=> LD_MIN_T,
		UNI_LOAD 	=> LD_MIN_U,
		TENS_OUT 	=> q_min_tens_s,
		UNI_OUT 	=> q_min_uni_s
	);

	sec_pm: count60 port map(
		RST  		=> RST,
		CLK  		=> clock,
		EN   		=> EN,
		LD 			=> LD,
		TENS_LOAD 	=> LD_SEC_T,
		UNI_LOAD 	=> LD_SEC_U,
		TENS_OUT 	=> q_seg_tens_s,
		UNI_OUT 	=> q_seg_uni_s
	);
	
	hour_en <= '1' when q_min_tens_s = "0101" and q_min_uni_s = "1001" and min_en = '1' and EN = '1' else '0';
	min_en  <= '1' when (q_seg_tens_s = "0101" and q_seg_uni_s = "1001" and EN = '1') else '0';
	
	Q_MIN_TENS <= q_min_tens_s;
	Q_MIN_UNI  <= q_min_uni_s;
	Q_SEC_TENS <= q_seg_tens_s;
	Q_SEC_UNI  <= q_seg_uni_s;

end architecture;

 