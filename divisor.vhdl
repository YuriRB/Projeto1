ENTITY divisor IS
	PORT (
		A   : IN bit_VECTOR(11 DOWNTO 0); 
		B   : IN bit_VECTOR(4 DOWNTO 0); 
		S   : OUT bit_VECTOR(3 DOWNTO 0)
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
			A   : IN BIT_VECTOR(3 DOWNTO 0); 
			B   : IN BIT; 
			S   : OUT BIT_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL S_Mag: BIT;
	SIGNAL Resto,Saida: BIT_VECTOR(11 DOWNTO 0);
	SIGNAL B_Somador: BIT;
	SIGNAL A_Somador,Resultado1,Resultado2,Resultado3,Resultado4,Resultado5,Resultado6,Resultado7,Resultado8,Resultado9,Resultado10,Resultado11,Resultado_Final: BIT_VECTOR(3 DOWNTO 0);
	
BEGIN
	Resto <= A;
	A_Somador <= "0000";
	Comp1: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub1: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som1: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp2: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub2: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som2: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp3: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub3: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som3: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp4: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub4: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som4: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp5: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub5: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som5: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp6: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub6: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som6: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp7: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub7: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som7: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp8: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub8: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som8: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp9: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub9: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som9: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp10: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub10: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som10: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp11: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub11: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som11: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);
	Comp12: bloco_comparador PORT MAP (Resto,B,S_Mag);
	Sub12: bloco_subtrator PORT MAP (Resto,B,Resto);
	Som12: bloco_somador PORT MAP(A_Somador,S_Mag,Resultado1);	
		
END ARCHITECTURE;

