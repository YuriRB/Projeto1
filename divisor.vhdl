LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY divisor IS
	GENERIC(
		n : natural := 8
	);
	PORT (
		A   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B   : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		EN_E: IN  STD_LOGIC; 
		EN_S: OUT STD_LOGIC;
		R   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE Comportamento_Divisor OF divisor IS
	COMPONENT bloco_comparador IS
		PORT(
			A: IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
			B: IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
			S_Maior_Igual: OUT STD_LOGIC_VECTOR
		);
	END COMPONENT;
	
	COMPONENT bloco_subtrator IS
		PORT(
			A   : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
			B   : IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
			S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT bloco_somador IS
		PORT(	
			A   : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
			B   : IN STD_LOGIC; 
			S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL Resto,Saida: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL B_Somador,S_Mag: STD_LOGIC;
	SIGNAL A_Somador,Resultado_Final: STD_LOGIC_VECTOR(11 DOWNTO 0);
	
BEGIN
	
	Comp: bloco_comparador PORT MAP (A,B,S_Mag);
	Sub: bloco_subtrator PORT MAP (A,B,R);
	Soma: bloco_somador PORT MAP(A,S_Mag,S);
	EN_S <= S_Mag;	
	
END ARCHITECTURE;


