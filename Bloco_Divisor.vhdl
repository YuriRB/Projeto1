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
			EN_E: IN  STD_LOGIC; 
			EN_S: OUT STD_LOGIC;
			R,S : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL EN_Saida, EN_Entrada: STD_LOGIC;
	SIGNAL A_LOOP,R,S_Contador,Resto: STD_LOGIC_VECTOR(11 DOWNTO 0);
BEGIN
	R <= "000000000000" WHEN B = "00000" OR B = "00001" OR B = A ELSE
             "00000000000"  & A(0)          WHEN B = "00010" ELSE
             "000000000"    & A(1 DOWNTO 0) WHEN B = "00100" ELSE
             "00000000"     & A(2 DOWNTO 0) WHEN B = "01000" ELSE
             "0000000"      & A(3 DOWNTO 0) WHEN B = "10000" ELSE
             "000000000000";
             
	S <= "000000000000" WHEN B = "00000" OR A = "000000000000" ELSE
	     "000000000001" WHEN A = B ELSE
	     A WHEN B = "00001" ELSE
	     A & '0' 0 WHEN B = "00001" ELSE
	     A & '0' 1 WHEN B = "00010" ELSE 
	     A & '0' 2 WHEN B = "00100" ELSE
	     A & '0' 3 WHEN B = "01000" ELSE
	     A & '0' 4 WHEN B = "10000" ELSE
	     "000000000000";

	EN_Entrada <= '1';
	div: divisor PORT MAP(A,B,EN_Entrada,EN_Saida,Resto,S_Contador);
	A_LOOP <= S_Contador;
	G1: for x in 0 to n generate 
		div2: divisor PORT MAP(A_LOOP,B,EN_Entrada,EN_Saida,Resto,S_Contador);
		EN_Entrada <= EN_Saida;
		A_LOOP <= S_Contador;
		
	end generate G1;
	S <= S_contador when EN_Saida = '0';
END ARCHITECTURE;


