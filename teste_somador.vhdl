ENTITY teste_somador IS
END ENTITY;

ARCHITECTURE teste_som OF teste_somador IS
	COMPONENT bloco_somador IS
		PORT(	
			A   : IN BIT_VECTOR(3 DOWNTO 0); 
			B   : IN BIT; 
			S   : OUT BIT_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL A,S: BIT_VECTOR(0 TO 0);
	SIGNAL B: BIT;
BEGIN
	som: bloco_somador PORT MAP (A,B,S);
	PROCESS
	BEGIN
		A <= "0000";
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
