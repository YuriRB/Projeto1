LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY Bloco_Divisor IS
	GENERIC(
		n : natural := 4095
	);
	PORT (
		A   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B   : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE divisor_esquematico OF Bloco_Divisor IS
	COMPONENT divisor IS
		PORT(
			A   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0); 
			B   : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
			R,S : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL A_LOOP,R,S_Contador,Resto: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL EN: STD_LOGIC;
BEGIN
	R <= "000000000000" WHEN B = "00000" OR B = "00001" OR B = A ELSE
             "00000000000"  & A(0)          WHEN B = "00010" ELSE
             "000000000"    & A(1 DOWNTO 0) WHEN B = "00100" ELSE
             "00000000"     & A(2 DOWNTO 0) WHEN B = "01000" ELSE
             "0000000"      & A(3 DOWNTO 0) WHEN B = "10000" ELSE
             "000000000000";
             
	S <= "000000000000" WHEN B = "00000" ELSE
	     "000000000001" WHEN A = B ELSE
	     A WHEN B = "00001" ELSE
	     A((11-1) downto 0) & A(11 downto (11-1)) WHEN B = "00001" ELSE
	     A((11-2) downto 0) & A(11 downto (11-2)) WHEN B = "00010" ELSE 
	     A((11-3) downto 0) & A(11 downto (11-3)) WHEN B = "00100" ELSE
	     A((11-4) downto 0) & A(11 downto (11-4)) WHEN B = "01000" ELSE
	     A((11-5) downto 0) & A(11 downto (11-5)) WHEN B = "10000" ELSE
	     "000000000000";
	     
	EN <= '0' WHEN B = "00000" OR B = "00001" OR B = A OR B = "00010" OR B = "00100" OR B = "01000" OR B = "10000" ELSE '1';
	div: divisor PORT MAP(A,B,R,S) WHEN EN = '1';

END ARCHITECTURE;

