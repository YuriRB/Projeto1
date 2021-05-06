LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY teste_divisor IS
END ENTITY;

ARCHITECTURE teste_div OF teste_divisor IS
	COMPONENT bloco_divisor IS
		PORT(	
			A: IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
			B: IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
			S: OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL A,S: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL B: STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
	div: bloco_divisor PORT MAP (A,B,S);
	PROCESS
	BEGIN
		A <= "111111111111";
		B <= "00111";       
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
		A <= S;
		
		wait for 100 ns;
	END PROCESS;
END ARCHITECTURE;

