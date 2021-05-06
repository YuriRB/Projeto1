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
			R   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
			S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL A_LOOP: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL EN_Saida, EN_Entrada: STD_LOGIC;
	SIGNAL S_Contador,Resto: STD_LOGIC_VECTOR(11 DOWNTO 0);
BEGIN
	
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
