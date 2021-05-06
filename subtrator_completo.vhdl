LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY subtrator_12bits IS
	PORT(	
		A   : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B   : IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
		S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE subtrator_esquematico OF subtrator_12bits IS
	COMPONENT subtrator IS
		PORT(
			A,B,Tin: IN STD_LOGIC; 
			S,Tout : OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL Tout: STD_LOGIC_VECTOR(11 DOWNTO 0);
BEGIN
	subtrator01: subtrator PORT MAP(A( 0), B(0), '0'     , S( 0), Tout( 0));
	subtrator02: subtrator PORT MAP(A( 1), B(1), Tout( 0), S( 1), Tout( 1));
	subtrator03: subtrator PORT MAP(A( 2), B(2), Tout( 1), S( 2), Tout( 2));
	subtrator04: subtrator PORT MAP(A( 3), B(3), Tout( 2), S( 3), Tout( 3));
	subtrator05: subtrator PORT MAP(A( 4), B(4), Tout( 3), S( 4), Tout( 4));
	subtrator06: subtrator PORT MAP(A( 5), '0' , Tout( 4), S( 5), Tout( 5));
	subtrator07: subtrator PORT MAP(A( 6), '0' , Tout( 5), S( 6), Tout( 6));
	subtrator08: subtrator PORT MAP(A( 7), '0' , Tout( 6), S( 7), Tout( 7));
	subtrator09: subtrator PORT MAP(A( 8), '0' , Tout( 7), S( 8), Tout( 8));
	subtrator10: subtrator PORT MAP(A( 9), '0' , Tout( 8), S( 9), Tout( 9));
	subtrator11: subtrator PORT MAP(A(10), '0' , Tout( 9), S(10), Tout(10));
	subtrator12: subtrator PORT MAP(A(11), '0' , Tout(10), S(11), Tout(11));
END ARCHITECTURE;




