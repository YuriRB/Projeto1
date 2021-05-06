ENTITY somador4bits IS
	PORT(	
		A   : IN BIT_VECTOR(11 DOWNTO 0); 
		B   : IN BIT; 
		S   : OUT BIT_VECTOR(11 DOWNTO 0)
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
	somador01: meio_somador PORT MAP(A( 0), B    , S( 0), C( 0));
	somador02: meio_somador PORT MAP(A( 1), C( 0), S( 1), C( 1));
	somador03: meio_somador PORT MAP(A( 2), C( 1), S( 2), C( 2));
	somador04: meio_somador PORT MAP(A( 3), C( 2), S( 3), C( 3));
	somador05: meio_somador PORT MAP(A( 4), C( 3), S( 4), C( 4));
	somador06: meio_somador PORT MAP(A( 5), C( 4), S( 5), C( 5));
	somador07: meio_somador PORT MAP(A( 6), C( 5), S( 6), C( 6));
	somador08: meio_somador PORT MAP(A( 7), C( 6), S( 7), C( 7));
	somador09: meio_somador PORT MAP(A( 8), C( 7), S( 8), C( 8));
	somador10: meio_somador PORT MAP(A( 9), C( 8), S( 9), C( 9));
	somador11: meio_somador PORT MAP(A(10), C( 9), S(10), C(10));
	somador12: meio_somador PORT MAP(A(11), C(10), S(11), C(11));
END ARCHITECTURE;

