ENTITY test_comp IS
END ENTITY;

ARCHITECTURE teste_comp OF test_comp IS
	COMPONENT bloco_comparador IS
		PORT(	
			A: IN BIT_VECTOR(11 DOWNTO 0); 
			B: IN BIT_VECTOR(4 DOWNTO 0); 
			Sigual,Smaior,Smenor: OUT BIT
		);
	END COMPONENT;
	SIGNAL A: BIT_VECTOR(11 DOWNTO 0);
	SIGNAL B: BIT_VECTOR(4 DOWNTO 0);
	SIGNAL Sigual,Smaior,Smenor: BIT;
BEGIN
	sub: bloco_comparador PORT MAP (A,B,Sigual,Smaior,Smenor);
	PROCESS
	BEGIN
		A <= "000000011111";
		B <= "00111";
		wait for 100 ns;
		A <= "000000000111";
		B <= "11111";
		wait for 100 ns;
		A <= "000000011111";
		B <= "11111";
		wait for 100 ns;
		A <= "000000000000";
		B <= "00000";
		
		wait for 100 ns;
	END PROCESS;
END ARCHITECTURE;
