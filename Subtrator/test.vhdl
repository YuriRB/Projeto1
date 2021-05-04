LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY test IS
END ENTITY;

ARCHITECTURE teste_sub OF test IS
	COMPONENT bloco_subtrator IS
		PORT(	
			A   : IN bit_VECTOR(11 DOWNTO 0); 
			B   : IN bit_VECTOR(4 DOWNTO 0); 
		    	S   : OUT bit_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL A,S: BIT_VECTOR(11 DOWNTO 0);
	SIGNAL B: BIT_VECTOR(4 DOWNTO 0);
BEGIN
	sub: bloco_subtrator PORT MAP (A,B,S);
	PROCESS
	BEGIN
		A <= "000000011111";
		B <= "00111";
		wait;
	END PROCESS;
END ARCHITECTURE;



