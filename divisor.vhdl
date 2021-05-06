ENTITY divisor IS
	PORT (
		A   : IN bit_VECTOR(11 DOWNTO 0); 
		B   : IN bit_VECTOR(4 DOWNTO 0); 
		S   : OUT bit_VECTOR(4 DOWNTO 0)
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
	SIGNAL S_Mag: BIT;
	SIGNAL Resto,Saida: BIT_VECTOR(11 DOWNTO 0);
BEGIN
	Resto <= A;
	Comp: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub: bloco_subtrator PORT MAP (Resto,B,Resto);
	Saida <=  WHEN S_Mag( 0) = 1
		
END ARCHITECTURE;

