LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY bloco_comparador IS
	PORT(	
		A: IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B: IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
		S_Maior_Igual: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE estrutura_comparador OF bloco_comparador IS
	COMPONENT comparador_12bits IS
	PORT(	
		A: IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B: IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
		Sigual,Smaior: OUT STD_LOGIC
	);
	END COMPONENT;
	SIGNAL Sigual,Smaior: STD_LOGIC;
BEGIN
	bloco_comp: comparador_12bits PORT MAP (A,B,Sigual,Smaior);
	S_Maior_Igual <= (Sigual OR Smaior);
END ARCHITECTURE;

