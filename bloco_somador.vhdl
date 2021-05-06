ENTITY bloco_somador IS
	PORT(	
		A   : IN BIT_VECTOR(3 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE estrutura_somador OF bloco_somador IS
	COMPONENT somador4bits IS
	PORT(	
		A   : IN BIT_VECTOR(3 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(3 DOWNTO 0)
	);
	END COMPONENT;
BEGIN
	bloco_som: somador4bits PORT MAP (A,B,S);
END ARCHITECTURE;
