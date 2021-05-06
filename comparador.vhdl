LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY comparador IS
	PORT(
		A,B,Eigual: IN STD_LOGIC; 
		Sigual,Smaior: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE comportamento OF comparador IS
BEGIN
	Sigual <= ((NOT (A Xor B)) AND Eigual);
	Smaior <= ((A AND (NOT B)) AND Eigual);
END ARCHITECTURE;


