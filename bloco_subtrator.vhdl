ENTITY bloco_subtrator IS
	PORT(	
		A   : IN bit_VECTOR(11 DOWNTO 0); 
		B   : IN bit_VECTOR(4 DOWNTO 0); 
		S   : OUT bit_VECTOR(11 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE estrutura_subtrator OF bloco_subtrator IS
	COMPONENT subtrator_12bits IS
	PORT(	
		A   : IN bit_VECTOR(11 DOWNTO 0); 
		B   : IN bit_VECTOR(4 DOWNTO 0); 
		S   : OUT bit_VECTOR(11 DOWNTO 0)
	);
	END COMPONENT;
BEGIN
	bloco_sub: subtrator_12bits port map (A,B,S);
END ARCHITECTURE;



