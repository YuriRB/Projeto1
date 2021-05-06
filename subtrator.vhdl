LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY Subtrator IS
	PORT (A,B,Tin: IN STD_LOGIC; S,Tout: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE Comportamento_Subtrator OF Subtrator IS
BEGIN
	S <= ((A) XOR ((B) XOR (Tin)));
	Tout <= (((not A) AND (B)) OR ((not A) AND (Tin)) OR ((B) AND (Tin)));
END ARCHITECTURE;




