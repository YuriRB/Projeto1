LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY teste_somador IS
END ENTITY;

ARCHITECTURE teste_som OF teste_somador IS
	COMPONENT bloco_somador IS
		PORT(	
			A   : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
			B   : IN STD_LOGIC; 
			S   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL A,S: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL B: STD_LOGIC;
BEGIN
	som: bloco_somador PORT MAP (A,B,S);
	PROCESS
	BEGIN
		A(0) <= '0';
		A(1) <= '0';
		A(2) <= '0';
		A(3) <= '0';
		A(4) <= '0';
		A(5) <= '0';
		A(6) <= '0';
		A(7) <= '0';
		A(8) <= '0';
		A(9) <= '0';
		A(10) <= '0';
		A(11) <= '0';
		B <= '1';       
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
		A <= S;
		B <= '1';
		wait for 100 ns;
	END PROCESS;
END ARCHITECTURE;

