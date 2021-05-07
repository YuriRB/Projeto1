ENTITY divisor IS
	PORT (
<<<<<<< Updated upstream
		A   : IN bit_VECTOR(11 DOWNTO 0); 
		B   : IN bit_VECTOR(4 DOWNTO 0);
		EN_E: IN BIT; 
		EN_S: OUT BIT;
		R   : OUT BIT_VECTOR(11 DOWNTO 0);
		S   : OUT bit_VECTOR(11 DOWNTO 0)
=======
		A   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B   : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		R,S : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
>>>>>>> Stashed changes
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
	
<<<<<<< Updated upstream
	SIGNAL S_Mag: BIT;
	SIGNAL Resto,Saida: BIT_VECTOR(11 DOWNTO 0);
	SIGNAL B_Somador: BIT;
	SIGNAL A_Somador,Resultado_Final: BIT_VECTOR(11 DOWNTO 0);
	
BEGIN
	Comp: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub: bloco_subtrator PORT MAP (Resto,B,Resto);
	Soma: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);	
		
END ARCHITECTURE;


=======
	SIGNAL S_Mag: STD_LOGIC;
	SIGNAL Sinal_A, Resto, Resposta, Entrada_Soma: STD_LOGIC_VECTOR(11 DOWNTO 0);
	
BEGIN
	Sinal_A <= A;
	Entrada_Soma <= "000000000000";
	G1: FOR x IN 0 TO 1365 GENERATE
		Comp: bloco_comparador PORT MAP (Sinal_A,B,S_Mag);
		Sub: bloco_subtrator PORT MAP (Sinal_A,B,Resto);
		Soma: bloco_somador PORT MAP(Entrada_Soma,S_Mag,Resposta);
		Sinal_A <= Resto WHEN S_Mag <= '1' ELSE Sinal_A;
		Entrada_Soma <= Resposta;
	END GENERATE;
	S <= Resposta;
	
	
END ARCHITECTURE;





>>>>>>> Stashed changes
