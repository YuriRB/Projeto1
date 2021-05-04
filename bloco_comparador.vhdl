ENTITY bloco_comparador IS
	PORT(	
		A: IN BIT_VECTOR(11 DOWNTO 0); 
		B: IN BIT_VECTOR(4 DOWNTO 0); 
		S_Maior_Igual: OUT BIT
	);
END ENTITY;

ARCHITECTURE estrutura_comparador OF bloco_comparador IS
	COMPONENT comparador_12bits IS
	PORT(	
		A: IN BIT_VECTOR(11 DOWNTO 0); 
		B: IN BIT_VECTOR(4 DOWNTO 0); 
		Sigual,Smaior: OUT BIT
	);
	END COMPONENT;
	SIGNAL Sigual,Smaior: BIT;
BEGIN
	bloco_comp: comparador_12bits PORT MAP (A,B,Sigual,Smaior);
	S_Maior_Igual <= Sigual OR Smaior;
END ARCHITECTURE;
