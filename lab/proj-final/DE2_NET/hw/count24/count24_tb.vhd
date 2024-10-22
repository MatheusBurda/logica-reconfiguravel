library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity count24_tb is
end entity count24_tb;

architecture tb of count24_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component count24 is
        PORT(
            RST        : IN  std_logic;
            CLK        : IN  std_logic;
            EN         : IN  std_logic;
            LD          : IN  std_logic;
            TENS_LOAD  : IN  std_logic_vector(3 downto 0);
            UNI_LOAD   : IN  std_logic_vector(3 downto 0);
            TENS_OUT   : OUT std_logic_vector(3 downto 0);
            UNI_OUT    : OUT std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal RST        : std_logic := '0';
    signal CLK        : std_logic := '0';
    signal EN         : std_logic := '0';
    signal LOAD       : std_logic := '0';
    signal TENS_LOAD  : std_logic_vector(3 downto 0) := (others => '0');
    signal UNI_LOAD   : std_logic_vector(3 downto 0) := (others => '0');
    signal TENS_OUT   : std_logic_vector(3 downto 0);
    signal UNI_OUT    : std_logic_vector(3 downto 0);

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: count24
        port map (
            RST        => RST,
            CLK        => CLK,
            EN         => EN,
            LD         => LOAD,
            TENS_LOAD  => TENS_LOAD,
            UNI_LOAD   => UNI_LOAD,
            TENS_OUT   => TENS_OUT,
            UNI_OUT    => UNI_OUT
        );

    -- Clock process definitions
    CLK_process : process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
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

        -- Enable the counter
        EN <= '1';

        -- Set LOAD signal and load value
        wait for 350 ns;
        LOAD <= '1';
        TENS_LOAD <= "0000";  -- Example value to load
        UNI_LOAD <= "0000";  -- Example value to load
        wait for 20 ns;
        LOAD <= '0';

        -- Run for a period of time to observe the behavior
        wait for 450 ns;

        -- Disable the counter
        EN <= '0';

        -- Finish the simulation
        wait;
    end process;

end architecture;
