Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont100 is 
    PORT(   
				RST:  					 IN  std_logic;
            CLK:  					 IN  std_logic;
            SAIDA_DEC, SAIDA_UNI: OUT std_logic_vector(3 downto 0);
            EN:   					 in std_logic;
            CLR:  				    in std_logic
    );
end entity;

Architecture a_cont100 of cont100 is

	Component cont16 is
				port(   
					RST:  IN  std_logic;
					CLK:  IN  std_logic;
					SAIDA:OUT std_logic_vector(3 downto 0);
					EN:   in  std_logic;
					CLR:  in  std_logic;
					LD:   in  std_logic;
					LOAD: in  std_logic_vector(3 downto 0)
					);
	end Component;

SIGNAL dec_en_uni_clr, ld, uni_clr: std_logic;
SIGNAL dec_saida, uni_saida		 : std_logic_vector(3 downto 0);
SIGNAL decld, unild					 : std_logic_vector(3 downto 0);

Begin

decld <= "0000";
unild <= "0000";

cont_dezenas:cont16 port map(
	CLK   =>  CLK,
	RST   =>  RST,
	EN    =>  dec_en_uni_clr,
	LD    =>  ld,
	LOAD  =>  decld,
	saida =>  dec_saida,
	CLR	=>  CLR
);

cont_unidade:cont16 port map(
	CLK   =>  CLK,
	RST   =>  RST,
	EN    =>  EN,
	LD		=>  ld,
	LOAD  =>	 unild,
	saida =>  uni_saida,
	CLR	=>  uni_clr
);

uni_clr <= dec_en_uni_clr or CLR;

ld <=
	'1' when uni_saida = "1001" and dec_saida = "1001" else
	'0';

dec_en_uni_clr <=
	'1' when uni_saida = "1001" and EN='1' else
	'0';

SAIDA_DEC <= dec_saida;
SAIDA_UNI <= uni_saida;

End Architecture;
