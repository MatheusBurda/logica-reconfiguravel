LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY top_rtc IS
PORT ( 
		clock, resetn : IN STD_LOGIC;
		chipselect    : IN STD_LOGIC;
		writedata     : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      	write_en      : IN STD_LOGIC;
		add           : IN STD_LOGIC;
      	read_en       : IN STD_LOGIC;
      	readdata      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END top_rtc;

ARCHITECTURE Y OF top_rtc IS

COMPONENT reg32
	PORT(
		clock  	: IN STD_LOGIC;
		resetn 	: IN STD_LOGIC;
		WE 	 	: IN STD_LOGIC;
		D 		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		Q 		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rtc
	PORT(   
		CLK			: IN  STD_LOGIC;
		RST			: IN  STD_LOGIC;
		EN			: IN  STD_LOGIC;
		LD			: IN  STD_LOGIC;
		ld_hour_t	: IN  STD_LOGIC_VECTOR(3 downto 0);
		ld_hour_u	: IN  STD_LOGIC_VECTOR(3 downto 0);
		ld_MIN_T	: IN  STD_LOGIC_VECTOR(3 downto 0);
		ld_MIN_U	: IN  STD_LOGIC_VECTOR(3 downto 0);
		ld_SEC_T	: IN  STD_LOGIC_VECTOR(3 downto 0);
		ld_SEC_U	: IN  STD_LOGIC_VECTOR(3 downto 0);
		q_HOUR_TENS	: OUT STD_LOGIC_VECTOR(3 downto 0);
		q_HOUR_UNI	: OUT STD_LOGIC_VECTOR(3 downto 0);
		q_MIN_TENS	: OUT STD_LOGIC_VECTOR(3 downto 0);
		q_MIN_UNI	: OUT STD_LOGIC_VECTOR(3 downto 0);
		q_SEC_TENS	: OUT STD_LOGIC_VECTOR(3 downto 0);
		q_SEC_UNI	: OUT STD_LOGIC_VECTOR(3 downto 0)
    );
END COMPONENT;

SIGNAL r32_0_out  : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL rst 			: STD_LOGIC;
SIGNAL write_enable	: STD_LOGIC;
SIGNAL read_enable	: STD_LOGIC;
SIGNAL rtc_load		: STD_LOGIC := '0';
SIGNAL rtc_enable	: STD_LOGIC := '1';

SIGNAL ld_hour_t 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL ld_hour_u 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL ld_min_T 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL ld_min_U 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL ld_sec_T 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL ld_sec_U 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 

SIGNAL q_hour_tens 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL q_hour_uni 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL q_min_tens 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL q_min_uni 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL q_sec_tens 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 
SIGNAL q_sec_uni 	: STD_LOGIC_VECTOR(3 downto 0) := "0000";	 

SIGNAL rtc_out		: STD_LOGIC_VECTOR(31 downto 0);

BEGIN
--		reg 0: INPUT FROM NIOS (32 bits)
--		XXXX  XXXX  HHHH hhhh  MMMM mmmm SSSS ssss
--		ssss -> [00-03]
--		SSSS -> [04-07]
--		mmmm -> [08-11]
--		MMMM -> [12-15]
--		hhhh -> [16-19]
--		HHHH -> [20-23]

	r32_0 : reg32
	PORT MAP (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      => write_enable,
		D 		=> writedata,
		Q 		=> r32_0_out
	);

	rtc_0: rtc
	PORT MAP (   
		CLK			=> clock,
		RST			=> rst,
		EN			=> rtc_enable,
		LD			=> rtc_load,
		LD_HOUR_T	=> ld_hour_t ,
		LD_HOUR_U	=> ld_hour_u ,
		LD_MIN_T	=> ld_min_t ,
		LD_MIN_U	=> ld_min_u ,
		LD_SEC_T	=> ld_sec_t ,
		LD_SEC_U	=> ld_sec_u ,
		Q_HOUR_TENS	=> q_hour_tens ,
		Q_HOUR_UNI	=> q_hour_uni ,
		Q_MIN_TENS	=> q_min_tens ,
		Q_MIN_UNI	=> q_min_uni ,
		Q_SEC_TENS	=> q_sec_tens ,
		Q_SEC_UNI	=> q_sec_uni 
	);

	rst 		 <= not resetn;
	write_enable <= write_en and chipselect and (not add);
	read_enable  <= read_en  and chipselect and (not add);
	-- rtc_load 	 <= write_en and chipselect and add;
	rtc_load 	 <= write_en and chipselect and add and writedata(0);
	
    -- ld_hour_t <= "0010"; 
    -- ld_hour_u <= "0011"; 
    -- ld_min_t  <= "0101"; 
    -- ld_min_u  <= "1000";  
    -- ld_sec_t  <= "0101";   
	-- ld_sec_u  <= "1000";   

    ld_hour_t <= r32_0_out(23 downto 20); 
    ld_hour_u <= r32_0_out(19 downto 16); 
    ld_min_t  <= r32_0_out(15 downto 12); 
    ld_min_u  <= r32_0_out(11 downto 8);  
    ld_sec_t  <= r32_0_out(7 downto 4);   
	ld_sec_u  <= r32_0_out(3 downto 0);   

	rtc_out(3 downto 0)   <= q_sec_uni;
	rtc_out(7 downto 4)   <= q_sec_tens;
	rtc_out(11 downto 8)  <= q_min_uni;
	rtc_out(15 downto 12) <= q_min_tens;
	rtc_out(19 downto 16) <= q_hour_uni;
	rtc_out(23 downto 20) <= q_hour_tens;
	rtc_out(31 downto 24) <= (others => '0');

	readdata <= rtc_out when read_enable = '1' else (others => 'Z');

END Y;