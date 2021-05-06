ENTITY divisor IS
	PORT (
		A   : IN  BIT_VECTOR(11 DOWNTO 0); 
		B   : IN  BIT_VECTOR(4 DOWNTO 0);
		EN_E: IN  BIT; 
		EN_S: OUT BIT;
		R   : OUT BIT_VECTOR(11 DOWNTO 0);
		S   : OUT BIT_VECTOR(11 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE Comportamento_Divisor OF divisor IS
	COMPONENT bloco_comparador IS
		PORT(
			A: IN BIT_VECTOR(11 DOWNTO 0); 
			B: IN BIT_VECTOR(4 DOWNTO 0); 
			S_Maior_Igual: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT bloco_subtrator IS
		PORT(
			A   : IN bit_VECTOR(11 DOWNTO 0); 
			B   : IN bit_VECTOR(4 DOWNTO 0); 
			S   : OUT bit_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT bloco_somador IS
		PORT(	
			A   : IN BIT_VECTOR(11 DOWNTO 0); 
			B   : IN BIT; 
			S   : OUT BIT_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL S_Mag: BIT;
	SIGNAL Resto,Saida: BIT_VECTOR(11 DOWNTO 0);
	SIGNAL B_Somador: BIT;
	SIGNAL A_Somador,Resultado_Final: BIT_VECTOR(11 DOWNTO 0);
	
BEGIN
	Comp: bloco_comparador PORT MAP (A,B,EN_S);
	Sub: bloco_subtrator PORT MAP (A,B,R);
	Soma: bloco_somador PORT MAP(A_Somador,EN_E,S);	
		
END ARCHITECTURE;


