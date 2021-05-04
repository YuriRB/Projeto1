ENTITY bloco_comparador IS
	PORT(	
		A: IN BIT_VECTOR(11 DOWNTO 0); 
		B: IN BIT_VECTOR(4 DOWNTO 0); 
		Sigual,Smaior,Smenor: OUT BIT
	);
END ENTITY;

ARCHITECTURE estrutura_comparador OF bloco_comparador IS
	COMPONENT comparador_12bits IS
	PORT(	
		A: IN BIT_VECTOR(11 DOWNTO 0); 
		B: IN BIT_VECTOR(4 DOWNTO 0); 
		Sigual,Smaior,Smenor: OUT BIT
	);
	END COMPONENT;
BEGIN
	bloco_comp: comparador_12bits PORT MAP (A,B,Sigual,Smaior,Smenor);
END ARCHITECTURE;
