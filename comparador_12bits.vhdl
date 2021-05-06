LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY comparador_12bits IS
	PORT(	
		A: IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B: IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
		Sigual,Smaior: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE comparador_esquematico OF comparador_12bits IS
	COMPONENT comparador IS
		PORT(
		A,B,Eigual: IN STD_LOGIC; 
		Sigual,Smaior: OUT STD_LOGIC
	);
	END COMPONENT;
	SIGNAL Maior: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL Igual: STD_LOGIC_VECTOR(11 DOWNTO 0);
BEGIN
	comparador01: comparador PORT MAP(A( 0), B(0), '1'      , Igual( 0), Maior( 0));
	comparador02: comparador PORT MAP(A( 1), B(1), Igual( 0), Igual( 1), Maior( 1));
	comparador03: comparador PORT MAP(A( 2), B(2), Igual( 1), Igual( 2), Maior( 2));
	comparador04: comparador PORT MAP(A( 3), B(3), Igual( 2), Igual( 3), Maior( 3));
	comparador05: comparador PORT MAP(A( 4), B(4), Igual( 3), Igual( 4), Maior( 4));
	comparador06: comparador PORT MAP(A( 5), '0' , Igual( 4), Igual( 5), Maior( 5));
	comparador07: comparador PORT MAP(A( 6), '0' , Igual( 5), Igual( 6), Maior( 6));
	comparador08: comparador PORT MAP(A( 7), '0' , Igual( 6), Igual( 7), Maior( 7));
	comparador09: comparador PORT MAP(A( 8), '0' , Igual( 7), Igual( 8), Maior( 8));
	comparador10: comparador PORT MAP(A( 9), '0' , Igual( 8), Igual( 9), Maior( 9));
	comparador11: comparador PORT MAP(A(10), '0' , Igual( 9), Igual(10), Maior(10));
	comparador12: comparador PORT MAP(A(11), '0' , Igual(10), Sigual   , Maior(11));
	Smaior <= (Maior(0) OR Maior(1) OR Maior(2) OR Maior(3) OR Maior(4) OR Maior(5) OR Maior(6) OR Maior(7) OR Maior(8) OR Maior(9) OR Maior(10) OR Maior(11));
END ARCHITECTURE;


