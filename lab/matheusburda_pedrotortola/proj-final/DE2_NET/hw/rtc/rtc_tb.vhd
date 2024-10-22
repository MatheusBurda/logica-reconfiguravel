library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rtc_tb is
end entity rtc_tb;

architecture tb of rtc_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component rtc is
        port(
            CLK         : IN  std_logic;
            RST         : IN  std_logic;
            EN          : IN  std_logic;
            Q_HOUR_TENS : OUT std_logic_vector(3 downto 0);
            Q_HOUR_UNI  : OUT std_logic_vector(3 downto 0);
            Q_MIN_TENS  : OUT std_logic_vector(3 downto 0);
            Q_MIN_UNI   : OUT std_logic_vector(3 downto 0);
            Q_SEC_TENS  : OUT std_logic_vector(3 downto 0);
            Q_SEC_UNI   : OUT std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal CLK         : std_logic := '0';
    signal RST         : std_logic := '0';
    signal EN          : std_logic := '0';
    signal Q_HOUR_TENS : std_logic_vector(3 downto 0);
    signal Q_HOUR_UNI  : std_logic_vector(3 downto 0);
    signal Q_MIN_TENS  : std_logic_vector(3 downto 0);
    signal Q_MIN_UNI   : std_logic_vector(3 downto 0);
    signal Q_SEC_TENS  : std_logic_vector(3 downto 0);
    signal Q_SEC_UNI   : std_logic_vector(3 downto 0);

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: rtc
        port map (
            CLK         => CLK,
            RST         => RST,
            EN          => EN,
            Q_HOUR_TENS => Q_HOUR_TENS,
            Q_HOUR_UNI  => Q_HOUR_UNI,
            Q_MIN_TENS  => Q_MIN_TENS,
            Q_MIN_UNI   => Q_MIN_UNI,
            Q_SEC_TENS  => Q_SEC_TENS,
            Q_SEC_UNI   => Q_SEC_UNI
        );

    -- Clock process definitions
    CLK_process :process
    begin
        CLK <= '0';
        wait for CLK_PERIOD/2;
        CLK <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin        
        -- hold reset state for 20 ns.
        wait for 20 ns;  
        RST <= '1';
        wait for 20 ns;
        RST <= '0';
        wait for 20 ns;

        -- Enable the RTC
        EN <= '1';
        
        -- Finish the simulation
        wait;
    end process;

end architecture;
