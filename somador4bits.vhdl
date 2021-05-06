ENTITY somador4bits IS
	PORT(	
		A   : IN BIT_VECTOR(4 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(4 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE somador_esquematico OF somador4bits IS
	COMPONENT meio_somador IS
		PORT(
			A,B: IN BIT; 
			S,C : OUT BIT
		);
	END COMPONENT;
	SIGNAL C: BIT;
BEGIN
	somador1: meio_somador PORT MAP(A( 0), B, S( 0), C);
	somador2: meio_somador PORT MAP(A( 1), C, S( 1), C);
	somador3: meio_somador PORT MAP(A( 2), C, S( 2), C);
	somador4: meio_somador PORT MAP(A( 3), C, S( 3), C);
END ARCHITECTURE;
