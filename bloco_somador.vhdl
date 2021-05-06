ENTITY bloco_somador IS
	PORT(	
		A   : IN BIT_VECTOR(4 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(4 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE estrutura_somador OF bloco_somador IS
	COMPONENT subtrator_12bits IS
	PORT(	
		A   : IN BIT_VECTOR(4 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(4 DOWNTO 0)
	);
	END COMPONENT;
BEGIN
	bloco_som: subtrator_12bits PORT MAP (A,B,S);
END ARCHITECTURE;
