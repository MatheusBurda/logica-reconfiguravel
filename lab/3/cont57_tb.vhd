library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro_tb is
end;

architecture a_cronometro_tb of cronometro_tb is
    component cronometro is
        PORT(   
            CLK:  					         IN  std_logic;
            SAIDA_DEC_SEG, SAIDA_UNI_SEG: OUT std_logic_vector(6 downto 0);
				SAIDA_DEC_MS, SAIDA_UNI_MS:   OUT std_logic_vector(6 downto 0);
            BOTAO1:   					      in std_logic;
            BOTAO2:  				         in std_logic;
				SWITCH:								in std_logic
    );
    end component;

    constant period_time:              								time := 20 ns;
     constant rst_time:                								time := 15 ns;
     signal reset:	                    								std_logic := '1';
     signal clock:      			        								std_logic;
     signal bot1, bot2:   	              								std_logic := '0';
	  signal segundo_dezenas,segundo_unidades:						std_logic_vector(6 downto 0);
	  signal centiseg_dezenas,centiseg_unidades:						std_logic_vector(6 downto 0);

Begin
    uut : cronometro port map(
        CLK => clock,
        SWITCH => reset,
        BOTAO1 => bot1,
		  BOTAO2 => bot2,
		  SAIDA_DEC_SEG => segundo_dezenas,
		  SAIDA_UNI_SEG => segundo_unidades,
		  SAIDA_DEC_MS => centiseg_dezenas,
		  SAIDA_UNI_MS => centiseg_unidades
    );

     process
     begin
        wait for 25 ns;
        bot1 <= '1';
        wait for 20ns;
        bot1 <= '0';
        wait for 400 ns;
        bot1 <= '1';
        wait for 10 ns;
		  bot2 <= '1';
		  wait for 20 ns;
		  bot2 <= '0';
		  wait for 20 ns;
        bot1 <= '0';
        wait;
    end process;

    process
    begin
      reset <= '1';
      wait for rst_time;
      reset <= '0';
      wait;
    end process;

    process
    begin
      wait for 3000 ns; -- <== TEMPO TOTAL DA SIMULAÃ‡ÃƒO!!!
      enable <= '0';
      wait;
    end process;

    process
    begin
      while true loop
        clock <= '0';
        wait for period_time/2;
        clock <= '1';
        wait for period_time/2;
      end loop;
      wait;
    end process;

end architecture;