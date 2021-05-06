LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY bloco_somador IS
	PORT(	
		A   : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
		B   : IN STD_LOGIC; 
		S   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE estrutura_somador OF bloco_somador IS
	COMPONENT somador4bits IS
	PORT(	
		A   : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
		B   : IN STD_LOGIC; 
		S   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
	END COMPONENT;
BEGIN
	bloco_som: somador4bits PORT MAP (A,B,S);
END ARCHITECTURE;

