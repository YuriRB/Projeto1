ENTITY comparador IS
	PORT(
		A,B,Eigual: IN BIT; 
		Sigual,Smaior: OUT BIT
	);
END ENTITY;

ARCHITECTURE comportamento OF comparador IS
BEGIN
	Sigual <= ((NOT (A Xor B)) AND Eigual);
	Smaior <= ((A AND (NOT B)) AND Eigual);
END ARCHITECTURE;

