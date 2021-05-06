ENTITY divisor IS
	PORT (
		A   : IN bit_VECTOR(11 DOWNTO 0); 
		B   : IN bit_VECTOR(4 DOWNTO 0); 
		S   : OUT bit_VECTOR(11 DOWNTO 0)
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
	SIGNAL A_Somador,Resultado1,Resultado2,Resultado3,Resultado4,Resultado5,Resultado6,Resultado7,Resultado8,Resultado9,Resultado10,Resultado11,Resultado_Final: BIT_VECTOR(3 DOWNTO 0);
	
BEGIN
	Resto <= A;
	A_Somador <= "0000";
	Comp: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub: bloco_subtrator PORT MAP (Resto,B,Resto);
	Soma: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);	
		
END ARCHITECTURE;


