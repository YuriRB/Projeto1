ENTITY comparador_12bits IS
	PORT(	
		A: IN BIT_VECTOR(11 DOWNTO 0); 
		B: IN BIT_VECTOR(4 DOWNTO 0); 
		Sigual,Smaior,Smenor: OUT BIT
	);
END ENTITY;

ARCHITECTURE comparador_esquematico OF comparador_12bits IS
	COMPONENT comparador IS
		PORT(
		A,B,Eigual: IN BIT; 
		Sigual,Smaior,Smenor: OUT BIT
	);
	END COMPONENT;
	SIGNAL Maior, Menor: BIT_VECTOR(11 DOWNTO 0);
	SIGNAL Igual: BIT_VECTOR(10 DOWNTO 0);
BEGIN
	comparador01: comparador PORT MAP(A( 0), B(0), '1'      , Igual( 0), Maior( 0), Menor( 0));
	comparador02: comparador PORT MAP(A( 1), B(1), Igual( 0), Igual( 1), Maior( 1), Menor( 1));
	comparador03: comparador PORT MAP(A( 2), B(2), Igual( 1), Igual( 2), Maior( 2), Menor( 2));
	comparador04: comparador PORT MAP(A( 3), B(3), Igual( 2), Igual( 3), Maior( 3), Menor( 3));
	comparador05: comparador PORT MAP(A( 4), B(4), Igual( 3), Igual( 4), Maior( 4), Menor( 4));
	comparador06: comparador PORT MAP(A( 5), '0' , Igual( 4), Igual( 5), Maior( 5), Menor( 5));
	comparador07: comparador PORT MAP(A( 6), '0' , Igual( 5), Igual( 6), Maior( 6), Menor( 6));
	comparador08: comparador PORT MAP(A( 7), '0' , Igual( 6), Igual( 7), Maior( 7), Menor( 7));
	comparador09: comparador PORT MAP(A( 8), '0' , Igual( 7), Igual( 8), Maior( 8), Menor( 8));
	comparador10: comparador PORT MAP(A( 9), '0' , Igual( 8), Igual( 9), Maior( 9), Menor( 9));
	comparador11: comparador PORT MAP(A(10), '0' , Igual( 9), Igual(10), Maior(10), Menor(10));
	comparador12: comparador PORT MAP(A(11), '0' , Igual(10), Sigual   , Maior(11), Menor(11));
	Smaior <= (Maior(0) OR Maior(1) OR Maior(2) OR Maior(3) OR Maior(4) OR Maior(5) OR Maior(6) OR Maior(7) OR Maior(8) OR Maior(9) OR Maior(10) OR Maior(11));
	Smenor <= (Menor(0) OR Menor(1) OR Menor(2) OR Menor(3) OR Menor(4) OR Menor(5) OR Menor(6) OR Menor(7) OR Menor(8) OR Menor(9) OR Menor(10) OR Menor(11));
END ARCHITECTURE;
