ENTITY somador4bits IS
	PORT(	
		A   : IN BIT_VECTOR(3 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE somador_esquematico OF somador4bits IS
	COMPONENT meio_somador IS
		PORT(
			A,B: IN BIT; 
			S,C : OUT BIT
		);
	END COMPONENT;
	SIGNAL C: BIT_VECTOR (3 DOWNTO 0);
BEGIN
	somador1: meio_somador PORT MAP(A( 0), B, S( 0), C(0));
	somador2: meio_somador PORT MAP(A( 1), C(0), S( 1), C(1));
	somador3: meio_somador PORT MAP(A( 2), C(1), S( 2), C(2));
	somador4: meio_somador PORT MAP(A( 3), C(2), S( 3), C(3));
END ARCHITECTURE;
