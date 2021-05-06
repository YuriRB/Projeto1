LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY bloco_subtrator IS
	PORT(	
		A   : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B   : IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
		S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE estrutura_subtrator OF bloco_subtrator IS
	COMPONENT subtrator_12bits IS
	PORT(	
		A   : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
		B   : IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
		S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
	END COMPONENT;
BEGIN
	bloco_sub: subtrator_12bits port map (A,B,S);
END ARCHITECTURE;




